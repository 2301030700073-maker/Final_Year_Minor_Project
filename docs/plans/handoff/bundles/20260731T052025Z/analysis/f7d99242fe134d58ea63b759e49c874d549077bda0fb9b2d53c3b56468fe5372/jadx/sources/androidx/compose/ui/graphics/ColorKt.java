package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
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
import androidx.room.util.DBUtil;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ColorKt {
    public static final RectangleShapeKt$RectangleShape$1 RectangleShape = new RectangleShapeKt$RectangleShape$1();
    public static Method inorderBarrierMethod;
    public static boolean orderMethodsFetched;
    public static Method reorderBarrierMethod;
    public static ReusableGraphicsLayerScope reusableGraphicsLayerScope;

    public static final AndroidCanvas Canvas(AndroidImageBitmap androidImageBitmap) {
        android.graphics.Canvas canvas = AndroidCanvas_androidKt.EmptyCanvas;
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.internalCanvas = new android.graphics.Canvas(Api26Bitmap.asAndroidBitmap(androidImageBitmap));
        return androidCanvas;
    }

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
    public static AndroidImageBitmap m489ImageBitmapx__hDU$default(int i, int i2, int i3, int i4) {
        Bitmap createBitmap;
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        Rgb rgb = ColorSpaces.Srgb;
        Bitmap.Config m474toBitmapConfig1JJdX4A = Api26Bitmap.m474toBitmapConfig1JJdX4A(i3);
        if (Build.VERSION.SDK_INT >= 26) {
            createBitmap = Api26Bitmap.m472createBitmapx__hDU$ui_graphics(i, i2, i3, rgb);
        } else {
            createBitmap = Bitmap.createBitmap((DisplayMetrics) null, i, i2, m474toBitmapConfig1JJdX4A);
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
    public static final long m490compositeOverOWjLjI(long j, long j2) {
        float f;
        float f2;
        long m480convertvNxB06k = Color.m480convertvNxB06k(j, Color.m485getColorSpaceimpl(j2));
        float m483getAlphaimpl = Color.m483getAlphaimpl(j2);
        float m483getAlphaimpl2 = Color.m483getAlphaimpl(m480convertvNxB06k);
        float f3 = 1.0f - m483getAlphaimpl2;
        float f4 = (m483getAlphaimpl * f3) + m483getAlphaimpl2;
        float m487getRedimpl = Color.m487getRedimpl(m480convertvNxB06k);
        float m487getRedimpl2 = Color.m487getRedimpl(j2);
        float f5 = 0.0f;
        if (f4 == 0.0f) {
            f = 0.0f;
        } else {
            f = (((m487getRedimpl2 * m483getAlphaimpl) * f3) + (m487getRedimpl * m483getAlphaimpl2)) / f4;
        }
        float m486getGreenimpl = Color.m486getGreenimpl(m480convertvNxB06k);
        float m486getGreenimpl2 = Color.m486getGreenimpl(j2);
        if (f4 == 0.0f) {
            f2 = 0.0f;
        } else {
            f2 = (((m486getGreenimpl2 * m483getAlphaimpl) * f3) + (m486getGreenimpl * m483getAlphaimpl2)) / f4;
        }
        float m484getBlueimpl = Color.m484getBlueimpl(m480convertvNxB06k);
        float m484getBlueimpl2 = Color.m484getBlueimpl(j2);
        if (f4 != 0.0f) {
            f5 = (((m484getBlueimpl2 * m483getAlphaimpl) * f3) + (m484getBlueimpl * m483getAlphaimpl2)) / f4;
        }
        return UncheckedColor(f, f2, f5, f4, Color.m485getColorSpaceimpl(j2));
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static float[] m491constructorimpl$default() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    }

    public static final int countTransparentColors(ArrayList arrayList) {
        int i = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            return 0;
        }
        int size = arrayList.size() - 1;
        for (int i2 = 1; i2 < size; i2++) {
            if (Color.m483getAlphaimpl(((Color) arrayList.get(i2)).value) == 0.0f) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: drawOutline-wDX37Ww$default, reason: not valid java name */
    public static void m492drawOutlinewDX37Ww$default(DrawScope drawScope, ColorKt colorKt, long j) {
        if (colorKt instanceof Outline$Rectangle) {
            Rect rect = ((Outline$Rectangle) colorKt).rect;
            float f = rect.left;
            float f2 = rect.top;
            long floatToRawIntBits = (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
            float f3 = rect.right - rect.left;
            float f4 = rect.bottom - rect.top;
            drawScope.mo530drawRectnJ9OG0(j, floatToRawIntBits, (Float.floatToRawIntBits(f3) << 32) | (4294967295L & Float.floatToRawIntBits(f4)), 1.0f, null, 3);
            return;
        }
        boolean z = colorKt instanceof Outline$Rounded;
        Fill fill = Fill.INSTANCE;
        if (!z) {
            if (colorKt instanceof Outline$Generic) {
                drawScope.mo529drawPathLG529CI(((Outline$Generic) colorKt).path, j, 1.0f, fill);
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        Outline$Rounded outline$Rounded = (Outline$Rounded) colorKt;
        AndroidPath androidPath = outline$Rounded.roundRectPath;
        if (androidPath != null) {
            drawScope.mo529drawPathLG529CI(androidPath, j, 1.0f, fill);
            return;
        }
        RoundRect roundRect = outline$Rounded.roundRect;
        float f5 = roundRect.top;
        float f6 = roundRect.left;
        float intBitsToFloat = Float.intBitsToFloat((int) (roundRect.bottomLeftCornerRadius >> 32));
        float f7 = roundRect.right - f6;
        float f8 = roundRect.bottom - f5;
        drawScope.mo532drawRoundRectuAw5IA(j, (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L), (Float.floatToRawIntBits(f7) << 32) | (Float.floatToRawIntBits(f8) & 4294967295L), (Float.floatToRawIntBits(intBitsToFloat) << 32) | (4294967295L & Float.floatToRawIntBits(intBitsToFloat)), fill);
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

    /* renamed from: graphicsLayer-Ap8cVGQ$default, reason: not valid java name */
    public static Modifier m493graphicsLayerAp8cVGQ$default(Modifier modifier, float f, float f2, float f3, float f4, Shape shape, int i) {
        float f5 = (i & 1) != 0 ? 1.0f : f;
        float f6 = (i & 2) != 0 ? 1.0f : f2;
        float f7 = (i & 4) != 0 ? 1.0f : f3;
        float f8 = (i & 32) != 0 ? 0.0f : f4;
        long j = TransformOrigin.Center;
        Shape shape2 = (i & 2048) != 0 ? RectangleShape : shape;
        long j2 = GraphicsLayerScopeKt.DefaultShadowColor;
        return modifier.then(new GraphicsLayerElement(f5, f6, f7, f8, 0.0f, j, shape2, false, j2, j2));
    }

    /* renamed from: graphicsLayer-_6ThJ44$default, reason: not valid java name */
    public static Modifier m494graphicsLayer_6ThJ44$default(Modifier modifier, float f, float f2, Shape shape, int i) {
        float f3 = (i & 4) != 0 ? 1.0f : f;
        float f4 = (i & 256) != 0 ? 0.0f : f2;
        long j = TransformOrigin.Center;
        Shape shape2 = (i & 2048) != 0 ? RectangleShape : shape;
        boolean z = (i & 4096) == 0;
        long j2 = GraphicsLayerScopeKt.DefaultShadowColor;
        return modifier.then(new GraphicsLayerElement(1.0f, 1.0f, f3, 0.0f, f4, j, shape2, z, j2, j2));
    }

    /* renamed from: isIdentity-58bKbWc, reason: not valid java name */
    public static final boolean m495isIdentity58bKbWc(float[] fArr) {
        return fArr.length >= 16 && fArr[0] == 1.0f && fArr[1] == 0.0f && fArr[2] == 0.0f && fArr[3] == 0.0f && fArr[4] == 0.0f && fArr[5] == 1.0f && fArr[6] == 0.0f && fArr[7] == 0.0f && fArr[8] == 0.0f && fArr[9] == 0.0f && fArr[10] == 1.0f && fArr[11] == 0.0f && fArr[12] == 0.0f && fArr[13] == 0.0f && fArr[14] == 0.0f && fArr[15] == 1.0f;
    }

    public static final Shadow lerp(Shadow shadow, Shadow shadow2, float f) {
        long m496lerpjxsXWHM = m496lerpjxsXWHM(shadow.color, shadow2.color, f);
        long j = shadow.offset;
        long j2 = shadow2.offset;
        float lerp = DBUtil.lerp(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 >> 32)), f);
        float lerp2 = DBUtil.lerp(Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 & 4294967295L)), f);
        return new Shadow(m496lerpjxsXWHM, (Float.floatToRawIntBits(lerp) << 32) | (Float.floatToRawIntBits(lerp2) & 4294967295L), DBUtil.lerp(shadow.blurRadius, shadow2.blurRadius, f));
    }

    /* renamed from: lerp-jxsXWHM, reason: not valid java name */
    public static final long m496lerpjxsXWHM(long j, long j2, float f) {
        Oklab oklab = ColorSpaces.Oklab;
        long m480convertvNxB06k = Color.m480convertvNxB06k(j, oklab);
        long m480convertvNxB06k2 = Color.m480convertvNxB06k(j2, oklab);
        float m483getAlphaimpl = Color.m483getAlphaimpl(m480convertvNxB06k);
        float m487getRedimpl = Color.m487getRedimpl(m480convertvNxB06k);
        float m486getGreenimpl = Color.m486getGreenimpl(m480convertvNxB06k);
        float m484getBlueimpl = Color.m484getBlueimpl(m480convertvNxB06k);
        float m483getAlphaimpl2 = Color.m483getAlphaimpl(m480convertvNxB06k2);
        float m487getRedimpl2 = Color.m487getRedimpl(m480convertvNxB06k2);
        float m486getGreenimpl2 = Color.m486getGreenimpl(m480convertvNxB06k2);
        float m484getBlueimpl2 = Color.m484getBlueimpl(m480convertvNxB06k2);
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        return Color.m480convertvNxB06k(UncheckedColor(DBUtil.lerp(m487getRedimpl, m487getRedimpl2, f), DBUtil.lerp(m486getGreenimpl, m486getGreenimpl2, f), DBUtil.lerp(m484getBlueimpl, m484getBlueimpl2, f), DBUtil.lerp(m483getAlphaimpl, m483getAlphaimpl2, f), oklab), Color.m485getColorSpaceimpl(j2));
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
                iArr[i3] = m500toArgb8_81llA(((Color) arrayList.get(i3)).value);
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
            if (Color.m483getAlphaimpl(j) == 0.0f) {
                if (i3 == 0) {
                    i2 = i4 + 1;
                    Color4 = Color(Color.m487getRedimpl(r6), Color.m486getGreenimpl(r6), Color.m484getBlueimpl(r6), 0.0f, Color.m485getColorSpaceimpl(((Color) arrayList.get(1)).value));
                    iArr2[i4] = m500toArgb8_81llA(Color4);
                } else if (i3 == size2) {
                    i2 = i4 + 1;
                    Color3 = Color(Color.m487getRedimpl(r6), Color.m486getGreenimpl(r6), Color.m484getBlueimpl(r6), 0.0f, Color.m485getColorSpaceimpl(((Color) arrayList.get(i3 - 1)).value));
                    iArr2[i4] = m500toArgb8_81llA(Color3);
                } else {
                    int i5 = i4 + 1;
                    Color = Color(Color.m487getRedimpl(r5), Color.m486getGreenimpl(r5), Color.m484getBlueimpl(r5), 0.0f, Color.m485getColorSpaceimpl(((Color) arrayList.get(i3 - 1)).value));
                    iArr2[i4] = m500toArgb8_81llA(Color);
                    i4 += 2;
                    Color2 = Color(Color.m487getRedimpl(r5), Color.m486getGreenimpl(r5), Color.m484getBlueimpl(r5), 0.0f, Color.m485getColorSpaceimpl(((Color) arrayList.get(i3 + 1)).value));
                    iArr2[i5] = m500toArgb8_81llA(Color2);
                }
                i4 = i2;
            } else {
                iArr2[i4] = m500toArgb8_81llA(j);
                i4++;
            }
            i3++;
        }
        return iArr2;
    }

    public static final float[] makeTransparentStops(ArrayList arrayList, ArrayList arrayList2, int i) {
        if (i == 0) {
            return CollectionsKt.toFloatArray(arrayList);
        }
        float[] fArr = new float[arrayList2.size() + i];
        fArr[0] = ((Number) arrayList.get(0)).floatValue();
        int size = arrayList2.size() - 1;
        int i2 = 1;
        for (int i3 = 1; i3 < size; i3++) {
            long j = ((Color) arrayList2.get(i3)).value;
            float floatValue = ((Number) arrayList.get(i3)).floatValue();
            int i4 = i2 + 1;
            fArr[i2] = floatValue;
            if (Color.m483getAlphaimpl(j) == 0.0f) {
                i2 += 2;
                fArr[i4] = floatValue;
            } else {
                i2 = i4;
            }
        }
        fArr[i2] = ((Number) arrayList.get(arrayList2.size() - 1)).floatValue();
        return fArr;
    }

    /* renamed from: setFrom-EL8BTi8, reason: not valid java name */
    public static final void m497setFromEL8BTi8(android.graphics.Matrix matrix, float[] fArr) {
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
    public static final void m498setFromtUYjHk(android.graphics.Matrix matrix, float[] fArr) {
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

    public static final android.graphics.Rect toAndroidRect(IntRect intRect) {
        return new android.graphics.Rect(intRect.left, intRect.top, intRect.right, intRect.bottom);
    }

    public static final RectF toAndroidRectF(Rect rect) {
        return new RectF(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* renamed from: toAndroidTileMode-0vamqd0, reason: not valid java name */
    public static final Shader.TileMode m499toAndroidTileMode0vamqd0(int i) {
        return i == 0 ? Shader.TileMode.CLAMP : i == 1 ? Shader.TileMode.REPEAT : i == 2 ? Shader.TileMode.MIRROR : i == 3 ? Build.VERSION.SDK_INT >= 31 ? TileModeVerificationHelper.getFrameworkTileModeDecal() : Shader.TileMode.CLAMP : Shader.TileMode.CLAMP;
    }

    /* renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m500toArgb8_81llA(long j) {
        float[] fArr = ColorSpaces.SrgbPrimaries;
        return (int) (Color.m480convertvNxB06k(j, ColorSpaces.Srgb) >>> 32);
    }

    public static final Rect toComposeRect(RectF rectF) {
        return new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m501toStringimpl(int i) {
        return i == 0 ? "Clear" : i == 1 ? "Src" : i == 2 ? "Dst" : i == 3 ? "SrcOver" : i == 4 ? "DstOver" : i == 5 ? "SrcIn" : i == 6 ? "DstIn" : i == 7 ? "SrcOut" : i == 8 ? "DstOut" : i == 9 ? "SrcAtop" : i == 10 ? "DstAtop" : i == 11 ? "Xor" : i == 12 ? "Plus" : i == 13 ? "Modulate" : i == 14 ? "Screen" : i == 15 ? "Overlay" : i == 16 ? "Darken" : i == 17 ? "Lighten" : i == 18 ? "ColorDodge" : i == 19 ? "ColorBurn" : i == 20 ? "HardLight" : i == 21 ? "Softlight" : i == 22 ? "Difference" : i == 23 ? "Exclusion" : i == 24 ? "Multiply" : i == 25 ? "Hue" : i == 26 ? "Saturation" : i == 27 ? "Color" : i == 28 ? "Luminosity" : "Unknown";
    }

    public static final void validateColorStops(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.size() == arrayList2.size()) {
            return;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("colors and colorStops arguments must have equal length.");
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
}
