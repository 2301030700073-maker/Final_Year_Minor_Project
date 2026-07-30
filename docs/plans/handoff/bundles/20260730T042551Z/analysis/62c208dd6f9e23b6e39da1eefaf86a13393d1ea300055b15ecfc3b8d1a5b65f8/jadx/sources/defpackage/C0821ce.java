package defpackage;

import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Looper;
import android.provider.Settings;
import android.util.AndroidRuntimeException;
import defpackage.AbstractC0763bf;
import defpackage.C2726f1;
import defpackage.X4;
import java.util.ArrayList;

/* renamed from: ce, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0821ce<S extends X4> extends AbstractC0558Ve {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f8567do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PE f8568do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QE f8569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0763bf.Cdo f8570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0763bf<S> f8571do;

    /* renamed from: if, reason: not valid java name */
    public boolean f8572if;

    /* renamed from: ce$do, reason: invalid class name */
    public class Cdo extends AbstractC3134j6 {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch, reason: not valid java name */
        public final float mo4915catch(Object obj) {
            return ((C0821ce) obj).f8570do.f8427if * 10000.0f;
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final, reason: not valid java name */
        public final void mo4916final(Object obj, float f) {
            C0821ce c0821ce = (C0821ce) obj;
            c0821ce.f8570do.f8427if = f / 10000.0f;
            c0821ce.invalidateSelf();
        }
    }

    public C0821ce(Context context, X4 x4, AbstractC0763bf<S> abstractC0763bf) {
        super(context, x4);
        this.f8572if = false;
        this.f8571do = abstractC0763bf;
        this.f8570do = new AbstractC0763bf.Cdo();
        QE qe = new QE();
        this.f8569do = qe;
        qe.f2886if = 1.0f;
        qe.f2882do = false;
        qe.f2880do = Math.sqrt(50.0f);
        qe.f2882do = false;
        PE pe = new PE(this);
        this.f8568do = pe;
        pe.f2750do = qe;
        if (((AbstractC0558Ve) this).f4163do != 1.0f) {
            ((AbstractC0558Ve) this).f4163do = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            AbstractC0763bf<S> abstractC0763bf = this.f8571do;
            Rect bounds = getBounds();
            float m2661if = m2661if();
            ValueAnimator valueAnimator = ((AbstractC0558Ve) this).f4165do;
            boolean z = valueAnimator != null && valueAnimator.isRunning();
            ValueAnimator valueAnimator2 = super.f4172if;
            boolean z2 = valueAnimator2 != null && valueAnimator2.isRunning();
            abstractC0763bf.f8424do.mo2794do();
            abstractC0763bf.mo575do(canvas, bounds, m2661if, z, z2);
            Paint paint = ((AbstractC0558Ve) this).f4167do;
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            X4 x4 = ((AbstractC0558Ve) this).f4164do;
            int i = x4.f4459do[0];
            AbstractC0763bf.Cdo cdo = this.f8570do;
            cdo.f8426do = i;
            int i2 = x4.f4457case;
            if (i2 > 0) {
                if (!(this.f8571do instanceof C3294lq)) {
                    i2 = (int) ((C0315Kc.m1179super(cdo.f8427if, 0.0f, 0.01f) * i2) / 0.01f);
                }
                this.f8571do.mo580new(canvas, paint, cdo.f8427if, 1.0f, x4.f4460for, this.f4171for, i2);
            } else {
                this.f8571do.mo580new(canvas, paint, 0.0f, 1.0f, x4.f4460for, this.f4171for, 0);
            }
            this.f8571do.mo577for(canvas, paint, cdo, this.f4171for);
            this.f8571do.mo579if(canvas, paint, x4.f4459do[0], this.f4171for);
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f8571do.mo582try();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f8571do.mo574case();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f8568do.m1754for();
        this.f8570do.f8427if = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // defpackage.AbstractC0558Ve
    /* renamed from: new */
    public final boolean mo298new(boolean z, boolean z2, boolean z3) {
        boolean mo298new = super.mo298new(z, z2, z3);
        ContentResolver contentResolver = ((AbstractC0558Ve) this).f4166do.getContentResolver();
        ((AbstractC0558Ve) this).f4168do.getClass();
        float f = Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f);
        if (f == 0.0f) {
            this.f8572if = true;
        } else {
            this.f8572if = false;
            float f2 = 50.0f / f;
            QE qe = this.f8569do;
            qe.getClass();
            if (f2 <= 0.0f) {
                throw new IllegalArgumentException("Spring stiffness constant must be positive.");
            }
            qe.f2880do = Math.sqrt(f2);
            qe.f2882do = false;
        }
        return mo298new;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean z = this.f8572if;
        AbstractC0763bf.Cdo cdo = this.f8570do;
        PE pe = this.f8568do;
        if (z) {
            pe.m1754for();
            cdo.f8427if = i / 10000.0f;
            invalidateSelf();
        } else {
            ((AbstractC3519pf) pe).f14968if = cdo.f8427if * 10000.0f;
            ((AbstractC3519pf) pe).f14966do = true;
            float f = i;
            if (((AbstractC3519pf) pe).f14970if) {
                pe.f2752try = f;
            } else {
                if (pe.f2750do == null) {
                    pe.f2750do = new QE(f);
                }
                QE qe = pe.f2750do;
                double d = f;
                qe.f2885goto = d;
                double d2 = (float) d;
                if (d2 > Float.MAX_VALUE) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
                }
                float f2 = ((AbstractC3519pf) pe).f14967for;
                if (d2 < f2) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
                }
                double abs = Math.abs(pe.f14971new * 0.75f);
                qe.f2884for = abs;
                qe.f2887new = abs * 62.5d;
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    throw new AndroidRuntimeException("Animations may only be started on the main thread");
                }
                boolean z2 = ((AbstractC3519pf) pe).f14970if;
                if (!z2 && !z2) {
                    ((AbstractC3519pf) pe).f14970if = true;
                    if (!((AbstractC3519pf) pe).f14966do) {
                        ((AbstractC3519pf) pe).f14968if = ((AbstractC3519pf) pe).f14963do.mo4915catch(((AbstractC3519pf) pe).f14964do);
                    }
                    float f3 = ((AbstractC3519pf) pe).f14968if;
                    if (f3 > Float.MAX_VALUE || f3 < f2) {
                        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                    }
                    ThreadLocal<C2726f1> threadLocal = C2726f1.f12784do;
                    if (threadLocal.get() == null) {
                        threadLocal.set(new C2726f1());
                    }
                    C2726f1 c2726f1 = threadLocal.get();
                    ArrayList<C2726f1.Cif> arrayList = c2726f1.f12788do;
                    if (arrayList.size() == 0) {
                        if (c2726f1.f12787do == null) {
                            c2726f1.f12787do = new C2726f1.Cnew(c2726f1.f12786do);
                        }
                        C2726f1.Cnew cnew = c2726f1.f12787do;
                        cnew.f12792do.postFrameCallback(cnew.f12793do);
                    }
                    if (!arrayList.contains(pe)) {
                        arrayList.add(pe);
                    }
                }
            }
        }
        return true;
    }
}
