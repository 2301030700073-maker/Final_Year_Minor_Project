package defpackage;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Property;
import defpackage.W4;
import java.util.ArrayList;

/* renamed from: Ve, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0558Ve extends Drawable implements Animatable {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f4162do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f4163do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final X4 f4164do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ValueAnimator f4165do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f4166do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Paint f4167do = new Paint();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2844h1 f4168do = new C2844h1();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ArrayList f4169do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4170do;

    /* renamed from: for, reason: not valid java name */
    public int f4171for;

    /* renamed from: if, reason: not valid java name */
    public ValueAnimator f4172if;

    /* renamed from: Ve$do, reason: invalid class name */
    public class Cdo extends Property<AbstractC0558Ve, Float> {
        public Cdo() {
            super(Float.class, "growFraction");
        }

        @Override // android.util.Property
        public final Float get(AbstractC0558Ve abstractC0558Ve) {
            return Float.valueOf(abstractC0558Ve.m2661if());
        }

        @Override // android.util.Property
        public final void set(AbstractC0558Ve abstractC0558Ve, Float f) {
            AbstractC0558Ve abstractC0558Ve2 = abstractC0558Ve;
            float floatValue = f.floatValue();
            if (abstractC0558Ve2.f4163do != floatValue) {
                abstractC0558Ve2.f4163do = floatValue;
                abstractC0558Ve2.invalidateSelf();
            }
        }
    }

    public AbstractC0558Ve(Context context, X4 x4) {
        this.f4166do = context;
        this.f4164do = x4;
        setAlpha(255);
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m2660for(boolean z, boolean z2, boolean z3) {
        ContentResolver contentResolver = this.f4166do.getContentResolver();
        this.f4168do.getClass();
        return mo298new(z, z2, z3 && Settings.Global.getFloat(contentResolver, "animator_duration_scale", 1.0f) > 0.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f4171for;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    /* renamed from: if, reason: not valid java name */
    public final float m2661if() {
        X4 x4 = this.f4164do;
        if (!(x4.f4462new != 0)) {
            if (!(x4.f4463try != 0)) {
                return 1.0f;
            }
        }
        return this.f4163do;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        ValueAnimator valueAnimator = this.f4165do;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            return true;
        }
        ValueAnimator valueAnimator2 = this.f4172if;
        return valueAnimator2 != null && valueAnimator2.isRunning();
    }

    /* renamed from: new */
    public boolean mo298new(boolean z, boolean z2, boolean z3) {
        ValueAnimator valueAnimator = this.f4165do;
        Cdo cdo = f4162do;
        if (valueAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, cdo, 0.0f, 1.0f);
            this.f4165do = ofFloat;
            ofFloat.setDuration(500L);
            this.f4165do.setInterpolator(C2785g1.f13026do);
            ValueAnimator valueAnimator2 = this.f4165do;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.f4165do = valueAnimator2;
            valueAnimator2.addListener(new C0514Te(this));
        }
        if (this.f4172if == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, cdo, 1.0f, 0.0f);
            this.f4172if = ofFloat2;
            ofFloat2.setDuration(500L);
            this.f4172if.setInterpolator(C2785g1.f13026do);
            ValueAnimator valueAnimator3 = this.f4172if;
            if (valueAnimator3 != null && valueAnimator3.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.f4172if = valueAnimator3;
            valueAnimator3.addListener(new C0536Ue(this));
        }
        boolean z4 = false;
        if (!isVisible() && !z) {
            return false;
        }
        ValueAnimator valueAnimator4 = z ? this.f4165do : this.f4172if;
        ValueAnimator valueAnimator5 = z ? this.f4172if : this.f4165do;
        if (!z3) {
            if (valueAnimator5.isRunning()) {
                boolean z5 = this.f4170do;
                this.f4170do = true;
                valueAnimator5.cancel();
                this.f4170do = z5;
            }
            if (valueAnimator4.isRunning()) {
                valueAnimator4.end();
            } else {
                boolean z6 = this.f4170do;
                this.f4170do = true;
                valueAnimator4.end();
                this.f4170do = z6;
            }
            return super.setVisible(z, false);
        }
        if (valueAnimator4.isRunning()) {
            return false;
        }
        boolean z7 = !z || super.setVisible(z, false);
        X4 x4 = this.f4164do;
        if (!z ? x4.f4463try != 0 : x4.f4462new != 0) {
            z4 = true;
        }
        if (z4) {
            if (z2 || !valueAnimator4.isPaused()) {
                valueAnimator4.start();
            } else {
                valueAnimator4.resume();
            }
            return z7;
        }
        boolean z8 = this.f4170do;
        this.f4170do = true;
        valueAnimator4.end();
        this.f4170do = z8;
        return z7;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f4171for = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f4167do.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        return m2660for(z, z2, true);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        mo298new(true, true, false);
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        mo298new(false, true, false);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m2662try(W4.Cnew cnew) {
        ArrayList arrayList = this.f4169do;
        if (arrayList == null || !arrayList.contains(cnew)) {
            return;
        }
        this.f4169do.remove(cnew);
        if (this.f4169do.isEmpty()) {
            this.f4169do = null;
        }
    }
}
