package com.takisoft.colorpicker;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorStateDrawable extends LayerDrawable {
    public final int mColor;

    public ColorStateDrawable(Drawable[] drawableArr, int i) {
        super(drawableArr);
        this.mColor = i;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.LayerDrawable, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int i;
        int length = iArr.length;
        int i2 = 0;
        while (true) {
            i = this.mColor;
            if (i2 >= length) {
                setColorFilter(i, PorterDuff.Mode.SRC_ATOP);
                break;
            }
            int i3 = iArr[i2];
            if (i3 == 16842919 || i3 == 16842908) {
                break;
            }
            i2++;
        }
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * 0.7f;
        setColorFilter(Color.HSVToColor(fArr), PorterDuff.Mode.SRC_ATOP);
        return super.onStateChange(iArr);
    }
}
