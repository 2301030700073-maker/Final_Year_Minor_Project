package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import java.util.ArrayList;

/* renamed from: tD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3730tD {

    /* renamed from: case, reason: not valid java name */
    @Deprecated
    public float f15637case;

    /* renamed from: do, reason: not valid java name */
    @Deprecated
    public float f15638do;

    /* renamed from: for, reason: not valid java name */
    @Deprecated
    public float f15640for;

    /* renamed from: if, reason: not valid java name */
    @Deprecated
    public float f15641if;

    /* renamed from: new, reason: not valid java name */
    @Deprecated
    public float f15643new;

    /* renamed from: try, reason: not valid java name */
    @Deprecated
    public float f15644try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f15639do = new ArrayList();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList f15642if = new ArrayList();

    /* renamed from: tD$case, reason: invalid class name */
    public static abstract class Ccase {

        /* renamed from: if, reason: not valid java name */
        public static final Matrix f15645if = new Matrix();

        /* renamed from: do, reason: not valid java name */
        public final Matrix f15646do = new Matrix();

        /* renamed from: do */
        public abstract void mo8080do(Matrix matrix, C3436oD c3436oD, int i, Canvas canvas);
    }

    /* renamed from: tD$do, reason: invalid class name */
    public static class Cdo extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final Cfor f15647do;

        public Cdo(Cfor cfor) {
            this.f15647do = cfor;
        }

        @Override // defpackage.C3730tD.Ccase
        /* renamed from: do */
        public final void mo8080do(Matrix matrix, C3436oD c3436oD, int i, Canvas canvas) {
            Cfor cfor = this.f15647do;
            float f = cfor.f15654try;
            float f2 = cfor.f15649case;
            RectF rectF = new RectF(cfor.f15650do, cfor.f15652if, cfor.f15651for, cfor.f15653new);
            c3436oD.getClass();
            boolean z = f2 < 0.0f;
            Path path = c3436oD.f14704do;
            int[] iArr = C3436oD.f14701if;
            if (z) {
                iArr[0] = 0;
                iArr[1] = c3436oD.f14705for;
                iArr[2] = c3436oD.f14707if;
                iArr[3] = c3436oD.f14702do;
            } else {
                path.rewind();
                path.moveTo(rectF.centerX(), rectF.centerY());
                path.arcTo(rectF, f, f2);
                path.close();
                float f3 = -i;
                rectF.inset(f3, f3);
                iArr[0] = 0;
                iArr[1] = c3436oD.f14702do;
                iArr[2] = c3436oD.f14707if;
                iArr[3] = c3436oD.f14705for;
            }
            float width = rectF.width() / 2.0f;
            if (width <= 0.0f) {
                return;
            }
            float f4 = 1.0f - (i / width);
            float[] fArr = C3436oD.f14700if;
            fArr[1] = f4;
            fArr[2] = ((1.0f - f4) / 2.0f) + f4;
            RadialGradient radialGradient = new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP);
            Paint paint = c3436oD.f14708if;
            paint.setShader(radialGradient);
            canvas.save();
            canvas.concat(matrix);
            canvas.scale(1.0f, rectF.height() / rectF.width());
            if (!z) {
                canvas.clipPath(path, Region.Op.DIFFERENCE);
                canvas.drawPath(path, c3436oD.f14709new);
            }
            canvas.drawArc(rectF, f, f2, true, paint);
            canvas.restore();
        }
    }

    /* renamed from: tD$for, reason: invalid class name */
    public static class Cfor extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final RectF f15648do = new RectF();

        /* renamed from: case, reason: not valid java name */
        @Deprecated
        public float f15649case;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        @Deprecated
        public float f15650do;

        /* renamed from: for, reason: not valid java name */
        @Deprecated
        public float f15651for;

        /* renamed from: if, reason: not valid java name */
        @Deprecated
        public float f15652if;

        /* renamed from: new, reason: not valid java name */
        @Deprecated
        public float f15653new;

        /* renamed from: try, reason: not valid java name */
        @Deprecated
        public float f15654try;

        public Cfor(float f, float f2, float f3, float f4) {
            this.f15650do = f;
            this.f15652if = f2;
            this.f15651for = f3;
            this.f15653new = f4;
        }

        @Override // defpackage.C3730tD.Ctry
        /* renamed from: do, reason: not valid java name */
        public final void mo8230do(Matrix matrix, Path path) {
            Matrix matrix2 = super.f15660do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f15648do;
            rectF.set(this.f15650do, this.f15652if, this.f15651for, this.f15653new);
            path.arcTo(rectF, this.f15654try, this.f15649case, false);
            path.transform(matrix);
        }
    }

    /* renamed from: tD$if, reason: invalid class name */
    public static class Cif extends Ccase {

        /* renamed from: do, reason: not valid java name */
        public final float f15655do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Cnew f15656do;

        /* renamed from: if, reason: not valid java name */
        public final float f15657if;

        public Cif(Cnew cnew, float f, float f2) {
            this.f15656do = cnew;
            this.f15655do = f;
            this.f15657if = f2;
        }

        @Override // defpackage.C3730tD.Ccase
        /* renamed from: do */
        public final void mo8080do(Matrix matrix, C3436oD c3436oD, int i, Canvas canvas) {
            Cnew cnew = this.f15656do;
            float f = cnew.f15659if;
            float f2 = this.f15657if;
            float f3 = cnew.f15658do;
            float f4 = this.f15655do;
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
            Matrix matrix2 = ((Ccase) this).f15646do;
            matrix2.set(matrix);
            matrix2.preTranslate(f4, f2);
            matrix2.preRotate(m8231if());
            c3436oD.getClass();
            rectF.bottom += i;
            rectF.offset(0.0f, -i);
            int[] iArr = C3436oD.f14699do;
            iArr[0] = c3436oD.f14705for;
            iArr[1] = c3436oD.f14707if;
            iArr[2] = c3436oD.f14702do;
            Paint paint = c3436oD.f14706for;
            float f5 = rectF.left;
            paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, C3436oD.f14698do, Shader.TileMode.CLAMP));
            canvas.save();
            canvas.concat(matrix2);
            canvas.drawRect(rectF, paint);
            canvas.restore();
        }

        /* renamed from: if, reason: not valid java name */
        public final float m8231if() {
            Cnew cnew = this.f15656do;
            return (float) Math.toDegrees(Math.atan((cnew.f15659if - this.f15657if) / (cnew.f15658do - this.f15655do)));
        }
    }

    /* renamed from: tD$new, reason: invalid class name */
    public static class Cnew extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public float f15658do;

        /* renamed from: if, reason: not valid java name */
        public float f15659if;

        @Override // defpackage.C3730tD.Ctry
        /* renamed from: do */
        public final void mo8230do(Matrix matrix, Path path) {
            Matrix matrix2 = super.f15660do;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f15658do, this.f15659if);
            path.transform(matrix);
        }
    }

    /* renamed from: tD$try, reason: invalid class name */
    public static abstract class Ctry {

        /* renamed from: do, reason: not valid java name */
        public final Matrix f15660do = new Matrix();

        /* renamed from: do */
        public abstract void mo8230do(Matrix matrix, Path path);
    }

    public C3730tD() {
        m8229try(0.0f, 0.0f, 270.0f, 0.0f);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8225do(float f, float f2, float f3, float f4, float f5, float f6) {
        Cfor cfor = new Cfor(f, f2, f3, f4);
        cfor.f15654try = f5;
        cfor.f15649case = f6;
        this.f15639do.add(cfor);
        Cdo cdo = new Cdo(cfor);
        float f7 = f5 + f6;
        boolean z = f6 < 0.0f;
        if (z) {
            f5 = (f5 + 180.0f) % 360.0f;
        }
        float f8 = z ? (180.0f + f7) % 360.0f : f7;
        m8227if(f5);
        this.f15642if.add(cdo);
        this.f15644try = f8;
        double d = f7;
        this.f15640for = (((f3 - f) / 2.0f) * ((float) Math.cos(Math.toRadians(d)))) + ((f + f3) * 0.5f);
        this.f15643new = (((f4 - f2) / 2.0f) * ((float) Math.sin(Math.toRadians(d)))) + ((f2 + f4) * 0.5f);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m8226for(Matrix matrix, Path path) {
        ArrayList arrayList = this.f15639do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((Ctry) arrayList.get(i)).mo8230do(matrix, path);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8227if(float f) {
        float f2 = this.f15644try;
        if (f2 == f) {
            return;
        }
        float f3 = ((f - f2) + 360.0f) % 360.0f;
        if (f3 > 180.0f) {
            return;
        }
        float f4 = this.f15640for;
        float f5 = this.f15643new;
        Cfor cfor = new Cfor(f4, f5, f4, f5);
        cfor.f15654try = this.f15644try;
        cfor.f15649case = f3;
        this.f15642if.add(new Cdo(cfor));
        this.f15644try = f;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m8228new(float f, float f2) {
        Cnew cnew = new Cnew();
        cnew.f15658do = f;
        cnew.f15659if = f2;
        this.f15639do.add(cnew);
        Cif cif = new Cif(cnew, this.f15640for, this.f15643new);
        float m8231if = cif.m8231if() + 270.0f;
        float m8231if2 = cif.m8231if() + 270.0f;
        m8227if(m8231if);
        this.f15642if.add(cif);
        this.f15644try = m8231if2;
        this.f15640for = f;
        this.f15643new = f2;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8229try(float f, float f2, float f3, float f4) {
        this.f15638do = f;
        this.f15641if = f2;
        this.f15640for = f;
        this.f15643new = f2;
        this.f15644try = f3;
        this.f15637case = (f3 + f4) % 360.0f;
        this.f15639do.clear();
        this.f15642if.clear();
    }
}
