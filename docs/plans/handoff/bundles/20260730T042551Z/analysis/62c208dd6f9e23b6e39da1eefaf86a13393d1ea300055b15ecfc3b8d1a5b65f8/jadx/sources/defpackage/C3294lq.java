package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import defpackage.AbstractC0763bf;

/* renamed from: lq, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3294lq extends AbstractC0763bf<LinearProgressIndicatorSpec> {

    /* renamed from: do, reason: not valid java name */
    public float f14253do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14254do;

    /* renamed from: for, reason: not valid java name */
    public float f14255for;

    /* renamed from: if, reason: not valid java name */
    public float f14256if;

    /* renamed from: new, reason: not valid java name */
    public float f14257new;

    public C3294lq(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
        this.f14253do = 300.0f;
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: case */
    public final int mo574case() {
        return -1;
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: do */
    public final void mo575do(Canvas canvas, Rect rect, float f, boolean z, boolean z2) {
        this.f14253do = rect.width();
        Object obj = ((AbstractC0763bf) this).f8424do;
        float f2 = ((X4) ((LinearProgressIndicatorSpec) obj)).f4458do;
        canvas.translate((rect.width() / 2.0f) + rect.left, Math.max(0.0f, (rect.height() - f2) / 2.0f) + (rect.height() / 2.0f) + rect.top);
        if (((LinearProgressIndicatorSpec) obj).f11256do) {
            canvas.scale(-1.0f, 1.0f);
        }
        float f3 = this.f14253do / 2.0f;
        float f4 = f2 / 2.0f;
        canvas.clipRect(-f3, -f4, f3, f4);
        this.f14254do = ((X4) ((LinearProgressIndicatorSpec) obj)).f4458do / 2 == ((LinearProgressIndicatorSpec) obj).f4461if;
        this.f14256if = ((X4) ((LinearProgressIndicatorSpec) obj)).f4458do * f;
        this.f14255for = Math.min(((X4) ((LinearProgressIndicatorSpec) obj)).f4458do / 2, ((LinearProgressIndicatorSpec) obj).f4461if) * f;
        if (z || z2) {
            if ((z && ((LinearProgressIndicatorSpec) obj).f4462new == 2) || (z2 && ((LinearProgressIndicatorSpec) obj).f4463try == 1)) {
                canvas.scale(1.0f, -1.0f);
            }
            if (z || (z2 && ((LinearProgressIndicatorSpec) obj).f4463try != 3)) {
                canvas.translate(0.0f, ((1.0f - f) * ((X4) ((LinearProgressIndicatorSpec) obj)).f4458do) / 2.0f);
            }
        }
        if (z2 && ((LinearProgressIndicatorSpec) obj).f4463try == 3) {
            this.f14257new = f;
        } else {
            this.f14257new = 1.0f;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m7398else(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        float m1179super = C0315Kc.m1179super(f, 0.0f, 1.0f);
        float m1179super2 = C0315Kc.m1179super(f2, 0.0f, 1.0f);
        float m8463throw = C3850vF.m8463throw(1.0f - this.f14257new, 1.0f, m1179super);
        float m8463throw2 = C3850vF.m8463throw(1.0f - this.f14257new, 1.0f, m1179super2);
        int m1179super3 = (int) ((C0315Kc.m1179super(m8463throw, 0.0f, 0.01f) * i2) / 0.01f);
        float m1179super4 = 1.0f - C0315Kc.m1179super(m8463throw2, 0.99f, 1.0f);
        float f3 = this.f14253do;
        int i4 = (int) ((m8463throw * f3) + m1179super3);
        int i5 = (int) ((m8463throw2 * f3) - ((int) ((m1179super4 * i3) / 0.01f)));
        float f4 = (-f3) / 2.0f;
        if (i4 <= i5) {
            float f5 = this.f14255for;
            float f6 = i4 + f5;
            float f7 = i5 - f5;
            float f8 = f5 * 2.0f;
            paint.setColor(i);
            paint.setAntiAlias(true);
            paint.setStrokeWidth(this.f14256if);
            if (f6 >= f7) {
                m7399goto(canvas, paint, new PointF(f6 + f4, 0.0f), new PointF(f7 + f4, 0.0f), f8, this.f14256if);
                return;
            }
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(this.f14254do ? Paint.Cap.ROUND : Paint.Cap.BUTT);
            float f9 = f6 + f4;
            float f10 = f7 + f4;
            canvas.drawLine(f9, 0.0f, f10, 0.0f, paint);
            if (this.f14254do || this.f14255for <= 0.0f) {
                return;
            }
            paint.setStyle(Paint.Style.FILL);
            if (f6 > 0.0f) {
                m7399goto(canvas, paint, new PointF(f9, 0.0f), null, f8, this.f14256if);
            }
            if (f7 < this.f14253do) {
                m7399goto(canvas, paint, new PointF(f10, 0.0f), null, f8, this.f14256if);
            }
        }
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: for */
    public final void mo577for(Canvas canvas, Paint paint, AbstractC0763bf.Cdo cdo, int i) {
        int m1589new = O2.m1589new(cdo.f8426do, i);
        float f = cdo.f8425do;
        float f2 = cdo.f8427if;
        int i2 = cdo.f8428if;
        m7398else(canvas, paint, f, f2, m1589new, i2, i2);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7399goto(Canvas canvas, Paint paint, PointF pointF, PointF pointF2, float f, float f2) {
        float min = Math.min(f2, this.f14256if);
        float f3 = f / 2.0f;
        float min2 = Math.min(f3, (this.f14255for * min) / this.f14256if);
        RectF rectF = new RectF((-f) / 2.0f, (-min) / 2.0f, f3, min / 2.0f);
        paint.setStyle(Paint.Style.FILL);
        canvas.save();
        if (pointF2 != null) {
            canvas.translate(pointF2.x, pointF2.y);
            Path path = new Path();
            path.addRoundRect(rectF, min2, min2, Path.Direction.CCW);
            canvas.clipPath(path);
            canvas.translate(-pointF2.x, -pointF2.y);
        }
        canvas.translate(pointF.x, pointF.y);
        canvas.drawRoundRect(rectF, min2, min2, paint);
        canvas.restore();
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: if */
    public final void mo579if(Canvas canvas, Paint paint, int i, int i2) {
        int m1589new = O2.m1589new(i, i2);
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) ((AbstractC0763bf) this).f8424do;
        if (linearProgressIndicatorSpec.f11259this <= 0 || m1589new == 0) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(m1589new);
        PointF pointF = new PointF((this.f14253do / 2.0f) - (this.f14256if / 2.0f), 0.0f);
        int i3 = linearProgressIndicatorSpec.f11259this;
        m7399goto(canvas, paint, pointF, null, i3, i3);
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: new */
    public final void mo580new(Canvas canvas, Paint paint, float f, float f2, int i, int i2, int i3) {
        m7398else(canvas, paint, f, f2, O2.m1589new(i, i2), i3, i3);
    }

    @Override // defpackage.AbstractC0763bf
    /* renamed from: try */
    public final int mo582try() {
        return ((X4) ((LinearProgressIndicatorSpec) ((AbstractC0763bf) this).f8424do)).f4458do;
    }
}
