package defpackage;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC0763bf;
import defpackage.W4;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: qq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3589qq extends AbstractC0128Bn<ObjectAnimator> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f15167do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f15168do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public X0 f15169do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ObjectAnimator f15170do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinearProgressIndicatorSpec f15171do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f15172do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Interpolator[] f15173do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ObjectAnimator f15174if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f15165do = {533, 567, 850, 750};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f15166if = {1267, 1000, 333, 0};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f15164do = new Cdo();

    /* renamed from: qq$do, reason: invalid class name */
    public class Cdo extends Property<C3589qq, Float> {
        public Cdo() {
            super(Float.class, "animationFraction");
        }

        @Override // android.util.Property
        public final Float get(C3589qq c3589qq) {
            return Float.valueOf(c3589qq.f15167do);
        }

        @Override // android.util.Property
        public final void set(C3589qq c3589qq, Float f) {
            ArrayList arrayList;
            C3589qq c3589qq2 = c3589qq;
            float floatValue = f.floatValue();
            c3589qq2.f15167do = floatValue;
            int i = (int) (floatValue * 1800.0f);
            int i2 = 0;
            while (true) {
                arrayList = ((AbstractC0128Bn) c3589qq2).f283do;
                if (i2 >= arrayList.size()) {
                    break;
                }
                AbstractC0763bf.Cdo cdo = (AbstractC0763bf.Cdo) arrayList.get(i2);
                int i3 = i2 * 2;
                int i4 = C3589qq.f15166if[i3];
                int[] iArr = C3589qq.f15165do;
                Interpolator[] interpolatorArr = c3589qq2.f15173do;
                cdo.f8425do = C0315Kc.m1179super(interpolatorArr[i3].getInterpolation((i - i4) / iArr[i3]), 0.0f, 1.0f);
                cdo.f8427if = C0315Kc.m1179super(interpolatorArr[i3 + 1].getInterpolation((i - r3[r4]) / iArr[r4]), 0.0f, 1.0f);
                i2++;
            }
            if (c3589qq2.f15172do) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((AbstractC0763bf.Cdo) it.next()).f8426do = ((X4) c3589qq2.f15171do).f4459do[c3589qq2.f15168do];
                }
                c3589qq2.f15172do = false;
            }
            ((AbstractC0128Bn) c3589qq2).f282do.invalidateSelf();
        }
    }

    public C3589qq(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f15168do = 0;
        this.f15169do = null;
        this.f15171do = linearProgressIndicatorSpec;
        this.f15173do = new Interpolator[]{AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: do */
    public final void mo216do() {
        ObjectAnimator objectAnimator = this.f15170do;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: for */
    public final void mo217for() {
        ObjectAnimator objectAnimator = this.f15174if;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        mo216do();
        if (((AbstractC0128Bn) this).f282do.isVisible()) {
            this.f15174if.setFloatValues(this.f15167do, 1.0f);
            this.f15174if.setDuration((long) ((1.0f - this.f15167do) * 1800.0f));
            this.f15174if.start();
        }
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: if */
    public final void mo218if(W4.Cfor cfor) {
        this.f15169do = cfor;
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: new */
    public final void mo219new() {
        ObjectAnimator objectAnimator = this.f15170do;
        Cdo cdo = f15164do;
        if (objectAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, cdo, 0.0f, 1.0f);
            this.f15170do = ofFloat;
            ofFloat.setDuration(1800L);
            this.f15170do.setInterpolator(null);
            this.f15170do.setRepeatCount(-1);
            this.f15170do.addListener(new C3471oq(this));
        }
        if (this.f15174if == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, cdo, 1.0f);
            this.f15174if = ofFloat2;
            ofFloat2.setDuration(1800L);
            this.f15174if.setInterpolator(null);
            this.f15174if.addListener(new C3530pq(this));
        }
        this.f15168do = 0;
        Iterator it = ((AbstractC0128Bn) this).f283do.iterator();
        while (it.hasNext()) {
            ((AbstractC0763bf.Cdo) it.next()).f8426do = ((X4) this.f15171do).f4459do[0];
        }
        this.f15170do.start();
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: try */
    public final void mo220try() {
        this.f15169do = null;
    }
}
