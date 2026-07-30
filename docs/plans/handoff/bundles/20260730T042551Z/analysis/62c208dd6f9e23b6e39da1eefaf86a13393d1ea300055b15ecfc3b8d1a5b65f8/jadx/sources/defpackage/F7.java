package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.CircularProgressIndicatorSpec;
import defpackage.AbstractC0763bf;

/* loaded from: classes3.dex */
public final class F7 extends AbstractC0763bf<CircularProgressIndicatorSpec> {

    /* renamed from: do, reason: not valid java name */
    public float f984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f985do;

    /* renamed from: for, reason: not valid java name */
    public float f986for;

    /* renamed from: if, reason: not valid java name */
    public float f987if;

    /* renamed from: new, reason: not valid java name */
    public float f988new;

    public F7(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: case, reason: not valid java name */
    public final int mo574case() {
        return m581this();
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: do, reason: not valid java name */
    public final void mo575do(Canvas canvas, Rect rect, float f, boolean z, boolean z2) {
        float width = rect.width() / m581this();
        float height = rect.height() / m581this();
        Object obj = ((AbstractC0763bf) this).f8424do;
        float f2 = (((CircularProgressIndicatorSpec) obj).f11252else / 2.0f) + ((CircularProgressIndicatorSpec) obj).f11253goto;
        canvas.translate((f2 * width) + rect.left, (f2 * height) + rect.top);
        canvas.rotate(-90.0f);
        canvas.scale(width, height);
        if (((CircularProgressIndicatorSpec) obj).f11254this != 0) {
            canvas.scale(1.0f, -1.0f);
        }
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.f985do = ((X4) ((CircularProgressIndicatorSpec) obj)).f4458do / 2 <= ((CircularProgressIndicatorSpec) obj).f4461if;
        this.f984do = ((X4) ((CircularProgressIndicatorSpec) obj)).f4458do * f;
        this.f987if = Math.min(((X4) ((CircularProgressIndicatorSpec) obj)).f4458do / 2, ((CircularProgressIndicatorSpec) obj).f4461if) * f;
        float f4 = (((CircularProgressIndicatorSpec) obj).f11252else - ((X4) ((CircularProgressIndicatorSpec) obj)).f4458do) / 2.0f;
        this.f986for = f4;
        if (z || z2) {
            if ((z && ((CircularProgressIndicatorSpec) obj).f4462new == 2) || (z2 && ((CircularProgressIndicatorSpec) obj).f4463try == 1)) {
                this.f986for = (((1.0f - f) * ((X4) ((CircularProgressIndicatorSpec) obj)).f4458do) / 2.0f) + f4;
            } else if ((z && ((CircularProgressIndicatorSpec) obj).f4462new == 1) || (z2 && ((CircularProgressIndicatorSpec) obj).f4463try == 2)) {
                this.f986for = f4 - (((1.0f - f) * ((X4) ((CircularProgressIndicatorSpec) obj)).f4458do) / 2.0f);
            }
        }
        if (z2 && ((CircularProgressIndicatorSpec) obj).f4463try == 3) {
            this.f988new = f;
        } else {
            this.f988new = 1.0f;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m576else(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        float f3 = f2 >= f ? f2 - f : (f2 + 1.0f) - f;
        float f4 = f % 1.0f;
        if (this.f988new < 1.0f) {
            float f5 = f4 + f3;
            if (f5 > 1.0f) {
                m576else(canvas, paint, f4, 1.0f, i, i2, 0);
                m576else(canvas, paint, 1.0f, f5, i, 0, i3);
                return;
            }
        }
        float degrees = (float) Math.toDegrees(this.f987if / this.f986for);
        if (f4 == 0.0f && f3 >= 0.99f) {
            f3 += (((degrees * 2.0f) / 360.0f) * (f3 - 0.99f)) / 0.01f;
        }
        float m8463throw = C3850vF.m8463throw(1.0f - this.f988new, 1.0f, f4);
        float m8463throw2 = C3850vF.m8463throw(0.0f, this.f988new, f3);
        float degrees2 = (float) Math.toDegrees(i2 / this.f986for);
        float degrees3 = ((m8463throw2 * 360.0f) - degrees2) - ((float) Math.toDegrees(i3 / this.f986for));
        float f6 = (m8463throw * 360.0f) + degrees2;
        if (degrees3 <= 0.0f) {
            return;
        }
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f984do);
        float f7 = degrees * 2.0f;
        if (degrees3 < f7) {
            float f8 = degrees3 / f7;
            paint.setStyle(Paint.Style.FILL);
            m578goto(canvas, paint, (degrees * f8) + f6, this.f987if * 2.0f, this.f984do, f8);
            return;
        }
        float f9 = this.f986for;
        float f10 = -f9;
        RectF rectF = new RectF(f10, f10, f9, f9);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(this.f985do ? Paint.Cap.ROUND : Paint.Cap.BUTT);
        float f11 = f6 + degrees;
        canvas.drawArc(rectF, f11, degrees3 - f7, false, paint);
        if (this.f985do || this.f987if <= 0.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        m578goto(canvas, paint, f11, this.f987if * 2.0f, this.f984do, 1.0f);
        m578goto(canvas, paint, (f6 + degrees3) - degrees, this.f987if * 2.0f, this.f984do, 1.0f);
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: for, reason: not valid java name */
    public final void mo577for(Canvas canvas, Paint paint, AbstractC0763bf.Cdo cdo, int i) {
        int m1589new = O2.m1589new(cdo.f8426do, i);
        float f = cdo.f8425do;
        float f2 = cdo.f8427if;
        int i2 = cdo.f8428if;
        m576else(canvas, paint, f, f2, m1589new, i2, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m578goto(Canvas canvas, Paint paint, float f, float f2, float f3, float f4) {
        float min = (int) Math.min(f3, this.f984do);
        float f5 = f2 / 2.0f;
        float min2 = Math.min(f5, (this.f987if * min) / this.f984do);
        RectF rectF = new RectF((-min) / 2.0f, (-f2) / 2.0f, min / 2.0f, f5);
        canvas.save();
        double d = f;
        canvas.translate((float) (Math.cos(Math.toRadians(d)) * this.f986for), (float) (Math.sin(Math.toRadians(d)) * this.f986for));
        canvas.rotate(f);
        canvas.scale(f4, f4);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: if, reason: not valid java name */
    public final void mo579if(Canvas canvas, Paint paint, int i, int i2) {
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: new, reason: not valid java name */
    public final void mo580new(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        m576else(canvas, paint, f, f2, O2.m1589new(i, i2), i3, i3);
    }

    /* renamed from: this, reason: not valid java name */
    public final int m581this() {
        Object obj = ((AbstractC0763bf) this).f8424do;
        return (((CircularProgressIndicatorSpec) obj).f11253goto * 2) + ((CircularProgressIndicatorSpec) obj).f11252else;
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: try, reason: not valid java name */
    public final int mo582try() {
        return m581this();
    }
}
