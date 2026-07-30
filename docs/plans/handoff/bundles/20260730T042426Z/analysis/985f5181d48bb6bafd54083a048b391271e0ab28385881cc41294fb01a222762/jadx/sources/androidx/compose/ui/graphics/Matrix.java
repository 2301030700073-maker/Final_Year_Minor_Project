package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: Matrix.kt */
/* loaded from: classes.dex */
public final class Matrix {
    public static final Companion Companion = new Companion(null);
    private final float[] values;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Matrix m1362boximpl(float[] fArr) {
        return new Matrix(fArr);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static float[] m1363constructorimpl(float[] fArr) {
        return fArr;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1365equalsimpl(float[] fArr, Object obj) {
        return (obj instanceof Matrix) && Intrinsics.areEqual(fArr, ((Matrix) obj).m1379unboximpl());
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1366hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    public boolean equals(Object obj) {
        return m1365equalsimpl(this.values, obj);
    }

    public int hashCode() {
        return m1366hashCodeimpl(this.values);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float[] m1379unboximpl() {
        return this.values;
    }

    private /* synthetic */ Matrix(float[] fArr) {
        this.values = fArr;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ float[] m1364constructorimpl$default(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
        }
        return m1363constructorimpl(fArr);
    }

    /* renamed from: scale-impl, reason: not valid java name */
    public static final void m1373scaleimpl(float[] fArr, float f, float f2, float f3) {
        fArr[0] = fArr[0] * f;
        fArr[1] = fArr[1] * f;
        fArr[2] = fArr[2] * f;
        fArr[3] = fArr[3] * f;
        fArr[4] = fArr[4] * f2;
        fArr[5] = fArr[5] * f2;
        fArr[6] = fArr[6] * f2;
        fArr[7] = fArr[7] * f2;
        fArr[8] = fArr[8] * f3;
        fArr[9] = fArr[9] * f3;
        fArr[10] = fArr[10] * f3;
        fArr[11] = fArr[11] * f3;
    }

    /* renamed from: translate-impl, reason: not valid java name */
    public static final void m1377translateimpl(float[] fArr, float f, float f2, float f3) {
        float f4 = (fArr[0] * f) + (fArr[4] * f2) + (fArr[8] * f3) + fArr[12];
        float f5 = (fArr[1] * f) + (fArr[5] * f2) + (fArr[9] * f3) + fArr[13];
        float f6 = (fArr[2] * f) + (fArr[6] * f2) + (fArr[10] * f3) + fArr[14];
        float f7 = (fArr[3] * f) + (fArr[7] * f2) + (fArr[11] * f3) + fArr[15];
        fArr[12] = f4;
        fArr[13] = f5;
        fArr[14] = f6;
        fArr[15] = f7;
    }

    /* renamed from: reset-impl, reason: not valid java name */
    public static final void m1369resetimpl(float[] fArr) {
        int i = 0;
        while (i < 4) {
            int i2 = 0;
            while (i2 < 4) {
                fArr[(i2 * 4) + i] = i == i2 ? 1.0f : 0.0f;
                i2++;
            }
            i++;
        }
    }

    /* renamed from: map-MK-Hz9U, reason: not valid java name */
    public static final long m1367mapMKHz9U(float[] fArr, long j) {
        float m1167getXimpl = Offset.m1167getXimpl(j);
        float m1168getYimpl = Offset.m1168getYimpl(j);
        float f = 1 / (((fArr[3] * m1167getXimpl) + (fArr[7] * m1168getYimpl)) + fArr[15]);
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            f = 0.0f;
        }
        return OffsetKt.Offset(((fArr[0] * m1167getXimpl) + (fArr[4] * m1168getYimpl) + fArr[12]) * f, f * ((fArr[1] * m1167getXimpl) + (fArr[5] * m1168getYimpl) + fArr[13]));
    }

    /* renamed from: map-impl, reason: not valid java name */
    public static final void m1368mapimpl(float[] fArr, MutableRect mutableRect) {
        long m1367mapMKHz9U = m1367mapMKHz9U(fArr, OffsetKt.Offset(mutableRect.getLeft(), mutableRect.getTop()));
        long m1367mapMKHz9U2 = m1367mapMKHz9U(fArr, OffsetKt.Offset(mutableRect.getLeft(), mutableRect.getBottom()));
        long m1367mapMKHz9U3 = m1367mapMKHz9U(fArr, OffsetKt.Offset(mutableRect.getRight(), mutableRect.getTop()));
        long m1367mapMKHz9U4 = m1367mapMKHz9U(fArr, OffsetKt.Offset(mutableRect.getRight(), mutableRect.getBottom()));
        mutableRect.setLeft(Math.min(Math.min(Offset.m1167getXimpl(m1367mapMKHz9U), Offset.m1167getXimpl(m1367mapMKHz9U2)), Math.min(Offset.m1167getXimpl(m1367mapMKHz9U3), Offset.m1167getXimpl(m1367mapMKHz9U4))));
        mutableRect.setTop(Math.min(Math.min(Offset.m1168getYimpl(m1367mapMKHz9U), Offset.m1168getYimpl(m1367mapMKHz9U2)), Math.min(Offset.m1168getYimpl(m1367mapMKHz9U3), Offset.m1168getYimpl(m1367mapMKHz9U4))));
        mutableRect.setRight(Math.max(Math.max(Offset.m1167getXimpl(m1367mapMKHz9U), Offset.m1167getXimpl(m1367mapMKHz9U2)), Math.max(Offset.m1167getXimpl(m1367mapMKHz9U3), Offset.m1167getXimpl(m1367mapMKHz9U4))));
        mutableRect.setBottom(Math.max(Math.max(Offset.m1168getYimpl(m1367mapMKHz9U), Offset.m1168getYimpl(m1367mapMKHz9U2)), Math.max(Offset.m1168getYimpl(m1367mapMKHz9U3), Offset.m1168getYimpl(m1367mapMKHz9U4))));
    }

    /* renamed from: timesAssign-58bKbWc, reason: not valid java name */
    public static final void m1375timesAssign58bKbWc(float[] fArr, float[] fArr2) {
        float m1381dotp89u6pk;
        float m1381dotp89u6pk2;
        float m1381dotp89u6pk3;
        float m1381dotp89u6pk4;
        float m1381dotp89u6pk5;
        float m1381dotp89u6pk6;
        float m1381dotp89u6pk7;
        float m1381dotp89u6pk8;
        float m1381dotp89u6pk9;
        float m1381dotp89u6pk10;
        float m1381dotp89u6pk11;
        float m1381dotp89u6pk12;
        float m1381dotp89u6pk13;
        float m1381dotp89u6pk14;
        float m1381dotp89u6pk15;
        float m1381dotp89u6pk16;
        m1381dotp89u6pk = MatrixKt.m1381dotp89u6pk(fArr, 0, fArr2, 0);
        m1381dotp89u6pk2 = MatrixKt.m1381dotp89u6pk(fArr, 0, fArr2, 1);
        m1381dotp89u6pk3 = MatrixKt.m1381dotp89u6pk(fArr, 0, fArr2, 2);
        m1381dotp89u6pk4 = MatrixKt.m1381dotp89u6pk(fArr, 0, fArr2, 3);
        m1381dotp89u6pk5 = MatrixKt.m1381dotp89u6pk(fArr, 1, fArr2, 0);
        m1381dotp89u6pk6 = MatrixKt.m1381dotp89u6pk(fArr, 1, fArr2, 1);
        m1381dotp89u6pk7 = MatrixKt.m1381dotp89u6pk(fArr, 1, fArr2, 2);
        m1381dotp89u6pk8 = MatrixKt.m1381dotp89u6pk(fArr, 1, fArr2, 3);
        m1381dotp89u6pk9 = MatrixKt.m1381dotp89u6pk(fArr, 2, fArr2, 0);
        m1381dotp89u6pk10 = MatrixKt.m1381dotp89u6pk(fArr, 2, fArr2, 1);
        m1381dotp89u6pk11 = MatrixKt.m1381dotp89u6pk(fArr, 2, fArr2, 2);
        m1381dotp89u6pk12 = MatrixKt.m1381dotp89u6pk(fArr, 2, fArr2, 3);
        m1381dotp89u6pk13 = MatrixKt.m1381dotp89u6pk(fArr, 3, fArr2, 0);
        m1381dotp89u6pk14 = MatrixKt.m1381dotp89u6pk(fArr, 3, fArr2, 1);
        m1381dotp89u6pk15 = MatrixKt.m1381dotp89u6pk(fArr, 3, fArr2, 2);
        m1381dotp89u6pk16 = MatrixKt.m1381dotp89u6pk(fArr, 3, fArr2, 3);
        fArr[0] = m1381dotp89u6pk;
        fArr[1] = m1381dotp89u6pk2;
        fArr[2] = m1381dotp89u6pk3;
        fArr[3] = m1381dotp89u6pk4;
        fArr[4] = m1381dotp89u6pk5;
        fArr[5] = m1381dotp89u6pk6;
        fArr[6] = m1381dotp89u6pk7;
        fArr[7] = m1381dotp89u6pk8;
        fArr[8] = m1381dotp89u6pk9;
        fArr[9] = m1381dotp89u6pk10;
        fArr[10] = m1381dotp89u6pk11;
        fArr[11] = m1381dotp89u6pk12;
        fArr[12] = m1381dotp89u6pk13;
        fArr[13] = m1381dotp89u6pk14;
        fArr[14] = m1381dotp89u6pk15;
        fArr[15] = m1381dotp89u6pk16;
    }

    public String toString() {
        return m1376toStringimpl(this.values);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1376toStringimpl(float[] fArr) {
        return StringsKt.trimIndent("\n            |" + fArr[0] + ' ' + fArr[1] + ' ' + fArr[2] + ' ' + fArr[3] + "|\n            |" + fArr[4] + ' ' + fArr[5] + ' ' + fArr[6] + ' ' + fArr[7] + "|\n            |" + fArr[8] + ' ' + fArr[9] + ' ' + fArr[10] + ' ' + fArr[11] + "|\n            |" + fArr[12] + ' ' + fArr[13] + ' ' + fArr[14] + ' ' + fArr[15] + "|\n        ");
    }

    /* renamed from: rotateX-impl, reason: not valid java name */
    public static final void m1370rotateXimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[1];
        float f3 = fArr[2];
        float f4 = fArr[5];
        float f5 = fArr[6];
        float f6 = fArr[9];
        float f7 = fArr[10];
        float f8 = fArr[13];
        float f9 = fArr[14];
        fArr[1] = (f2 * cos) - (f3 * sin);
        fArr[2] = (f2 * sin) + (f3 * cos);
        fArr[5] = (f4 * cos) - (f5 * sin);
        fArr[6] = (f4 * sin) + (f5 * cos);
        fArr[9] = (f6 * cos) - (f7 * sin);
        fArr[10] = (f6 * sin) + (f7 * cos);
        fArr[13] = (f8 * cos) - (f9 * sin);
        fArr[14] = (f8 * sin) + (f9 * cos);
    }

    /* renamed from: rotateY-impl, reason: not valid java name */
    public static final void m1371rotateYimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[0];
        float f3 = fArr[2];
        float f4 = fArr[4];
        float f5 = fArr[6];
        float f6 = fArr[8];
        float f7 = fArr[10];
        float f8 = fArr[12];
        float f9 = fArr[14];
        fArr[0] = (f2 * cos) + (f3 * sin);
        fArr[2] = ((-f2) * sin) + (f3 * cos);
        fArr[4] = (f4 * cos) + (f5 * sin);
        fArr[6] = ((-f4) * sin) + (f5 * cos);
        fArr[8] = (f6 * cos) + (f7 * sin);
        fArr[10] = ((-f6) * sin) + (f7 * cos);
        fArr[12] = (f8 * cos) + (f9 * sin);
        fArr[14] = ((-f8) * sin) + (f9 * cos);
    }

    /* renamed from: rotateZ-impl, reason: not valid java name */
    public static final void m1372rotateZimpl(float[] fArr, float f) {
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        float f2 = fArr[0];
        float f3 = fArr[4];
        float f4 = -sin;
        float f5 = fArr[1];
        float f6 = fArr[5];
        float f7 = fArr[2];
        float f8 = fArr[6];
        float f9 = fArr[3];
        float f10 = fArr[7];
        fArr[0] = (cos * f2) + (sin * f3);
        fArr[1] = (cos * f5) + (sin * f6);
        fArr[2] = (cos * f7) + (sin * f8);
        fArr[3] = (cos * f9) + (sin * f10);
        fArr[4] = (f2 * f4) + (f3 * cos);
        fArr[5] = (f5 * f4) + (f6 * cos);
        fArr[6] = (f7 * f4) + (f8 * cos);
        fArr[7] = (f4 * f9) + (cos * f10);
    }

    /* renamed from: scale-impl$default, reason: not valid java name */
    public static /* synthetic */ void m1374scaleimpl$default(float[] fArr, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 1.0f;
        }
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        if ((i & 4) != 0) {
            f3 = 1.0f;
        }
        m1373scaleimpl(fArr, f, f2, f3);
    }

    /* renamed from: translate-impl$default, reason: not valid java name */
    public static /* synthetic */ void m1378translateimpl$default(float[] fArr, float f, float f2, float f3, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        m1377translateimpl(fArr, f, f2, f3);
    }

    /* compiled from: Matrix.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
