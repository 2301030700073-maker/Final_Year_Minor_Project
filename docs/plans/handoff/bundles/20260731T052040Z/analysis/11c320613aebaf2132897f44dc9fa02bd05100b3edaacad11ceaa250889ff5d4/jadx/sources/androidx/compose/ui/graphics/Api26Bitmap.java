package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.Rgb$eotf$1;
import androidx.compose.ui.graphics.colorspace.Rgb$oetf$1;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import j$.util.function.DoubleUnaryOperator$CC;
import java.util.Arrays;
import java.util.function.DoubleUnaryOperator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Api26Bitmap {
    /* renamed from: createBitmap-x__-hDU$ui_graphics, reason: not valid java name */
    public static final Bitmap m224createBitmapx__hDU$ui_graphics(int i, int i2, int i3, ColorSpace colorSpace) {
        Bitmap.Config config;
        android.graphics.ColorSpace colorSpace2;
        android.graphics.ColorSpace colorSpace3;
        ColorSpace.Rgb.TransferParameters transferParameters;
        android.graphics.ColorSpace obtainAndroidColorSpace;
        android.graphics.ColorSpace colorSpace4;
        Bitmap.Config m225toBitmapConfig1JJdX4A = m225toBitmapConfig1JJdX4A(i3);
        if (Intrinsics.areEqual(colorSpace, ColorSpaces.Srgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.SRGB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.Aces)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.ACES);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.Acescg)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.ACESCG);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.AdobeRgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.ADOBE_RGB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.Bt2020)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.BT2020);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.Bt709)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.BT709);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.CieLab)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.CIE_LAB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.CieXyz)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.CIE_XYZ);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.DciP3)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.DCI_P3);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.DisplayP3)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.DISPLAY_P3);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.ExtendedSrgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.LinearExtendedSrgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.LinearSrgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.LINEAR_SRGB);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.Ntsc1953)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.NTSC_1953);
        } else if (Intrinsics.areEqual(colorSpace, ColorSpaces.ProPhotoRgb)) {
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.PRO_PHOTO_RGB);
        } else {
            if (!Intrinsics.areEqual(colorSpace, ColorSpaces.SmpteC)) {
                if (Build.VERSION.SDK_INT >= 34 && (obtainAndroidColorSpace = ColorSpaceVerificationHelperV34.obtainAndroidColorSpace(colorSpace)) != null) {
                    colorSpace3 = obtainAndroidColorSpace;
                    config = m225toBitmapConfig1JJdX4A;
                    return Bitmap.createBitmap((DisplayMetrics) null, i, i2, config, true, colorSpace3);
                }
                if (colorSpace instanceof Rgb) {
                    String str = colorSpace.name;
                    Rgb rgb = (Rgb) colorSpace;
                    float[] xyz$ui_graphics = rgb.whitePoint.toXyz$ui_graphics();
                    TransferParameters transferParameters2 = rgb.transferParameters;
                    if (transferParameters2 != null) {
                        config = m225toBitmapConfig1JJdX4A;
                        transferParameters = new ColorSpace.Rgb.TransferParameters(transferParameters2.a, transferParameters2.b, transferParameters2.c, transferParameters2.d, transferParameters2.e, transferParameters2.f, transferParameters2.gamma);
                    } else {
                        config = m225toBitmapConfig1JJdX4A;
                        transferParameters = null;
                    }
                    float[] fArr = rgb.transform;
                    final int i4 = 0;
                    if (transferParameters != null) {
                        ColorSpace.Rgb rgb2 = new ColorSpace.Rgb(str, rgb.primaries, xyz$ui_graphics, transferParameters);
                        if (Float.isNaN(fArr[0]) || Arrays.equals(rgb2.getTransform(), fArr)) {
                            colorSpace3 = rgb2;
                        } else {
                            colorSpace2 = new ColorSpace.Rgb(str, fArr, transferParameters);
                        }
                    } else {
                        float[] fArr2 = rgb.primaries;
                        final Rgb$oetf$1 rgb$oetf$1 = rgb.oetf;
                        DoubleUnaryOperator doubleUnaryOperator = new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda0
                            public /* synthetic */ DoubleUnaryOperator andThen(DoubleUnaryOperator doubleUnaryOperator2) {
                                int i5 = i4;
                                return DoubleUnaryOperator$CC.$default$andThen(this, doubleUnaryOperator2);
                            }

                            @Override // java.util.function.DoubleUnaryOperator
                            public final double applyAsDouble(double d) {
                                int i5 = i4;
                                Function1 function1 = rgb$oetf$1;
                                switch (i5) {
                                }
                                return ((Number) function1.invoke(Double.valueOf(d))).doubleValue();
                            }

                            public /* synthetic */ DoubleUnaryOperator compose(DoubleUnaryOperator doubleUnaryOperator2) {
                                int i5 = i4;
                                return DoubleUnaryOperator$CC.$default$compose(this, doubleUnaryOperator2);
                            }
                        };
                        final Rgb$eotf$1 rgb$eotf$1 = rgb.eotf;
                        final int i5 = 1;
                        colorSpace3 = new ColorSpace.Rgb(str, fArr2, xyz$ui_graphics, doubleUnaryOperator, new DoubleUnaryOperator() { // from class: androidx.compose.ui.graphics.ColorSpaceVerificationHelper$$ExternalSyntheticLambda0
                            public /* synthetic */ DoubleUnaryOperator andThen(DoubleUnaryOperator doubleUnaryOperator2) {
                                int i52 = i5;
                                return DoubleUnaryOperator$CC.$default$andThen(this, doubleUnaryOperator2);
                            }

                            @Override // java.util.function.DoubleUnaryOperator
                            public final double applyAsDouble(double d) {
                                int i52 = i5;
                                Function1 function1 = rgb$eotf$1;
                                switch (i52) {
                                }
                                return ((Number) function1.invoke(Double.valueOf(d))).doubleValue();
                            }

                            public /* synthetic */ DoubleUnaryOperator compose(DoubleUnaryOperator doubleUnaryOperator2) {
                                int i52 = i5;
                                return DoubleUnaryOperator$CC.$default$compose(this, doubleUnaryOperator2);
                            }
                        }, rgb.min, rgb.max);
                    }
                    return Bitmap.createBitmap((DisplayMetrics) null, i, i2, config, true, colorSpace3);
                }
                config = m225toBitmapConfig1JJdX4A;
                colorSpace2 = android.graphics.ColorSpace.get(ColorSpace.Named.SRGB);
                colorSpace3 = colorSpace2;
                return Bitmap.createBitmap((DisplayMetrics) null, i, i2, config, true, colorSpace3);
            }
            colorSpace4 = android.graphics.ColorSpace.get(ColorSpace.Named.SMPTE_C);
        }
        colorSpace3 = colorSpace4;
        config = m225toBitmapConfig1JJdX4A;
        return Bitmap.createBitmap((DisplayMetrics) null, i, i2, config, true, colorSpace3);
    }

    /* renamed from: toBitmapConfig-1JJdX4A, reason: not valid java name */
    public static final Bitmap.Config m225toBitmapConfig1JJdX4A(int i) {
        Bitmap.Config config;
        Bitmap.Config config2;
        if (i == 0) {
            return Bitmap.Config.ARGB_8888;
        }
        if (i == 1) {
            return Bitmap.Config.ALPHA_8;
        }
        if (i == 2) {
            return Bitmap.Config.RGB_565;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && i == 3) {
            config2 = Bitmap.Config.RGBA_F16;
            return config2;
        }
        if (i2 < 26 || i != 4) {
            return Bitmap.Config.ARGB_8888;
        }
        config = Bitmap.Config.HARDWARE;
        return config;
    }

    public static final int toImageConfig(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3;
        if (config == Bitmap.Config.ALPHA_8) {
            return 1;
        }
        if (config == Bitmap.Config.RGB_565) {
            return 2;
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return 0;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            config3 = Bitmap.Config.RGBA_F16;
            if (config == config3) {
                return 3;
            }
        }
        if (i < 26) {
            return 0;
        }
        config2 = Bitmap.Config.HARDWARE;
        return config == config2 ? 4 : 0;
    }
}
