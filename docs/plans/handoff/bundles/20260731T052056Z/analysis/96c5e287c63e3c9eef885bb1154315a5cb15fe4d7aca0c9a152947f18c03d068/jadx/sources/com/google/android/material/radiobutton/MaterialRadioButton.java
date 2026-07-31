package com.google.android.material.radiobutton;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MaterialRadioButton extends AppCompatRadioButton {
    public static final int[][] ENABLED_CHECKED_STATES = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList materialThemeColorsTintList;
    public boolean useMaterialThemeColors;

    public MaterialRadioButton(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, org.wikipedia.R.attr.radioButtonStyle, org.wikipedia.R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context2, attributeSet, R$styleable.MaterialRadioButton, org.wikipedia.R.attr.radioButtonStyle, org.wikipedia.R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (obtainStyledAttributes.hasValue(0)) {
            setButtonTintList(OperationKt.getColorStateList(context2, obtainStyledAttributes, 0));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            setRippleColor(OperationKt.getColorStateList(context2, obtainStyledAttributes, 1));
        }
        this.useMaterialThemeColors = obtainStyledAttributes.getBoolean(2, false);
        obtainStyledAttributes.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        ColorStateList colorStateList = this.materialThemeColorsTintList;
        if (colorStateList != null) {
            return colorStateList;
        }
        int resolveColor = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, org.wikipedia.R.attr.colorControlActivated));
        int resolveColor2 = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, org.wikipedia.R.attr.colorOnSurface));
        int resolveColor3 = UStringsKt.resolveColor(getContext(), Operation$State.resolveTypedValueOrThrow(this, org.wikipedia.R.attr.colorSurface));
        ColorStateList colorStateList2 = new ColorStateList(ENABLED_CHECKED_STATES, new int[]{UStringsKt.layer(resolveColor3, 1.0f, resolveColor), UStringsKt.layer(resolveColor3, 0.54f, resolveColor2), UStringsKt.layer(resolveColor3, 0.38f, resolveColor2), UStringsKt.layer(resolveColor3, 0.38f, resolveColor2)});
        this.materialThemeColorsTintList = colorStateList2;
        return colorStateList2;
    }

    private void setRippleColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return;
        }
        Drawable background = getBackground();
        if (background instanceof DrawableWrapper) {
            background = ((DrawableWrapper) background).getDrawable();
        }
        if (background instanceof RippleDrawable) {
            ((RippleDrawable) background).setColor(colorStateList);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.useMaterialThemeColors = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
