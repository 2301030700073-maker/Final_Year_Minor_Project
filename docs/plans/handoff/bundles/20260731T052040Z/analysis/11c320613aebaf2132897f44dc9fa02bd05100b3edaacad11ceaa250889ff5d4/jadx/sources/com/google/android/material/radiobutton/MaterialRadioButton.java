package com.google.android.material.radiobutton;

import android.R;
import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatRadioButton;
import kotlin.io.CloseableKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MaterialRadioButton extends AppCompatRadioButton {
    public static final int[][] ENABLED_CHECKED_STATES = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public ColorStateList materialThemeColorsTintList;
    public boolean useMaterialThemeColors;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.materialThemeColorsTintList == null) {
            int color = CloseableKt.getColor(org.schabi.newpipe.R.attr.colorControlActivated, this);
            int color2 = CloseableKt.getColor(org.schabi.newpipe.R.attr.colorOnSurface, this);
            int color3 = CloseableKt.getColor(org.schabi.newpipe.R.attr.colorSurface, this);
            this.materialThemeColorsTintList = new ColorStateList(ENABLED_CHECKED_STATES, new int[]{CloseableKt.layer(1.0f, color3, color), CloseableKt.layer(0.54f, color3, color2), CloseableKt.layer(0.38f, color3, color2), CloseableKt.layer(0.38f, color3, color2)});
        }
        return this.materialThemeColorsTintList;
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
