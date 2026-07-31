package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
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
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
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
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.collection.internal.Lock;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.NestedScrollView;
import androidx.customview.view.AbsSavedState;
import androidx.lifecycle.LiveData$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
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
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.text.UStringsKt;
import kotlinx.serialization.json.internal.Composer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final int extraSpaceBetweenPlaceholderAndHint;
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
    public int originalEditTextMinimumHeight;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.textfield.TextInputLayout$2, reason: invalid class name */
    public final class AnonymousClass2 extends AccessibilityDelegateCompat {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass2(int i) {
            this.$r8$classId = i;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            switch (this.$r8$classId) {
                case 1:
                    super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                    accessibilityEvent.setClassName(ScrollView.class.getName());
                    accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
                    accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
                    accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
                    accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
                    accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
                    break;
                default:
                    super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                    break;
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            int i = this.$r8$classId;
            View.AccessibilityDelegate accessibilityDelegate = this.mOriginalDelegate;
            switch (i) {
                case 0:
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    accessibilityNodeInfo.setVisibleToUser(false);
                    break;
                case 1:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                    accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                    if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                        accessibilityNodeInfoCompat.setScrollable(true);
                        if (nestedScrollView.getScrollY() > 0) {
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_UP);
                        }
                        if (nestedScrollView.getScrollY() < scrollRange) {
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
                            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_DOWN);
                            break;
                        }
                    }
                    break;
                case 2:
                    AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.mInfo;
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    if (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) {
                        accessibilityNodeInfoCompat.mParentVirtualDescendantId = -1;
                        accessibilityNodeInfo2.setParent(null);
                        break;
                    }
                    break;
                case 3:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    accessibilityNodeInfoCompat.setCollectionInfo(null);
                    break;
                case 4:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    accessibilityNodeInfoCompat.setScrollable(false);
                    break;
                default:
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.mInfo);
                    accessibilityNodeInfoCompat.setCollectionInfo(null);
                    break;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        
            if (r5 != 16908346) goto L32;
         */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean performAccessibilityAction(android.view.View r4, int r5, android.os.Bundle r6) {
            /*
                r3 = this;
                int r0 = r3.$r8$classId
                switch(r0) {
                    case 1: goto La;
                    default: goto L5;
                }
            L5:
                boolean r3 = super.performAccessibilityAction(r4, r5, r6)
                return r3
            La:
                boolean r3 = super.performAccessibilityAction(r4, r5, r6)
                r6 = 1
                if (r3 == 0) goto L13
                goto La1
            L13:
                androidx.core.widget.NestedScrollView r4 = (androidx.core.widget.NestedScrollView) r4
                boolean r3 = r4.isEnabled()
                r0 = 0
                if (r3 != 0) goto L1e
                goto La0
            L1e:
                int r3 = r4.getHeight()
                android.graphics.Rect r1 = new android.graphics.Rect
                r1.<init>()
                android.graphics.Matrix r2 = r4.getMatrix()
                boolean r2 = r2.isIdentity()
                if (r2 == 0) goto L3b
                boolean r2 = r4.getGlobalVisibleRect(r1)
                if (r2 == 0) goto L3b
                int r3 = r1.height()
            L3b:
                r1 = 4096(0x1000, float:5.74E-42)
                if (r5 == r1) goto L75
                r1 = 8192(0x2000, float:1.148E-41)
                if (r5 == r1) goto L4e
                r1 = 16908344(0x1020038, float:2.3877386E-38)
                if (r5 == r1) goto L4e
                r1 = 16908346(0x102003a, float:2.3877392E-38)
                if (r5 == r1) goto L75
                goto La0
            L4e:
                int r5 = r4.getPaddingBottom()
                int r3 = r3 - r5
                int r5 = r4.getPaddingTop()
                int r3 = r3 - r5
                int r5 = r4.getScrollY()
                int r5 = r5 - r3
                int r3 = java.lang.Math.max(r5, r0)
                int r5 = r4.getScrollY()
                if (r3 == r5) goto La0
                int r5 = r4.getScrollX()
                int r0 = r0 - r5
                int r5 = r4.getScrollY()
                int r3 = r3 - r5
                r4.smoothScrollBy(r0, r3, r6)
                goto La1
            L75:
                int r5 = r4.getPaddingBottom()
                int r3 = r3 - r5
                int r5 = r4.getPaddingTop()
                int r3 = r3 - r5
                int r5 = r4.getScrollY()
                int r5 = r5 + r3
                int r3 = r4.getScrollRange()
                int r3 = java.lang.Math.min(r5, r3)
                int r5 = r4.getScrollY()
                if (r3 == r5) goto La0
                int r5 = r4.getScrollX()
                int r0 = r0 - r5
                int r5 = r4.getScrollY()
                int r3 = r3 - r5
                r4.smoothScrollBy(r0, r3, r6)
                goto La1
            La0:
                r6 = r0
            La1:
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.AnonymousClass2.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout layout;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.layout = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            CharSequence charSequence;
            CharSequence charSequence2;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.mInfo;
            this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.layout;
            EditText editText = textInputLayout.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = textInputLayout.getHint();
            CharSequence helperText = textInputLayout.getHelperText();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean isEmpty = TextUtils.isEmpty(text);
            boolean isEmpty2 = TextUtils.isEmpty(hint);
            boolean z = textInputLayout.hintExpanded;
            boolean isEmpty3 = TextUtils.isEmpty(error);
            boolean z2 = (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String charSequence3 = !isEmpty2 ? hint.toString() : "";
            if (TextUtils.isEmpty(helperText)) {
                charSequence = error;
                charSequence2 = counterOverflowDescription;
            } else {
                IndicatorViewController indicatorViewController = textInputLayout.indicatorViewController;
                charSequence = error;
                charSequence2 = counterOverflowDescription;
                if (indicatorViewController.captionToShow == 2 && indicatorViewController.helperTextView != null && !TextUtils.isEmpty(indicatorViewController.helperText)) {
                    if (TextUtils.isEmpty(charSequence3)) {
                        charSequence3 = helperText.toString();
                    } else {
                        charSequence3 = charSequence3 + ", " + ((Object) helperText);
                    }
                }
            }
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
            } else if (!TextUtils.isEmpty(charSequence3)) {
                accessibilityNodeInfoCompat.setText(charSequence3);
                if (!z && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(charSequence3 + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence3)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(charSequence3);
                } else {
                    if (!isEmpty) {
                        charSequence3 = ((Object) text) + ", " + charSequence3;
                    }
                    accessibilityNodeInfoCompat.setText(charSequence3);
                }
                accessibilityNodeInfoCompat.setShowingHintText(isEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
            if (z2) {
                accessibilityNodeInfo.setError(!isEmpty3 ? charSequence : charSequence2);
            }
            textInputLayout.endLayout.getEndIconDelegate().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            this.layout.endLayout.getEndIconDelegate().onPopulateAccessibilityEvent(accessibilityEvent);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface LengthCounter {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AbsSavedState.AnonymousClass2(16);
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

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, org.wikipedia.R.attr.textInputStyle, org.wikipedia.R.style.Widget_Design_TextInputLayout), attributeSet, org.wikipedia.R.attr.textInputStyle);
        this.minEms = -1;
        this.maxEms = -1;
        this.minWidth = -1;
        this.maxWidth = -1;
        this.indicatorViewController = new IndicatorViewController(this);
        this.lengthCounter = new Gson$$ExternalSyntheticBUOutline0();
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
        SVG obtainTintedStyledAttributes = ViewUtils.obtainTintedStyledAttributes(context2, attributeSet, R$styleable.TextInputLayout, org.wikipedia.R.attr.textInputStyle, org.wikipedia.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 50);
        StartCompoundLayout startCompoundLayout = new StartCompoundLayout(this, obtainTintedStyledAttributes);
        this.startLayout = startCompoundLayout;
        TypedArray typedArray = (TypedArray) obtainTintedStyledAttributes.cssRules;
        this.hintEnabled = typedArray.getBoolean(48, true);
        setHint(typedArray.getText(4));
        this.hintAnimationEnabled = typedArray.getBoolean(47, true);
        this.expandedHintEnabled = typedArray.getBoolean(42, true);
        if (typedArray.hasValue(6)) {
            setMinEms(typedArray.getInt(6, -1));
        } else if (typedArray.hasValue(3)) {
            setMinWidth(typedArray.getDimensionPixelSize(3, -1));
        }
        if (typedArray.hasValue(5)) {
            setMaxEms(typedArray.getInt(5, -1));
        } else if (typedArray.hasValue(2)) {
            setMaxWidth(typedArray.getDimensionPixelSize(2, -1));
        }
        this.shapeAppearanceModel = ShapeAppearanceModel.builder(context2, attributeSet, org.wikipedia.R.attr.textInputStyle, org.wikipedia.R.style.Widget_Design_TextInputLayout).build();
        this.boxLabelCutoutPaddingPx = context2.getResources().getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.boxCollapsedPaddingTopPx = typedArray.getDimensionPixelOffset(9, 0);
        this.extraSpaceBetweenPlaceholderAndHint = getResources().getDimensionPixelSize(org.wikipedia.R.dimen.m3_multiline_hint_filled_text_extra_space);
        this.boxStrokeWidthDefaultPx = typedArray.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(org.wikipedia.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.boxStrokeWidthFocusedPx = typedArray.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(org.wikipedia.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
        float dimension = typedArray.getDimension(13, -1.0f);
        float dimension2 = typedArray.getDimension(12, -1.0f);
        float dimension3 = typedArray.getDimension(10, -1.0f);
        float dimension4 = typedArray.getDimension(11, -1.0f);
        ItemNotificationBinding builder = this.shapeAppearanceModel.toBuilder();
        if (dimension >= RecyclerView.DECELERATION_RATE) {
            builder.notificationTime = new AbsoluteCornerSize(dimension);
        }
        if (dimension2 >= RecyclerView.DECELERATION_RATE) {
            builder.notificationTitle = new AbsoluteCornerSize(dimension2);
        }
        if (dimension3 >= RecyclerView.DECELERATION_RATE) {
            builder.notificationItemImage = new AbsoluteCornerSize(dimension3);
        }
        if (dimension4 >= RecyclerView.DECELERATION_RATE) {
            builder.notificationItemSelectedImage = new AbsoluteCornerSize(dimension4);
        }
        this.shapeAppearanceModel = builder.build();
        ColorStateList colorStateList = OperationKt.getColorStateList(context2, obtainTintedStyledAttributes, 7);
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
                ColorStateList colorStateList2 = FileUtil.getColorStateList(context2, org.wikipedia.R.color.mtrl_filled_background_color);
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
        if (typedArray.hasValue(1)) {
            ColorStateList colorStateList3 = obtainTintedStyledAttributes.getColorStateList(1);
            this.focusedTextColor = colorStateList3;
            this.defaultHintTextColor = colorStateList3;
        }
        ColorStateList colorStateList4 = OperationKt.getColorStateList(context2, obtainTintedStyledAttributes, 14);
        this.focusedStrokeColor = typedArray.getColor(14, 0);
        this.defaultStrokeColor = context2.getColor(org.wikipedia.R.color.mtrl_textinput_default_box_stroke_color);
        this.disabledColor = context2.getColor(org.wikipedia.R.color.mtrl_textinput_disabled_color);
        this.hoveredStrokeColor = context2.getColor(org.wikipedia.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateList4 != null) {
            setBoxStrokeColorStateList(colorStateList4);
        }
        if (typedArray.hasValue(15)) {
            setBoxStrokeErrorColor(OperationKt.getColorStateList(context2, obtainTintedStyledAttributes, 15));
        }
        if (typedArray.getResourceId(50, -1) != -1) {
            setHintTextAppearance(typedArray.getResourceId(50, 0));
        }
        this.cursorColor = obtainTintedStyledAttributes.getColorStateList(24);
        this.cursorErrorColor = obtainTintedStyledAttributes.getColorStateList(25);
        int resourceId = typedArray.getResourceId(40, 0);
        CharSequence text = typedArray.getText(35);
        int i = typedArray.getInt(34, 1);
        boolean z = typedArray.getBoolean(36, false);
        int resourceId2 = typedArray.getResourceId(45, 0);
        boolean z2 = typedArray.getBoolean(44, false);
        CharSequence text2 = typedArray.getText(43);
        int resourceId3 = typedArray.getResourceId(58, 0);
        CharSequence text3 = typedArray.getText(57);
        boolean z3 = typedArray.getBoolean(18, false);
        setCounterMaxLength(typedArray.getInt(19, -1));
        this.counterTextAppearance = typedArray.getResourceId(22, 0);
        this.counterOverflowTextAppearance = typedArray.getResourceId(20, 0);
        setBoxBackgroundMode(typedArray.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i);
        setCounterOverflowTextAppearance(this.counterOverflowTextAppearance);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.counterTextAppearance);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArray.hasValue(41)) {
            setErrorTextColor(obtainTintedStyledAttributes.getColorStateList(41));
        }
        if (typedArray.hasValue(46)) {
            setHelperTextColor(obtainTintedStyledAttributes.getColorStateList(46));
        }
        if (typedArray.hasValue(51)) {
            setHintTextColor(obtainTintedStyledAttributes.getColorStateList(51));
        }
        if (typedArray.hasValue(23)) {
            setCounterTextColor(obtainTintedStyledAttributes.getColorStateList(23));
        }
        if (typedArray.hasValue(21)) {
            setCounterOverflowTextColor(obtainTintedStyledAttributes.getColorStateList(21));
        }
        if (typedArray.hasValue(59)) {
            setPlaceholderTextColor(obtainTintedStyledAttributes.getColorStateList(59));
        }
        EndCompoundLayout endCompoundLayout = new EndCompoundLayout(this, obtainTintedStyledAttributes);
        this.endLayout = endCompoundLayout;
        boolean z4 = typedArray.getBoolean(0, true);
        setHintMaxLines(typedArray.getInt(49, 1));
        obtainTintedStyledAttributes.recycle();
        setImportantForAccessibility(2);
        if (Build.VERSION.SDK_INT >= 26) {
            setImportantForAutofill(1);
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
        EditText editText2 = this.editText;
        int resolveColor = UStringsKt.resolveColor(editText2.getContext(), Operation$State.resolveTypedValueOrThrow(editText2, org.wikipedia.R.attr.colorControlHighlight));
        int i = this.boxBackgroundMode;
        int[][] iArr = EDIT_TEXT_BACKGROUND_RIPPLE_STATE;
        if (i != 2) {
            if (i != 1) {
                return null;
            }
            MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
            int i2 = this.boxBackgroundColor;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{UStringsKt.layer(resolveColor, 0.1f, i2), i2}), materialShapeDrawable, materialShapeDrawable);
        }
        Context context = getContext();
        MaterialShapeDrawable materialShapeDrawable2 = this.boxBackground;
        int resolveColor2 = UStringsKt.resolveColor(context, Operation$State.resolveTypedValueOrThrow(org.wikipedia.R.attr.colorSurface, context, "TextInputLayout"));
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable2.getShapeAppearanceModel());
        int layer = UStringsKt.layer(resolveColor, 0.1f, resolveColor2);
        materialShapeDrawable3.setFillColor(new ColorStateList(iArr, new int[]{layer, 0}));
        materialShapeDrawable3.setTint(resolveColor2);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{layer, resolveColor2});
        MaterialShapeDrawable materialShapeDrawable4 = new MaterialShapeDrawable(materialShapeDrawable2.getShapeAppearanceModel());
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
        MaterialShapeDrawable materialShapeDrawable = this.outlinedDropDownMenuBackground;
        if (materialShapeDrawable != null) {
            return materialShapeDrawable;
        }
        MaterialShapeDrawable dropDownMaterialShapeDrawable = getDropDownMaterialShapeDrawable(true);
        this.outlinedDropDownMenuBackground = dropDownMaterialShapeDrawable;
        return dropDownMaterialShapeDrawable;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m("We already have an EditText, can only have one");
            return;
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
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
        collapsingTextHelper.setExpandedTextSize(this.editText.getTextSize());
        float letterSpacing = this.editText.getLetterSpacing();
        if (collapsingTextHelper.expandedLetterSpacing != letterSpacing) {
            collapsingTextHelper.expandedLetterSpacing = letterSpacing;
            collapsingTextHelper.recalculate(false);
        }
        int gravity = this.editText.getGravity();
        collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
        collapsingTextHelper.setExpandedTextGravity(gravity);
        this.originalEditTextMinimumHeight = editText.getMinimumHeight();
        this.editText.addTextChangedListener(new TextWatcher(editText) { // from class: com.google.android.material.textfield.TextInputLayout.1
            public int previousLineCount;
            public final /* synthetic */ EditText val$editText;

            {
                this.val$editText = editText;
                this.previousLineCount = editText.getLineCount();
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                TextInputLayout textInputLayout = TextInputLayout.this;
                textInputLayout.updateLabelState(!textInputLayout.restoringSavedState, false);
                if (textInputLayout.counterEnabled) {
                    textInputLayout.updateCounter(editable);
                }
                if (textInputLayout.placeholderEnabled) {
                    textInputLayout.updatePlaceholderText(editable);
                }
                EditText editText2 = this.val$editText;
                int lineCount = editText2.getLineCount();
                int i3 = this.previousLineCount;
                if (lineCount != i3) {
                    if (lineCount < i3) {
                        int minimumHeight = editText2.getMinimumHeight();
                        int i4 = textInputLayout.originalEditTextMinimumHeight;
                        if (minimumHeight != i4) {
                            editText2.setMinimumHeight(i4);
                        }
                    }
                    this.previousLineCount = lineCount;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }
        });
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
        this.collapsingTextHelper.setText(charSequence);
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

    public final void adjustFilledEditTextPaddingForLargeFont() {
        if (this.editText == null || this.boxBackgroundMode != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.editText;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.collapsingTextHelper.getCollapsedTextHeight() + this.extraSpaceBetweenPlaceholderAndHint), this.editText.getPaddingEnd(), getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.editText;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_filled_edittext_font_2_0_padding_top), this.editText.getPaddingEnd(), getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (OperationKt.isFontScaleAtLeast1_3(getContext())) {
            EditText editText3 = this.editText;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_filled_edittext_font_1_3_padding_top), this.editText.getPaddingEnd(), getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    public final void animateToExpansionFraction(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.expandedFraction == f) {
            return;
        }
        if (this.animator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.animator = valueAnimator;
            valueAnimator.setInterpolator(DpKt.resolveThemeInterpolator(getContext(), org.wikipedia.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            this.animator.setDuration(Operation$State.resolveInteger(getContext(), org.wikipedia.R.attr.motionDurationMedium4, 167));
            this.animator.addUpdateListener(new TabLayout.AnonymousClass1(6, this));
        }
        this.animator.setFloatValues(collapsingTextHelper.expandedFraction, f);
        this.animator.start();
    }

    public final void applyBoxAttributes() {
        int i;
        int i2;
        MaterialShapeDrawable materialShapeDrawable = this.boxBackground;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
        ShapeAppearanceModel shapeAppearanceModel2 = this.shapeAppearanceModel;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            this.boxBackground.setShapeAppearanceModel(shapeAppearanceModel2);
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
            Integer colorOrNull = UStringsKt.getColorOrNull(getContext(), org.wikipedia.R.attr.colorSurface);
            i3 = ColorUtils.compositeColors(this.boxBackgroundColor, colorOrNull != null ? colorOrNull.intValue() : 0);
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

    public final Rect calculateCollapsedTextBounds(Rect rect) {
        if (this.editText == null) {
            Gson$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i = rect.bottom;
        Rect rect2 = this.tmpBoundsRect;
        rect2.bottom = i;
        int i2 = this.boxBackgroundMode;
        if (i2 == 1) {
            rect2.left = getLabelLeftBoundAlignedWithPrefixAndSuffix(rect.left, z);
            rect2.top = rect.top + this.boxCollapsedPaddingTopPx;
            rect2.right = getLabelRightBoundAlignedWithPrefixAndSuffix(rect.right, z);
            return rect2;
        }
        int i3 = rect.left;
        if (i2 != 2) {
            rect2.left = getLabelLeftBoundAlignedWithPrefixAndSuffix(i3, z);
            rect2.top = getPaddingTop();
            rect2.right = getLabelRightBoundAlignedWithPrefixAndSuffix(rect.right, z);
            return rect2;
        }
        rect2.left = this.editText.getPaddingLeft() + i3;
        rect2.top = rect.top - calculateLabelMarginTop();
        rect2.right = rect.right - this.editText.getPaddingRight();
        return rect2;
    }

    public final int calculateLabelMarginTop() {
        if (this.hintEnabled) {
            int i = this.boxBackgroundMode;
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            if (i == 0) {
                return (int) collapsingTextHelper.getCollapsedTextHeight();
            }
            if (i == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (collapsingTextHelper.getCollapsedTextHeight() / 2.0f);
                }
                float collapsedTextHeight = collapsingTextHelper.getCollapsedTextHeight();
                TextPaint textPaint = collapsingTextHelper.tmpPaint;
                textPaint.setTextSize(collapsingTextHelper.collapsedTextSize);
                textPaint.setTypeface(collapsingTextHelper.collapsedTypeface);
                textPaint.setLetterSpacing(collapsingTextHelper.collapsedLetterSpacing);
                return Math.max(0, (int) (collapsedTextHeight - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    public final Fade createPlaceholderFadeTransition() {
        Fade fade = new Fade();
        fade.mDuration = Operation$State.resolveInteger(getContext(), org.wikipedia.R.attr.motionDurationShort2, 87);
        fade.mInterpolator = DpKt.resolveThemeInterpolator(getContext(), org.wikipedia.R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
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
            bounds.left = AnimationUtils.lerp(centerX, f, bounds2.left);
            bounds.right = AnimationUtils.lerp(centerX, f, bounds2.right);
            this.boxUnderlineFocused.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
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
            if (r3 == 0) goto L45
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L41
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L41
            goto L42
        L41:
            r0 = r2
        L42:
            r4.updateLabelState(r0, r2)
        L45:
            r4.updateEditTextBackground()
            r4.updateTextInputBoxState()
            if (r1 == 0) goto L50
            r4.invalidate()
        L50:
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
        Gson$$ExternalSyntheticBUOutline0.m();
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
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return layoutDirection == 1 ? shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(rectF) : shapeAppearanceModel.bottomRightCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return layoutDirection == 1 ? shapeAppearanceModel.bottomRightCornerSize.getCornerSize(rectF) : shapeAppearanceModel.bottomLeftCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return layoutDirection == 1 ? shapeAppearanceModel.topLeftCornerSize.getCornerSize(rectF) : shapeAppearanceModel.topRightCornerSize.getCornerSize(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
        RectF rectF = this.tmpRectF;
        return layoutDirection == 1 ? shapeAppearanceModel.topRightCornerSize.getCornerSize(rectF) : shapeAppearanceModel.topLeftCornerSize.getCornerSize(rectF);
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
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z ? dimensionPixelOffset : RecyclerView.DECELERATION_RATE;
        EditText editText = this.editText;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(org.wikipedia.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        RoundedCornerTreatment roundedCornerTreatment = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment2 = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment3 = new RoundedCornerTreatment();
        RoundedCornerTreatment roundedCornerTreatment4 = new RoundedCornerTreatment();
        Lock lock = new Lock(1);
        Lock lock2 = new Lock(1);
        Lock lock3 = new Lock(1);
        Lock lock4 = new Lock(1);
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
        shapeAppearanceModel.topEdge = lock;
        shapeAppearanceModel.rightEdge = lock2;
        shapeAppearanceModel.bottomEdge = lock3;
        shapeAppearanceModel.leftEdge = lock4;
        EditText editText2 = this.editText;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = MaterialShapeDrawable.clearPaint;
            dropDownBackgroundTintList = ColorStateList.valueOf(UStringsKt.resolveColor(context, Operation$State.resolveTypedValueOrThrow(org.wikipedia.R.attr.colorSurface, context, "MaterialShapeDrawable")));
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

    public int getHintMaxLines() {
        return this.collapsingTextHelper.expandedMaxLines;
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(new StringBuilder(), this.boxBackgroundMode, " is illegal; only @BoxBackgroundMode constants are supported."));
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
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (OperationKt.isFontScaleAtLeast1_3(getContext())) {
                this.boxCollapsedPaddingTopPx = getResources().getDimensionPixelSize(org.wikipedia.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        adjustFilledEditTextPaddingForLargeFont();
        if (this.boxBackgroundMode != 0) {
            updateInputLayoutMargins();
        }
        EditText editText = this.editText;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
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
            this.editText.post(new Task$$ExternalSyntheticLambda0(26, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float expandedTextFullSingleLineHeight;
        int i5;
        int compoundPaddingTop;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.editText;
        if (editText != null) {
            Rect rect = this.tmpRect;
            DescendantOffsetUtils.getDescendantRect(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.boxUnderlineDefault;
            if (materialShapeDrawable != null) {
                int i6 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i6 - this.boxStrokeWidthDefaultPx, rect.right, i6);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.boxUnderlineFocused;
            if (materialShapeDrawable2 != null) {
                int i7 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i7 - this.boxStrokeWidthFocusedPx, rect.right, i7);
            }
            if (this.hintEnabled) {
                float textSize = this.editText.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
                collapsingTextHelper.setExpandedTextSize(textSize);
                TextPaint textPaint = collapsingTextHelper.tmpPaint;
                int gravity = this.editText.getGravity();
                collapsingTextHelper.setCollapsedTextGravity((gravity & (-113)) | 48);
                collapsingTextHelper.setExpandedTextGravity(gravity);
                Rect calculateCollapsedTextBounds = calculateCollapsedTextBounds(rect);
                collapsingTextHelper.setCollapsedBounds(calculateCollapsedTextBounds.left, calculateCollapsedTextBounds.top, calculateCollapsedTextBounds.right, calculateCollapsedTextBounds.bottom);
                if (this.editText == null) {
                    Gson$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(collapsingTextHelper.expandedTextSize);
                    textPaint.setTypeface(collapsingTextHelper.expandedTypeface);
                    textPaint.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
                    expandedTextFullSingleLineHeight = -textPaint.ascent();
                } else {
                    expandedTextFullSingleLineHeight = collapsingTextHelper.getExpandedTextFullSingleLineHeight() * collapsingTextHelper.expandedLineCount;
                }
                int compoundPaddingLeft = this.editText.getCompoundPaddingLeft() + rect.left;
                Rect rect2 = this.tmpBoundsRect;
                rect2.left = compoundPaddingLeft;
                if (this.boxBackgroundMode != 1 || this.editText.getMinLines() > 1) {
                    if (this.boxBackgroundMode != 0 || getHintMaxLines() == 1) {
                        i5 = 0;
                    } else {
                        textPaint.setTextSize(collapsingTextHelper.expandedTextSize);
                        textPaint.setTypeface(collapsingTextHelper.expandedTypeface);
                        textPaint.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
                        i5 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.editText.getCompoundPaddingTop() + rect.top) - i5;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (expandedTextFullSingleLineHeight / 2.0f));
                }
                rect2.top = compoundPaddingTop;
                rect2.right = rect.right - this.editText.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.boxBackgroundMode != 1 || this.editText.getMinLines() > 1) ? rect.bottom - this.editText.getCompoundPaddingBottom() : (int) (rect2.top + expandedTextFullSingleLineHeight);
                rect2.bottom = compoundPaddingBottom;
                collapsingTextHelper.setExpandedBounds(true, rect2.left, rect2.top, rect2.right, compoundPaddingBottom);
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
        float f;
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
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.editText.getMeasuredWidth() - this.editText.getCompoundPaddingLeft()) - this.editText.getCompoundPaddingRight();
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        TextPaint textPaint = collapsingTextHelper.tmpPaint;
        textPaint.setTextSize(collapsingTextHelper.collapsedTextSize);
        textPaint.setTypeface(collapsingTextHelper.collapsedTypeface);
        textPaint.setLetterSpacing(collapsingTextHelper.collapsedLetterSpacing);
        float f2 = measuredWidth;
        collapsingTextHelper.collapsedHeight = collapsingTextHelper.createStaticLayout(collapsingTextHelper.collapsedMaxLines, textPaint, collapsingTextHelper.text, (collapsingTextHelper.collapsedTextSize / collapsingTextHelper.expandedTextSize) * f2, collapsingTextHelper.isRtl).getHeight();
        textPaint.setTextSize(collapsingTextHelper.expandedTextSize);
        textPaint.setTypeface(collapsingTextHelper.expandedTypeface);
        textPaint.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
        collapsingTextHelper.expandedHeight = collapsingTextHelper.createStaticLayout(collapsingTextHelper.expandedMaxLines, textPaint, collapsingTextHelper.text, f2, collapsingTextHelper.isRtl).getHeight();
        EditText editText2 = this.editText;
        Rect rect = this.tmpRect;
        DescendantOffsetUtils.getDescendantRect(this, editText2, rect);
        Rect calculateCollapsedTextBounds = calculateCollapsedTextBounds(rect);
        collapsingTextHelper.setCollapsedBounds(calculateCollapsedTextBounds.left, calculateCollapsedTextBounds.top, calculateCollapsedTextBounds.right, calculateCollapsedTextBounds.bottom);
        updateInputLayoutMargins();
        adjustFilledEditTextPaddingForLargeFont();
        if (this.editText == null) {
            return;
        }
        int i3 = collapsingTextHelper.expandedHeight;
        if (i3 != -1) {
            f = i3;
        } else {
            TextPaint textPaint2 = collapsingTextHelper.tmpPaint;
            textPaint2.setTextSize(collapsingTextHelper.expandedTextSize);
            textPaint2.setTypeface(collapsingTextHelper.expandedTypeface);
            textPaint2.setLetterSpacing(collapsingTextHelper.expandedLetterSpacing);
            f = -textPaint2.ascent();
        }
        CharSequence charSequence = this.placeholderText;
        float f3 = RecyclerView.DECELERATION_RATE;
        if (charSequence != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.placeholderTextView.getPaint());
            textPaint3.setTextSize(this.placeholderTextView.getTextSize());
            textPaint3.setTypeface(this.placeholderTextView.getTypeface());
            textPaint3.setLetterSpacing(this.placeholderTextView.getLetterSpacing());
            StaticLayoutBuilderCompat staticLayoutBuilderCompat = new StaticLayoutBuilderCompat(this.placeholderText, textPaint3, measuredWidth);
            staticLayoutBuilderCompat.isRtl = getLayoutDirection() == 1;
            staticLayoutBuilderCompat.includePad = true;
            float lineSpacingExtra = this.placeholderTextView.getLineSpacingExtra();
            float lineSpacingMultiplier = this.placeholderTextView.getLineSpacingMultiplier();
            staticLayoutBuilderCompat.lineSpacingAdd = lineSpacingExtra;
            staticLayoutBuilderCompat.lineSpacingMultiplier = lineSpacingMultiplier;
            staticLayoutBuilderCompat.staticLayoutBuilderConfigurer = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(9, this);
            StaticLayout build = staticLayoutBuilderCompat.build();
            if (this.boxBackgroundMode == 1) {
                f3 = collapsingTextHelper.getCollapsedTextHeight() + this.boxCollapsedPaddingTopPx + this.extraSpaceBetweenPlaceholderAndHint;
            }
            f3 += build.getHeight();
        }
        float max = Math.max(f, f3);
        if (this.editText.getMeasuredHeight() < max) {
            this.editText.setMinimumHeight(Math.round(max));
        }
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
            post(new LiveData$1(21, this));
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
            ContextsKt contextsKt = shapeAppearanceModel.topLeftCorner;
            ContextsKt contextsKt2 = shapeAppearanceModel.topRightCorner;
            ContextsKt contextsKt3 = shapeAppearanceModel.bottomLeftCorner;
            ContextsKt contextsKt4 = shapeAppearanceModel.bottomRightCorner;
            Lock lock = new Lock(1);
            Lock lock2 = new Lock(1);
            Lock lock3 = new Lock(1);
            Lock lock4 = new Lock(1);
            AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(cornerSize3);
            AbsoluteCornerSize absoluteCornerSize2 = new AbsoluteCornerSize(cornerSize2);
            AbsoluteCornerSize absoluteCornerSize3 = new AbsoluteCornerSize(cornerSize5);
            AbsoluteCornerSize absoluteCornerSize4 = new AbsoluteCornerSize(cornerSize4);
            ShapeAppearanceModel shapeAppearanceModel2 = new ShapeAppearanceModel();
            shapeAppearanceModel2.topLeftCorner = contextsKt2;
            shapeAppearanceModel2.topRightCorner = contextsKt;
            shapeAppearanceModel2.bottomRightCorner = contextsKt3;
            shapeAppearanceModel2.bottomLeftCorner = contextsKt4;
            shapeAppearanceModel2.topLeftCornerSize = absoluteCornerSize;
            shapeAppearanceModel2.topRightCornerSize = absoluteCornerSize2;
            shapeAppearanceModel2.bottomRightCornerSize = absoluteCornerSize4;
            shapeAppearanceModel2.bottomLeftCornerSize = absoluteCornerSize3;
            shapeAppearanceModel2.topEdge = lock;
            shapeAppearanceModel2.rightEdge = lock2;
            shapeAppearanceModel2.bottomEdge = lock3;
            shapeAppearanceModel2.leftEdge = lock4;
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

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openCutout() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.openCutout():void");
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
        ItemNotificationBinding builder = this.shapeAppearanceModel.toBuilder();
        CornerSize cornerSize = this.shapeAppearanceModel.topLeftCornerSize;
        builder.rootView = ResultKt.createCornerTreatment(i);
        builder.notificationTime = cornerSize;
        CornerSize cornerSize2 = this.shapeAppearanceModel.topRightCornerSize;
        builder.notificationDescription = ResultKt.createCornerTreatment(i);
        builder.notificationTitle = cornerSize2;
        CornerSize cornerSize3 = this.shapeAppearanceModel.bottomLeftCornerSize;
        builder.notificationSubtitle = ResultKt.createCornerTreatment(i);
        builder.notificationItemSelectedImage = cornerSize3;
        CornerSize cornerSize4 = this.shapeAppearanceModel.bottomRightCornerSize;
        builder.notificationSource = ResultKt.createCornerTreatment(i);
        builder.notificationItemImage = cornerSize4;
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
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.counterView = appCompatTextView;
                appCompatTextView.setId(org.wikipedia.R.id.textinput_counter);
                Typeface typeface = this.typeface;
                if (typeface != null) {
                    this.counterView.setTypeface(typeface);
                }
                this.counterView.setMaxLines(1);
                indicatorViewController.addIndicator(this.counterView, 2);
                ((ViewGroup.MarginLayoutParams) this.counterView.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(org.wikipedia.R.dimen.mtrl_textinput_counter_margin_start));
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
        endCompoundLayout.setEndIconContentDescription(i != 0 ? endCompoundLayout.getResources().getText(i) : null);
    }

    public void setEndIconDrawable(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        Drawable drawable = i != 0 ? TuplesKt.getDrawable(endCompoundLayout.getContext(), i) : null;
        TextInputLayout textInputLayout = endCompoundLayout.textInputLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            BitmapsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            BitmapsKt.refreshIconDrawableState(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList);
        }
    }

    public void setEndIconMinSize(int i) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (i < 0) {
            endCompoundLayout.getClass();
            _UtilJvmKt$$ExternalSyntheticLambda0.m("endIconSize cannot be less than 0");
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
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.endIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
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
            BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, colorStateList, endCompoundLayout.endIconTintMode);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.endIconTintMode != mode) {
            endCompoundLayout.endIconTintMode = mode;
            BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList, mode);
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
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context, null);
            indicatorViewController.errorView = appCompatTextView;
            appCompatTextView.setId(org.wikipedia.R.id.textinput_error);
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
        endCompoundLayout.setErrorIconDrawable(i != 0 ? TuplesKt.getDrawable(endCompoundLayout.getContext(), i) : null);
        BitmapsKt.refreshIconDrawableState(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        CheckableImageButton checkableImageButton = endCompoundLayout.errorIconView;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.errorIconOnLongClickListener;
        checkableImageButton.setOnClickListener(onClickListener);
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.errorIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.errorIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.errorIconTintList != colorStateList) {
            endCompoundLayout.errorIconTintList = colorStateList;
            BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, colorStateList, endCompoundLayout.errorIconTintMode);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        if (endCompoundLayout.errorIconTintMode != mode) {
            endCompoundLayout.errorIconTintMode = mode;
            BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList, mode);
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
        IndicatorViewController indicatorViewController = this.indicatorViewController;
        TextInputLayout textInputLayout = indicatorViewController.textInputView;
        if (indicatorViewController.helperTextEnabled == z) {
            return;
        }
        indicatorViewController.cancelCaptionAnimator();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.context, null);
            indicatorViewController.helperTextView = appCompatTextView;
            appCompatTextView.setId(org.wikipedia.R.id.textinput_helper_text);
            indicatorViewController.helperTextView.setTextAlignment(5);
            Typeface typeface = indicatorViewController.typeface;
            if (typeface != null) {
                indicatorViewController.helperTextView.setTypeface(typeface);
            }
            indicatorViewController.helperTextView.setVisibility(4);
            indicatorViewController.helperTextView.setImportantForAccessibility(2);
            int i = indicatorViewController.helperTextTextAppearance;
            indicatorViewController.helperTextTextAppearance = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.helperTextView;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextAppearance(i);
            }
            ColorStateList colorStateList = indicatorViewController.helperTextViewTextColor;
            indicatorViewController.helperTextViewTextColor = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.helperTextView;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            indicatorViewController.addIndicator(indicatorViewController.helperTextView, 1);
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

    public void setHintMaxLines(int i) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (i != collapsingTextHelper.collapsedMaxLines) {
            collapsingTextHelper.collapsedMaxLines = i;
            collapsingTextHelper.recalculate(false);
        }
        collapsingTextHelper.setExpandedMaxLines(i);
        requestLayout();
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
                this.collapsingTextHelper.setCollapsedTextColor(colorStateList);
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
        endCompoundLayout.endIconView.setImageDrawable(i != 0 ? TuplesKt.getDrawable(endCompoundLayout.getContext(), i) : null);
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
        BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, colorStateList, endCompoundLayout.endIconTintMode);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.endLayout;
        endCompoundLayout.endIconTintMode = mode;
        BitmapsKt.applyIconTint(endCompoundLayout.textInputLayout, endCompoundLayout.endIconView, endCompoundLayout.endIconTintList, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        int i = 0;
        if (this.placeholderTextView == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.placeholderTextView = appCompatTextView;
            appCompatTextView.setId(org.wikipedia.R.id.textinput_placeholder);
            this.placeholderTextView.setImportantForAccessibility(1);
            this.placeholderTextView.setAccessibilityLiveRegion(1);
            Fade createPlaceholderFadeTransition = createPlaceholderFadeTransition();
            this.placeholderFadeIn = createPlaceholderFadeTransition;
            createPlaceholderFadeTransition.mStartDelay = 67L;
            this.placeholderFadeOut = createPlaceholderFadeTransition();
            setPlaceholderTextAppearance(this.placeholderTextAppearance);
            setPlaceholderTextColor(this.placeholderTextColor);
            ViewCompat.setAccessibilityDelegate(this.placeholderTextView, new AnonymousClass2(i));
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
        updatePlaceholderText(editText != null ? editText.getText() : null);
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
        if (materialShapeDrawable == null || materialShapeDrawable.getShapeAppearanceModel() == shapeAppearanceModel) {
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
        setStartIconDrawable(i != 0 ? TuplesKt.getDrawable(getContext(), i) : null);
    }

    public void setStartIconMinSize(int i) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (i < 0) {
            startCompoundLayout.getClass();
            _UtilJvmKt$$ExternalSyntheticLambda0.m("startIconSize cannot be less than 0");
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
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        startCompoundLayout.startIconOnLongClickListener = onLongClickListener;
        CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        BitmapsKt.setIconClickable(checkableImageButton, onLongClickListener);
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
            BitmapsKt.applyIconTint(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, colorStateList, startCompoundLayout.startIconTintMode);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        StartCompoundLayout startCompoundLayout = this.startLayout;
        if (startCompoundLayout.startIconTintMode != mode) {
            startCompoundLayout.startIconTintMode = mode;
            BitmapsKt.applyIconTint(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, startCompoundLayout.startIconTintList, mode);
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
        appCompatTextView.setTextAppearance(org.wikipedia.R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(getContext().getColor(org.wikipedia.R.color.design_error));
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
        ((Gson$$ExternalSyntheticBUOutline0) this.lengthCounter).getClass();
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
            this.counterView.setContentDescription(context.getString(this.counterOverflowed ? org.wikipedia.R.string.character_counter_overflowed_content_description : org.wikipedia.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.counterMaxLength)));
            if (z != this.counterOverflowed) {
                updateCounterTextAppearanceAndColor();
            }
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            AppCompatTextView appCompatTextView = this.counterView;
            String string = getContext().getString(org.wikipedia.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.counterMaxLength));
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
            TypedValue resolve = Operation$State.resolve(context.getTheme(), org.wikipedia.R.attr.colorControlActivated);
            if (resolve != null) {
                int i = resolve.resourceId;
                if (i != 0) {
                    colorStateList2 = FileUtil.getColorStateList(context, i);
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

    /* JADX WARN: Removed duplicated region for block: B:17:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean updateDummyDrawables() {
        /*
            Method dump skipped, instructions count: 312
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
            this.editText.setBackground(getEditTextBoxBackground());
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
        } else if (z4 && (colorStateList = this.focusedTextColor) != null) {
            collapsingTextHelper.setCollapsedTextColor(colorStateList);
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
                animateToExpansionFraction(RecyclerView.DECELERATION_RATE);
            } else {
                collapsingTextHelper.setExpansionFraction(RecyclerView.DECELERATION_RATE);
            }
            if (cutoutEnabled() && !((CutoutDrawable) this.boxBackground).drawableState.cutoutBounds.isEmpty() && cutoutEnabled()) {
                ((CutoutDrawable) this.boxBackground).setCutout(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
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
        ((Gson$$ExternalSyntheticBUOutline0) this.lengthCounter).getClass();
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
        int i;
        EditText editText;
        EditText editText2;
        if (this.boxBackground == null || this.boxBackgroundMode == 0) {
            return;
        }
        boolean z = isFocused() || ((editText2 = this.editText) != null && editText2.hasFocus());
        boolean z2 = isHovered() || ((editText = this.editText) != null && editText.isHovered());
        if (!isEnabled()) {
            this.boxStrokeColor = this.disabledColor;
        } else if (shouldShowError()) {
            if (this.strokeErrorColor != null) {
                updateStrokeErrorColor(z, z2);
            } else {
                this.boxStrokeColor = getErrorCurrentTextColors();
            }
        } else if (!this.counterOverflowed || (appCompatTextView = this.counterView) == null) {
            if (z) {
                this.boxStrokeColor = this.focusedStrokeColor;
            } else if (z2) {
                this.boxStrokeColor = this.hoveredStrokeColor;
            } else {
                this.boxStrokeColor = this.defaultStrokeColor;
            }
        } else if (this.strokeErrorColor != null) {
            updateStrokeErrorColor(z, z2);
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
        BitmapsKt.refreshIconDrawableState(textInputLayout2, endCompoundLayout.errorIconView, endCompoundLayout.errorIconTintList);
        BitmapsKt.refreshIconDrawableState(textInputLayout2, checkableImageButton, endCompoundLayout.endIconTintList);
        if (endCompoundLayout.getEndIconDelegate() instanceof DropdownMenuEndIconDelegate) {
            if (!textInputLayout.shouldShowError() || checkableImageButton.getDrawable() == null) {
                BitmapsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            } else {
                Drawable mutate = checkableImageButton.getDrawable().mutate();
                mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(mutate);
            }
        }
        StartCompoundLayout startCompoundLayout = this.startLayout;
        BitmapsKt.refreshIconDrawableState(startCompoundLayout.textInputLayout, startCompoundLayout.startIconView, startCompoundLayout.startIconTintList);
        if (this.boxBackgroundMode == 2) {
            int i2 = this.boxStrokeWidthPx;
            if (z && isEnabled()) {
                i = this.boxStrokeWidthFocusedPx;
                this.boxStrokeWidthPx = i;
            } else {
                i = this.boxStrokeWidthDefaultPx;
                this.boxStrokeWidthPx = i;
            }
            if (i != i2 && cutoutEnabled() && !this.hintExpanded) {
                if (cutoutEnabled()) {
                    ((CutoutDrawable) this.boxBackground).setCutout(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
                }
                openCutout();
            }
        }
        if (this.boxBackgroundMode == 1) {
            if (!isEnabled()) {
                this.boxBackgroundColor = this.disabledFilledBackgroundColor;
            } else if (z2 && !z) {
                this.boxBackgroundColor = this.hoveredFilledBackgroundColor;
            } else if (z) {
                this.boxBackgroundColor = this.focusedFilledBackgroundColor;
            } else {
                this.boxBackgroundColor = this.defaultFilledBackgroundColor;
            }
        }
        applyBoxAttributes();
        if (getEndIconMode() == 3) {
            EditText editText3 = this.editText;
            if ((editText3 instanceof AutoCompleteTextView) && editText3.getInputType() == 0) {
                getEndIconView().setFocusable(false);
                getEndIconView().setClickable(false);
            } else {
                getEndIconView().setFocusable(true);
                getEndIconView().setClickable(true);
            }
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.hintEnabled) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        this.startLayout.setStartIconContentDescription(charSequence);
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.startLayout.setStartIconDrawable(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        this.endLayout.setEndIconContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.endLayout.endIconView.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.endLayout.endIconView.setImageDrawable(drawable);
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
            BitmapsKt.applyIconTint(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList, endCompoundLayout.endIconTintMode);
            BitmapsKt.refreshIconDrawableState(textInputLayout, checkableImageButton, endCompoundLayout.endIconTintList);
        }
    }
}
