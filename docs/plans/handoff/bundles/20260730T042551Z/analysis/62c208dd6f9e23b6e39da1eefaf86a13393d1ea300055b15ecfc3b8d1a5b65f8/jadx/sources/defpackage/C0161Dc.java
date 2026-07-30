package defpackage;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import defpackage.C0716as;

/* renamed from: Dc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C0161Dc extends C0716as {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ int f632new = 0;

    /* renamed from: do, reason: not valid java name */
    public Cdo f633do;

    @TargetApi(18)
    /* renamed from: Dc$if, reason: invalid class name */
    public static class Cif extends C0161Dc {
        public Cif(Cdo cdo) {
            super(cdo);
        }

        @Override // defpackage.C0716as
        /* renamed from: goto, reason: not valid java name */
        public final void mo376goto(Canvas canvas) {
            if (((C0161Dc) this).f633do.f634do.isEmpty()) {
                super.mo376goto(canvas);
                return;
            }
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutRect(((C0161Dc) this).f633do.f634do);
            } else {
                canvas.clipRect(((C0161Dc) this).f633do.f634do, Region.Op.DIFFERENCE);
            }
            super.mo376goto(canvas);
            canvas.restore();
        }
    }

    public C0161Dc(Cdo cdo) {
        super(cdo);
        this.f633do = cdo;
    }

    @Override // defpackage.C0716as, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f633do = new Cdo(this.f633do);
        return this;
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m375throws(float f, float f2, float f3, float f4) {
        RectF rectF = this.f633do.f634do;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* renamed from: Dc$do, reason: invalid class name */
    public static final class Cdo extends C0716as.Cif {

        /* renamed from: do, reason: not valid java name */
        public final RectF f634do;

        public Cdo(C3554qD c3554qD, RectF rectF) {
            super(c3554qD);
            this.f634do = rectF;
        }

        @Override // defpackage.C0716as.Cif, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            Cif cif = new Cif(this);
            cif.invalidateSelf();
            return cif;
        }

        public Cdo(Cdo cdo) {
            super(cdo);
            this.f634do = cdo.f634do;
        }
    }
}
