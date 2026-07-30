package defpackage;

import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import defpackage.AbstractC0763bf;
import defpackage.W4;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: nq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3412nq extends AbstractC0128Bn<ObjectAnimator> {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f14607do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f14608do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14609do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0166Dh f14610do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ObjectAnimator f14611do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinearProgressIndicatorSpec f14612do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14613do;

    /* renamed from: nq$do, reason: invalid class name */
    public class Cdo extends Property<C3412nq, Float> {
        public Cdo() {
            super(Float.class, "animationFraction");
        }

        @Override // android.util.Property
        public final Float get(C3412nq c3412nq) {
            return Float.valueOf(c3412nq.f14608do);
        }

        @Override // android.util.Property
        public final void set(C3412nq c3412nq, Float f) {
            C3412nq c3412nq2 = c3412nq;
            c3412nq2.f14608do = f.floatValue();
            ArrayList arrayList = ((AbstractC0128Bn) c3412nq2).f283do;
            ((AbstractC0763bf.Cdo) arrayList.get(0)).f8425do = 0.0f;
            float f2 = (((int) (r9 * 333.0f)) - 0) / 667;
            AbstractC0763bf.Cdo cdo = (AbstractC0763bf.Cdo) arrayList.get(0);
            AbstractC0763bf.Cdo cdo2 = (AbstractC0763bf.Cdo) arrayList.get(1);
            C0166Dh c0166Dh = c3412nq2.f14610do;
            float interpolation = c0166Dh.getInterpolation(f2);
            cdo2.f8425do = interpolation;
            cdo.f8427if = interpolation;
            AbstractC0763bf.Cdo cdo3 = (AbstractC0763bf.Cdo) arrayList.get(1);
            AbstractC0763bf.Cdo cdo4 = (AbstractC0763bf.Cdo) arrayList.get(2);
            float interpolation2 = c0166Dh.getInterpolation(f2 + 0.49925038f);
            cdo4.f8425do = interpolation2;
            cdo3.f8427if = interpolation2;
            ((AbstractC0763bf.Cdo) arrayList.get(2)).f8427if = 1.0f;
            if (c3412nq2.f14613do && ((AbstractC0763bf.Cdo) arrayList.get(1)).f8427if < 1.0f) {
                ((AbstractC0763bf.Cdo) arrayList.get(2)).f8426do = ((AbstractC0763bf.Cdo) arrayList.get(1)).f8426do;
                ((AbstractC0763bf.Cdo) arrayList.get(1)).f8426do = ((AbstractC0763bf.Cdo) arrayList.get(0)).f8426do;
                ((AbstractC0763bf.Cdo) arrayList.get(0)).f8426do = ((X4) c3412nq2.f14612do).f4459do[c3412nq2.f14609do];
                c3412nq2.f14613do = false;
            }
            ((AbstractC0128Bn) c3412nq2).f282do.invalidateSelf();
        }
    }

    public C3412nq(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f14609do = 1;
        this.f14612do = linearProgressIndicatorSpec;
        this.f14610do = new C0166Dh();
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: do */
    public final void mo216do() {
        ObjectAnimator objectAnimator = this.f14611do;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: for */
    public final void mo217for() {
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: if */
    public final void mo218if(W4.Cfor cfor) {
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: new */
    public final void mo219new() {
        if (this.f14611do == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f14607do, 0.0f, 1.0f);
            this.f14611do = ofFloat;
            ofFloat.setDuration(333L);
            this.f14611do.setInterpolator(null);
            this.f14611do.setRepeatCount(-1);
            this.f14611do.addListener(new C3353mq(this));
        }
        this.f14613do = true;
        this.f14609do = 1;
        Iterator it = ((AbstractC0128Bn) this).f283do.iterator();
        while (it.hasNext()) {
            AbstractC0763bf.Cdo cdo = (AbstractC0763bf.Cdo) it.next();
            LinearProgressIndicatorSpec linearProgressIndicatorSpec = this.f14612do;
            cdo.f8426do = ((X4) linearProgressIndicatorSpec).f4459do[0];
            cdo.f8428if = linearProgressIndicatorSpec.f4457case / 2;
        }
        this.f14611do.start();
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: try */
    public final void mo220try() {
    }
}
