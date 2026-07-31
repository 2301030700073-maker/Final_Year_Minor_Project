package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.menu.StandardMenuPopup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import kotlin.text.CharsKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class EndCompoundLayout extends LinearLayout {
    public final AccessibilityManager accessibilityManager;
    public EditText editText;
    public final TextInputLayout.AnonymousClass1 editTextWatcher;
    public final LinkedHashSet endIconChangedListeners;
    public final EndIconDelegates endIconDelegates;
    public final FrameLayout endIconFrame;
    public int endIconMinSize;
    public int endIconMode;
    public View.OnLongClickListener endIconOnLongClickListener;
    public ImageView.ScaleType endIconScaleType;
    public ColorStateList endIconTintList;
    public PorterDuff.Mode endIconTintMode;
    public final CheckableImageButton endIconView;
    public View.OnLongClickListener errorIconOnLongClickListener;
    public ColorStateList errorIconTintList;
    public PorterDuff.Mode errorIconTintMode;
    public final CheckableImageButton errorIconView;
    public boolean hintExpanded;
    public CharSequence suffixText;
    public final AppCompatTextView suffixTextView;
    public final TextInputLayout textInputLayout;
    public OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 touchExplorationStateChangeListener;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.textfield.EndCompoundLayout$2, reason: invalid class name */
    public final class AnonymousClass2 {
        public AnonymousClass2() {
        }

        public final void onEditTextAttached(TextInputLayout textInputLayout) {
            EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
            TextInputLayout.AnonymousClass1 anonymousClass1 = endCompoundLayout.editTextWatcher;
            if (endCompoundLayout.editText == textInputLayout.getEditText()) {
                return;
            }
            EditText editText = endCompoundLayout.editText;
            if (editText != null) {
                editText.removeTextChangedListener(anonymousClass1);
                if (endCompoundLayout.editText.getOnFocusChangeListener() == endCompoundLayout.getEndIconDelegate().getOnEditTextFocusChangeListener()) {
                    endCompoundLayout.editText.setOnFocusChangeListener(null);
                }
            }
            EditText editText2 = textInputLayout.getEditText();
            endCompoundLayout.editText = editText2;
            if (editText2 != null) {
                editText2.addTextChangedListener(anonymousClass1);
            }
            endCompoundLayout.getEndIconDelegate().onEditTextAttached(endCompoundLayout.editText);
            endCompoundLayout.setOnFocusChangeListenersIfNeeded(endCompoundLayout.getEndIconDelegate());
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EndIconDelegates {
        public final int customEndIconDrawableId;
        public final SparseArray delegates = new SparseArray();
        public final EndCompoundLayout endLayout;
        public final int passwordIconDrawableId;

        public EndIconDelegates(EndCompoundLayout endCompoundLayout, ProcessFinisher processFinisher) {
            this.endLayout = endCompoundLayout;
            TypedArray typedArray = (TypedArray) processFinisher.config;
            this.customEndIconDrawableId = typedArray.getResourceId(28, 0);
            this.passwordIconDrawableId = typedArray.getResourceId(52, 0);
        }
    }

    public EndCompoundLayout(TextInputLayout textInputLayout, ProcessFinisher processFinisher) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.endIconMode = 0;
        this.endIconChangedListeners = new LinkedHashSet();
        this.editTextWatcher = new TextInputLayout.AnonymousClass1(this, 1);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.endIconFrame = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButton = (CheckableImageButton) from.inflate(R.layout.design_text_input_end_icon, (ViewGroup) this, false);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (BundleKt.isFontScaleAtLeast1_3(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        this.errorIconView = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) from.inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout, false);
        checkableImageButton2.setId(R.id.text_input_end_icon);
        if (BundleKt.isFontScaleAtLeast1_3(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginStart(0);
        }
        this.endIconView = checkableImageButton2;
        this.endIconDelegates = new EndIconDelegates(this, processFinisher);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.suffixTextView = appCompatTextView;
        TypedArray typedArray = (TypedArray) processFinisher.config;
        if (typedArray.hasValue(38)) {
            this.errorIconTintList = BundleKt.getColorStateList(getContext(), processFinisher, 38);
        }
        if (typedArray.hasValue(39)) {
            this.errorIconTintMode = ViewUtils.parseTintMode(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            setErrorIconDrawable(processFinisher.getDrawable(37));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setFocusable(false);
        if (!typedArray.hasValue(53)) {
            if (typedArray.hasValue(32)) {
                this.endIconTintList = BundleKt.getColorStateList(getContext(), processFinisher, 32);
            }
            if (typedArray.hasValue(33)) {
                this.endIconTintMode = ViewUtils.parseTintMode(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            setEndIconMode(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && checkableImageButton2.getContentDescription() != (text = typedArray.getText(27))) {
                checkableImageButton2.setContentDescription(text);
            }
            checkableImageButton2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(53)) {
            if (typedArray.hasValue(54)) {
                this.endIconTintList = BundleKt.getColorStateList(getContext(), processFinisher, 54);
            }
            if (typedArray.hasValue(55)) {
                this.endIconTintMode = ViewUtils.parseTintMode(typedArray.getInt(55, -1), null);
            }
            setEndIconMode(typedArray.getBoolean(53, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(51);
            if (checkableImageButton2.getContentDescription() != text2) {
                checkableImageButton2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("endIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.endIconMinSize) {
            this.endIconMinSize = dimensionPixelSize;
            checkableImageButton2.setMinimumWidth(dimensionPixelSize);
            checkableImageButton2.setMinimumHeight(dimensionPixelSize);
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType convertScaleType = CharsKt.convertScaleType(typedArray.getInt(31, -1));
            this.endIconScaleType = convertScaleType;
            checkableImageButton2.setScaleType(convertScaleType);
            checkableImageButton.setScaleType(convertScaleType);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(72, 0));
        if (typedArray.hasValue(73)) {
            appCompatTextView.setTextColor(processFinisher.getColorStateList(73));
        }
        CharSequence text3 = typedArray.getText(71);
        this.suffixText = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        updateSuffixTextVisibility();
        frameLayout.addView(checkableImageButton2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButton);
        textInputLayout.editTextAttachedListeners.add(anonymousClass2);
        if (textInputLayout.editText != null) {
            anonymousClass2.onEditTextAttached(textInputLayout);
        }
        addOnAttachStateChangeListener(new StandardMenuPopup.AnonymousClass2(this, 4));
    }

    public final EndIconDelegate getEndIconDelegate() {
        EndIconDelegate noEndIconDelegate;
        int i = this.endIconMode;
        EndIconDelegates endIconDelegates = this.endIconDelegates;
        SparseArray sparseArray = endIconDelegates.delegates;
        EndIconDelegate endIconDelegate = (EndIconDelegate) sparseArray.get(i);
        if (endIconDelegate != null) {
            return endIconDelegate;
        }
        EndCompoundLayout endCompoundLayout = endIconDelegates.endLayout;
        int i2 = 1;
        if (i == -1) {
            noEndIconDelegate = new NoEndIconDelegate(endCompoundLayout, i2);
        } else if (i == 0) {
            noEndIconDelegate = new NoEndIconDelegate(endCompoundLayout, 0);
        } else if (i == 1) {
            noEndIconDelegate = new PasswordToggleEndIconDelegate(endCompoundLayout, endIconDelegates.passwordIconDrawableId);
        } else if (i == 2) {
            noEndIconDelegate = new ClearTextEndIconDelegate(endCompoundLayout);
        } else {
            if (i != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Invalid end icon mode: "));
                return null;
            }
            noEndIconDelegate = new DropdownMenuEndIconDelegate(endCompoundLayout);
        }
        sparseArray.append(i, noEndIconDelegate);
        return noEndIconDelegate;
    }

    public final int getSuffixTextEndOffset() {
        int marginStart;
        if (isEndIconVisible() || isErrorIconVisible()) {
            CheckableImageButton checkableImageButton = this.endIconView;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        return this.suffixTextView.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean isEndIconVisible() {
        return this.endIconFrame.getVisibility() == 0 && this.endIconView.getVisibility() == 0;
    }

    public final boolean isErrorIconVisible() {
        return this.errorIconView.getVisibility() == 0;
    }

    public final void refreshIconState(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        boolean isIconCheckable = endIconDelegate.isIconCheckable();
        CheckableImageButton checkableImageButton = this.endIconView;
        boolean z4 = true;
        if (!isIconCheckable || (z3 = checkableImageButton.checked) == endIconDelegate.isIconChecked()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(endIconDelegate instanceof DropdownMenuEndIconDelegate) || (isActivated = checkableImageButton.isActivated()) == ((DropdownMenuEndIconDelegate) endIconDelegate).editTextHasFocus) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!isActivated);
        }
        if (z || z4) {
            CharsKt.refreshIconDrawableState(this.textInputLayout, checkableImageButton, this.endIconTintList);
        }
    }

    public final void setEndIconMode(int i) {
        if (this.endIconMode == i) {
            return;
        }
        EndIconDelegate endIconDelegate = getEndIconDelegate();
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = this.touchExplorationStateChangeListener;
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0));
        }
        this.touchExplorationStateChangeListener = null;
        endIconDelegate.tearDown();
        this.endIconMode = i;
        Iterator it = this.endIconChangedListeners.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            return;
        }
        setEndIconVisible(i != 0);
        EndIconDelegate endIconDelegate2 = getEndIconDelegate();
        int i2 = this.endIconDelegates.customEndIconDrawableId;
        if (i2 == 0) {
            i2 = endIconDelegate2.getIconDrawableResId();
        }
        Drawable drawable = i2 != 0 ? Cookie.Companion.getDrawable(getContext(), i2) : null;
        CheckableImageButton checkableImageButton = this.endIconView;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.textInputLayout;
        if (drawable != null) {
            CharsKt.applyIconTint(textInputLayout, checkableImageButton, this.endIconTintList, this.endIconTintMode);
            CharsKt.refreshIconDrawableState(textInputLayout, checkableImageButton, this.endIconTintList);
        }
        int iconContentDescriptionResId = endIconDelegate2.getIconContentDescriptionResId();
        CharSequence text = iconContentDescriptionResId != 0 ? getResources().getText(iconContentDescriptionResId) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(endIconDelegate2.isIconCheckable());
        if (!endIconDelegate2.isBoxBackgroundModeSupported(textInputLayout.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        endIconDelegate2.setUp();
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 touchExplorationStateChangeListener = endIconDelegate2.getTouchExplorationStateChangeListener();
        this.touchExplorationStateChangeListener = touchExplorationStateChangeListener;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            if (isAttachedToWindow()) {
                accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper(this.touchExplorationStateChangeListener));
            }
        }
        View.OnClickListener onIconClickListener = endIconDelegate2.getOnIconClickListener();
        View.OnLongClickListener onLongClickListener = this.endIconOnLongClickListener;
        checkableImageButton.setOnClickListener(onIconClickListener);
        CharsKt.setIconClickable(checkableImageButton, onLongClickListener);
        EditText editText = this.editText;
        if (editText != null) {
            endIconDelegate2.onEditTextAttached(editText);
            setOnFocusChangeListenersIfNeeded(endIconDelegate2);
        }
        CharsKt.applyIconTint(textInputLayout, checkableImageButton, this.endIconTintList, this.endIconTintMode);
        refreshIconState(true);
    }

    public final void setEndIconVisible(boolean z) {
        if (isEndIconVisible() != z) {
            this.endIconView.setVisibility(z ? 0 : 8);
            updateEndLayoutVisibility();
            updateSuffixTextViewPadding();
            this.textInputLayout.updateDummyDrawables();
        }
    }

    public final void setErrorIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.errorIconView;
        checkableImageButton.setImageDrawable(drawable);
        updateErrorIconVisibility();
        CharsKt.applyIconTint(this.textInputLayout, checkableImageButton, this.errorIconTintList, this.errorIconTintMode);
    }

    public final void setOnFocusChangeListenersIfNeeded(EndIconDelegate endIconDelegate) {
        if (this.editText == null) {
            return;
        }
        if (endIconDelegate.getOnEditTextFocusChangeListener() != null) {
            this.editText.setOnFocusChangeListener(endIconDelegate.getOnEditTextFocusChangeListener());
        }
        if (endIconDelegate.getOnIconViewFocusChangeListener() != null) {
            this.endIconView.setOnFocusChangeListener(endIconDelegate.getOnIconViewFocusChangeListener());
        }
    }

    public final void updateEndLayoutVisibility() {
        this.endIconFrame.setVisibility((this.endIconView.getVisibility() != 0 || isErrorIconVisible()) ? 8 : 0);
        setVisibility((isEndIconVisible() || isErrorIconVisible() || !((this.suffixText == null || this.hintExpanded) ? 8 : false)) ? 0 : 8);
    }

    public final void updateErrorIconVisibility() {
        CheckableImageButton checkableImageButton = this.errorIconView;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.textInputLayout;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.indicatorViewController.errorEnabled && textInputLayout.shouldShowError()) ? 0 : 8);
        updateEndLayoutVisibility();
        updateSuffixTextViewPadding();
        if (this.endIconMode != 0) {
            return;
        }
        textInputLayout.updateDummyDrawables();
    }

    public final void updateSuffixTextViewPadding() {
        int i;
        TextInputLayout textInputLayout = this.textInputLayout;
        if (textInputLayout.editText == null) {
            return;
        }
        if (isEndIconVisible() || isErrorIconVisible()) {
            i = 0;
        } else {
            EditText editText = textInputLayout.editText;
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            i = editText.getPaddingEnd();
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int paddingTop = textInputLayout.editText.getPaddingTop();
        int paddingBottom = textInputLayout.editText.getPaddingBottom();
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        this.suffixTextView.setPaddingRelative(dimensionPixelSize, paddingTop, i, paddingBottom);
    }

    public final void updateSuffixTextVisibility() {
        AppCompatTextView appCompatTextView = this.suffixTextView;
        int visibility = appCompatTextView.getVisibility();
        int i = (this.suffixText == null || this.hintExpanded) ? 8 : 0;
        if (visibility != i) {
            getEndIconDelegate().onSuffixVisibilityChanged(i == 0);
        }
        updateEndLayoutVisibility();
        appCompatTextView.setVisibility(i);
        this.textInputLayout.updateDummyDrawables();
    }
}
