package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.CharacterStyle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.compose.ui.Modifier;
import androidx.core.graphics.ColorUtils;
import androidx.core.os.BundleKt;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.lifecycle.LiveData;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.CutoutDrawable;
import com.google.android.material.textfield.EndCompoundLayout;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.nononsenseapps.filepicker.AbstractFilePickerFragment;
import io.noties.markwon.BlockHandlerDef;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.io.CloseableKt;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.databinding.FragmentChannelBinding;
import org.schabi.newpipe.fragments.list.search.SearchFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int[][] EDIT_TEXT_BACKGROUND_RIPPLE_STATE = {new int[]{R.attr.state_pressed}, new int[0]};
    public ValueAnimator animator;
    public boolean areCornerRadiiRtl;
    public MaterialShapeDrawable boxBackground;
    public boolean boxBackgroundApplied;
    public int boxBackgroundColor;
    public int boxBackgroundMode;
    public int boxCollapsedPaddingTopPx;
    public final int boxLabelCutoutPaddingPx;
    public int boxStrokeColor;
    public int boxStrokeWidthDefaultPx;
    public int boxStrokeWidthFocusedPx;
    public int boxStrokeWidthPx;
    public MaterialShapeDrawable boxUnderlineDefault;
    public MaterialShapeDrawable boxUnderlineFocused;
    public final CollapsingTextHelper collapsingTextHelper;
    public boolean counterEnabled;
    public int counterMaxLength;
    public int counterOverflowTextAppearance;
    public ColorStateList counterOverflowTextColor;
    public boolean counterOverflowed;
    public int counterTextAppearance;
    public ColorStateList counterTextColor;
    public AppCompatTextView counterView;
    public ColorStateList cursorColor;
    public ColorStateList cursorErrorColor;
    public int defaultFilledBackgroundColor;
    public ColorStateList defaultHintTextColor;
    public int defaultStrokeColor;
    public int disabledColor;
    public int disabledFilledBackgroundColor;
    public EditText editText;
    public final LinkedHashSet editTextAttachedListeners;
    public ColorDrawable endDummyDrawable;
    public int endDummyDrawableWidth;
    public final EndCompoundLayout endLayout;
    public boolean expandedHintEnabled;
    public StateListDrawable filledDropDownMenuBackground;
    public int focusedFilledBackgroundColor;
    public int focusedStrokeColor;
    public ColorStateList focusedTextColor;
    public boolean globalLayoutListenerAdded;
    public CharSequence hint;
    public boolean hintAnimationEnabled;
    public boolean hintEnabled;
    public boolean hintExpanded;
    public int hoveredFilledBackgroundColor;
    public int hoveredStrokeColor;
    public boolean inDrawableStateChanged;
    public final IndicatorViewController indicatorViewController;
    public final FrameLayout inputFrame;
    public boolean isProvidingHint;
    public LengthCounter lengthCounter;
    public int maxEms;
    public int maxWidth;
    public int minEms;
    public int minWidth;
    public Drawable originalEditTextEndDrawable;
    public CharSequence originalHint;
    public MaterialShapeDrawable outlinedDropDownMenuBackground;
    public boolean placeholderEnabled;
    public Fade placeholderFadeIn;
    public Fade placeholderFadeOut;
    public CharSequence placeholderText;
    public int placeholderTextAppearance;
    public ColorStateList placeholderTextColor;
    public AppCompatTextView placeholderTextView;
    public boolean restoringSavedState;
    public ShapeAppearanceModel shapeAppearanceModel;
    public ColorDrawable startDummyDrawable;
    public int startDummyDrawableWidth;
    public final StartCompoundLayout startLayout;
    public ColorStateList strokeErrorColor;
    public final Rect tmpBoundsRect;
    public final Rect tmpRect;
    public final RectF tmpRectF;
    public Typeface typeface;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout layout;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.layout = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
            this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.layout;
            EditText editText = textInputLayout.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean isEmpty = TextUtils.isEmpty(text);
            boolean isEmpty2 = TextUtils.isEmpty(hint);
            boolean z = textInputLayout.hintExpanded;
            boolean isEmpty3 = TextUtils.isEmpty(error);
            boolean z2 = (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String charSequence = !isEmpty2 ? hint.toString() : "";
            StartCompoundLayout startCompoundLayout = textInputLayout.startLayout;
            AppCompatTextView appCompatTextView = startCompoundLayout.prefixTextView;
            if (appCompatTextView.getVisibility() == 0) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView);
                accessibilityNodeInfo.setTraversalAfter(appCompatTextView);
            } else {
                accessibilityNodeInfo.setTraversalAfter(startCompoundLayout.startIconView);
            }
            if (!isEmpty) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setText(charSequence);
                if (!z && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(charSequence);
                } else {
                    if (!isEmpty) {
                        charSequence = ((Object) text) + ", " + charSequence;
                    }
                    accessibilityNodeInfoCompat.setText(charSequence);
                }
                accessibilityNodeInfoCompat.setShowingHintText(isEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
            if (z2) {
                if (isEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfo.setError(error);
            }
            AppCompatTextView appCompatTextView2 = textInputLayout.indicatorViewController.helperTextView;
            if (appCompatTextView2 != null) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView2);
            }
            textInputLayout.endLayout.getEndIconDelegate().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.layout.endLayout.getEndIconDelegate().onPopulateAccessibilityEvent(accessibilityEvent);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface LengthCounter {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(15);
        public CharSequence error;
        public boolean isEndIconChecked;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.error = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.isEndIconChecked = parcel.readInt() == 1;
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.error) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.error, parcel, i);
            parcel.writeInt(this.isEndIconChecked ? 1 : 0);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, org.schabi.newpipe.R.style.Widget_Design_TextInputLayout), attributeSet, i);
        this.minEms = -1;
        this.maxEms = -1;
        this.minWidth = -1;
        this.maxWidth = -1;
        this.indicatorViewController = new IndicatorViewController(this);
        this.lengthCounter = new CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0(17);
        this.tmpRect = new Rect();
        this.tmpBoundsRect = new Rect();
        this.tmpRectF = new RectF();
        this.editTextAttachedListeners = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTextHelper = collapsingTextHelper;
        this.globalLayoutListenerAdded = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.inputFrame = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        collapsingTextHelper.textSizeInterpolator = linearInterpolator;
        collapsingTextHelper.recalculate(false);
        collapsingTextHelper.positionInterpolator = linearInterpolator;
        collapsingTextHelper.recalculate(false);
        collapsingTextHelper.setCollapsedTextGravity(8388659);
        ViewUtils.checkCompatibleTheme(context2, attributeSet, i, org.schabi.newpipe.R.style.Widget_Design_TextInputLayout);
        int[] iArr = R$styleable.TextInputLayout;
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, org.schabi.newpipe.R.style.Widget_Design_TextInputLayout);
        ProcessFinisher processFinisher = new ProcessFinisher(context2, obtainStyledAttributes);
        StartCompoundLayout startCompoundLayout = new StartCompoundLayout(this, processFinisher);
        this.startLayout = startCompoundLayout;
        this.hintEnabled = obtainStyledAttributes.getBoolean(48, true);
        setHint(obtainStyledAttributes.getText(4));
        this.hintAnimationEnabled = obtainStyledAttributes.getBoolean(47, true);
        this.expandedHintEnabled = obtainStyledAttributes.getBoolean(42, true);
        if (obtainStyledAttributes.hasValue(6)) {
            setMinEms(obtainStyledAttributes.getInt(6, -1));
        } else if (obtainStyledAttributes.hasValue(3)) {
            setMinWidth(obtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (obtainStyledAttributes.hasValue(5)) {
            setMaxEms(obtainStyledAttributes.getInt(5, -1));
        } else if (obtainStyledAttributes.hasValue(2)) {
            setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.shapeAppearanceModel = ShapeAppearanceModel.builder(context2, attributeSet, i, org.schabi.newpipe.R.style.Widget_Design_TextInputLayout).build();
        this.boxLabelCutoutPaddingPx = context2.getResources().getDimensionPixelOffset(org.schabi.newpipe.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.boxCollapsedPaddingTopPx = obtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.boxStrokeWidthDefaultPx = obtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.boxStrokeWidthFocusedPx = obtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
        float dimension = obtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = obtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = obtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = obtainStyledAttributes.getDimension(11, -1.0f);
        FragmentChannelBinding builder = this.shapeAppearanceModel.toBuilder();
        if (dimension >= 0.0f) {
            builder.channelKaomoji = new AbsoluteCornerSize(dimension);
        }
        if (dimension2 >= 0.0f) {
            builder.channelSubscriberView = new AbsoluteCornerSize(dimension2);
        }
        if (dimension3 >= 0.0f) {
            builder.channelTitleView = new AbsoluteCornerSize(dimension3);
        }
        if (dimension4 >= 0.0f) {
            builder.errorContentNotSupported = new AbsoluteCornerSize(dimension4);
        }
        this.shapeAppearanceModel = builder.build();
        ColorStateList colorStateList = BundleKt.getColorStateList(context2, processFinisher, 7);
        if (colorStateList != null) {
            int defaultColor = colorStateList.getDefaultColor();
            this.defaultFilledBackgroundColor = defaultColor;
            this.boxBackgroundColor = defaultColor;
            if (colorStateList.isStateful()) {
                this.disabledFilledBackgroundColor = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.focusedFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.hoveredFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.focusedFilledBackgroundColor = this.defaultFilledBackgroundColor;
                ColorStateList colorStateList2 = StaticImageDecoderKt.getColorStateList(context2, org.schabi.newpipe.R.color.mtrl_filled_background_color);
                this.disabledFilledBackgroundColor = colorStateList2.getColorForState(new int[]{-16842910}, -1);
                this.hoveredFilledBackgroundColor = colorStateList2.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.boxBackgroundColor = 0;
            this.defaultFilledBackgroundColor = 0;
            this.disabledFilledBackgroundColor = 0;
            this.focusedFilledBackgroundColor = 0;
            this.hoveredFilledBackgroundColor = 0;
        }
        if (obtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateList3 = processFinisher.getColorStateList(1);
            this.focusedTextColor = colorStateList3;
            this.defaultHintTextColor = colorStateList3;
        }
        ColorStateList colorStateList4 = BundleKt.getColorStateList(context2, processFinisher, 14);
        this.focusedStrokeColor = obtainStyledAttributes.getColor(14, 0);
        this.defaultStrokeColor = context2.getColor(org.schabi.newpipe.R.color.mtrl_textinput_default_box_stroke_color);
        this.disabledColor = context2.getColor(org.schabi.newpipe.R.color.mtrl_textinput_disabled_color);
        this.hoveredStrokeColor = context2.getColor(org.schabi.newpipe.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateList4 != null) {
            setBoxStrokeColorStateList(colorStateList4);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(BundleKt.getColorStateList(context2, processFinisher, 15));
        }
        if (obtainStyledAttributes.getResourceId(49, -1) != -1) {
            setHintTextAppearance(obtainStyledAttributes.getResourceId(49, 0));
        }
        this.cursorColor = processFinisher.getColorStateList(24);
        this.cursorErrorColor = processFinisher.getColorStateList(25);
        int resourceId = obtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = obtainStyledAttributes.getText(35);
        int i2 = obtainStyledAttributes.getInt(34, 1);
        boolean z = obtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = obtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = obtainStyledAttributes.getText(43);
        int resourceId3 = obtainStyledAttributes.getResourceId(57, 0);
        CharSequence text3 = obtainStyledAttributes.getText(56);
        boolean z3 = obtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(obtainStyledAttributes.getInt(19, -1));
        this.counterTextAppearance = obtainStyledAttributes.getResourceId(22, 0);
        this.counterOverflowTextAppearance = obtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(obtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i2);
        setCounterOverflowTextAppearance(this.counterOverflowTextAppearance);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.counterTextAppearance);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (obtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(processFinisher.getColorStateList(41));
        }
        if (obtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(processFinisher.getColorStateList(46));
        }
        if (obtainStyledAttributes.hasValue(50)) {
            setHintTextColor(processFinisher.getColorStateList(50));
        }
        if (obtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(processFinisher.getColorStateList(23));
        }
        if (obtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(processFinisher.getColorStateList(21));
        }
        if (obtainStyledAttributes.hasValue(58)) {
            setPlaceholderTextColor(processFinisher.getColorStateList(58));
        }
        EndCompoundLayout endCompoundLayout = new EndCompoundLayout(this, processFinisher);
        this.endLayout = endCompoundLayout;
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        processFinisher.recycle();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        setImportantForAccessibility(2);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26 && i3 >= 26) {
            ViewCompat.Api26Impl.setImportantForAutofill(this, 1);
        }
        frameLayout.addView(startCompoundLayout);
        frameLayout.addView(endCompoundLayout);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.editText;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.boxBackground;
        }
        int color = CloseableKt.getColor(org.schabi.newpipe.R.attr.colorControlHighlight, this.editText);
        int i = this.boxBackgroundMode;
        int[][] iArr = EDIT_TEXT_BACKGROUND_RIPPLE_STATE;
        if (i != 2) {
            if (i != 1) {
                return null;
            }
            MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
            int i2 = this.boxBackgroundColor;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{CloseableKt.layer(0.1f, color, i2), i2}), materialShapeDrawable, materialShapeDrawable);
        }
        Context context = getContext();
        MaterialShapeDrawable materialShapeDrawable2 = this.boxBackground;
        TypedValue resolve = MathKt.resolve(context, org.schabi.newpipe.R.attr.colorSurface);
        if (resolve == null) {
            throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", "TextInputLayout", context.getResources().getResourceName(org.schabi.newpipe.R.attr.colorSurface)));
        }
        int i3 = resolve.resourceId;
        int color2 = i3 != 0 ? context.getColor(i3) : resolve.data;
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable2.drawableState.shapeAppearanceModel);
        int layer = CloseableKt.layer(0.1f, color, color2);
        materialShapeDrawable3.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
        materialShapeDrawable3.setTint(color2);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, color2});
        MaterialShapeDrawable materialShapeDrawable4 = new MaterialShapeDrawable(materialShapeDrawable2.drawableState.shapeAppearanceModel);
        materialShapeDrawable4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable3, materialShapeDrawable4), materialShapeDrawable2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.filledDropDownMenuBackground == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.filledDropDownMenuBackground = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.filledDropDownMenuBackground.addState(new int[0], getDropDownMaterialShapeDrawable(false));
        }
        return this.filledDropDownMenuBackground;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.outlinedDropDownMenuBackground == null) {
            this.outlinedDropDownMenuBackground = getDropDownMaterialShapeDrawable(true);
        }
        return this.outlinedDropDownMenuBackground;
    }

    public static void recursiveSetEnabled(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                recursiveSetEnabled((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.editText != null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("We already have an EditText, can only have one");
            return;
        }
        if (getEndIconMode() != 3) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.editText = editText;
        int i = this.minEms;
        if (i != -1) {
            setMinEms(i);
        } else {
            setMinWidth(this.minWidth);
        }
        int i2 = this.maxEms;
        if (i2 != -1) {
            setMaxEms(i2);
        } else {
            setMaxWidth(this.maxWidth);
        }
        int i3 = 0;
        this.boxBackgroundApplied = false;
        onApplyBoxBackgroundMode();
        setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
        Typeface typeface = this.editText.getTypeface();
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        boolean collapsedTypefaceInternal = collapsingTextHelper.setCollapsedTypefaceInternal(typeface);
        boolean expandedTypefaceInternal = collapsingTextHelper.setExpandedTypefaceInternal(typeface);
        if (collapsedTypefaceInternal || expandedTypefaceInternal) {
            collapsingTextHelper.recalculate(false);
        }
        float textSize = this.editText.getTextSize();
        if (collapsingTextHelper.expandedTextSize != textSize) {
            collapsingTextHelper.expandedTextSize = textSize;
            collapsingTextHelper.recalculate(false);
        }
        float letterSpacing = this.editText.getLetterSpacing();
        if (collapsingTextHelper.expandedLetterSpacing != letterSpacing) {
            collapsingTextHelper.expandedLetterSpacing = letterSpacing;
            collapsingTextHelper.recalculate(false);
        }
        int gravity = this.editText.getGravity();
        collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
        if (collapsingTextHelper.expandedTextGravity != gravity) {
            collapsingTextHelper.expandedTextGravity = gravity;
            collapsingTextHelper.recalculate(false);
        }
        this.editText.addTextChangedListener(new AnonymousClass1(this, i3));
        if (this.defaultHintTextColor == null) {
            this.defaultHintTextColor = this.editText.getHintTextColors();
        }
        if (this.hintEnabled) {
            if (TextUtils.isEmpty(this.hint)) {
                CharSequence hint = this.editText.getHint();
                this.originalHint = hint;
                setHint(hint);
                this.editText.setHint((CharSequence) null);
            }
            this.isProvidingHint = true;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            updateCursorColor();
        }
        if (this.counterView != null) {
            updateCounter(this.editText.getText());
        }
        updateEditTextBackground();
        this.indicatorViewController.adjustIndicatorPadding();
        this.startLayout.bringToFront();
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.bringToFront();
        Iterator it = this.editTextAttachedListeners.iterator();
        while (it.hasNext()) {
            ((EndCompoundLayout.AnonymousClass2) it.next()).onEditTextAttached(this);
        }
        endCompoundLayout.updateSuffixTextViewPadding();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        updateLabelState(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.hint)) {
            return;
        }
        this.hint = charSequence;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (charSequence == null || !TextUtils.equals(collapsingTextHelper.text, charSequence)) {
            collapsingTextHelper.text = charSequence;
            collapsingTextHelper.textToDraw = null;
            Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                collapsingTextHelper.expandedTitleTexture = null;
            }
            collapsingTextHelper.recalculate(false);
        }
        if (this.hintExpanded) {
            return;
        }
        openCutout();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.placeholderEnabled == z) {
            return;
        }
        AppCompatTextView appCompatTextView = this.placeholderTextView;
        if (!z) {
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            this.placeholderTextView = null;
        } else if (appCompatTextView != null) {
            this.inputFrame.addView(appCompatTextView);
            this.placeholderTextView.setVisibility(0);
        }
        this.placeholderEnabled = z;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.inputFrame;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        updateInputLayoutMargins();
        setEditText((EditText) view);
    }

    public final void animateToExpansionFraction(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.expandedFraction == f) {
            return;
        }
        if (this.animator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.animator = valueAnimator;
            valueAnimator.setInterpolator(Cookie.Companion.resolveThemeInterpolator(getContext(), org.schabi.newpipe.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            this.animator.setDuration(Cookie.Companion.resolveThemeDuration(getContext(), org.schabi.newpipe.R.attr.motionDurationMedium4, Token.LET));
            this.animator.addUpdateListener(new TabLayout.AnonymousClass1(this, 3));
        }
        this.animator.setFloatValues(collapsingTextHelper.expandedFraction, f);
        this.animator.start();
    }

    public final void applyBoxAttributes() {
        Integer num;
        int i;
        int i2;
        MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.drawableState.shapeAppearanceModel;
        ShapeAppearanceModel shapeAppearanceModel2 = this.shapeAppearanceModel;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel2);
        }
        if (this.boxBackgroundMode == 2 && (i = this.boxStrokeWidthPx) > -1 && (i2 = this.boxStrokeColor) != 0) {
            MaterialShapeDrawable materialShapeDrawable2 = this.boxBackground;
            materialShapeDrawable2.drawableState.strokeWidth = i;
            materialShapeDrawable2.invalidateSelf();
            ColorStateList valueOf = ColorStateList.valueOf(i2);
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable2.drawableState;
            if (materialShapeDrawableState.strokeColor != valueOf) {
                materialShapeDrawableState.strokeColor = valueOf;
                materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
            }
        }
        int i3 = this.boxBackgroundColor;
        if (this.boxBackgroundMode == 1) {
            Context context = getContext();
            TypedValue resolve = MathKt.resolve(context, org.schabi.newpipe.R.attr.colorSurface);
            if (resolve != null) {
                int i4 = resolve.resourceId;
                num = Integer.valueOf(i4 != 0 ? context.getColor(i4) : resolve.data);
            } else {
                num = null;
            }
            i3 = ColorUtils.compositeColors(this.boxBackgroundColor, num != null ? num.intValue() : 0);
        }
        this.boxBackgroundColor = i3;
        this.boxBackground.setFillColor(ColorStateList.valueOf(i3));
        MaterialShapeDrawable materialShapeDrawable3 = this.boxUnderlineDefault;
        if (materialShapeDrawable3 != null && this.boxUnderlineFocused != null) {
            if (this.boxStrokeWidthPx > -1 && this.boxStrokeColor != 0) {
                materialShapeDrawable3.setFillColor(this.editText.isFocused() ? ColorStateList.valueOf(this.defaultStrokeColor) : ColorStateList.valueOf(this.boxStrokeColor));
                this.boxUnderlineFocused.setFillColor(ColorStateList.valueOf(this.boxStrokeColor));
            }
            invalidate();
        }
        updateEditTextBoxBackgroundIfNeeded();
    }

    public final int calculateLabelMarginTop() {
        float collapsedTextHeight;
        if (!this.hintEnabled) {
            return 0;
        }
        int i = this.boxBackgroundMode;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (i == 0) {
            collapsedTextHeight = collapsingTextHelper.getCollapsedTextHeight();
        } else {
            if (i != 2) {
                return 0;
            }
            collapsedTextHeight = collapsingTextHelper.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    public final Fade createPlaceholderFadeTransition() {
        Fade fade = new Fade();
        fade.mDuration = Cookie.Companion.resolveThemeDuration(getContext(), org.schabi.newpipe.R.attr.motionDurationShort2, 87);
        fade.mInterpolator = Cookie.Companion.resolveThemeInterpolator(getContext(), org.schabi.newpipe.R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        return fade;
    }

    public final boolean cutoutEnabled() {
        return this.hintEnabled && !TextUtils.isEmpty(this.hint) && (this.boxBackground instanceof CutoutDrawable);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.editText;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.originalHint != null) {
            boolean z = this.isProvidingHint;
            this.isProvidingHint = false;
            CharSequence hint = editText.getHint();
            this.editText.setHint(this.originalHint);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.editText.setHint(hint);
                this.isProvidingHint = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.inputFrame;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.editText) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.restoringSavedState = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.restoringSavedState = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        super.draw(canvas);
        boolean z = this.hintEnabled;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (z) {
            collapsingTextHelper.draw(canvas);
        }
        if (this.boxUnderlineFocused == null || (materialShapeDrawable = this.boxUnderlineDefault) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.editText.isFocused()) {
            Rect bounds = this.boxUnderlineFocused.getBounds();
            Rect bounds2 = this.boxUnderlineDefault.getBounds();
            float f = collapsingTextHelper.expandedFraction;
            int centerX = bounds2.centerX();
            bounds.left = AnimationUtils.lerp(f, centerX, bounds2.left);
            bounds.right = AnimationUtils.lerp(f, centerX, bounds2.right);
            this.boxUnderlineFocused.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.inDrawableStateChanged
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.inDrawableStateChanged = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            com.google.android.material.internal.CollapsingTextHelper r3 = r4.collapsingTextHelper
            if (r3 == 0) goto L2f
            r3.state = r1
            android.content.res.ColorStateList r1 = r3.collapsedTextColor
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.expandedTextColor
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.recalculate(r2)
            r1 = r0
            goto L30
        L2f:
            r1 = r2
        L30:
            android.widget.EditText r3 = r4.editText
            if (r3 == 0) goto L47
            java.util.WeakHashMap r3 = androidx.core.view.ViewCompat.sViewPropertyAnimatorMap
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L43
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L43
            goto L44
        L43:
            r0 = r2
        L44:
            r4.updateLabelState(r0, r2)
        L47:
            r4.updateEditTextBackground()
            r4.updateTextInputBoxState()
            if (r1 == 0) goto L52
            r4.invalidate()
        L52:
            r4.inDrawableStateChanged = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.editText;
        if (editText == null) {
            return super.getBaseline();
        }
        return calculateLabelMarginTop() + getPaddingTop() + editText.getBaseline();
    }

    public MaterialShapeDrawable getBoxBackground() {
        int i = this.boxBackgroundMode;
        if (i == 1 || i == 2) {
            return this.boxBackground;
        }
        Node$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public int getBoxBackgroundColor() {
        return this.boxBackgroundColor;
    }

    public int getBoxBackgroundMode() {
        return this.boxBackgroundMode;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.boxCollapsedPaddingTopPx;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return isLayoutRtl ? shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(rectF) : shapeAppearanceModel.bottomRightCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return isLayoutRtl ? shapeAppearanceModel.bottomRightCornerSize.getCornerSize(rectF) : shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return isLayoutRtl ? shapeAppearanceModel.topLeftCornerSize.getCornerSize(rectF) : shapeAppearanceModel.topRightCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return isLayoutRtl ? shapeAppearanceModel.topRightCornerSize.getCornerSize(rectF) : shapeAppearanceModel.topLeftCornerSize.getCornerSize(rectF);
    }

    public int getBoxStrokeColor() {
        return this.focusedStrokeColor;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.strokeErrorColor;
    }

    public int getBoxStrokeWidth() {
        return this.boxStrokeWidthDefaultPx;
    }

    public int getBoxStrokeWidthFocused() {
        return this.boxStrokeWidthFocusedPx;
    }

    public int getCounterMaxLength() {
        return this.counterMaxLength;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.counterEnabled && this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.counterOverflowTextColor;
    }

    public ColorStateList getCounterTextColor() {
        return this.counterTextColor;
    }

    public ColorStateList getCursorColor() {
        return this.cursorColor;
    }

    public ColorStateList getCursorErrorColor() {
        return this.cursorErrorColor;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.defaultHintTextColor;
    }

    public final MaterialShapeDrawable getDropDownMaterialShapeDrawable(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(org.schabi.newpipe.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : 0.0f;
        EditText editText = this.editText;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(org.schabi.newpipe.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(org.schabi.newpipe.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        int i = 13;
        RoundedCornerTreatment roundedCornerTreatment = new RoundedCornerTreatment(i);
        RoundedCornerTreatment roundedCornerTreatment2 = new RoundedCornerTreatment(i);
        RoundedCornerTreatment roundedCornerTreatment3 = new RoundedCornerTreatment(i);
        RoundedCornerTreatment roundedCornerTreatment4 = new RoundedCornerTreatment(i);
        int i2 = 1;
        BlockHandlerDef blockHandlerDef = new BlockHandlerDef(i2);
        BlockHandlerDef blockHandlerDef2 = new BlockHandlerDef(i2);
        BlockHandlerDef blockHandlerDef3 = new BlockHandlerDef(i2);
        BlockHandlerDef blockHandlerDef4 = new BlockHandlerDef(i2);
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(f);
        AbsoluteCornerSize absoluteCornerSize2 = new AbsoluteCornerSize(f);
        AbsoluteCornerSize absoluteCornerSize3 = new AbsoluteCornerSize(dimensionPixelOffset);
        AbsoluteCornerSize absoluteCornerSize4 = new AbsoluteCornerSize(dimensionPixelOffset);
        ShapeAppearanceModel shapeAppearanceModel = new ShapeAppearanceModel();
        shapeAppearanceModel.topLeftCorner = roundedCornerTreatment;
        shapeAppearanceModel.topRightCorner = roundedCornerTreatment2;
        shapeAppearanceModel.bottomRightCorner = roundedCornerTreatment3;
        shapeAppearanceModel.bottomLeftCorner = roundedCornerTreatment4;
        shapeAppearanceModel.topLeftCornerSize = absoluteCornerSize;
        shapeAppearanceModel.topRightCornerSize = absoluteCornerSize2;
        shapeAppearanceModel.bottomRightCornerSize = absoluteCornerSize4;
        shapeAppearanceModel.bottomLeftCornerSize = absoluteCornerSize3;
        shapeAppearanceModel.topEdge = blockHandlerDef;
        shapeAppearanceModel.rightEdge = blockHandlerDef2;
        shapeAppearanceModel.bottomEdge = blockHandlerDef3;
        shapeAppearanceModel.leftEdge = blockHandlerDef4;
        EditText editText2 = this.editText;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = MaterialShapeDrawable.clearPaint;
            TypedValue resolve = MathKt.resolve(context, org.schabi.newpipe.R.attr.colorSurface);
            if (resolve == null) {
                throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", "MaterialShapeDrawable", context.getResources().getResourceName(org.schabi.newpipe.R.attr.colorSurface)));
            }
            int i3 = resolve.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i3 != 0 ? context.getColor(i3) : resolve.data);
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(dropDownBackgroundTintList);
        materialShapeDrawable.setElevation(popupElevation);
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.padding == null) {
            materialShapeDrawableState.padding = new Rect();
        }
        materialShapeDrawable.drawableState.padding.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        materialShapeDrawable.invalidateSelf();
        return materialShapeDrawable;
    }

    public EditText getEditText() {
        return this.editText;
    }

    public CharSequence getEndIconContentDescription() {
        return this.endLayout.endIconView.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.endLayout.endIconView.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.endLayout.endIconMinSize;
    }

    public int getEndIconMode() {
        return this.endLayout.endIconMode;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.endLayout.endIconScaleType;
    }

    public CheckableImageButton getEndIconView() {
        return this.endLayout.endIconView;
    }

    public CharSequence getError() {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.errorEnabled) {
            return indicatorViewController.errorText;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.indicatorViewController.errorViewAccessibilityLiveRegion;
    }

    public CharSequence getErrorContentDescription() {
        return this.indicatorViewController.errorViewContentDescription;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.indicatorViewController.errorView;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.endLayout.errorIconView.getDrawable();
    }

    public CharSequence getHelperText() {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (indicatorViewController.helperTextEnabled) {
            return indicatorViewController.helperText;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.indicatorViewController.helperTextView;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.hintEnabled) {
            return this.hint;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.collapsingTextHelper.getCollapsedTextHeight();
    }

    public final int getHintCurrentCollapsedTextColor() {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        return collapsingTextHelper.getCurrentColor(collapsingTextHelper.collapsedTextColor);
    }

    public ColorStateList getHintTextColor() {
        return this.focusedTextColor;
    }

    public final int getLabelLeftBoundAlignedWithPrefixAndSuffix(int i, boolean z) {
        return ((z || getPrefixText() == null) ? (!z || getSuffixText() == null) ? this.editText.getCompoundPaddingLeft() : this.endLayout.getSuffixTextEndOffset() : this.startLayout.getPrefixTextStartOffset()) + i;
    }

    public final int getLabelRightBoundAlignedWithPrefixAndSuffix(int i, boolean z) {
        return i - ((z || getSuffixText() == null) ? (!z || getPrefixText() == null) ? this.editText.getCompoundPaddingRight() : this.startLayout.getPrefixTextStartOffset() : this.endLayout.getSuffixTextEndOffset());
    }

    public LengthCounter getLengthCounter() {
        return this.lengthCounter;
    }

    public int getMaxEms() {
        return this.maxEms;
    }

    public int getMaxWidth() {
        return this.maxWidth;
    }

    public int getMinEms() {
        return this.minEms;
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.endLayout.endIconView.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.endLayout.endIconView.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.placeholderEnabled) {
            return this.placeholderText;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.placeholderTextAppearance;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.placeholderTextColor;
    }

    public CharSequence getPrefixText() {
        return this.startLayout.prefixText;
    }

    public ColorStateList getPrefixTextColor() {
        return this.startLayout.prefixTextView.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.startLayout.prefixTextView;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.shapeAppearanceModel;
    }

    public CharSequence getStartIconContentDescription() {
        return this.startLayout.startIconView.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.startLayout.startIconView.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.startLayout.startIconMinSize;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.startLayout.startIconScaleType;
    }

    public CharSequence getSuffixText() {
        return this.endLayout.suffixText;
    }

    public ColorStateList getSuffixTextColor() {
        return this.endLayout.suffixTextView.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.endLayout.suffixTextView;
    }

    public Typeface getTypeface() {
        return this.typeface;
    }

    public final void onApplyBoxBackgroundMode() {
        int i = this.boxBackgroundMode;
        if (i == 0) {
            this.boxBackground = null;
            this.boxUnderlineDefault = null;
            this.boxUnderlineFocused = null;
        } else if (i == 1) {
            this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
            this.boxUnderlineDefault = new MaterialShapeDrawable();
            this.boxUnderlineFocused = new MaterialShapeDrawable();
        } else {
            if (i != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(new StringBuilder(), this.boxBackgroundMode, " is illegal; only @BoxBackgroundMode constants are supported."));
                return;
            }
            if (!this.hintEnabled || (this.boxBackground instanceof CutoutDrawable)) {
                this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
            } else {
                ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
                int i2 = CutoutDrawable.$r8$clinit;
                if (shapeAppearanceModel == null) {
                    shapeAppearanceModel = new ShapeAppearanceModel();
                }
                CutoutDrawable.CutoutDrawableState cutoutDrawableState = new CutoutDrawable.CutoutDrawableState(shapeAppearanceModel, new RectF());
                CutoutDrawable.ImplApi18 implApi18 = new CutoutDrawable.ImplApi18(cutoutDrawableState);
                ((CutoutDrawable) implApi18).drawableState = cutoutDrawableState;
                this.boxBackground = implApi18;
            }
            this.boxUnderlineDefault = null;
            this.boxUnderlineFocused = null;
        }
        updateEditTextBoxBackgroundIfNeeded();
        updateTextInputBoxState();
        if (this.boxBackgroundMode == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (BundleKt.isFontScaleAtLeast1_3(getContext())) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.editText != null && this.boxBackgroundMode == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.editText;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                editText.setPaddingRelative(editText.getPaddingStart(), getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_filled_edittext_font_2_0_padding_top), this.editText.getPaddingEnd(), getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (BundleKt.isFontScaleAtLeast1_3(getContext())) {
                EditText editText2 = this.editText;
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_filled_edittext_font_1_3_padding_top), this.editText.getPaddingEnd(), getResources().getDimensionPixelSize(org.schabi.newpipe.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.boxBackgroundMode != 0) {
            updateInputLayoutMargins();
        }
        EditText editText3 = this.editText;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.boxBackgroundMode;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTextHelper.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.globalLayoutListenerAdded = false;
        if (this.editText != null && this.editText.getMeasuredHeight() < (max = Math.max(endCompoundLayout.getMeasuredHeight(), this.startLayout.getMeasuredHeight()))) {
            this.editText.setMinimumHeight(max);
            z = true;
        }
        boolean updateDummyDrawables = updateDummyDrawables();
        if (z || updateDummyDrawables) {
            this.editText.post(new ReportExecutor$$ExternalSyntheticLambda0(this, 19));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.editText;
        if (editText != null) {
            Rect rect = this.tmpRect;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.boxUnderlineDefault;
            if (materialShapeDrawable != null) {
                int i5 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i5 - this.boxStrokeWidthDefaultPx, rect.right, i5);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.boxUnderlineFocused;
            if (materialShapeDrawable2 != null) {
                int i6 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i6 - this.boxStrokeWidthFocusedPx, rect.right, i6);
            }
            if (this.hintEnabled) {
                float textSize = this.editText.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                if (collapsingTextHelper.expandedTextSize != textSize) {
                    collapsingTextHelper.expandedTextSize = textSize;
                    collapsingTextHelper.recalculate(false);
                }
                int gravity = this.editText.getGravity();
                collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
                if (collapsingTextHelper.expandedTextGravity != gravity) {
                    collapsingTextHelper.expandedTextGravity = gravity;
                    collapsingTextHelper.recalculate(false);
                }
                if (this.editText == null) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
                int i7 = rect.bottom;
                Rect rect2 = this.tmpBoundsRect;
                rect2.bottom = i7;
                int i8 = this.boxBackgroundMode;
                int i9 = rect.left;
                if (i8 == 1) {
                    rect2.left = getLabelLeftBoundAlignedWithPrefixAndSuffix(i9, isLayoutRtl);
                    rect2.top = rect.top + this.boxCollapsedPaddingTopPx;
                    rect2.right = getLabelRightBoundAlignedWithPrefixAndSuffix(rect.right, isLayoutRtl);
                } else if (i8 != 2) {
                    rect2.left = getLabelLeftBoundAlignedWithPrefixAndSuffix(i9, isLayoutRtl);
                    rect2.top = getPaddingTop();
                    rect2.right = getLabelRightBoundAlignedWithPrefixAndSuffix(rect.right, isLayoutRtl);
                } else {
                    rect2.left = this.editText.getPaddingLeft() + i9;
                    rect2.top = rect.top - calculateLabelMarginTop();
                    rect2.right = rect.right - this.editText.getPaddingRight();
                }
                int i10 = rect2.left;
                int i11 = rect2.top;
                int i12 = rect2.right;
                int i13 = rect2.bottom;
                Rect rect3 = collapsingTextHelper.collapsedBounds;
                if (rect3.left != i10 || rect3.top != i11 || rect3.right != i12 || rect3.bottom != i13) {
                    rect3.set(i10, i11, i12, i13);
                    collapsingTextHelper.boundsChanged = true;
                }
                if (this.editText == null) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                TextPaint textPaint = collapsingTextHelper.tmpPaint;
                textPaint.setTextSize(collapsingTextHelper.expandedTextSize);
                textPaint.setTypeface(collapsingTextHelper.expandedTypeface);
                textPaint.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
                float f = -textPaint.ascent();
                rect2.left = this.editText.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.boxBackgroundMode != 1 || this.editText.getMinLines() > 1) ? rect.top + this.editText.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.editText.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.boxBackgroundMode != 1 || this.editText.getMinLines() > 1) ? rect.bottom - this.editText.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i14 = rect2.left;
                int i15 = rect2.top;
                int i16 = rect2.right;
                Rect rect4 = collapsingTextHelper.expandedBounds;
                if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i14, i15, i16, compoundPaddingBottom);
                    collapsingTextHelper.boundsChanged = true;
                }
                collapsingTextHelper.recalculate(false);
                if (!cutoutEnabled() || this.hintExpanded) {
                    return;
                }
                openCutout();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        EditText editText;
        super.onMeasure(i, i2);
        boolean z = this.globalLayoutListenerAdded;
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (!z) {
            endCompoundLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.globalLayoutListenerAdded = true;
        }
        if (this.placeholderTextView != null && (editText = this.editText) != null) {
            this.placeholderTextView.setGravity(editText.getGravity());
            this.placeholderTextView.setPadding(this.editText.getCompoundPaddingLeft(), this.editText.getCompoundPaddingTop(), this.editText.getCompoundPaddingRight(), this.editText.getCompoundPaddingBottom());
        }
        endCompoundLayout.updateSuffixTextViewPadding();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.mSuperState);
        setError(savedState.error);
        if (savedState.isEndIconChecked) {
            post(new LiveData.AnonymousClass1(this, 17));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = i == 1;
        if (z != this.areCornerRadiiRtl) {
            CornerSize cornerSize = this.shapeAppearanceModel.topLeftCornerSize;
            RectF rectF = this.tmpRectF;
            float cornerSize2 = cornerSize.getCornerSize(rectF);
            float cornerSize3 = this.shapeAppearanceModel.topRightCornerSize.getCornerSize(rectF);
            float cornerSize4 = this.shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(rectF);
            float cornerSize5 = this.shapeAppearanceModel.bottomRightCornerSize.getCornerSize(rectF);
            ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
            Jsoup jsoup = shapeAppearanceModel.topLeftCorner;
            Jsoup jsoup2 = shapeAppearanceModel.topRightCorner;
            Jsoup jsoup3 = shapeAppearanceModel.bottomLeftCorner;
            Jsoup jsoup4 = shapeAppearanceModel.bottomRightCorner;
            BlockHandlerDef blockHandlerDef = new BlockHandlerDef(1);
            BlockHandlerDef blockHandlerDef2 = new BlockHandlerDef(1);
            BlockHandlerDef blockHandlerDef3 = new BlockHandlerDef(1);
            BlockHandlerDef blockHandlerDef4 = new BlockHandlerDef(1);
            AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(cornerSize3);
            AbsoluteCornerSize absoluteCornerSize2 = new AbsoluteCornerSize(cornerSize2);
            AbsoluteCornerSize absoluteCornerSize3 = new AbsoluteCornerSize(cornerSize5);
            AbsoluteCornerSize absoluteCornerSize4 = new AbsoluteCornerSize(cornerSize4);
            ShapeAppearanceModel shapeAppearanceModel2 = new ShapeAppearanceModel();
            shapeAppearanceModel2.topLeftCorner = jsoup2;
            shapeAppearanceModel2.topRightCorner = jsoup;
            shapeAppearanceModel2.bottomRightCorner = jsoup3;
            shapeAppearanceModel2.bottomLeftCorner = jsoup4;
            shapeAppearanceModel2.topLeftCornerSize = absoluteCornerSize;
            shapeAppearanceModel2.topRightCornerSize = absoluteCornerSize2;
            shapeAppearanceModel2.bottomRightCornerSize = absoluteCornerSize4;
            shapeAppearanceModel2.bottomLeftCornerSize = absoluteCornerSize3;
            shapeAppearanceModel2.topEdge = blockHandlerDef;
            shapeAppearanceModel2.rightEdge = blockHandlerDef2;
            shapeAppearanceModel2.bottomEdge = blockHandlerDef3;
            shapeAppearanceModel2.leftEdge = blockHandlerDef4;
            this.areCornerRadiiRtl = z;
            setShapeAppearanceModel(shapeAppearanceModel2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (shouldShowError()) {
            savedState.error = getError();
        }
        EndCompoundLayout endCompoundLayout = this.endLayout;
        savedState.isEndIconChecked = endCompoundLayout.endIconMode != 0 && endCompoundLayout.endIconView.checked;
        return savedState;
    }

    public final void openCutout() {
        float f;
        float f2;
        float f3;
        RectF rectF;
        float f4;
        int i;
        float f5;
        int i2;
        if (cutoutEnabled()) {
            int width = this.editText.getWidth();
            int gravity = this.editText.getGravity();
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            boolean calculateIsRtl = collapsingTextHelper.calculateIsRtl(collapsingTextHelper.text);
            collapsingTextHelper.isRtl = calculateIsRtl;
            Rect rect = collapsingTextHelper.collapsedBounds;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (calculateIsRtl) {
                        i2 = rect.left;
                        f3 = i2;
                    } else {
                        f = rect.right;
                        f2 = collapsingTextHelper.collapsedTextWidth;
                    }
                } else if (calculateIsRtl) {
                    f = rect.right;
                    f2 = collapsingTextHelper.collapsedTextWidth;
                } else {
                    i2 = rect.left;
                    f3 = i2;
                }
                float max = Math.max(f3, rect.left);
                rectF = this.tmpRectF;
                rectF.left = max;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f4 = (width / 2.0f) + (collapsingTextHelper.collapsedTextWidth / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (collapsingTextHelper.isRtl) {
                        f5 = collapsingTextHelper.collapsedTextWidth;
                        f4 = f5 + max;
                    } else {
                        i = rect.right;
                        f4 = i;
                    }
                } else if (collapsingTextHelper.isRtl) {
                    i = rect.right;
                    f4 = i;
                } else {
                    f5 = collapsingTextHelper.collapsedTextWidth;
                    f4 = f5 + max;
                }
                rectF.right = Math.min(f4, rect.right);
                rectF.bottom = collapsingTextHelper.getCollapsedTextHeight() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f6 = rectF.left;
                float f7 = this.boxLabelCutoutPaddingPx;
                rectF.left = f6 - f7;
                rectF.right += f7;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.boxStrokeWidthPx);
                CutoutDrawable cutoutDrawable = (CutoutDrawable) this.boxBackground;
                cutoutDrawable.getClass();
                cutoutDrawable.setCutout(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f2 = collapsingTextHelper.collapsedTextWidth / 2.0f;
            f3 = f - f2;
            float max2 = Math.max(f3, rect.left);
            rectF = this.tmpRectF;
            rectF.left = max2;
            rectF.top = rect.top;
            if (gravity != 17) {
            }
            f4 = (width / 2.0f) + (collapsingTextHelper.collapsedTextWidth / 2.0f);
            rectF.right = Math.min(f4, rect.right);
            rectF.bottom = collapsingTextHelper.getCollapsedTextHeight() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.boxBackgroundColor != i) {
            this.boxBackgroundColor = i;
            this.defaultFilledBackgroundColor = i;
            this.focusedFilledBackgroundColor = i;
            this.hoveredFilledBackgroundColor = i;
            applyBoxAttributes();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.defaultFilledBackgroundColor = defaultColor;
        this.boxBackgroundColor = defaultColor;
        this.disabledFilledBackgroundColor = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.focusedFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.hoveredFilledBackgroundColor = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        applyBoxAttributes();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.boxBackgroundMode) {
            return;
        }
        this.boxBackgroundMode = i;
        if (this.editText != null) {
            onApplyBoxBackgroundMode();
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.boxCollapsedPaddingTopPx = i;
    }

    public void setBoxCornerFamily(int i) {
        FragmentChannelBinding builder = this.shapeAppearanceModel.toBuilder();
        CornerSize cornerSize = this.shapeAppearanceModel.topLeftCornerSize;
        builder.rootView = RangesKt.createCornerTreatment(i);
        builder.channelKaomoji = cornerSize;
        CornerSize cornerSize2 = this.shapeAppearanceModel.topRightCornerSize;
        builder.channelAvatarView = RangesKt.createCornerTreatment(i);
        builder.channelSubscriberView = cornerSize2;
        CornerSize cornerSize3 = this.shapeAppearanceModel.bottomLeftCornerSize;
        builder.channelBannerImage = RangesKt.createCornerTreatment(i);
        builder.errorContentNotSupported = cornerSize3;
        CornerSize cornerSize4 = this.shapeAppearanceModel.bottomRightCornerSize;
        builder.subChannelAvatarView = RangesKt.createCornerTreatment(i);
        builder.channelTitleView = cornerSize4;
        this.shapeAppearanceModel = builder.build();
        applyBoxAttributes();
    }

    public void setBoxStrokeColor(int i) {
        if (this.focusedStrokeColor != i) {
            this.focusedStrokeColor = i;
            updateTextInputBoxState();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.defaultStrokeColor = colorStateList.getDefaultColor();
            this.disabledColor = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.hoveredStrokeColor = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.focusedStrokeColor = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.focusedStrokeColor != colorStateList.getDefaultColor()) {
            this.focusedStrokeColor = colorStateList.getDefaultColor();
        }
        updateTextInputBoxState();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.strokeErrorColor != colorStateList) {
            this.strokeErrorColor = colorStateList;
            updateTextInputBoxState();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.boxStrokeWidthDefaultPx = i;
        updateTextInputBoxState();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.boxStrokeWidthFocusedPx = i;
        updateTextInputBoxState();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.counterEnabled != z) {
            IndicatorViewController indicatorViewController = this.indicatorViewController;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.counterView = appCompatTextView;
                appCompatTextView.setId(org.schabi.newpipe.R.id.textinput_counter);
                Typeface typeface = this.typeface;
                if (typeface != null) {
                    this.counterView.setTypeface(typeface);
                }
                this.counterView.setMaxLines(1);
                indicatorViewController.addIndicator(this.counterView, 2);
                ((ViewGroup.MarginLayoutParams) this.counterView.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(org.schabi.newpipe.R.dimen.mtrl_textinput_counter_margin_start));
                updateCounterTextAppearanceAndColor();
                if (this.counterView != null) {
                    EditText editText = this.editText;
                    updateCounter(editText != null ? editText.getText() : null);
                }
            } else {
                indicatorViewController.removeIndicator(this.counterView, 2);
                this.counterView = null;
            }
            this.counterEnabled = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.counterMaxLength != i) {
            if (i > 0) {
                this.counterMaxLength = i;
            } else {
                this.counterMaxLength = -1;
            }
            if (!this.counterEnabled || this.counterView == null) {
                return;
            }
            EditText editText = this.editText;
            updateCounter(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.counterOverflowTextAppearance != i) {
            this.counterOverflowTextAppearance = i;
            updateCounterTextAppearanceAndColor();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.counterOverflowTextColor != colorStateList) {
            this.counterOverflowTextColor = colorStateList;
            updateCounterTextAppearanceAndColor();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.counterTextAppearance != i) {
            this.counterTextAppearance = i;
            updateCounterTextAppearanceAndColor();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.counterTextColor != colorStateList) {
            this.counterTextColor = colorStateList;
            updateCounterTextAppearanceAndColor();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.cursorColor != colorStateList) {
            this.cursorColor = colorStateList;
            updateCursorColor();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.cursorErrorColor != colorStateList) {
            this.cursorErrorColor = colorStateList;
            if (shouldShowError() || (this.counterView != null && this.counterOverflowed)) {
                updateCursorColor();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.defaultHintTextColor = colorStateList;
        this.focusedTextColor = colorStateList;
        if (this.editText != null) {
            updateLabelState(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        recursiveSetEnabled(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.endLayout.endIconView.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.endLayout.endIconView.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        CharSequence text = i != 0 ? endCompoundLayout.getResources().getText(i) : null;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        Drawable drawable = i != 0 ? Cookie.Companion.getDrawable(endCompoundLayout.getContext(), i) : null;
        TextInputLayout textInputLayout = endCompoundLayout.textInputLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            CharsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            CharsKt.refreshIconDrawableState(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList);
        }
    }

    public void setEndIconMinSize(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (i < 0) {
            endCompoundLayout.getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("endIconSize cannot be less than 0");
        } else if (i != endCompoundLayout.endIconMinSize) {
            endCompoundLayout.endIconMinSize = i;
            CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
            CheckableImageButton checkableImageButton2 = endCompoundLayout.errorIconView;
            checkableImageButton2.setMinimumWidth(i);
            checkableImageButton2.setMinimumHeight(i);
        }
    }

    public void setEndIconMode(int i) {
        this.endLayout.setEndIconMode(i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.endIconOnLongClickListener;
        checkableImageButton.setOnClickListener(onClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconScaleType = scaleType;
        endCompoundLayout.endIconView.setScaleType(scaleType);
        endCompoundLayout.errorIconView.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.endIconTintList != colorStateList) {
            endCompoundLayout.endIconTintList = colorStateList;
            CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, colorStateList, endCompoundLayout.endIconTintMode);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.endIconTintMode != mode) {
            endCompoundLayout.endIconTintMode = mode;
            CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.endLayout.setEndIconVisible(z);
    }

    public void setError(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (!indicatorViewController.errorEnabled) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            indicatorViewController.hideError();
            return;
        }
        indicatorViewController.cancelCaptionAnimator();
        indicatorViewController.errorText = charSequence;
        indicatorViewController.errorView.setText(charSequence);
        int i = indicatorViewController.captionDisplayed;
        if (i != 1) {
            indicatorViewController.captionToShow = 1;
        }
        indicatorViewController.updateCaptionViewsVisibility(i, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.errorView, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.errorViewAccessibilityLiveRegion = i;
        AppCompatTextView appCompatTextView = indicatorViewController.errorView;
        if (appCompatTextView != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            appCompatTextView.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.errorViewContentDescription = charSequence;
        AppCompatTextView appCompatTextView = indicatorViewController.errorView;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        TextInputLayout textInputLayout = indicatorViewController.textInputView;
        if (indicatorViewController.errorEnabled == z) {
            return;
        }
        indicatorViewController.cancelCaptionAnimator();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context);
            indicatorViewController.errorView = appCompatTextView;
            appCompatTextView.setId(org.schabi.newpipe.R.id.textinput_error);
            indicatorViewController.errorView.setTextAlignment(5);
            Typeface typeface = indicatorViewController.typeface;
            if (typeface != null) {
                indicatorViewController.errorView.setTypeface(typeface);
            }
            int i = indicatorViewController.errorTextAppearance;
            indicatorViewController.errorTextAppearance = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.errorView;
            if (appCompatTextView2 != null) {
                indicatorViewController.textInputView.setTextAppearanceCompatWithErrorFallback(appCompatTextView2, i);
            }
            ColorStateList colorStateList = indicatorViewController.errorViewTextColor;
            indicatorViewController.errorViewTextColor = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.errorView;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = indicatorViewController.errorViewContentDescription;
            indicatorViewController.errorViewContentDescription = charSequence;
            AppCompatTextView appCompatTextView4 = indicatorViewController.errorView;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i2 = indicatorViewController.errorViewAccessibilityLiveRegion;
            indicatorViewController.errorViewAccessibilityLiveRegion = i2;
            AppCompatTextView appCompatTextView5 = indicatorViewController.errorView;
            if (appCompatTextView5 != null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                appCompatTextView5.setAccessibilityLiveRegion(i2);
            }
            indicatorViewController.errorView.setVisibility(4);
            indicatorViewController.addIndicator(indicatorViewController.errorView, 0);
        } else {
            indicatorViewController.hideError();
            indicatorViewController.removeIndicator(indicatorViewController.errorView, 0);
            indicatorViewController.errorView = null;
            textInputLayout.updateEditTextBackground();
            textInputLayout.updateTextInputBoxState();
        }
        indicatorViewController.errorEnabled = z;
    }

    public void setErrorIconDrawable(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.setErrorIconDrawable(i != 0 ? Cookie.Companion.getDrawable(endCompoundLayout.getContext(), i) : null);
        CharsKt.refreshIconDrawableState(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.errorIconView;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.errorIconOnLongClickListener;
        checkableImageButton.setOnClickListener(onClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.errorIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.errorIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.errorIconTintList != colorStateList) {
            endCompoundLayout.errorIconTintList = colorStateList;
            CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, colorStateList, endCompoundLayout.errorIconTintMode);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.errorIconTintMode != mode) {
            endCompoundLayout.errorIconTintMode = mode;
            CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList, mode);
        }
    }

    public void setErrorTextAppearance(int i) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.errorTextAppearance = i;
        AppCompatTextView appCompatTextView = indicatorViewController.errorView;
        if (appCompatTextView != null) {
            indicatorViewController.textInputView.setTextAppearanceCompatWithErrorFallback(appCompatTextView, i);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.errorViewTextColor = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.errorView;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.expandedHintEnabled != z) {
            this.expandedHintEnabled = z;
            updateLabelState(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        if (isEmpty) {
            if (indicatorViewController.helperTextEnabled) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!indicatorViewController.helperTextEnabled) {
            setHelperTextEnabled(true);
        }
        indicatorViewController.cancelCaptionAnimator();
        indicatorViewController.helperText = charSequence;
        indicatorViewController.helperTextView.setText(charSequence);
        int i = indicatorViewController.captionDisplayed;
        if (i != 2) {
            indicatorViewController.captionToShow = 2;
        }
        indicatorViewController.updateCaptionViewsVisibility(i, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.helperTextView, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.helperTextViewTextColor = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.helperTextView;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        final IndicatorViewController indicatorViewController = this.indicatorViewController;
        TextInputLayout textInputLayout = indicatorViewController.textInputView;
        if (indicatorViewController.helperTextEnabled == z) {
            return;
        }
        indicatorViewController.cancelCaptionAnimator();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context);
            indicatorViewController.helperTextView = appCompatTextView;
            appCompatTextView.setId(org.schabi.newpipe.R.id.textinput_helper_text);
            indicatorViewController.helperTextView.setTextAlignment(5);
            Typeface typeface = indicatorViewController.typeface;
            if (typeface != null) {
                indicatorViewController.helperTextView.setTypeface(typeface);
            }
            indicatorViewController.helperTextView.setVisibility(4);
            AppCompatTextView appCompatTextView2 = indicatorViewController.helperTextView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            appCompatTextView2.setAccessibilityLiveRegion(1);
            int i = indicatorViewController.helperTextTextAppearance;
            indicatorViewController.helperTextTextAppearance = i;
            AppCompatTextView appCompatTextView3 = indicatorViewController.helperTextView;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTextAppearance(i);
            }
            ColorStateList colorStateList = indicatorViewController.helperTextViewTextColor;
            indicatorViewController.helperTextViewTextColor = colorStateList;
            AppCompatTextView appCompatTextView4 = indicatorViewController.helperTextView;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            indicatorViewController.addIndicator(indicatorViewController.helperTextView, 1);
            indicatorViewController.helperTextView.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.textfield.IndicatorViewController.2
                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    EditText editText = IndicatorViewController.this.textInputView.getEditText();
                    if (editText != null) {
                        accessibilityNodeInfo.setLabeledBy(editText);
                    }
                }
            });
        } else {
            indicatorViewController.cancelCaptionAnimator();
            int i2 = indicatorViewController.captionDisplayed;
            if (i2 == 2) {
                indicatorViewController.captionToShow = 0;
            }
            indicatorViewController.updateCaptionViewsVisibility(i2, indicatorViewController.captionToShow, indicatorViewController.shouldAnimateCaptionView(indicatorViewController.helperTextView, ""));
            indicatorViewController.removeIndicator(indicatorViewController.helperTextView, 1);
            indicatorViewController.helperTextView = null;
            textInputLayout.updateEditTextBackground();
            textInputLayout.updateTextInputBoxState();
        }
        indicatorViewController.helperTextEnabled = z;
    }

    public void setHelperTextTextAppearance(int i) {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        indicatorViewController.helperTextTextAppearance = i;
        AppCompatTextView appCompatTextView = indicatorViewController.helperTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    public void setHintAnimationEnabled(boolean z) {
        this.hintAnimationEnabled = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.hintEnabled) {
            this.hintEnabled = z;
            if (z) {
                CharSequence hint = this.editText.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.hint)) {
                        setHint(hint);
                    }
                    this.editText.setHint((CharSequence) null);
                }
                this.isProvidingHint = true;
            } else {
                this.isProvidingHint = false;
                if (!TextUtils.isEmpty(this.hint) && TextUtils.isEmpty(this.editText.getHint())) {
                    this.editText.setHint(this.hint);
                }
                setHintInternal(null);
            }
            if (this.editText != null) {
                updateInputLayoutMargins();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        collapsingTextHelper.setCollapsedTextAppearance(i);
        this.focusedTextColor = collapsingTextHelper.collapsedTextColor;
        if (this.editText != null) {
            updateLabelState(false, false);
            updateInputLayoutMargins();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.focusedTextColor != colorStateList) {
            if (this.defaultHintTextColor == null) {
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                if (collapsingTextHelper.collapsedTextColor != colorStateList) {
                    collapsingTextHelper.collapsedTextColor = colorStateList;
                    collapsingTextHelper.recalculate(false);
                }
            }
            this.focusedTextColor = colorStateList;
            if (this.editText != null) {
                updateLabelState(false, false);
            }
        }
    }

    public void setLengthCounter(LengthCounter lengthCounter) {
        this.lengthCounter = lengthCounter;
    }

    public void setMaxEms(int i) {
        this.maxEms = i;
        EditText editText = this.editText;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxEms(i);
    }

    public void setMaxWidth(int i) {
        this.maxWidth = i;
        EditText editText = this.editText;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.minEms = i;
        EditText editText = this.editText;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinEms(i);
    }

    public void setMinWidth(int i) {
        this.minWidth = i;
        EditText editText = this.editText;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconView.setContentDescription(i != 0 ? endCompoundLayout.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconView.setImageDrawable(i != 0 ? Cookie.Companion.getDrawable(endCompoundLayout.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (z && endCompoundLayout.endIconMode != 1) {
            endCompoundLayout.setEndIconMode(1);
        } else if (z) {
            endCompoundLayout.getClass();
        } else {
            endCompoundLayout.setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconTintList = colorStateList;
        CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, colorStateList, endCompoundLayout.endIconTintMode);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconTintMode = mode;
        CharsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.placeholderTextView == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.placeholderTextView = appCompatTextView;
            appCompatTextView.setId(org.schabi.newpipe.R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView2 = this.placeholderTextView;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            appCompatTextView2.setImportantForAccessibility(2);
            Fade createPlaceholderFadeTransition = createPlaceholderFadeTransition();
            this.placeholderFadeIn = createPlaceholderFadeTransition;
            createPlaceholderFadeTransition.mStartDelay = 67L;
            this.placeholderFadeOut = createPlaceholderFadeTransition();
            setPlaceholderTextAppearance(this.placeholderTextAppearance);
            setPlaceholderTextColor(this.placeholderTextColor);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.placeholderEnabled) {
                setPlaceholderTextEnabled(true);
            }
            this.placeholderText = charSequence;
        }
        EditText editText = this.editText;
        updatePlaceholderText(editText == null ? null : editText.getText());
    }

    public void setPlaceholderTextAppearance(int i) {
        this.placeholderTextAppearance = i;
        AppCompatTextView appCompatTextView = this.placeholderTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.placeholderTextColor != colorStateList) {
            this.placeholderTextColor = colorStateList;
            AppCompatTextView appCompatTextView = this.placeholderTextView;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        startCompoundLayout.getClass();
        startCompoundLayout.prefixText = TextUtils.isEmpty(charSequence) ? null : charSequence;
        startCompoundLayout.prefixTextView.setText(charSequence);
        startCompoundLayout.updateVisibility();
    }

    public void setPrefixTextAppearance(int i) {
        this.startLayout.prefixTextView.setTextAppearance(i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.startLayout.prefixTextView.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
        if (materialShapeDrawable == null || materialShapeDrawable.drawableState.shapeAppearanceModel == shapeAppearanceModel) {
            return;
        }
        this.shapeAppearanceModel = shapeAppearanceModel;
        applyBoxAttributes();
    }

    public void setStartIconCheckable(boolean z) {
        this.startLayout.startIconView.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? Cookie.Companion.getDrawable(getContext(), i) : null);
    }

    public void setStartIconMinSize(int i) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (i < 0) {
            startCompoundLayout.getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("startIconSize cannot be less than 0");
        } else if (i != startCompoundLayout.startIconMinSize) {
            startCompoundLayout.startIconMinSize = i;
            CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
            checkableImageButton.setMinimumWidth(i);
            checkableImageButton.setMinimumHeight(i);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
        View.OnLongClickListener onLongClickListener = startCompoundLayout.startIconOnLongClickListener;
        checkableImageButton.setOnClickListener(onClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        startCompoundLayout.startIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        startCompoundLayout.startIconScaleType = scaleType;
        startCompoundLayout.startIconView.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (startCompoundLayout.startIconTintList != colorStateList) {
            startCompoundLayout.startIconTintList = colorStateList;
            CharsKt.applyIconTint(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, colorStateList, startCompoundLayout.startIconTintMode);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (startCompoundLayout.startIconTintMode != mode) {
            startCompoundLayout.startIconTintMode = mode;
            CharsKt.applyIconTint(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, startCompoundLayout.startIconTintList, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.startLayout.setStartIconVisible(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.getClass();
        endCompoundLayout.suffixText = TextUtils.isEmpty(charSequence) ? null : charSequence;
        endCompoundLayout.suffixTextView.setText(charSequence);
        endCompoundLayout.updateSuffixTextVisibility();
    }

    public void setSuffixTextAppearance(int i) {
        this.endLayout.suffixTextView.setTextAppearance(i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.endLayout.suffixTextView.setTextColor(colorStateList);
    }

    public final void setTextAppearanceCompatWithErrorFallback(AppCompatTextView appCompatTextView, int i) {
        try {
            appCompatTextView.setTextAppearance(i);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        appCompatTextView.setTextAppearance(org.schabi.newpipe.R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(getContext().getColor(org.schabi.newpipe.R.color.design_error));
    }

    public void setTextInputAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.editText;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.typeface) {
            this.typeface = typeface;
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            boolean collapsedTypefaceInternal = collapsingTextHelper.setCollapsedTypefaceInternal(typeface);
            boolean expandedTypefaceInternal = collapsingTextHelper.setExpandedTypefaceInternal(typeface);
            if (collapsedTypefaceInternal || expandedTypefaceInternal) {
                collapsingTextHelper.recalculate(false);
            }
            IndicatorViewController indicatorViewController = this.indicatorViewController;
            if (typeface != indicatorViewController.typeface) {
                indicatorViewController.typeface = typeface;
                AppCompatTextView appCompatTextView = indicatorViewController.errorView;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = indicatorViewController.helperTextView;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.counterView;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final boolean shouldShowError() {
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        return (indicatorViewController.captionToShow != 1 || indicatorViewController.errorView == null || TextUtils.isEmpty(indicatorViewController.errorText)) ? false : true;
    }

    public final void updateCounter(Editable editable) {
        ((CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0) this.lengthCounter).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z = this.counterOverflowed;
        int i = this.counterMaxLength;
        if (i == -1) {
            this.counterView.setText(String.valueOf(length));
            this.counterView.setContentDescription(null);
            this.counterOverflowed = false;
        } else {
            this.counterOverflowed = length > i;
            Context context = getContext();
            this.counterView.setContentDescription(context.getString(this.counterOverflowed ? org.schabi.newpipe.R.string.character_counter_overflowed_content_description : org.schabi.newpipe.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.counterMaxLength)));
            if (z != this.counterOverflowed) {
                updateCounterTextAppearanceAndColor();
            }
            String str = BidiFormatter.LRM_STRING;
            BidiFormatter bidiFormatter = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? BidiFormatter.DEFAULT_RTL_INSTANCE : BidiFormatter.DEFAULT_LTR_INSTANCE;
            AppCompatTextView appCompatTextView = this.counterView;
            String string = getContext().getString(org.schabi.newpipe.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.counterMaxLength));
            bidiFormatter.getClass();
            Composer composer = TextDirectionHeuristicsCompat.LTR;
            appCompatTextView.setText(string != null ? bidiFormatter.unicodeWrap(string).toString() : null);
        }
        if (this.editText == null || z == this.counterOverflowed) {
            return;
        }
        updateLabelState(false, false);
        updateTextInputBoxState();
        updateEditTextBackground();
    }

    public final void updateCounterTextAppearanceAndColor() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.counterView;
        if (appCompatTextView != null) {
            setTextAppearanceCompatWithErrorFallback(appCompatTextView, this.counterOverflowed ? this.counterOverflowTextAppearance : this.counterTextAppearance);
            if (!this.counterOverflowed && (colorStateList2 = this.counterTextColor) != null) {
                this.counterView.setTextColor(colorStateList2);
            }
            if (!this.counterOverflowed || (colorStateList = this.counterOverflowTextColor) == null) {
                return;
            }
            this.counterView.setTextColor(colorStateList);
        }
    }

    public final void updateCursorColor() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.cursorColor;
        if (colorStateList2 == null) {
            Context context = getContext();
            TypedValue resolve = MathKt.resolve(context, org.schabi.newpipe.R.attr.colorControlActivated);
            if (resolve != null) {
                int i = resolve.resourceId;
                if (i != 0) {
                    colorStateList2 = StaticImageDecoderKt.getColorStateList(context, i);
                } else {
                    int i2 = resolve.data;
                    if (i2 != 0) {
                        colorStateList2 = ColorStateList.valueOf(i2);
                    }
                }
            }
            colorStateList2 = null;
        }
        EditText editText = this.editText;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable mutate = this.editText.getTextCursorDrawable().mutate();
        if ((shouldShowError() || (this.counterView != null && this.counterOverflowed)) && (colorStateList = this.cursorErrorColor) != null) {
            colorStateList2 = colorStateList;
        }
        mutate.setTintList(colorStateList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean updateDummyDrawables() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.updateDummyDrawables():boolean");
    }

    public final void updateEditTextBackground() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.editText;
        if (editText == null || this.boxBackgroundMode != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = DrawableUtils.CHECKED_STATE_SET;
        Drawable mutate = background.mutate();
        if (shouldShowError()) {
            mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
            mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            mutate.clearColorFilter();
            this.editText.refreshDrawableState();
        }
    }

    public final void updateEditTextBoxBackgroundIfNeeded() {
        EditText editText = this.editText;
        if (editText == null || this.boxBackground == null) {
            return;
        }
        if ((this.boxBackgroundApplied || editText.getBackground() == null) && this.boxBackgroundMode != 0) {
            Drawable editTextBoxBackground = getEditTextBoxBackground();
            EditText editText2 = this.editText;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            editText2.setBackground(editTextBoxBackground);
            this.boxBackgroundApplied = true;
        }
    }

    public final void updateInputLayoutMargins() {
        if (this.boxBackgroundMode != 1) {
            FrameLayout frameLayout = this.inputFrame;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int calculateLabelMarginTop = calculateLabelMarginTop();
            if (calculateLabelMarginTop != layoutParams.topMargin) {
                layoutParams.topMargin = calculateLabelMarginTop;
                frameLayout.requestLayout();
            }
        }
    }

    public final void updateLabelState(boolean z, boolean z2) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean isEnabled = isEnabled();
        EditText editText = this.editText;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.editText;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.defaultHintTextColor;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (colorStateList2 != null) {
            collapsingTextHelper.setCollapsedAndExpandedTextColor(colorStateList2);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.defaultHintTextColor;
            int i = this.disabledColor;
            if (colorStateList3 != null) {
                i = colorStateList3.getColorForState(new int[]{-16842910}, i);
            }
            collapsingTextHelper.setCollapsedAndExpandedTextColor(ColorStateList.valueOf(i));
        } else if (shouldShowError()) {
            AppCompatTextView appCompatTextView2 = this.indicatorViewController.errorView;
            collapsingTextHelper.setCollapsedAndExpandedTextColor(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.counterOverflowed && (appCompatTextView = this.counterView) != null) {
            collapsingTextHelper.setCollapsedAndExpandedTextColor(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.focusedTextColor) != null && collapsingTextHelper.collapsedTextColor != colorStateList) {
            collapsingTextHelper.collapsedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
        EndCompoundLayout endCompoundLayout = this.endLayout;
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (z3 || !this.expandedHintEnabled || (isEnabled() && z4)) {
            if (z2 || this.hintExpanded) {
                ValueAnimator valueAnimator = this.animator;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.animator.cancel();
                }
                if (z && this.hintAnimationEnabled) {
                    animateToExpansionFraction(1.0f);
                } else {
                    collapsingTextHelper.setExpansionFraction(1.0f);
                }
                this.hintExpanded = false;
                if (cutoutEnabled()) {
                    openCutout();
                }
                EditText editText3 = this.editText;
                updatePlaceholderText(editText3 != null ? editText3.getText() : null);
                startCompoundLayout.hintExpanded = false;
                startCompoundLayout.updateVisibility();
                endCompoundLayout.hintExpanded = false;
                endCompoundLayout.updateSuffixTextVisibility();
                return;
            }
            return;
        }
        if (z2 || !this.hintExpanded) {
            ValueAnimator valueAnimator2 = this.animator;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.animator.cancel();
            }
            if (z && this.hintAnimationEnabled) {
                animateToExpansionFraction(0.0f);
            } else {
                collapsingTextHelper.setExpansionFraction(0.0f);
            }
            if (cutoutEnabled() && !((CutoutDrawable) this.boxBackground).drawableState.cutoutBounds.isEmpty() && cutoutEnabled()) {
                ((CutoutDrawable) this.boxBackground).setCutout(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.hintExpanded = true;
            AppCompatTextView appCompatTextView3 = this.placeholderTextView;
            if (appCompatTextView3 != null && this.placeholderEnabled) {
                appCompatTextView3.setText((CharSequence) null);
                TransitionManager.beginDelayedTransition(this.inputFrame, this.placeholderFadeOut);
                this.placeholderTextView.setVisibility(4);
            }
            startCompoundLayout.hintExpanded = true;
            startCompoundLayout.updateVisibility();
            endCompoundLayout.hintExpanded = true;
            endCompoundLayout.updateSuffixTextVisibility();
        }
    }

    public final void updatePlaceholderText(Editable editable) {
        ((CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0) this.lengthCounter).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.inputFrame;
        if (length != 0 || this.hintExpanded) {
            AppCompatTextView appCompatTextView = this.placeholderTextView;
            if (appCompatTextView == null || !this.placeholderEnabled) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.beginDelayedTransition(frameLayout, this.placeholderFadeOut);
            this.placeholderTextView.setVisibility(4);
            return;
        }
        if (this.placeholderTextView == null || !this.placeholderEnabled || TextUtils.isEmpty(this.placeholderText)) {
            return;
        }
        this.placeholderTextView.setText(this.placeholderText);
        TransitionManager.beginDelayedTransition(frameLayout, this.placeholderFadeIn);
        this.placeholderTextView.setVisibility(0);
        this.placeholderTextView.bringToFront();
        announceForAccessibility(this.placeholderText);
    }

    public final void updateStrokeErrorColor(boolean z, boolean z2) {
        int defaultColor = this.strokeErrorColor.getDefaultColor();
        int colorForState = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.strokeErrorColor.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.boxStrokeColor = colorForState2;
        } else if (z2) {
            this.boxStrokeColor = colorForState;
        } else {
            this.boxStrokeColor = defaultColor;
        }
    }

    public final void updateTextInputBoxState() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.boxBackground == null || this.boxBackgroundMode == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.editText) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.editText) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.boxStrokeColor = this.disabledColor;
        } else if (shouldShowError()) {
            if (this.strokeErrorColor != null) {
                updateStrokeErrorColor(z2, z);
            } else {
                this.boxStrokeColor = getErrorCurrentTextColors();
            }
        } else if (!this.counterOverflowed || (appCompatTextView = this.counterView) == null) {
            if (z2) {
                this.boxStrokeColor = this.focusedStrokeColor;
            } else if (z) {
                this.boxStrokeColor = this.hoveredStrokeColor;
            } else {
                this.boxStrokeColor = this.defaultStrokeColor;
            }
        } else if (this.strokeErrorColor != null) {
            updateStrokeErrorColor(z2, z);
        } else {
            this.boxStrokeColor = appCompatTextView.getCurrentTextColor();
        }
        if (Build.VERSION.SDK_INT >= 29) {
            updateCursorColor();
        }
        EndCompoundLayout endCompoundLayout = this.endLayout;
        TextInputLayout textInputLayout = endCompoundLayout.textInputLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        TextInputLayout textInputLayout2 = endCompoundLayout.textInputLayout;
        endCompoundLayout.updateErrorIconVisibility();
        CharsKt.refreshIconDrawableState(textInputLayout2, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList);
        CharsKt.refreshIconDrawableState(textInputLayout2, checkableImageButton, endCompoundLayout.endIconTintList);
        if (endCompoundLayout.getEndIconDelegate() instanceof DropdownMenuEndIconDelegate) {
            if (!textInputLayout.shouldShowError() || checkableImageButton.getDrawable() == null) {
                CharsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            } else {
                Drawable mutate = checkableImageButton.getDrawable().mutate();
                mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(mutate);
            }
        }
        StartCompoundLayout startCompoundLayout = this.startLayout;
        CharsKt.refreshIconDrawableState(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, startCompoundLayout.startIconTintList);
        if (this.boxBackgroundMode == 2) {
            int i = this.boxStrokeWidthPx;
            if (z2 && isEnabled()) {
                this.boxStrokeWidthPx = this.boxStrokeWidthFocusedPx;
            } else {
                this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
            }
            if (this.boxStrokeWidthPx != i && cutoutEnabled() && !this.hintExpanded) {
                if (cutoutEnabled()) {
                    ((CutoutDrawable) this.boxBackground).setCutout(0.0f, 0.0f, 0.0f, 0.0f);
                }
                openCutout();
            }
        }
        if (this.boxBackgroundMode == 1) {
            if (!isEnabled()) {
                this.boxBackgroundColor = this.disabledFilledBackgroundColor;
            } else if (z && !z2) {
                this.boxBackgroundColor = this.hoveredFilledBackgroundColor;
            } else if (z2) {
                this.boxBackgroundColor = this.focusedFilledBackgroundColor;
            } else {
                this.boxBackgroundColor = this.defaultFilledBackgroundColor;
            }
        }
        applyBoxAttributes();
    }

    public void setHint(CharSequence charSequence) {
        if (this.hintEnabled) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.startLayout.startIconView;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.startLayout.setStartIconDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.endLayout.endIconView.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.endLayout.endIconView.setImageDrawable(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.endLayout.endIconView;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.endLayout.setErrorIconDrawable(drawable);
    }

    public void setEndIconDrawable(Drawable drawable) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        TextInputLayout textInputLayout = endCompoundLayout.textInputLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            CharsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            CharsKt.refreshIconDrawableState(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.textfield.TextInputLayout$1, reason: invalid class name */
    public final class AnonymousClass1 implements TextWatcher {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    TextInputLayout textInputLayout = (TextInputLayout) obj;
                    textInputLayout.updateLabelState(!textInputLayout.restoringSavedState, false);
                    if (textInputLayout.counterEnabled) {
                        textInputLayout.updateCounter(editable);
                    }
                    if (textInputLayout.placeholderEnabled) {
                        textInputLayout.updatePlaceholderText(editable);
                        break;
                    }
                    break;
                case 1:
                    ((EndCompoundLayout) obj).getEndIconDelegate().afterEditTextChanged();
                    break;
                case 2:
                    ((AbstractFilePickerFragment) obj).clearSelections();
                    break;
                default:
                    SearchFragment searchFragment = (SearchFragment) obj;
                    for (CharacterStyle characterStyle : (CharacterStyle[]) editable.getSpans(0, editable.length(), CharacterStyle.class)) {
                        editable.removeSpan(characterStyle);
                    }
                    int i2 = SearchFragment.$r8$clinit;
                    searchFragment.suggestionPublisher.onNext(searchFragment.getSearchEditString().trim());
                    break;
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            switch (this.$r8$classId) {
                case 1:
                    ((EndCompoundLayout) this.this$0).getEndIconDelegate().beforeEditTextChanged();
                    break;
            }
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            int i4 = this.$r8$classId;
        }

        private final void beforeTextChanged$com$google$android$material$textfield$TextInputLayout$1(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void beforeTextChanged$com$nononsenseapps$filepicker$AbstractFilePickerFragment$4(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void beforeTextChanged$org$schabi$newpipe$fragments$list$search$SearchFragment$3(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$com$google$android$material$textfield$EndCompoundLayout$1(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$com$google$android$material$textfield$TextInputLayout$1(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$com$nononsenseapps$filepicker$AbstractFilePickerFragment$4(int i, int i2, int i3, CharSequence charSequence) {
        }

        private final void onTextChanged$org$schabi$newpipe$fragments$list$search$SearchFragment$3(int i, int i2, int i3, CharSequence charSequence) {
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, org.schabi.newpipe.R.attr.textInputStyle);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }
}
