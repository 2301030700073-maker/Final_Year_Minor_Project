package com.google.android.material.circularreveal;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.circularreveal.Cfor;
import defpackage.C3850vF;

/* renamed from: com.google.android.material.circularreveal.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public final Paint f10894do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f10895do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f10896do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor.Cnew f10897do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10898do;

    /* renamed from: com.google.android.material.circularreveal.if$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: break */
        void mo5765break(Canvas canvas);

        /* renamed from: if */
        boolean mo5770if();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Cif(Cdo cdo) {
        this.f10898do = cdo;
        View view = (View) cdo;
        this.f10896do = view;
        view.setWillNotDraw(false);
        new Path();
        new Paint(7);
        Paint paint = new Paint(1);
        this.f10894do = paint;
        paint.setColor(0);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5775case(int i) {
        this.f10894do.setColor(i);
        this.f10896do.invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5776do(android.graphics.Canvas r10) {
        /*
            r9 = this;
            com.google.android.material.circularreveal.for$new r0 = r9.f10897do
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L17
            float r0 = r0.f10892for
            r3 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = 0
            goto L18
        L17:
            r0 = 1
        L18:
            r0 = r0 ^ r2
            android.graphics.Paint r8 = r9.f10894do
            com.google.android.material.circularreveal.if$do r3 = r9.f10898do
            android.view.View r4 = r9.f10896do
            if (r0 == 0) goto L45
            r3.mo5765break(r10)
            int r0 = r8.getColor()
            int r0 = android.graphics.Color.alpha(r0)
            if (r0 == 0) goto L30
            r0 = 1
            goto L31
        L30:
            r0 = 0
        L31:
            if (r0 == 0) goto L68
            r0 = 0
            r5 = 0
            int r3 = r4.getWidth()
            float r6 = (float) r3
            int r3 = r4.getHeight()
            float r7 = (float) r3
            r3 = r10
            r4 = r0
            r3.drawRect(r4, r5, r6, r7, r8)
            goto L68
        L45:
            r3.mo5765break(r10)
            int r0 = r8.getColor()
            int r0 = android.graphics.Color.alpha(r0)
            if (r0 == 0) goto L54
            r0 = 1
            goto L55
        L54:
            r0 = 0
        L55:
            if (r0 == 0) goto L68
            r0 = 0
            r5 = 0
            int r3 = r4.getWidth()
            float r6 = (float) r3
            int r3 = r4.getHeight()
            float r7 = (float) r3
            r3 = r10
            r4 = r0
            r3.drawRect(r4, r5, r6, r7, r8)
        L68:
            android.graphics.drawable.Drawable r0 = r9.f10895do
            if (r0 == 0) goto L71
            com.google.android.material.circularreveal.for$new r3 = r9.f10897do
            if (r3 == 0) goto L71
            r1 = 1
        L71:
            if (r1 == 0) goto L9c
            android.graphics.Rect r0 = r0.getBounds()
            com.google.android.material.circularreveal.for$new r1 = r9.f10897do
            float r1 = r1.f10891do
            int r2 = r0.width()
            float r2 = (float) r2
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            float r1 = r1 - r2
            com.google.android.material.circularreveal.for$new r2 = r9.f10897do
            float r2 = r2.f10893if
            int r0 = r0.height()
            float r0 = (float) r0
            float r0 = r0 / r3
            float r2 = r2 - r0
            r10.translate(r1, r2)
            android.graphics.drawable.Drawable r0 = r9.f10895do
            r0.draw(r10)
            float r0 = -r1
            float r1 = -r2
            r10.translate(r0, r1)
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.circularreveal.Cif.m5776do(android.graphics.Canvas):void");
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5777else(Cfor.Cnew cnew) {
        View view = this.f10896do;
        if (cnew == null) {
            this.f10897do = null;
        } else {
            Cfor.Cnew cnew2 = this.f10897do;
            if (cnew2 == null) {
                this.f10897do = new Cfor.Cnew(cnew);
            } else {
                float f = cnew.f10891do;
                float f2 = cnew.f10893if;
                float f3 = cnew.f10892for;
                cnew2.f10891do = f;
                cnew2.f10893if = f2;
                cnew2.f10892for = f3;
            }
            if (cnew.f10892for + 1.0E-4f >= C3850vF.m8452goto(cnew.f10891do, cnew.f10893if, (float) view.getWidth(), (float) view.getHeight())) {
                this.f10897do.f10892for = Float.MAX_VALUE;
            }
        }
        view.invalidate();
    }

    /* renamed from: for, reason: not valid java name */
    public final Cfor.Cnew m5778for() {
        Cfor.Cnew cnew = this.f10897do;
        if (cnew == null) {
            return null;
        }
        Cfor.Cnew cnew2 = new Cfor.Cnew(cnew);
        if (cnew2.f10892for == Float.MAX_VALUE) {
            float f = cnew2.f10891do;
            float f2 = cnew2.f10893if;
            View view = this.f10896do;
            cnew2.f10892for = C3850vF.m8452goto(f, f2, view.getWidth(), view.getHeight());
        }
        return cnew2;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5779if() {
        return this.f10894do.getColor();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5780new() {
        /*
            r4 = this;
            com.google.android.material.circularreveal.if$do r0 = r4.f10898do
            boolean r0 = r0.mo5770if()
            r1 = 0
            if (r0 == 0) goto L24
            com.google.android.material.circularreveal.for$new r0 = r4.f10897do
            r2 = 1
            if (r0 == 0) goto L1f
            float r0 = r0.f10892for
            r3 = 2139095039(0x7f7fffff, float:3.4028235E38)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L19
            r0 = 1
            goto L1a
        L19:
            r0 = 0
        L1a:
            if (r0 == 0) goto L1d
            goto L1f
        L1d:
            r0 = 0
            goto L20
        L1f:
            r0 = 1
        L20:
            r0 = r0 ^ r2
            if (r0 != 0) goto L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.circularreveal.Cif.m5780new():boolean");
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5781try(Drawable drawable) {
        this.f10895do = drawable;
        this.f10896do.invalidate();
    }
}
