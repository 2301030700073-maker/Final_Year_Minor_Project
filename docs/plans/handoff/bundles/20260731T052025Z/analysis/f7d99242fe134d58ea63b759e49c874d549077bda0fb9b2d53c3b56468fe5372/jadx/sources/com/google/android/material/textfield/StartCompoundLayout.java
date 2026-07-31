package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.core.Api26Impl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StartCompoundLayout extends LinearLayout {
    public boolean hintExpanded;
    public CharSequence prefixText;
    public final AppCompatTextView prefixTextView;
    public int startIconMinSize;
    public View.OnLongClickListener startIconOnLongClickListener;
    public ImageView.ScaleType startIconScaleType;
    public ColorStateList startIconTintList;
    public PorterDuff.Mode startIconTintMode;
    public final CheckableImageButton startIconView;
    public final TextInputLayout textInputLayout;

    public StartCompoundLayout(TextInputLayout textInputLayout, MenuHostHelper menuHostHelper) {
        super(textInputLayout.getContext());
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.startIconView = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.prefixTextView = appCompatTextView;
        if (IntOffsetKt.isFontScaleAtLeast1_3(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.startIconOnLongClickListener;
        checkableImageButton.setOnClickListener(null);
        Api26Impl.setIconClickable(checkableImageButton, onLongClickListener);
        this.startIconOnLongClickListener = null;
        checkableImageButton.setOnLongClickListener(null);
        Api26Impl.setIconClickable(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) menuHostHelper.mMenuProviders;
        if (typedArray.hasValue(70)) {
            this.startIconTintList = IntOffsetKt.getColorStateList(getContext(), menuHostHelper, 70);
        }
        if (typedArray.hasValue(71)) {
            this.startIconTintMode = ViewUtils.parseTintMode(typedArray.getInt(71, -1), null);
        }
        if (typedArray.hasValue(67)) {
            setStartIconDrawable(menuHostHelper.getDrawable(67));
            if (typedArray.hasValue(66)) {
                setStartIconContentDescription(typedArray.getText(66));
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("startIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.startIconMinSize) {
            this.startIconMinSize = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(69)) {
            ImageView.ScaleType convertScaleType = Api26Impl.convertScaleType(typedArray.getInt(69, -1));
            this.startIconScaleType = convertScaleType;
            checkableImageButton.setScaleType(convertScaleType);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(61, 0));
        if (typedArray.hasValue(62)) {
            appCompatTextView.setTextColor(menuHostHelper.getColorStateList(62));
        }
        CharSequence text = typedArray.getText(60);
        this.prefixText = TextUtils.isEmpty(text) ? null : text;
        appCompatTextView.setText(text);
        updateVisibility();
        addView(checkableImageButton);
        addView(appCompatTextView);
        checkableImageButton.setOnFocusableChangedListener(new MaterialButton$$ExternalSyntheticLambda0(5, this));
    }

    public final int getPrefixTextStartOffset() {
        int i;
        CheckableImageButton checkableImageButton = this.startIconView;
        if (checkableImageButton.getVisibility() == 0) {
            i = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            i = 0;
        }
        return this.prefixTextView.getPaddingStart() + getPaddingStart() + i;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePrefixTextViewPadding();
    }

    public final void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.startIconView;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
            Api26Impl.updateIconTooltip(checkableImageButton, this.startIconOnLongClickListener, charSequence);
        }
    }

    public final void setStartIconDrawable(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.startIconView;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.startIconTintList;
            PorterDuff.Mode mode = this.startIconTintMode;
            TextInputLayout textInputLayout = this.textInputLayout;
            Api26Impl.applyIconTint(textInputLayout, checkableImageButton, colorStateList, mode);
            setStartIconVisible(true);
            Api26Impl.refreshIconDrawableState(textInputLayout, checkableImageButton, this.startIconTintList);
            return;
        }
        setStartIconVisible(false);
        View.OnLongClickListener onLongClickListener = this.startIconOnLongClickListener;
        checkableImageButton.setOnClickListener(null);
        Api26Impl.setIconClickable(checkableImageButton, onLongClickListener);
        this.startIconOnLongClickListener = null;
        checkableImageButton.setOnLongClickListener(null);
        Api26Impl.setIconClickable(checkableImageButton, null);
        setStartIconContentDescription(null);
    }

    public final void setStartIconVisible(boolean z) {
        EditText editText;
        CheckableImageButton checkableImageButton = this.startIconView;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            if (!z && checkableImageButton.hasFocus() && (editText = this.textInputLayout.getEditText()) != null) {
                editText.requestFocus();
            }
            checkableImageButton.setVisibility(z ? 0 : 8);
            updatePrefixTextViewPadding();
            updateVisibility();
        }
    }

    public final void updatePrefixTextViewPadding() {
        EditText editText = this.textInputLayout.editText;
        if (editText == null) {
            return;
        }
        this.prefixTextView.setPaddingRelative(this.startIconView.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void updateVisibility() {
        int i = (this.prefixText == null || this.hintExpanded) ? 8 : 0;
        setVisibility((this.startIconView.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.prefixTextView.setVisibility(i);
        this.textInputLayout.updateDummyDrawables();
    }
}
