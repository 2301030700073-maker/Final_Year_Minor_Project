package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.colorspace.ColorSpace;

/* compiled from: AndroidImageBitmap.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidImageBitmap_androidKt {
    public static final ImageBitmap asImageBitmap(Bitmap bitmap) {
        return new AndroidImageBitmap(bitmap);
    }

    /* renamed from: ActualImageBitmap-x__-hDU, reason: not valid java name */
    public static final ImageBitmap m1226ActualImageBitmapx__hDU(int i, int i2, int i3, boolean z, ColorSpace colorSpace) {
        Bitmap createBitmap;
        Bitmap.Config m1227toBitmapConfig1JJdX4A = m1227toBitmapConfig1JJdX4A(i3);
        if (Build.VERSION.SDK_INT >= 26) {
            createBitmap = Api26Bitmap.m1252createBitmapx__hDU$ui_graphics_release(i, i2, i3, z, colorSpace);
        } else {
            createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i, i2, m1227toBitmapConfig1JJdX4A);
            createBitmap.setHasAlpha(z);
        }
        return new AndroidImageBitmap(createBitmap);
    }

    public static final Bitmap asAndroidBitmap(ImageBitmap imageBitmap) {
        if (imageBitmap instanceof AndroidImageBitmap) {
            return ((AndroidImageBitmap) imageBitmap).getBitmap$ui_graphics_release();
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Bitmap");
    }

    /* renamed from: toBitmapConfig-1JJdX4A, reason: not valid java name */
    public static final Bitmap.Config m1227toBitmapConfig1JJdX4A(int i) {
        Bitmap.Config config;
        Bitmap.Config config2;
        ImageBitmapConfig.Companion companion = ImageBitmapConfig.Companion;
        if (ImageBitmapConfig.m1351equalsimpl0(i, companion.m1356getArgb8888_sVssgQ())) {
            return Bitmap.Config.ARGB_8888;
        }
        if (ImageBitmapConfig.m1351equalsimpl0(i, companion.m1355getAlpha8_sVssgQ())) {
            return Bitmap.Config.ALPHA_8;
        }
        if (ImageBitmapConfig.m1351equalsimpl0(i, companion.m1359getRgb565_sVssgQ())) {
            return Bitmap.Config.RGB_565;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && ImageBitmapConfig.m1351equalsimpl0(i, companion.m1357getF16_sVssgQ())) {
            config2 = Bitmap.Config.RGBA_F16;
            return config2;
        }
        if (i2 >= 26 && ImageBitmapConfig.m1351equalsimpl0(i, companion.m1358getGpu_sVssgQ())) {
            config = Bitmap.Config.HARDWARE;
            return config;
        }
        return Bitmap.Config.ARGB_8888;
    }

    public static final int toImageConfig(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3;
        if (config == Bitmap.Config.ALPHA_8) {
            return ImageBitmapConfig.Companion.m1355getAlpha8_sVssgQ();
        }
        if (config == Bitmap.Config.RGB_565) {
            return ImageBitmapConfig.Companion.m1359getRgb565_sVssgQ();
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return ImageBitmapConfig.Companion.m1356getArgb8888_sVssgQ();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            config3 = Bitmap.Config.RGBA_F16;
            if (config == config3) {
                return ImageBitmapConfig.Companion.m1357getF16_sVssgQ();
            }
        }
        if (i >= 26) {
            config2 = Bitmap.Config.HARDWARE;
            if (config == config2) {
                return ImageBitmapConfig.Companion.m1358getGpu_sVssgQ();
            }
        }
        return ImageBitmapConfig.Companion.m1356getArgb8888_sVssgQ();
    }
}
