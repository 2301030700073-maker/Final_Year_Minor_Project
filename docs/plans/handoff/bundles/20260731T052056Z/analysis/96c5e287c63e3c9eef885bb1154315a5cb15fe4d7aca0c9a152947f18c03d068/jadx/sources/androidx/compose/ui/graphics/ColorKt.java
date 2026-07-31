package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Oklab;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.unit.IntRect;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ColorKt {
    public static final RectangleShapeKt$RectangleShape$1 RectangleShape = new RectangleShapeKt$RectangleShape$1();
    public static Method inorderBarrierMethod;
    public static boolean orderMethodsFetched;
    public static Method reorderBarrierMethod;
    public static ReusableGraphicsLayerScope reusableGraphicsLayerScope;

    /* JADX WARN: Removed duplicated region for block: B:101:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long Color(float r21, float r22, float r23, float r24, androidx.compose.ui.graphics.colorspace.ColorSpace r25) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.Color(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    /* renamed from: ImageBitmap-x__-hDU$default, reason: not valid java name */
    public static AndroidImageBitmap m435ImageBitmapx__hDU$default(int i, int i2, int i3) {
        Bitmap createBitmap;
        Rgb rgb = ColorSpaces.Srgb;
        Bitmap.Config m420toBitmapConfig1JJdX4A = Api26Bitmap.m420toBitmapConfig1JJdX4A(i3);
        if (Build.VERSION.SDK_INT >= 26) {
            createBitmap = Api26Bitmap.m419createBitmapx__hDU$ui_graphics(i, i2, i3, rgb);
        } else {
            createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i, i2, m420toBitmapConfig1JJdX4A);
            createBitmap.setHasAlpha(true);
        }
        return new AndroidImageBitmap(createBitmap);
    }

    public static final AndroidPaint Paint() {
        return new AndroidPaint(new Paint(7));
    }

    public static final long TransformOrigin(float f, float f2) {
        long floatToRawIntBits = (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        int i = TransformOrigin.$r8$clinit;
        return floatToRawIntBits;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long UncheckedColor(float r17, float r18, float r19, float r20, androidx.compose.ui.graphics.colorspace.ColorSpace r21) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.UncheckedColor(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    /* renamed from: compositeOver--OWjLjI, reason: not valid java name */
    public static final long m436compositeOverOWjLjI(long j, long j2) {
        float f;
        float f2;
        long m427convertvNxB06k = Color.m427convertvNxB06k(j, Color.m431getColorSpaceimpl(j2));
        float m429getAlphaimpl = Color.m429getAlphaimpl(j2);
        float m429getAlphaimpl2 = Color.m429getAlphaimpl(m427convertvNxB06k);
        float f3 = 1.0f - m429getAlphaimpl2;
        float f4 = (m429getAlphaimpl * f3) + m429getAlphaimpl2;
        float m433getRedimpl = Color.m433getRedimpl(m427convertvNxB06k);
        float m433getRedimpl2 = Color.m433getRedimpl(j2);
        float f5 = RecyclerView.DECELERATION_RATE;
        if (f4 == RecyclerView.DECELERATION_RATE) {
            f = 0.0f;
        } else {
            f = (((m433getRedimpl2 * m429getAlphaimpl) * f3) + (m433getRedimpl * m429getAlphaimpl2)) / f4;
        }
        float m432getGreenimpl = Color.m432getGreenimpl(m427convertvNxB06k);
        float m432getGreenimpl2 = Color.m432getGreenimpl(j2);
        if (f4 == RecyclerView.DECELERATION_RATE) {
            f2 = 0.0f;
        } else {
            f2 = (((m432getGreenimpl2 * m429getAlphaimpl) * f3) + (m432getGreenimpl * m429getAlphaimpl2)) / f4;
        }
        float m430getBlueimpl = Color.m430getBlueimpl(m427convertvNxB06k);
        float m430getBlueimpl2 = Color.m430getBlueimpl(j2);
        if (f4 != RecyclerView.DECELERATION_RATE) {
            f5 = (((m430getBlueimpl2 * m429getAlphaimpl) * f3) + (m430getBlueimpl * m429getAlphaimpl2)) / f4;
        }
        return UncheckedColor(f, f2, f5, f4, Color.m431getColorSpaceimpl(j2));
    }

    /* renamed from: drawOutline-wDX37Ww$default, reason: not valid java name */
    public static void m437drawOutlinewDX37Ww$default(DrawScope drawScope, ColorKt colorKt, long j) {
        if (colorKt instanceof Outline$Rectangle) {
            Rect rect = ((Outline$Rectangle) colorKt).rect;
            float f = rect.left;
            float f2 = rect.top;
            drawScope.mo473drawRectnJ9OG0(j, (4294967295L & Float.floatToRawIntBits(f2)) | (Float.floatToRawIntBits(f) << 32), size(rect), 1.0f, null, 3);
            return;
        }
        boolean z = colorKt instanceof Outline$Rounded;
        Fill fill = Fill.INSTANCE;
        if (!z) {
            if (colorKt instanceof Outline$Generic) {
                drawScope.mo471drawPathLG529CI(((Outline$Generic) colorKt).path, j, 1.0f, fill);
                return;
            } else {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
        }
        Outline$Rounded outline$Rounded = (Outline$Rounded) colorKt;
        AndroidPath androidPath = outline$Rounded.roundRectPath;
        if (androidPath != null) {
            drawScope.mo471drawPathLG529CI(androidPath, j, 1.0f, fill);
            return;
        }
        RoundRect roundRect = outline$Rounded.roundRect;
        float intBitsToFloat = Float.intBitsToFloat((int) (roundRect.bottomLeftCornerRadius >> 32));
        float f3 = roundRect.left;
        float f4 = roundRect.top;
        long floatToRawIntBits = (Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L);
        float width = roundRect.getWidth();
        float height = roundRect.getHeight();
        drawScope.mo474drawRoundRectuAw5IA(j, floatToRawIntBits, (Float.floatToRawIntBits(width) << 32) | (Float.floatToRawIntBits(height) & 4294967295L), (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L));
    }

    public static void enableZ(android.graphics.Canvas canvas, boolean z) {
        Method method;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            CanvasZHelper.enableZ(canvas, z);
            return;
        }
        if (!orderMethodsFetched) {
            try {
                if (i == 28) {
                    Method declaredMethod = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, new Class[0].getClass());
                    reorderBarrierMethod = (Method) declaredMethod.invoke(android.graphics.Canvas.class, "insertReorderBarrier", new Class[0]);
                    inorderBarrierMethod = (Method) declaredMethod.invoke(android.graphics.Canvas.class, "insertInorderBarrier", new Class[0]);
                } else {
                    reorderBarrierMethod = android.graphics.Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                    inorderBarrierMethod = android.graphics.Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                }
                Method method2 = reorderBarrierMethod;
                if (method2 != null) {
                    method2.setAccessible(true);
                }
                Method method3 = inorderBarrierMethod;
                if (method3 != null) {
                    method3.setAccessible(true);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            orderMethodsFetched = true;
        }
        if (z) {
            try {
                Method method4 = reorderBarrierMethod;
                if (method4 != null) {
                    method4.invoke(canvas, null);
                }
            } catch (IllegalAccessException | InvocationTargetException unused2) {
                return;
            }
        }
        if (z || (method = inorderBarrierMethod) == null) {
            return;
        }
        method.invoke(canvas, null);
    }

    public static final Paint getNativePaint(AndroidPaint androidPaint) {
        if (!(androidPaint instanceof AndroidPaint)) {
            InlineClassHelperKt.throwIllegalArgumentException("Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received " + Reflection.factory.getOrCreateKotlinClass(androidPaint.getClass()).getQualifiedName());
        }
        return androidPaint.internalPaint;
    }

    public static final Modifier graphicsLayer(Modifier modifier, Function1 function1) {
        return modifier.then(new BlockGraphicsLayerElement(function1));
    }

    /* renamed from: graphicsLayer-Ap8cVGQ$default, reason: not valid java name */
    public static Modifier m438graphicsLayerAp8cVGQ$default(Modifier modifier, float f, float f2, float f3, float f4, Shape shape, int i) {
        float f5 = (i & 1) != 0 ? 1.0f : f;
        float f6 = (i & 2) != 0 ? 1.0f : f2;
        float f7 = (i & 4) != 0 ? 1.0f : f3;
        float f8 = (i & 32) != 0 ? 0.0f : f4;
        long j = TransformOrigin.Center;
        Shape shape2 = (i & 2048) != 0 ? RectangleShape : shape;
        long j2 = GraphicsLayerScopeKt.DefaultShadowColor;
        return modifier.then(new GraphicsLayerElement(f5, f6, f7, f8, RecyclerView.DECELERATION_RATE, j, shape2, false, j2, j2));
    }

    /* renamed from: graphicsLayer-_6ThJ44$default, reason: not valid java name */
    public static Modifier m439graphicsLayer_6ThJ44$default(Modifier modifier, float f, float f2, float f3, float f4, Shape shape, int i) {
        float f5 = (i & 1) != 0 ? 1.0f : f;
        float f6 = (i & 2) != 0 ? 1.0f : f2;
        float f7 = (i & 4) != 0 ? 1.0f : f3;
        float f8 = (i & 256) != 0 ? 0.0f : f4;
        long j = TransformOrigin.Center;
        Shape shape2 = (i & 2048) != 0 ? RectangleShape : shape;
        boolean z = (i & 4096) == 0;
        long j2 = GraphicsLayerScopeKt.DefaultShadowColor;
        return modifier.then(new GraphicsLayerElement(f5, f6, f7, RecyclerView.DECELERATION_RATE, f8, j, shape2, z, j2, j2));
    }

    /* renamed from: isIdentity-58bKbWc, reason: not valid java name */
    public static final boolean m440isIdentity58bKbWc(float[] fArr) {
        return fArr.length >= 16 && fArr[0] == 1.0f && fArr[1] == RecyclerView.DECELERATION_RATE && fArr[2] == RecyclerView.DECELERATION_RATE && fArr[3] == RecyclerView.DECELERATION_RATE && fArr[4] == RecyclerView.DECELERATION_RATE && fArr[5] == 1.0f && fArr[6] == RecyclerView.DECELERATION_RATE && fArr[7] == RecyclerView.DECELERATION_RATE && fArr[8] == RecyclerView.DECELERATION_RATE && fArr[9] == RecyclerView.DECELERATION_RATE && fArr[10] == 1.0f && fArr[11] == RecyclerView.DECELERATION_RATE && fArr[12] == RecyclerView.DECELERATION_RATE && fArr[13] == RecyclerView.DECELERATION_RATE && fArr[14] == RecyclerView.DECELERATION_RATE && fArr[15] == 1.0f;
    }

    public static final Shadow lerp(Shadow shadow, Shadow shadow2, float f) {
        long m441lerpjxsXWHM = m441lerpjxsXWHM(shadow.color, shadow2.color, f);
        long j = shadow.offset;
        long j2 = shadow2.offset;
        float lerp = UnsignedKt.lerp(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 >> 32)), f);
        float lerp2 = UnsignedKt.lerp(Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 & 4294967295L)), f);
        return new Shadow(m441lerpjxsXWHM, (Float.floatToRawIntBits(lerp) << 32) | (Float.floatToRawIntBits(lerp2) & 4294967295L), UnsignedKt.lerp(shadow.blurRadius, shadow2.blurRadius, f));
    }

    /* renamed from: lerp-jxsXWHM, reason: not valid java name */
    public static final long m441lerpjxsXWHM(long j, long j2, float f) {
        Oklab oklab = ColorSpaces.Oklab;
        long m427convertvNxB06k = Color.m427convertvNxB06k(j, oklab);
        long m427convertvNxB06k2 = Color.m427convertvNxB06k(j2, oklab);
        float m429getAlphaimpl = Color.m429getAlphaimpl(m427convertvNxB06k);
        float m433getRedimpl = Color.m433getRedimpl(m427convertvNxB06k);
        float m432getGreenimpl = Color.m432getGreenimpl(m427convertvNxB06k);
        float m430getBlueimpl = Color.m430getBlueimpl(m427convertvNxB06k);
        float m429getAlphaimpl2 = Color.m429getAlphaimpl(m427convertvNxB06k2);
        float m433getRedimpl2 = Color.m433getRedimpl(m427convertvNxB06k2);
        float m432getGreenimpl2 = Color.m432getGreenimpl(m427convertvNxB06k2);
        float m430getBlueimpl2 = Color.m430getBlueimpl(m427convertvNxB06k2);
        if (f < RecyclerView.DECELERATION_RATE) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        return Color.m427convertvNxB06k(UncheckedColor(UnsignedKt.lerp(m433getRedimpl, m433getRedimpl2, f), UnsignedKt.lerp(m432getGreenimpl, m432getGreenimpl2, f), UnsignedKt.lerp(m430getBlueimpl, m430getBlueimpl2, f), UnsignedKt.lerp(m429getAlphaimpl, m429getAlphaimpl2, f), oklab), Color.m431getColorSpaceimpl(j2));
    }

    /* renamed from: setFrom-EL8BTi8, reason: not valid java name */
    public static final void m442setFromEL8BTi8(android.graphics.Matrix matrix, float[] fArr) {
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        float f10 = fArr[12];
        float f11 = fArr[13];
        float f12 = fArr[15];
        fArr[0] = f;
        fArr[1] = f5;
        fArr[2] = f10;
        fArr[3] = f2;
        fArr[4] = f6;
        fArr[5] = f11;
        fArr[6] = f4;
        fArr[7] = f8;
        fArr[8] = f12;
        matrix.setValues(fArr);
        fArr[0] = f;
        fArr[1] = f2;
        fArr[2] = f3;
        fArr[3] = f4;
        fArr[4] = f5;
        fArr[5] = f6;
        fArr[6] = f7;
        fArr[7] = f8;
        fArr[8] = f9;
    }

    /* renamed from: setFrom-tU-YjHk, reason: not valid java name */
    public static final void m443setFromtUYjHk(android.graphics.Matrix matrix, float[] fArr) {
        matrix.getValues(fArr);
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[3];
        float f5 = fArr[4];
        float f6 = fArr[5];
        float f7 = fArr[6];
        float f8 = fArr[7];
        float f9 = fArr[8];
        fArr[0] = f;
        fArr[1] = f4;
        fArr[2] = 0.0f;
        fArr[3] = f7;
        fArr[4] = f2;
        fArr[5] = f5;
        fArr[6] = 0.0f;
        fArr[7] = f8;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = f3;
        fArr[13] = f6;
        fArr[14] = 0.0f;
        fArr[15] = f9;
    }

    public static final long size(Rect rect) {
        float f = rect.right - rect.left;
        float f2 = rect.bottom - rect.top;
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final android.graphics.Rect toAndroidRect(IntRect intRect) {
        return new android.graphics.Rect(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    public static final RectF toAndroidRectF(Rect rect) {
        return new RectF(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m444toArgb8_81llA(long j) {
        float[] fArr = ColorSpaces.SrgbPrimaries;
        return (int) (Color.m427convertvNxB06k(j, ColorSpaces.Srgb) >>> 32);
    }

    public static final Rect toComposeRect(RectF rectF) {
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m445toStringimpl(int i) {
        return i == 0 ? "Clear" : i == 1 ? "Src" : i == 2 ? "Dst" : i == 3 ? "SrcOver" : i == 4 ? "DstOver" : i == 5 ? "SrcIn" : i == 6 ? "DstIn" : i == 7 ? "SrcOut" : i == 8 ? "DstOut" : i == 9 ? "SrcAtop" : i == 10 ? "DstAtop" : i == 11 ? "Xor" : i == 12 ? "Plus" : i == 13 ? "Modulate" : i == 14 ? "Screen" : i == 15 ? "Overlay" : i == 16 ? "Darken" : i == 17 ? "Lighten" : i == 18 ? "ColorDodge" : i == 19 ? "ColorBurn" : i == 20 ? "HardLight" : i == 21 ? "Softlight" : i == 22 ? "Difference" : i == 23 ? "Exclusion" : i == 24 ? "Multiply" : i == 25 ? "Hue" : i == 26 ? "Saturation" : i == 27 ? "Color" : i == 28 ? "Luminosity" : "Unknown";
    }

    public static final int writeValidRootInUnitRange(float f, float[] fArr, int i) {
        float f2 = RecyclerView.DECELERATION_RATE;
        if (f >= RecyclerView.DECELERATION_RATE) {
            f2 = f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (Math.abs(f2 - f) > 1.05E-6f) {
            f2 = Float.NaN;
        }
        fArr[i] = f2;
        return !Float.isNaN(f2) ? 1 : 0;
    }

    public abstract Rect getBounds();

    public static final long Color(int i) {
        long j = i << 32;
        int i2 = Color.$r8$clinit;
        return j;
    }

    public static final long Color(long j) {
        long j2 = j << 32;
        int i = Color.$r8$clinit;
        return j2;
    }

    public static final long Color(int i, int i2, int i3, int i4) {
        return Color(((i & 255) << 16) | ((i4 & 255) << 24) | ((i2 & 255) << 8) | (i3 & 255));
    }
}
