package com.android.launcher3.icons;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class BitmapInfo {
    public static final Bitmap LOW_RES_ICON;
    public static final BitmapInfo LOW_RES_INFO;
    public final int color;
    public final Bitmap icon;

    public interface Extender {
        default BitmapInfo getExtendedInfo(Bitmap bitmap, int i, BaseIconFactory baseIconFactory) {
            return new BitmapInfo(bitmap, i);
        }

        default void prepareToDrawOnUi() {
        }
    }

    static {
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
        LOW_RES_ICON = createBitmap;
        LOW_RES_INFO = new BitmapInfo(createBitmap, 0);
    }

    public BitmapInfo(Bitmap bitmap, int i) {
        this.icon = bitmap;
        this.color = i;
    }

    public final boolean isLowRes() {
        return LOW_RES_ICON == this.icon;
    }

    public final boolean isNullOrLowRes() {
        Bitmap bitmap = this.icon;
        return bitmap == null || bitmap == LOW_RES_ICON;
    }
}
