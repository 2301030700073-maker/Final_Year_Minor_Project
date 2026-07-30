package defpackage;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.provider.Settings;
import defpackage.AbstractC0763bf;
import defpackage.C0426Pe;
import defpackage.X4;

/* renamed from: Cn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0150Cn<S extends X4> extends AbstractC0558Ve {

    /* renamed from: do, reason: not valid java name */
    public AbstractC0128Bn<ObjectAnimator> f416do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f417do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC0763bf<S> f418do;

    public C0150Cn(Context context, X4 x4, AbstractC0763bf<S> abstractC0763bf, AbstractC0128Bn<ObjectAnimator> abstractC0128Bn) {
        super(context, x4);
        this.f418do = abstractC0763bf;
        this.f416do = abstractC0128Bn;
        abstractC0128Bn.f282do = this;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m297case() {
        return ((AbstractC0558Ve) this).f4168do != null && Settings.Global.getFloat(((AbstractC0558Ve) this).f4166do.getContentResolver(), "animator_duration_scale", 1.0f) == 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            boolean m297case = m297case();
            X4 x4 = ((AbstractC0558Ve) this).f4164do;
            if (m297case && (drawable = this.f417do) != null) {
                drawable.setBounds(getBounds());
                C0426Pe.Cdo.m1785else(this.f417do, x4.f4459do[0]);
                this.f417do.draw(canvas);
                return;
            }
            canvas.save();
            AbstractC0763bf<S> abstractC0763bf = this.f418do;
            Rect bounds = getBounds();
            float m2661if = m2661if();
            ValueAnimator valueAnimator = ((AbstractC0558Ve) this).f4165do;
            boolean z = valueAnimator != null && valueAnimator.isRunning();
            ValueAnimator valueAnimator2 = this.f4172if;
            boolean z2 = valueAnimator2 != null && valueAnimator2.isRunning();
            abstractC0763bf.f8424do.mo2794do();
            abstractC0763bf.mo575do(canvas, bounds, m2661if, z, z2);
            int i = x4.f4457case;
            int i2 = this.f4171for;
            Paint paint = ((AbstractC0558Ve) this).f4167do;
            if (i == 0) {
                this.f418do.mo580new(canvas, paint, 0.0f, 1.0f, x4.f4460for, i2, 0);
            } else {
                AbstractC0763bf.Cdo cdo = (AbstractC0763bf.Cdo) this.f416do.f283do.get(0);
                AbstractC0763bf.Cdo cdo2 = (AbstractC0763bf.Cdo) this.f416do.f283do.get(r2.size() - 1);
                AbstractC0763bf<S> abstractC0763bf2 = this.f418do;
                if (abstractC0763bf2 instanceof C3294lq) {
                    abstractC0763bf2.mo580new(canvas, paint, 0.0f, cdo.f8425do, x4.f4460for, i2, i);
                    this.f418do.mo580new(canvas, paint, cdo2.f8427if, 1.0f, x4.f4460for, i2, i);
                } else {
                    i2 = 0;
                    abstractC0763bf2.mo580new(canvas, paint, cdo2.f8427if, cdo.f8425do + 1.0f, x4.f4460for, 0, i);
                }
            }
            for (int i3 = 0; i3 < this.f416do.f283do.size(); i3++) {
                AbstractC0763bf.Cdo cdo3 = (AbstractC0763bf.Cdo) this.f416do.f283do.get(i3);
                this.f418do.mo577for(canvas, paint, cdo3, this.f4171for);
                if (i3 > 0 && i > 0) {
                    this.f418do.mo580new(canvas, paint, ((AbstractC0763bf.Cdo) this.f416do.f283do.get(i3 - 1)).f8427if, cdo3.f8425do, x4.f4460for, i2, i);
                }
            }
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f418do.mo582try();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f418do.mo574case();
    }

    @Override // defpackage.AbstractC0558Ve
    /* renamed from: new, reason: not valid java name */
    public final boolean mo298new(boolean z, boolean z2, boolean z3) {
        Drawable drawable;
        boolean mo298new = super.mo298new(z, z2, z3);
        if (m297case() && (drawable = this.f417do) != null) {
            return drawable.setVisible(z, z2);
        }
        if (!isRunning()) {
            this.f416do.mo216do();
        }
        if (z && (z3 || (Build.VERSION.SDK_INT <= 22 && !m297case()))) {
            this.f416do.mo219new();
        }
        return mo298new;
    }
}
