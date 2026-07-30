package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import defpackage.C0716as;
import java.util.ArrayList;
import java.util.BitSet;

/* renamed from: rD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3612rD {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3730tD[] f15238do = new C3730tD[4];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Matrix[] f15237do = new Matrix[4];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Matrix[] f15242if = new Matrix[4];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PointF f15233do = new PointF();

    /* renamed from: do, reason: not valid java name */
    public final Path f15232do = new Path();

    /* renamed from: if, reason: not valid java name */
    public final Path f15240if = new Path();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3730tD f15234do = new C3730tD();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f15236do = new float[2];

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final float[] f15241if = new float[2];

    /* renamed from: for, reason: not valid java name */
    public final Path f15239for = new Path();

    /* renamed from: new, reason: not valid java name */
    public final Path f15243new = new Path();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f15235do = true;

    /* renamed from: rD$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final C3612rD f15244do = new C3612rD();
    }

    public C3612rD() {
        for (int i = 0; i < 4; i++) {
            this.f15238do[i] = new C3730tD();
            this.f15237do[i] = new Matrix();
            this.f15242if[i] = new Matrix();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7942do(C3554qD c3554qD, float f, RectF rectF, C0716as.Cdo cdo, Path path) {
        int i;
        Matrix[] matrixArr;
        float[] fArr;
        Matrix[] matrixArr2;
        C3730tD[] c3730tDArr;
        Path path2;
        C0716as.Cdo cdo2;
        Path path3;
        C3612rD c3612rD = this;
        C3554qD c3554qD2 = c3554qD;
        C0716as.Cdo cdo3 = cdo;
        Path path4 = path;
        path.rewind();
        Path path5 = c3612rD.f15232do;
        path5.rewind();
        Path path6 = c3612rD.f15240if;
        path6.rewind();
        path6.addRect(rectF, Path.Direction.CW);
        int i2 = 0;
        while (true) {
            i = 4;
            matrixArr = c3612rD.f15242if;
            fArr = c3612rD.f15236do;
            matrixArr2 = c3612rD.f15237do;
            c3730tDArr = c3612rD.f15238do;
            if (i2 >= 4) {
                break;
            }
            InterfaceC2817gb interfaceC2817gb = i2 != 1 ? i2 != 2 ? i2 != 3 ? c3554qD2.f15064if : c3554qD2.f15058do : c3554qD2.f15067new : c3554qD2.f15061for;
            HQ hq = i2 != 1 ? i2 != 2 ? i2 != 3 ? c3554qD2.f15063if : c3554qD2.f15057do : c3554qD2.f15066new : c3554qD2.f15060for;
            C3730tD c3730tD = c3730tDArr[i2];
            hq.getClass();
            hq.mo277for(f, interfaceC2817gb.mo1748do(rectF), c3730tD);
            int i3 = i2 + 1;
            float f2 = (i3 % 4) * 90;
            matrixArr2[i2].reset();
            PointF pointF = c3612rD.f15233do;
            if (i2 == 1) {
                path3 = path5;
                pointF.set(rectF.right, rectF.bottom);
            } else if (i2 == 2) {
                path3 = path5;
                pointF.set(rectF.left, rectF.bottom);
            } else if (i2 != 3) {
                path3 = path5;
                pointF.set(rectF.right, rectF.top);
            } else {
                path3 = path5;
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f2);
            C3730tD c3730tD2 = c3730tDArr[i2];
            fArr[0] = c3730tD2.f15640for;
            fArr[1] = c3730tD2.f15643new;
            matrixArr2[i2].mapPoints(fArr);
            matrixArr[i2].reset();
            matrixArr[i2].setTranslate(fArr[0], fArr[1]);
            matrixArr[i2].preRotate(f2);
            i2 = i3;
            path5 = path3;
        }
        Path path7 = path5;
        char c = 1;
        char c2 = 0;
        int i4 = 0;
        while (i4 < i) {
            C3730tD c3730tD3 = c3730tDArr[i4];
            fArr[c2] = c3730tD3.f15638do;
            fArr[c] = c3730tD3.f15641if;
            matrixArr2[i4].mapPoints(fArr);
            if (i4 == 0) {
                path4.moveTo(fArr[c2], fArr[c]);
            } else {
                path4.lineTo(fArr[c2], fArr[c]);
            }
            c3730tDArr[i4].m8226for(matrixArr2[i4], path4);
            if (cdo3 != null) {
                C3730tD c3730tD4 = c3730tDArr[i4];
                Matrix matrix = matrixArr2[i4];
                C0716as c0716as = C0716as.this;
                BitSet bitSet = c0716as.f8254do;
                c3730tD4.getClass();
                bitSet.set(i4, false);
                c3730tD4.m8227if(c3730tD4.f15637case);
                c0716as.f8259do[i4] = new C3671sD(new ArrayList(c3730tD4.f15642if), new Matrix(matrix));
            }
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            C3730tD c3730tD5 = c3730tDArr[i4];
            fArr[0] = c3730tD5.f15640for;
            fArr[1] = c3730tD5.f15643new;
            matrixArr2[i4].mapPoints(fArr);
            C3730tD c3730tD6 = c3730tDArr[i6];
            float f3 = c3730tD6.f15638do;
            float[] fArr2 = c3612rD.f15241if;
            fArr2[0] = f3;
            fArr2[1] = c3730tD6.f15641if;
            matrixArr2[i6].mapPoints(fArr2);
            float max = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            C3730tD c3730tD7 = c3730tDArr[i4];
            fArr[0] = c3730tD7.f15640for;
            fArr[1] = c3730tD7.f15643new;
            matrixArr2[i4].mapPoints(fArr);
            float abs = (i4 == 1 || i4 == 3) ? Math.abs(rectF.centerX() - fArr[0]) : Math.abs(rectF.centerY() - fArr[1]);
            C3730tD c3730tD8 = c3612rD.f15234do;
            c3730tD8.m8229try(0.0f, 0.0f, 270.0f, 0.0f);
            C3872vf c3872vf = i4 != 1 ? i4 != 2 ? i4 != 3 ? c3554qD2.f15065if : c3554qD2.f15059do : c3554qD2.f15068new : c3554qD2.f15062for;
            c3872vf.mo103if(max, abs, f, c3730tD8);
            Path path8 = c3612rD.f15239for;
            path8.reset();
            c3730tD8.m8226for(matrixArr[i4], path8);
            if (c3612rD.f15235do && (c3872vf.mo8321do() || c3612rD.m7943if(path8, i4) || c3612rD.m7943if(path8, i6))) {
                path8.op(path8, path6, Path.Op.DIFFERENCE);
                fArr[0] = c3730tD8.f15638do;
                fArr[1] = c3730tD8.f15641if;
                matrixArr[i4].mapPoints(fArr);
                path2 = path7;
                path2.moveTo(fArr[0], fArr[1]);
                c3730tD8.m8226for(matrixArr[i4], path2);
                cdo2 = cdo;
                path4 = path;
            } else {
                path2 = path7;
                path4 = path;
                c3730tD8.m8226for(matrixArr[i4], path4);
                cdo2 = cdo;
            }
            if (cdo2 != null) {
                Matrix matrix2 = matrixArr[i4];
                C0716as c0716as2 = C0716as.this;
                c0716as2.f8254do.set(i4 + 4, false);
                c3730tD8.m8227if(c3730tD8.f15637case);
                c0716as2.f8268if[i4] = new C3671sD(new ArrayList(c3730tD8.f15642if), new Matrix(matrix2));
            }
            c3612rD = this;
            c3554qD2 = c3554qD;
            cdo3 = cdo2;
            path7 = path2;
            i4 = i5;
            c = 1;
            i = 4;
            c2 = 0;
        }
        Path path9 = path7;
        path.close();
        path9.close();
        if (path9.isEmpty()) {
            return;
        }
        path4.op(path9, Path.Op.UNION);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m7943if(Path path, int i) {
        Path path2 = this.f15243new;
        path2.reset();
        this.f15238do[i].m8226for(this.f15237do[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
