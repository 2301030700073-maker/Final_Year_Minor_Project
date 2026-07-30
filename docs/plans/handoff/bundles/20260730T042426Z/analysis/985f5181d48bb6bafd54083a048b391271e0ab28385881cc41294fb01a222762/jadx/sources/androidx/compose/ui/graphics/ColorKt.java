package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.pqc.crypto.rainbow.util.GF2Field;

/* compiled from: Color.kt */
/* loaded from: classes.dex */
public abstract class ColorKt {
    /* JADX WARN: Removed duplicated region for block: B:106:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long Color(float r20, float r21, float r22, float r23, androidx.compose.ui.graphics.colorspace.ColorSpace r24) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.Color(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long UncheckedColor(float r17, float r18, float r19, float r20, androidx.compose.ui.graphics.colorspace.ColorSpace r21) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.UncheckedColor(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    public static final long Color(int i) {
        return Color.m1299constructorimpl(ULong.m2701constructorimpl(ULong.m2701constructorimpl(i) << 32));
    }

    public static final long Color(long j) {
        return Color.m1299constructorimpl(ULong.m2701constructorimpl(j << 32));
    }

    public static /* synthetic */ long Color$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 8) != 0) {
            i4 = GF2Field.MASK;
        }
        return Color(i, i2, i3, i4);
    }

    public static final long Color(int i, int i2, int i3, int i4) {
        return Color(((i & GF2Field.MASK) << 16) | ((i4 & GF2Field.MASK) << 24) | ((i2 & GF2Field.MASK) << 8) | (i3 & GF2Field.MASK));
    }

    /* renamed from: lerp-jxsXWHM, reason: not valid java name */
    public static final long m1322lerpjxsXWHM(long j, long j2, float f) {
        ColorSpace oklab = ColorSpaces.INSTANCE.getOklab();
        long m1300convertvNxB06k = Color.m1300convertvNxB06k(j, oklab);
        long m1300convertvNxB06k2 = Color.m1300convertvNxB06k(j2, oklab);
        float m1305getAlphaimpl = Color.m1305getAlphaimpl(m1300convertvNxB06k);
        float m1309getRedimpl = Color.m1309getRedimpl(m1300convertvNxB06k);
        float m1308getGreenimpl = Color.m1308getGreenimpl(m1300convertvNxB06k);
        float m1306getBlueimpl = Color.m1306getBlueimpl(m1300convertvNxB06k);
        float m1305getAlphaimpl2 = Color.m1305getAlphaimpl(m1300convertvNxB06k2);
        float m1309getRedimpl2 = Color.m1309getRedimpl(m1300convertvNxB06k2);
        float m1308getGreenimpl2 = Color.m1308getGreenimpl(m1300convertvNxB06k2);
        float m1306getBlueimpl2 = Color.m1306getBlueimpl(m1300convertvNxB06k2);
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f > 1.0f) {
            f = 1.0f;
        }
        return Color.m1300convertvNxB06k(UncheckedColor(MathHelpersKt.lerp(m1309getRedimpl, m1309getRedimpl2, f), MathHelpersKt.lerp(m1308getGreenimpl, m1308getGreenimpl2, f), MathHelpersKt.lerp(m1306getBlueimpl, m1306getBlueimpl2, f), MathHelpersKt.lerp(m1305getAlphaimpl, m1305getAlphaimpl2, f), oklab), Color.m1307getColorSpaceimpl(j2));
    }

    /* renamed from: compositeOver--OWjLjI, reason: not valid java name */
    public static final long m1321compositeOverOWjLjI(long j, long j2) {
        long m1300convertvNxB06k = Color.m1300convertvNxB06k(j, Color.m1307getColorSpaceimpl(j2));
        float m1305getAlphaimpl = Color.m1305getAlphaimpl(j2);
        float m1305getAlphaimpl2 = Color.m1305getAlphaimpl(m1300convertvNxB06k);
        float f = 1.0f - m1305getAlphaimpl2;
        float f2 = (m1305getAlphaimpl * f) + m1305getAlphaimpl2;
        return UncheckedColor(f2 == 0.0f ? 0.0f : ((Color.m1309getRedimpl(m1300convertvNxB06k) * m1305getAlphaimpl2) + ((Color.m1309getRedimpl(j2) * m1305getAlphaimpl) * f)) / f2, f2 == 0.0f ? 0.0f : ((Color.m1308getGreenimpl(m1300convertvNxB06k) * m1305getAlphaimpl2) + ((Color.m1308getGreenimpl(j2) * m1305getAlphaimpl) * f)) / f2, f2 != 0.0f ? ((Color.m1306getBlueimpl(m1300convertvNxB06k) * m1305getAlphaimpl2) + ((Color.m1306getBlueimpl(j2) * m1305getAlphaimpl) * f)) / f2 : 0.0f, f2, Color.m1307getColorSpaceimpl(j2));
    }

    /* renamed from: luminance-8_81llA, reason: not valid java name */
    public static final float m1323luminance8_81llA(long j) {
        ColorSpace m1307getColorSpaceimpl = Color.m1307getColorSpaceimpl(j);
        if (!ColorModel.m1445equalsimpl0(m1307getColorSpaceimpl.m1452getModelxdoWZVw(), ColorModel.Companion.m1450getRgbxdoWZVw())) {
            InlineClassHelperKt.throwIllegalArgumentException("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.m1448toStringimpl(m1307getColorSpaceimpl.m1452getModelxdoWZVw())));
        }
        Intrinsics.checkNotNull(m1307getColorSpaceimpl, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb");
        DoubleFunction eotfFunc$ui_graphics_release = ((Rgb) m1307getColorSpaceimpl).getEotfFunc$ui_graphics_release();
        float invoke = (float) ((eotfFunc$ui_graphics_release.invoke(Color.m1309getRedimpl(j)) * 0.2126d) + (eotfFunc$ui_graphics_release.invoke(Color.m1308getGreenimpl(j)) * 0.7152d) + (eotfFunc$ui_graphics_release.invoke(Color.m1306getBlueimpl(j)) * 0.0722d));
        if (invoke < 0.0f) {
            invoke = 0.0f;
        }
        if (invoke > 1.0f) {
            return 1.0f;
        }
        return invoke;
    }

    /* renamed from: toArgb-8_81llA, reason: not valid java name */
    public static final int m1324toArgb8_81llA(long j) {
        return (int) ULong.m2701constructorimpl(Color.m1300convertvNxB06k(j, ColorSpaces.INSTANCE.getSrgb()) >>> 32);
    }
}
