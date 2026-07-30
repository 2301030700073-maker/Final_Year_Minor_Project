package defpackage;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import java.util.WeakHashMap;

/* renamed from: f3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC2728f3 implements View.OnTouchListener {

    /* renamed from: try, reason: not valid java name */
    public static final int f12800try = ViewConfiguration.getTapTimeout();

    /* renamed from: do, reason: not valid java name */
    public final View f12801do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccelerateInterpolator f12802do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f12803do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f12804do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f12805do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final float[] f12806do;

    /* renamed from: for, reason: not valid java name */
    public int f12807for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f12808for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final float[] f12809for;

    /* renamed from: if, reason: not valid java name */
    public boolean f12810if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final float[] f12811if;

    /* renamed from: new, reason: not valid java name */
    public int f12812new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f12813new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final float[] f12814new;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public boolean f12815try;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public final float[] f12816try;

    /* renamed from: f3$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public float f12817do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f12818do;

        /* renamed from: for, reason: not valid java name */
        public float f12820for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public int f12821for;

        /* renamed from: if, reason: not valid java name */
        public float f12823if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public int f12824if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f12819do = Long.MIN_VALUE;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public long f12822for = -1;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public long f12825if = 0;

        /* renamed from: do, reason: not valid java name */
        public final float m6638do(long j) {
            if (j < this.f12819do) {
                return 0.0f;
            }
            long j2 = this.f12822for;
            if (j2 < 0 || j < j2) {
                return AbstractViewOnTouchListenerC2728f3.m6633if((j - r0) / this.f12818do, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.f12820for;
            return (AbstractViewOnTouchListenerC2728f3.m6633if((j - j2) / this.f12821for, 0.0f, 1.0f) * f) + (1.0f - f);
        }
    }

    /* renamed from: f3$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractViewOnTouchListenerC2728f3 abstractViewOnTouchListenerC2728f3 = AbstractViewOnTouchListenerC2728f3.this;
            if (abstractViewOnTouchListenerC2728f3.f12813new) {
                boolean z = abstractViewOnTouchListenerC2728f3.f12810if;
                Cdo cdo = abstractViewOnTouchListenerC2728f3.f12803do;
                if (z) {
                    abstractViewOnTouchListenerC2728f3.f12810if = false;
                    cdo.getClass();
                    long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                    cdo.f12819do = currentAnimationTimeMillis;
                    cdo.f12822for = -1L;
                    cdo.f12825if = currentAnimationTimeMillis;
                    cdo.f12820for = 0.5f;
                }
                if ((cdo.f12822for > 0 && AnimationUtils.currentAnimationTimeMillis() > cdo.f12822for + ((long) cdo.f12821for)) || !abstractViewOnTouchListenerC2728f3.m6637try()) {
                    abstractViewOnTouchListenerC2728f3.f12813new = false;
                    return;
                }
                boolean z2 = abstractViewOnTouchListenerC2728f3.f12808for;
                View view = abstractViewOnTouchListenerC2728f3.f12801do;
                if (z2) {
                    abstractViewOnTouchListenerC2728f3.f12808for = false;
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                }
                if (cdo.f12825if == 0) {
                    throw new RuntimeException("Cannot compute scroll delta before calling start()");
                }
                long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float m6638do = cdo.m6638do(currentAnimationTimeMillis2);
                long j = currentAnimationTimeMillis2 - cdo.f12825if;
                cdo.f12825if = currentAnimationTimeMillis2;
                ((C3883vq) abstractViewOnTouchListenerC2728f3).f16130do.scrollListBy((int) (j * ((m6638do * 4.0f) + ((-4.0f) * m6638do * m6638do)) * cdo.f12823if));
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                view.postOnAnimation(this);
            }
        }
    }

    public AbstractViewOnTouchListenerC2728f3(View view) {
        Cdo cdo = new Cdo();
        this.f12803do = cdo;
        this.f12802do = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f12806do = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f12811if = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f12809for = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f12814new = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f12816try = fArr5;
        this.f12801do = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr5[0] = f2;
        fArr5[1] = f2;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f3;
        fArr4[1] = f3;
        this.f12807for = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f12812new = f12800try;
        cdo.f12818do = 500;
        cdo.f12824if = 500;
    }

    /* renamed from: if, reason: not valid java name */
    public static float m6633if(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003d  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float m6634do(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.f12806do
            r0 = r0[r7]
            float[] r1 = r3.f12811if
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = m6633if(r0, r2, r1)
            float r1 = r3.m6635for(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.m6635for(r5, r0)
            float r4 = r4 - r1
            android.view.animation.AccelerateInterpolator r5 = r3.f12802do
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 >= 0) goto L26
            float r4 = -r4
            float r4 = r5.getInterpolation(r4)
            float r4 = -r4
            goto L2e
        L26:
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L37
            float r4 = r5.getInterpolation(r4)
        L2e:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = m6633if(r4, r5, r0)
            goto L38
        L37:
            r4 = 0
        L38:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3d
            return r2
        L3d:
            float[] r0 = r3.f12809for
            r0 = r0[r7]
            float[] r1 = r3.f12814new
            r1 = r1[r7]
            float[] r2 = r3.f12816try
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L54
            float r4 = r4 * r0
            float r4 = m6633if(r4, r1, r7)
            return r4
        L54:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = m6633if(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractViewOnTouchListenerC2728f3.m6634do(float, float, float, int):float");
    }

    /* renamed from: for, reason: not valid java name */
    public final float m6635for(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.f12807for;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.f12813new && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m6636new() {
        int i = 0;
        if (this.f12810if) {
            this.f12813new = false;
            return;
        }
        Cdo cdo = this.f12803do;
        cdo.getClass();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (currentAnimationTimeMillis - cdo.f12819do);
        int i3 = cdo.f12824if;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        cdo.f12821for = i;
        cdo.f12820for = cdo.m6638do(currentAnimationTimeMillis);
        cdo.f12822for = currentAnimationTimeMillis;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
    
        if (r0 != 3) goto L29;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f12815try
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r8 = 3
            if (r0 == r8) goto L16
            goto L7b
        L16:
            r7.m6636new()
            goto L7b
        L1a:
            r7.f12808for = r2
            r7.f12805do = r1
        L1e:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r7.f12801do
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.m6634do(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.m6634do(r9, r8, r3, r2)
            f3$do r9 = r7.f12803do
            r9.f12817do = r0
            r9.f12823if = r8
            boolean r8 = r7.f12813new
            if (r8 != 0) goto L7b
            boolean r8 = r7.m6637try()
            if (r8 == 0) goto L7b
            f3$if r8 = r7.f12804do
            if (r8 != 0) goto L5f
            f3$if r8 = new f3$if
            r8.<init>()
            r7.f12804do = r8
        L5f:
            r7.f12813new = r2
            r7.f12810if = r2
            boolean r8 = r7.f12805do
            if (r8 != 0) goto L74
            int r8 = r7.f12812new
            if (r8 <= 0) goto L74
            f3$if r9 = r7.f12804do
            long r5 = (long) r8
            java.util.WeakHashMap<android.view.View, nL> r8 = defpackage.QK.f2909do
            r4.postOnAnimationDelayed(r9, r5)
            goto L79
        L74:
            f3$if r8 = r7.f12804do
            r8.run()
        L79:
            r7.f12805do = r2
        L7b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractViewOnTouchListenerC2728f3.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0054 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6637try() {
        /*
            r9 = this;
            f3$do r0 = r9.f12803do
            float r1 = r0.f12823if
            float r2 = java.lang.Math.abs(r1)
            float r1 = r1 / r2
            int r1 = (int) r1
            float r0 = r0.f12817do
            float r2 = java.lang.Math.abs(r0)
            float r0 = r0 / r2
            int r0 = (int) r0
            r2 = 0
            if (r1 == 0) goto L55
            r3 = r9
            vq r3 = (defpackage.C3883vq) r3
            android.widget.ListView r3 = r3.f16130do
            int r4 = r3.getCount()
            r5 = 1
            if (r4 != 0) goto L23
        L21:
            r1 = 0
            goto L51
        L23:
            int r6 = r3.getChildCount()
            int r7 = r3.getFirstVisiblePosition()
            int r8 = r7 + r6
            if (r1 <= 0) goto L41
            if (r8 < r4) goto L50
            int r6 = r6 - r5
            android.view.View r1 = r3.getChildAt(r6)
            int r1 = r1.getBottom()
            int r3 = r3.getHeight()
            if (r1 > r3) goto L50
            goto L21
        L41:
            if (r1 >= 0) goto L21
            if (r7 > 0) goto L50
            android.view.View r1 = r3.getChildAt(r2)
            int r1 = r1.getTop()
            if (r1 < 0) goto L50
            goto L21
        L50:
            r1 = 1
        L51:
            if (r1 != 0) goto L54
            goto L55
        L54:
            r2 = 1
        L55:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractViewOnTouchListenerC2728f3.m6637try():boolean");
    }
}
