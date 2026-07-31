package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.unit.IntRect;
import com.google.android.exoplayer2.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Brush {
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.Brush.Color(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    /* renamed from: ImageBitmap-x__-hDU$default, reason: not valid java name */
    public static AndroidImageBitmap m226ImageBitmapx__hDU$default(int i, int i2, int i3, int i4) {
        Bitmap createBitmap;
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        Rgb rgb = ColorSpaces.Srgb;
        Bitmap.Config m225toBitmapConfig1JJdX4A = Api26Bitmap.m225toBitmapConfig1JJdX4A(i3);
        if (Build.VERSION.SDK_INT >= 26) {
            createBitmap = Api26Bitmap.m224createBitmapx__hDU$ui_graphics(i, i2, i3, rgb);
        } else {
            createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i, i2, m225toBitmapConfig1JJdX4A);
            createBitmap.setHasAlpha(true);
        }
        return new AndroidImageBitmap(createBitmap);
    }

    public static final AndroidPaint Paint() {
        return new AndroidPaint(new Paint(7));
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.Brush.UncheckedColor(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static float[] m227constructorimpl$default() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    public static final int countTransparentColors(ArrayList arrayList) {
        int i = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            return 0;
        }
        int size = arrayList.size() - 1;
        for (int i2 = 1; i2 < size; i2++) {
            if (Color.m245getAlphaimpl(((Color) arrayList.get(i2)).value) == 0.0f) {
                i++;
            }
        }
        return i;
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
            InlineClassHelperKt.throwIllegalArgumentException("Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received " + Reflection.getOrCreateKotlinClass(androidPaint.getClass()).getQualifiedName());
        }
        return androidPaint.internalPaint;
    }

    public static final Modifier graphicsLayer(Modifier modifier, Function1 function1) {
        return modifier.then(new BlockGraphicsLayerElement(function1));
    }

    /* renamed from: graphicsLayer-_6ThJ44$default, reason: not valid java name */
    public static Modifier m228graphicsLayer_6ThJ44$default(Modifier modifier, float f, Shape shape, boolean z, int i) {
        if ((i & 32) != 0) {
            f = 0.0f;
        }
        float f2 = f;
        long j = TransformOrigin.Center;
        if ((i & 2048) != 0) {
            shape = RectangleShape;
        }
        long j2 = GraphicsLayerScopeKt.DefaultShadowColor;
        return modifier.then(new GraphicsLayerElement(f2, j, shape, z, j2, j2));
    }

    /* renamed from: isIdentity-58bKbWc, reason: not valid java name */
    public static final boolean m229isIdentity58bKbWc(float[] fArr) {
        return fArr.length >= 16 && fArr[0] == 1.0f && fArr[1] == 0.0f && fArr[2] == 0.0f && fArr[3] == 0.0f && fArr[4] == 0.0f && fArr[5] == 1.0f && fArr[6] == 0.0f && fArr[7] == 0.0f && fArr[8] == 0.0f && fArr[9] == 0.0f && fArr[10] == 1.0f && fArr[11] == 0.0f && fArr[12] == 0.0f && fArr[13] == 0.0f && fArr[14] == 0.0f && fArr[15] == 1.0f;
    }

    public static final int[] makeTransparentColors(int i, ArrayList arrayList) {
        long Color;
        long Color2;
        int i2;
        long Color3;
        long Color4;
        int i3 = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            int size = arrayList.size();
            int[] iArr = new int[size];
            while (i3 < size) {
                iArr[i3] = m235toArgb8_81llA(((Color) arrayList.get(i3)).value);
                i3++;
            }
            return iArr;
        }
        int[] iArr2 = new int[arrayList.size() + i];
        int size2 = arrayList.size() - 1;
        int size3 = arrayList.size();
        int i4 = 0;
        while (i3 < size3) {
            long j = ((Color) arrayList.get(i3)).value;
            if (Color.m245getAlphaimpl(j) == 0.0f) {
                if (i3 == 0) {
                    i2 = i4 + 1;
                    Color4 = Color(Color.m249getRedimpl(r6), Color.m248getGreenimpl(r6), Color.m246getBlueimpl(r6), 0.0f, Color.m247getColorSpaceimpl(((Color) arrayList.get(1)).value));
                    iArr2[i4] = m235toArgb8_81llA(Color4);
                } else if (i3 == size2) {
                    i2 = i4 + 1;
                    Color3 = Color(Color.m249getRedimpl(r6), Color.m248getGreenimpl(r6), Color.m246getBlueimpl(r6), 0.0f, Color.m247getColorSpaceimpl(((Color) arrayList.get(i3 - 1)).value));
                    iArr2[i4] = m235toArgb8_81llA(Color3);
                } else {
                    int i5 = i4 + 1;
                    Color = Color(Color.m249getRedimpl(r5), Color.m248getGreenimpl(r5), Color.m246getBlueimpl(r5), 0.0f, Color.m247getColorSpaceimpl(((Color) arrayList.get(i3 - 1)).value));
                    iArr2[i4] = m235toArgb8_81llA(Color);
                    i4 += 2;
                    Color2 = Color(Color.m249getRedimpl(r5), Color.m248getGreenimpl(r5), Color.m246getBlueimpl(r5), 0.0f, Color.m247getColorSpaceimpl(((Color) arrayList.get(i3 + 1)).value));
                    iArr2[i5] = m235toArgb8_81llA(Color2);
                }
                i4 = i2;
            } else {
                iArr2[i4] = m235toArgb8_81llA(j);
                i4++;
            }
            i3++;
        }
        return iArr2;
    }

    public static final float[] makeTransparentStops(ArrayList arrayList, ArrayList arrayList2, int i) {
        int i2 = 0;
        if (i == 0) {
            float[] fArr = new float[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                fArr[i2] = ((Number) it.next()).floatValue();
                i2++;
            }
            return fArr;
        }
        float[] fArr2 = new float[arrayList2.size() + i];
        fArr2[0] = ((Number) arrayList.get(0)).floatValue();
        int size = arrayList2.size() - 1;
        int i3 = 1;
        for (int i4 = 1; i4 < size; i4++) {
            long j = ((Color) arrayList2.get(i4)).value;
            float floatValue = ((Number) arrayList.get(i4)).floatValue();
            int i5 = i3 + 1;
            fArr2[i3] = floatValue;
            if (Color.m245getAlphaimpl(j) == 0.0f) {
                i3 += 2;
                fArr2[i5] = floatValue;
            } else {
                i3 = i5;
            }
        }
        fArr2[i3] = ((Number) arrayList.get(arrayList2.size() - 1)).floatValue();
        return fArr2;
    }

    /* renamed from: map-MK-Hz9U, reason: not valid java name */
    public static final long m230mapMKHz9U(float[] fArr, long j) {
        if (fArr.length < 16) {
            return j;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[3];
        float f4 = fArr[4];
        float f5 = fArr[5];
        float f6 = fArr[7];
        float f7 = fArr[12];
        float f8 = fArr[13];
        float f9 = fArr[15];
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        float f10 = 1.0f / (((f6 * intBitsToFloat2) + (f3 * intBitsToFloat)) + f9);
        if ((Float.floatToRawIntBits(f10) & Log.LOG_LEVEL_OFF) >= 2139095040) {
            f10 = 0.0f;
        }
        float f11 = ((f5 * intBitsToFloat2) + (f2 * intBitsToFloat) + f8) * f10;
        return (Float.floatToRawIntBits((((f4 * intBitsToFloat2) + (f * intBitsToFloat)) + f7) * f10) << 32) | (Float.floatToRawIntBits(f11) & 4294967295L);
    }

    /* renamed from: map-impl, reason: not valid java name */
    public static final void m231mapimpl(float[] fArr, MutableRect mutableRect) {
        if (fArr.length < 16) {
            return;
        }
        float f = fArr[0];
        float f2 = fArr[1];
        float f3 = fArr[3];
        float f4 = fArr[4];
        float f5 = fArr[5];
        float f6 = fArr[7];
        float f7 = fArr[12];
        float f8 = fArr[13];
        float f9 = fArr[15];
        float f10 = mutableRect.left;
        float f11 = mutableRect.top;
        float f12 = mutableRect.right;
        float f13 = mutableRect.bottom;
        float f14 = f3 * f10;
        float f15 = f6 * f11;
        float f16 = 1.0f / ((f14 + f15) + f9);
        if ((Float.floatToRawIntBits(f16) & Log.LOG_LEVEL_OFF) >= 2139095040) {
            f16 = 0.0f;
        }
        float f17 = f * f10;
        float f18 = f4 * f11;
        float f19 = (f17 + f18 + f7) * f16;
        float f20 = f10 * f2;
        float f21 = f11 * f5;
        float f22 = (f20 + f21 + f8) * f16;
        float f23 = f6 * f13;
        float f24 = 1.0f / ((f14 + f23) + f9);
        if ((Float.floatToRawIntBits(f24) & Log.LOG_LEVEL_OFF) >= 2139095040) {
            f24 = 0.0f;
        }
        float f25 = f4 * f13;
        float f26 = (f17 + f25 + f7) * f24;
        float f27 = f5 * f13;
        float f28 = (f20 + f27 + f8) * f24;
        float f29 = f3 * f12;
        float f30 = 1.0f / ((f15 + f29) + f9);
        if ((Float.floatToRawIntBits(f30) & Log.LOG_LEVEL_OFF) >= 2139095040) {
            f30 = 0.0f;
        }
        float f31 = f * f12;
        float f32 = (f31 + f18 + f7) * f30;
        float f33 = f12 * f2;
        float f34 = (f21 + f33 + f8) * f30;
        float f35 = 1.0f / ((f29 + f23) + f9);
        float f36 = (Float.floatToRawIntBits(f35) & Log.LOG_LEVEL_OFF) < 2139095040 ? f35 : 0.0f;
        float f37 = (f31 + f25 + f7) * f36;
        float f38 = (f33 + f27 + f8) * f36;
        mutableRect.left = Math.min(f19, Math.min(f26, Math.min(f32, f37)));
        mutableRect.top = Math.min(f22, Math.min(f28, Math.min(f34, f38)));
        mutableRect.right = Math.max(f19, Math.max(f26, Math.max(f32, f37)));
        mutableRect.bottom = Math.max(f22, Math.max(f28, Math.max(f34, f38)));
    }

    /* renamed from: reset-impl, reason: not valid java name */
    public static final void m232resetimpl(float[] fArr) {
        if (fArr.length < 16) {
            return;
        }
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = 0.0f;
        fArr[5] = 1.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 0.0f;
        fArr[9] = 0.0f;
        fArr[10] = 1.0f;
        fArr[11] = 0.0f;
        fArr[12] = 0.0f;
        fArr[13] = 0.0f;
        fArr[14] = 0.0f;
        fArr[15] = 1.0f;
    }

    /* renamed from: setFrom-tU-YjHk, reason: not valid java name */
    public static final void m233setFromtUYjHk(float[] fArr, Matrix matrix) {
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

    public static final Rect toAndroidRect(IntRect intRect) {
        return new Rect(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    /* renamed from: toAndroidTileMode-0vamqd0, reason: not valid java name */
    public static final Shader.TileMode m234toAndroidTileMode0vamqd0(int i) {
        return i == 0 ? Shader.TileMode.CLAMP : i == 1 ? Shader.TileMode.REPEAT : i == 2 ? Shader.TileMode.MIRROR : i == 3 ? Build.VERSION.SDK_INT >= 31 ? TileModeVerificationHelper.getFrameworkTileModeDecal() : Shader.TileMode.CLAMP : Shader.TileMode.CLAMP;
    }

    /* renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m235toArgb8_81llA(long j) {
        float[] fArr = ColorSpaces.SrgbPrimaries;
        return (int) (Color.m242convertvNxB06k(j, ColorSpaces.Srgb) >>> 32);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m236toStringimpl(int i) {
        return i == 0 ? "Clear" : i == 1 ? "Src" : i == 2 ? "Dst" : i == 3 ? "SrcOver" : i == 4 ? "DstOver" : i == 5 ? "SrcIn" : i == 6 ? "DstIn" : i == 7 ? "SrcOut" : i == 8 ? "DstOut" : i == 9 ? "SrcAtop" : i == 10 ? "DstAtop" : i == 11 ? "Xor" : i == 12 ? "Plus" : i == 13 ? "Modulate" : i == 14 ? "Screen" : i == 15 ? "Overlay" : i == 16 ? "Darken" : i == 17 ? "Lighten" : i == 18 ? "ColorDodge" : i == 19 ? "ColorBurn" : i == 20 ? "HardLight" : i == 21 ? "Softlight" : i == 22 ? "Difference" : i == 23 ? "Exclusion" : i == 24 ? "Multiply" : i == 25 ? "Hue" : i == 26 ? "Saturation" : i == 27 ? "Color" : i == 28 ? "Luminosity" : "Unknown";
    }

    /* renamed from: translate-impl$default, reason: not valid java name */
    public static void m237translateimpl$default(float[] fArr, float f, float f2) {
        if (fArr.length < 16) {
            return;
        }
        float f3 = (fArr[8] * 0.0f) + (fArr[4] * f2) + (fArr[0] * f) + fArr[12];
        float f4 = (fArr[9] * 0.0f) + (fArr[5] * f2) + (fArr[1] * f) + fArr[13];
        float f5 = (fArr[10] * 0.0f) + (fArr[6] * f2) + (fArr[2] * f) + fArr[14];
        float f6 = (fArr[11] * 0.0f) + (fArr[7] * f2) + (fArr[3] * f) + fArr[15];
        fArr[12] = f3;
        fArr[13] = f4;
        fArr[14] = f5;
        fArr[15] = f6;
    }

    public static final void validateColorStops(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.size() == arrayList2.size()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("colors and colorStops arguments must have equal length.");
    }

    public static final int writeValidRootInUnitRange(float f, float[] fArr, int i) {
        float f2 = f >= 0.0f ? f : 0.0f;
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (Math.abs(f2 - f) > 1.05E-6f) {
            f2 = Float.NaN;
        }
        fArr[i] = f2;
        return !Float.isNaN(f2) ? 1 : 0;
    }

    /* renamed from: applyTo-Pq9zytI, reason: not valid java name */
    public abstract void mo238applyToPq9zytI(float f, long j, AndroidPaint androidPaint);

    public abstract androidx.compose.ui.geometry.Rect getBounds();

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
}
