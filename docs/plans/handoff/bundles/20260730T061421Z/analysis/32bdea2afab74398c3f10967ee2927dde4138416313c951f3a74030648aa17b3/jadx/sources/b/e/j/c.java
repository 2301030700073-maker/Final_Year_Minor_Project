package b.e.j;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ListView;
import b.e.i.q;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class c implements View.OnTouchListener {
    public static final int r = ViewConfiguration.getTapTimeout();

    /* renamed from: c, reason: collision with root package name */
    public final View f797c;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f798d;
    public int g;
    public int h;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public final ListView q;

    /* renamed from: a, reason: collision with root package name */
    public final a f795a = new a();

    /* renamed from: b, reason: collision with root package name */
    public final Interpolator f796b = new AccelerateInterpolator();
    public float[] e = {RecentsState.NO_OFFSET, RecentsState.NO_OFFSET};
    public float[] f = {Float.MAX_VALUE, Float.MAX_VALUE};
    public float[] i = {RecentsState.NO_OFFSET, RecentsState.NO_OFFSET};
    public float[] j = {RecentsState.NO_OFFSET, RecentsState.NO_OFFSET};
    public float[] k = {Float.MAX_VALUE, Float.MAX_VALUE};

    public c(ListView listView) {
        this.f797c = listView;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.k;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float[] fArr2 = this.j;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f3;
        fArr2[1] = f3;
        this.g = 1;
        float[] fArr3 = this.f;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.e;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.i;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.h = r;
        a aVar = this.f795a;
        aVar.f790a = 500;
        aVar.f791b = 500;
        this.q = listView;
    }

    public static float b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    public static int c(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    public final float a(int i, float f, float f2, float f3) {
        float e = e(this.e[i], f2, this.f[i], f);
        if (e == RecentsState.NO_OFFSET) {
            return RecentsState.NO_OFFSET;
        }
        float f4 = this.i[i];
        float f5 = this.j[i];
        float f6 = this.k[i];
        float f7 = f4 * f3;
        return e > RecentsState.NO_OFFSET ? b(e * f7, f5, f6) : -b((-e) * f7, f5, f6);
    }

    public final float d(float f, float f2) {
        if (f2 == RecentsState.NO_OFFSET) {
            return RecentsState.NO_OFFSET;
        }
        int i = this.g;
        if (i != 0 && i != 1) {
            return (i == 2 && f < RecentsState.NO_OFFSET) ? f / (-f2) : RecentsState.NO_OFFSET;
        }
        if (f >= f2) {
            return RecentsState.NO_OFFSET;
        }
        if (f >= RecentsState.NO_OFFSET) {
            return 1.0f - (f / f2);
        }
        if (this.o && this.g == 1) {
            return 1.0f;
        }
        return RecentsState.NO_OFFSET;
    }

    public final float e(float f, float f2, float f3, float f4) {
        float interpolation;
        float b2 = b(f * f2, RecentsState.NO_OFFSET, f3);
        float d2 = d(f2 - f4, b2) - d(f4, b2);
        if (d2 < RecentsState.NO_OFFSET) {
            interpolation = -this.f796b.getInterpolation(-d2);
        } else {
            if (d2 <= RecentsState.NO_OFFSET) {
                return RecentsState.NO_OFFSET;
            }
            interpolation = this.f796b.getInterpolation(d2);
        }
        return b(interpolation, -1.0f, 1.0f);
    }

    public final void f() {
        if (this.m) {
            this.o = false;
            return;
        }
        a aVar = this.f795a;
        Objects.requireNonNull(aVar);
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        aVar.k = c((int) (currentAnimationTimeMillis - aVar.e), 0, aVar.f791b);
        aVar.j = aVar.a(currentAnimationTimeMillis);
        aVar.i = currentAnimationTimeMillis;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g() {
        /*
            r7 = this;
            b.e.j.a r0 = r7.f795a
            float r1 = r0.f793d
            float r2 = java.lang.Math.abs(r1)
            float r1 = r1 / r2
            int r1 = (int) r1
            float r0 = r0.f792c
            java.lang.Math.abs(r0)
            r0 = 1
            r2 = 0
            if (r1 == 0) goto L4e
            android.widget.ListView r7 = r7.q
            int r3 = r7.getCount()
            if (r3 != 0) goto L1c
            goto L4b
        L1c:
            int r4 = r7.getChildCount()
            int r5 = r7.getFirstVisiblePosition()
            int r6 = r5 + r4
            if (r1 <= 0) goto L3a
            if (r6 < r3) goto L49
            int r4 = r4 - r0
            android.view.View r1 = r7.getChildAt(r4)
            int r1 = r1.getBottom()
            int r7 = r7.getHeight()
            if (r1 > r7) goto L49
            goto L4b
        L3a:
            if (r1 >= 0) goto L4b
            if (r5 > 0) goto L49
            android.view.View r7 = r7.getChildAt(r2)
            int r7 = r7.getTop()
            if (r7 < 0) goto L49
            goto L4b
        L49:
            r7 = r0
            goto L4c
        L4b:
            r7 = r2
        L4c:
            if (r7 != 0) goto L4f
        L4e:
            r0 = r2
        L4f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.e.j.c.g():boolean");
    }

    public final void h() {
        int i;
        if (this.f798d == null) {
            this.f798d = new b(this);
        }
        this.o = true;
        this.m = true;
        if (this.l || (i = this.h) <= 0) {
            this.f798d.run();
        } else {
            q.A(this.f797c, this.f798d, i);
        }
        this.l = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0013, code lost:
    
        if (r0 != 3) goto L20;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.p
            r1 = 0
            if (r0 != 0) goto L6
            goto L59
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L59
        L16:
            r5.f()
            goto L59
        L1a:
            r5.n = r2
            r5.l = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f797c
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f797c
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            b.e.j.a r7 = r5.f795a
            r7.f792c = r0
            r7.f793d = r6
            boolean r6 = r5.o
            if (r6 != 0) goto L59
            boolean r6 = r5.g()
            if (r6 == 0) goto L59
            r5.h()
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.e.j.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
