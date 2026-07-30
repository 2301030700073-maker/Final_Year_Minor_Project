package defpackage;

import android.annotation.TargetApi;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: Gp, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0240Gp {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f1247do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f1248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C4044ya f1250do;

    /* renamed from: do, reason: not valid java name */
    public int f1246do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f1251if = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Csuper> f1249do = new ArrayList<>();

    /* renamed from: Gp$break, reason: invalid class name */
    public static class Cbreak extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setScaleX(m761do(f));
        }
    }

    /* renamed from: Gp$case, reason: invalid class name */
    public static class Ccase extends AbstractC0240Gp {

        /* renamed from: do, reason: not valid java name */
        public boolean f1252do = false;

        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).m3580extends(m761do(f));
                return;
            }
            if (this.f1252do) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f1252do = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(m761do(f)));
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
            }
        }
    }

    /* renamed from: Gp$catch, reason: invalid class name */
    public static class Ccatch extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setScaleY(m761do(f));
        }
    }

    /* renamed from: Gp$class, reason: invalid class name */
    public static class Cclass extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setTranslationX(m761do(f));
        }
    }

    /* renamed from: Gp$const, reason: invalid class name */
    public static class Cconst extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setTranslationY(m761do(f));
        }
    }

    /* renamed from: Gp$do, reason: invalid class name */
    public static class Cdo extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setAlpha(m761do(f));
        }
    }

    /* renamed from: Gp$else, reason: invalid class name */
    public static class Celse extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setRotation(m761do(f));
        }
    }

    /* renamed from: Gp$final, reason: invalid class name */
    public static class Cfinal extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setTranslationZ(m761do(f));
        }
    }

    /* renamed from: Gp$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public final C3241kw f1253do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC3457oc f1254do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final double[] f1255do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final float[] f1256do;

        /* renamed from: for, reason: not valid java name */
        public double[] f1257for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public final float[] f1258for;

        /* renamed from: if, reason: not valid java name */
        public double[] f1259if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final float[] f1260if;

        public Cfor(int i, int i2) {
            C3241kw c3241kw = new C3241kw();
            this.f1253do = c3241kw;
            new HashMap();
            c3241kw.f14062do = i;
            this.f1256do = new float[i2];
            this.f1255do = new double[i2];
            this.f1260if = new float[i2];
            this.f1258for = new float[i2];
            float[] fArr = new float[i2];
        }
    }

    /* renamed from: Gp$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setRotationX(m761do(f));
        }
    }

    /* renamed from: Gp$if, reason: invalid class name */
    public static class Cif extends AbstractC0240Gp {

        /* renamed from: do, reason: not valid java name */
        public final float[] f1261do = new float[1];

        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            float m761do = m761do(f);
            float[] fArr = this.f1261do;
            fArr[0] = m761do;
            ((AbstractC0240Gp) this).f1250do.m8752else(fArr, view);
        }
    }

    /* renamed from: Gp$new, reason: invalid class name */
    public static class Cnew extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setElevation(m761do(f));
        }
    }

    /* renamed from: Gp$super, reason: invalid class name */
    public static class Csuper {

        /* renamed from: do, reason: not valid java name */
        public final float f1262do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f1263do;

        /* renamed from: for, reason: not valid java name */
        public final float f1264for;

        /* renamed from: if, reason: not valid java name */
        public final float f1265if;

        public Csuper(float f, float f2, float f3, int i) {
            this.f1263do = i;
            this.f1262do = f3;
            this.f1265if = f2;
            this.f1264for = f;
        }
    }

    /* renamed from: Gp$this, reason: invalid class name */
    public static class Cthis extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
            view.setRotationY(m761do(f));
        }
    }

    /* renamed from: Gp$try, reason: invalid class name */
    public static class Ctry extends AbstractC0240Gp {
        @Override // defpackage.AbstractC0240Gp
        /* renamed from: for */
        public final void mo762for(View view, float f) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final float m761do(float f) {
        Cfor cfor = this.f1247do;
        AbstractC3457oc abstractC3457oc = cfor.f1254do;
        if (abstractC3457oc != null) {
            abstractC3457oc.mo7284for(f, cfor.f1259if);
        } else {
            double[] dArr = cfor.f1259if;
            dArr[0] = cfor.f1258for[0];
            dArr[1] = cfor.f1256do[0];
        }
        return (float) ((cfor.f1253do.m7299new(f) * cfor.f1259if[1]) + cfor.f1259if[0]);
    }

    /* renamed from: for, reason: not valid java name */
    public abstract void mo762for(View view, float f);

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0034. Please report as an issue. */
    /* renamed from: if, reason: not valid java name */
    public final float m763if(float f) {
        double m7298if;
        double signum;
        double m7298if2;
        Cfor cfor = this.f1247do;
        AbstractC3457oc abstractC3457oc = cfor.f1254do;
        double d = 0.0d;
        if (abstractC3457oc != null) {
            double d2 = f;
            abstractC3457oc.mo7282case(d2, cfor.f1257for);
            cfor.f1254do.mo7284for(d2, cfor.f1259if);
        } else {
            double[] dArr = cfor.f1257for;
            dArr[0] = 0.0d;
            dArr[1] = 0.0d;
        }
        double d3 = f;
        C3241kw c3241kw = cfor.f1253do;
        double m7299new = c3241kw.m7299new(d3);
        double d4 = 2.0d;
        switch (c3241kw.f14062do) {
            case 1:
                break;
            case 2:
                m7298if = c3241kw.m7298if(d3) * 4.0d;
                signum = Math.signum((((c3241kw.m7297for(d3) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                d = m7298if * signum;
                break;
            case 3:
                m7298if2 = c3241kw.m7298if(d3);
                d = m7298if2 * d4;
                break;
            case 4:
                m7298if2 = -c3241kw.m7298if(d3);
                d = m7298if2 * d4;
                break;
            case 5:
                d4 = c3241kw.m7298if(d3) * (-6.283185307179586d);
                m7298if2 = Math.sin(c3241kw.m7297for(d3) * 6.283185307179586d);
                d = m7298if2 * d4;
                break;
            case 6:
                m7298if = c3241kw.m7298if(d3) * 4.0d;
                signum = (((c3241kw.m7297for(d3) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                d = m7298if * signum;
                break;
            default:
                m7298if = c3241kw.m7298if(d3) * 6.283185307179586d;
                signum = Math.cos(c3241kw.m7297for(d3) * 6.283185307179586d);
                d = m7298if * signum;
                break;
        }
        double[] dArr2 = cfor.f1257for;
        return (float) ((d * cfor.f1259if[1]) + (m7299new * dArr2[1]) + dArr2[0]);
    }

    @TargetApi(19)
    /* renamed from: new, reason: not valid java name */
    public final void m764new() {
        int i;
        ArrayList<Csuper> arrayList = this.f1249do;
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        Collections.sort(arrayList, new C0218Fp());
        double[] dArr = new double[size];
        char c = 0;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
        this.f1247do = new Cfor(this.f1246do, size);
        Iterator<Csuper> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Csuper next = it.next();
            float f = next.f1264for;
            dArr[i2] = f * 0.01d;
            double[] dArr3 = dArr2[i2];
            float f2 = next.f1262do;
            dArr3[0] = f2;
            float f3 = next.f1265if;
            dArr3[1] = f3;
            Cfor cfor = this.f1247do;
            cfor.f1255do[i2] = next.f1263do / 100.0d;
            cfor.f1260if[i2] = f;
            cfor.f1258for[i2] = f3;
            cfor.f1256do[i2] = f2;
            i2++;
        }
        Cfor cfor2 = this.f1247do;
        double[] dArr4 = cfor2.f1255do;
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, dArr4.length, 2);
        float[] fArr = cfor2.f1256do;
        cfor2.f1259if = new double[fArr.length + 1];
        cfor2.f1257for = new double[fArr.length + 1];
        double d = dArr4[0];
        float[] fArr2 = cfor2.f1260if;
        C3241kw c3241kw = cfor2.f1253do;
        if (d > 0.0d) {
            c3241kw.m7296do(0.0d, fArr2[0]);
        }
        int length = dArr4.length - 1;
        if (dArr4[length] < 1.0d) {
            c3241kw.m7296do(1.0d, fArr2[length]);
        }
        int i3 = 0;
        while (i3 < dArr5.length) {
            dArr5[i3][c] = cfor2.f1258for[i3];
            int i4 = 0;
            while (i4 < fArr.length) {
                dArr5[i4][1] = fArr[i4];
                i4++;
                fArr = fArr;
            }
            c3241kw.m7296do(dArr4[i3], fArr2[i3]);
            i3++;
            fArr = fArr;
            c = 0;
        }
        int i5 = 0;
        double d2 = 0.0d;
        while (true) {
            if (i5 >= c3241kw.f14064do.length) {
                break;
            }
            d2 += r10[i5];
            i5++;
        }
        int i6 = 1;
        double d3 = 0.0d;
        while (true) {
            float[] fArr3 = c3241kw.f14064do;
            if (i6 >= fArr3.length) {
                break;
            }
            int i7 = i6 - 1;
            float f4 = (fArr3[i7] + fArr3[i6]) / 2.0f;
            double[] dArr6 = c3241kw.f14063do;
            d3 = ((dArr6[i6] - dArr6[i7]) * f4) + d3;
            i6++;
        }
        int i8 = 0;
        while (true) {
            float[] fArr4 = c3241kw.f14064do;
            if (i8 >= fArr4.length) {
                break;
            }
            fArr4[i8] = (float) (fArr4[i8] * (d2 / d3));
            i8++;
        }
        c3241kw.f14065if[0] = 0.0d;
        int i9 = 1;
        while (true) {
            float[] fArr5 = c3241kw.f14064do;
            if (i9 >= fArr5.length) {
                break;
            }
            int i10 = i9 - 1;
            float f5 = (fArr5[i10] + fArr5[i9]) / 2.0f;
            double[] dArr7 = c3241kw.f14063do;
            double d4 = dArr7[i9] - dArr7[i10];
            double[] dArr8 = c3241kw.f14065if;
            dArr8[i9] = (d4 * f5) + dArr8[i10];
            i9++;
        }
        if (dArr4.length > 1) {
            i = 0;
            cfor2.f1254do = AbstractC3457oc.m7714do(0, dArr4, dArr5);
        } else {
            i = 0;
            cfor2.f1254do = null;
        }
        AbstractC3457oc.m7714do(i, dArr, dArr2);
    }

    public final String toString() {
        String str = this.f1248do;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<Csuper> it = this.f1249do.iterator();
        while (it.hasNext()) {
            Csuper next = it.next();
            StringBuilder m6916goto = defpackage.Cif.m6916goto(str, "[");
            m6916goto.append(next.f1263do);
            m6916goto.append(" , ");
            m6916goto.append(decimalFormat.format(next.f1262do));
            m6916goto.append("] ");
            str = m6916goto.toString();
        }
        return str;
    }
}
