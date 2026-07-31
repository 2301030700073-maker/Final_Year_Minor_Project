package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.Transition;
import com.google.android.material.animation.AnimationUtils;
import java.util.WeakHashMap;
import okhttp3.Cookie;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.info_list.holder.CommentInfoItemHolder$$ExternalSyntheticLambda3;
import org.schabi.newpipe.ktx.ViewUtils$$ExternalSyntheticLambda0;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DropdownMenuEndIconDelegate extends EndIconDelegate {
    public AccessibilityManager accessibilityManager;
    public final int animationFadeInDuration;
    public final TimeInterpolator animationFadeInterpolator;
    public final int animationFadeOutDuration;
    public AutoCompleteTextView autoCompleteTextView;
    public long dropdownPopupActivatedAt;
    public boolean dropdownPopupDirty;
    public boolean editTextHasFocus;
    public ValueAnimator fadeInAnim;
    public ValueAnimator fadeOutAnim;
    public boolean isEndIconChecked;
    public final ClearTextEndIconDelegate$$ExternalSyntheticLambda1 onEditTextFocusChangeListener;
    public final Deleter$$ExternalSyntheticLambda4 onIconClickListener;
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 touchExplorationStateChangeListener;

    public DropdownMenuEndIconDelegate(EndCompoundLayout endCompoundLayout) {
        super(endCompoundLayout);
        this.onIconClickListener = new Deleter$$ExternalSyntheticLambda4(this, 2);
        this.onEditTextFocusChangeListener = new ClearTextEndIconDelegate$$ExternalSyntheticLambda1(this, 1);
        this.touchExplorationStateChangeListener = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 6);
        this.dropdownPopupActivatedAt = Long.MAX_VALUE;
        this.animationFadeInDuration = Cookie.Companion.resolveThemeDuration(endCompoundLayout.getContext(), R.attr.motionDurationShort3, 67);
        this.animationFadeOutDuration = Cookie.Companion.resolveThemeDuration(endCompoundLayout.getContext(), R.attr.motionDurationShort3, 50);
        this.animationFadeInterpolator = Cookie.Companion.resolveThemeInterpolator(endCompoundLayout.getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void afterEditTextChanged() {
        if (this.accessibilityManager.isTouchExplorationEnabled() && this.autoCompleteTextView.getInputType() != 0 && !this.endIconView.hasFocus()) {
            this.autoCompleteTextView.dismissDropDown();
        }
        this.autoCompleteTextView.post(new ReportExecutor$$ExternalSyntheticLambda0(this, 18));
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int getIconContentDescriptionResId() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int getIconDrawableResId() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final View.OnFocusChangeListener getOnEditTextFocusChangeListener() {
        return this.onEditTextFocusChangeListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final View.OnClickListener getOnIconClickListener() {
        return this.onIconClickListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 getTouchExplorationStateChangeListener() {
        return this.touchExplorationStateChangeListener;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean isBoxBackgroundModeSupported(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean isIconChecked() {
        return this.isEndIconChecked;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void onEditTextAttached(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            Node$$ExternalSyntheticBUOutline0.m811m("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
            return;
        }
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
        this.autoCompleteTextView = autoCompleteTextView;
        autoCompleteTextView.setOnTouchListener(new CommentInfoItemHolder$$ExternalSyntheticLambda3(this, 1));
        this.autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2
            @Override // android.widget.AutoCompleteTextView.OnDismissListener
            public final void onDismiss() {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.dropdownPopupDirty = true;
                dropdownMenuEndIconDelegate.dropdownPopupActivatedAt = System.currentTimeMillis();
                dropdownMenuEndIconDelegate.setEndIconChecked(false);
            }
        });
        this.autoCompleteTextView.setThreshold(0);
        TextInputLayout textInputLayout = this.textInputLayout;
        textInputLayout.setErrorIconDrawable((Drawable) null);
        if (editText.getInputType() == 0 && this.accessibilityManager.isTouchExplorationEnabled()) {
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            this.endIconView.setImportantForAccessibility(2);
        }
        textInputLayout.setEndIconVisible(true);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.autoCompleteTextView.getInputType() == 0) {
            accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.isShowingHintText()) {
            accessibilityNodeInfoCompat.setHintText(null);
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (this.accessibilityManager.isEnabled() && this.autoCompleteTextView.getInputType() == 0) {
            boolean z = accessibilityEvent.getEventType() == 32768 && this.isEndIconChecked && !this.autoCompleteTextView.isPopupShowing();
            if (accessibilityEvent.getEventType() == 1 || z) {
                showHideDropdown();
                this.dropdownPopupDirty = true;
                this.dropdownPopupActivatedAt = System.currentTimeMillis();
            }
        }
    }

    public final void setEndIconChecked(boolean z) {
        if (this.isEndIconChecked != z) {
            this.isEndIconChecked = z;
            this.fadeInAnim.cancel();
            this.fadeOutAnim.start();
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void setUp() {
        int i = 2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.animationFadeInterpolator;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.animationFadeInDuration);
        ofFloat.addUpdateListener(new ViewUtils$$ExternalSyntheticLambda0(this, i));
        this.fadeInAnim = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.animationFadeOutDuration);
        ofFloat2.addUpdateListener(new ViewUtils$$ExternalSyntheticLambda0(this, i));
        this.fadeOutAnim = ofFloat2;
        ofFloat2.addListener(new Transition.AnonymousClass3(this, 8));
        this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
    }

    public final void showHideDropdown() {
        if (this.autoCompleteTextView == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - this.dropdownPopupActivatedAt;
        if (currentTimeMillis < 0 || currentTimeMillis > 300) {
            this.dropdownPopupDirty = false;
        }
        if (this.dropdownPopupDirty) {
            this.dropdownPopupDirty = false;
            return;
        }
        setEndIconChecked(!this.isEndIconChecked);
        boolean z = this.isEndIconChecked;
        AutoCompleteTextView autoCompleteTextView = this.autoCompleteTextView;
        if (!z) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            this.autoCompleteTextView.showDropDown();
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void tearDown() {
        AutoCompleteTextView autoCompleteTextView = this.autoCompleteTextView;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.autoCompleteTextView.setOnDismissListener(null);
        }
    }
}
