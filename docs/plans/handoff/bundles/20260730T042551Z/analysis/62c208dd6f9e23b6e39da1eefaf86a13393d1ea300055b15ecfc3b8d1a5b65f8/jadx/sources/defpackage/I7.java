package defpackage;

import android.animation.ObjectAnimator;
import android.util.Property;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;
import defpackage.AbstractC0763bf;
import defpackage.W4;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class I7 extends AbstractC0128Bn<ObjectAnimator> {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f1448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f1449do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0166Dh f1450do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public X0 f1451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ObjectAnimator f1452do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CircularProgressIndicatorSpec f1453do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public float f1454if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ObjectAnimator f1455if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f1445do = {0, 1350, 2700, 4050};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f1447if = {667, 2017, 3367, 4717};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f1446for = {1000, 2350, 3700, 5050};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f1443do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f1444do = new Cif();

    /* renamed from: I7$do, reason: invalid class name */
    public class Cdo extends Property<I7, Float> {
        public Cdo() {
            super(Float.class, "animationFraction");
        }

        @Override // android.util.Property
        public final Float get(I7 i7) {
            return Float.valueOf(i7.f1448do);
        }

        @Override // android.util.Property
        public final void set(I7 i7, Float f) {
            C0166Dh c0166Dh;
            I7 i72 = i7;
            float floatValue = f.floatValue();
            i72.f1448do = floatValue;
            int i = (int) (floatValue * 5400.0f);
            ArrayList arrayList = ((AbstractC0128Bn) i72).f283do;
            AbstractC0763bf.Cdo cdo = (AbstractC0763bf.Cdo) arrayList.get(0);
            float f2 = i72.f1448do * 1520.0f;
            cdo.f8425do = (-20.0f) + f2;
            cdo.f8427if = f2;
            int i2 = 0;
            while (true) {
                c0166Dh = i72.f1450do;
                if (i2 >= 4) {
                    break;
                }
                float f3 = 667;
                cdo.f8427if = (c0166Dh.getInterpolation((i - I7.f1445do[i2]) / f3) * 250.0f) + cdo.f8427if;
                cdo.f8425do = (c0166Dh.getInterpolation((i - I7.f1447if[i2]) / f3) * 250.0f) + cdo.f8425do;
                i2++;
            }
            float f4 = cdo.f8425do;
            float f5 = cdo.f8427if;
            cdo.f8425do = (((f5 - f4) * i72.f1454if) + f4) / 360.0f;
            cdo.f8427if = f5 / 360.0f;
            int i3 = 0;
            while (true) {
                if (i3 >= 4) {
                    break;
                }
                float f6 = (i - I7.f1446for[i3]) / 333;
                if (f6 >= 0.0f && f6 <= 1.0f) {
                    int i4 = i3 + i72.f1449do;
                    int[] iArr = ((X4) i72.f1453do).f4459do;
                    int length = i4 % iArr.length;
                    int length2 = (length + 1) % iArr.length;
                    int i5 = iArr[length];
                    int i6 = iArr[length2];
                    ((AbstractC0763bf.Cdo) arrayList.get(0)).f8426do = C3955x2.m8618do(c0166Dh.getInterpolation(f6), Integer.valueOf(i5), Integer.valueOf(i6)).intValue();
                    break;
                }
                i3++;
            }
            ((AbstractC0128Bn) i72).f282do.invalidateSelf();
        }
    }

    /* renamed from: I7$if, reason: invalid class name */
    public class Cif extends Property<I7, Float> {
        public Cif() {
            super(Float.class, "completeEndFraction");
        }

        @Override // android.util.Property
        public final Float get(I7 i7) {
            return Float.valueOf(i7.f1454if);
        }

        @Override // android.util.Property
        public final void set(I7 i7, Float f) {
            i7.f1454if = f.floatValue();
        }
    }

    public I7(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f1449do = 0;
        this.f1451do = null;
        this.f1453do = circularProgressIndicatorSpec;
        this.f1450do = new C0166Dh();
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: do */
    public final void mo216do() {
        ObjectAnimator objectAnimator = this.f1452do;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: for */
    public final void mo217for() {
        ObjectAnimator objectAnimator = this.f1455if;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (((AbstractC0128Bn) this).f282do.isVisible()) {
            this.f1455if.start();
        } else {
            mo216do();
        }
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: if */
    public final void mo218if(W4.Cfor cfor) {
        this.f1451do = cfor;
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: new */
    public final void mo219new() {
        if (this.f1452do == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, f1443do, 0.0f, 1.0f);
            this.f1452do = ofFloat;
            ofFloat.setDuration(5400L);
            this.f1452do.setInterpolator(null);
            this.f1452do.setRepeatCount(-1);
            this.f1452do.addListener(new G7(this));
        }
        if (this.f1455if == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, f1444do, 0.0f, 1.0f);
            this.f1455if = ofFloat2;
            ofFloat2.setDuration(333L);
            this.f1455if.setInterpolator(this.f1450do);
            this.f1455if.addListener(new H7(this));
        }
        this.f1449do = 0;
        ((AbstractC0763bf.Cdo) ((AbstractC0128Bn) this).f283do.get(0)).f8426do = ((X4) this.f1453do).f4459do[0];
        this.f1454if = 0.0f;
        this.f1452do.start();
    }

    @Override // defpackage.AbstractC0128Bn
    /* renamed from: try */
    public final void mo220try() {
        this.f1451do = null;
    }
}
