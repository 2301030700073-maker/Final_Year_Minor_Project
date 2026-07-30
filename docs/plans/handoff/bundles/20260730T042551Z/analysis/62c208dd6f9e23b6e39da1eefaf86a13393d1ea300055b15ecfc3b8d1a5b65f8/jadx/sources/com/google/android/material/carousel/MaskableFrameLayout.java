package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import defpackage.AbstractC3848vD;
import defpackage.C0472Rg;
import defpackage.C2785g1;
import defpackage.C3554qD;
import defpackage.C3907wD;
import defpackage.C3966xD;
import defpackage.C4025yD;
import defpackage.InterfaceC0132Br;
import defpackage.InterfaceC3789uD;

/* loaded from: classes3.dex */
public class MaskableFrameLayout extends FrameLayout implements InterfaceC0132Br, InterfaceC3789uD {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f10733for = 0;

    /* renamed from: do, reason: not valid java name */
    public final float f10734do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RectF f10735do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f10736do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3848vD f10737do;

    public MaskableFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        AbstractC3848vD abstractC3848vD = this.f10737do;
        if (abstractC3848vD.mo8442if()) {
            Path path = abstractC3848vD.f16034do;
            if (!path.isEmpty()) {
                canvas.save();
                canvas.clipPath(path);
                super.dispatchDraw(canvas);
                canvas.restore();
                return;
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // defpackage.InterfaceC3789uD
    /* renamed from: do */
    public final void mo4768do(C3554qD c3554qD) {
        C3554qD m7864else = c3554qD.m7864else(new C0472Rg(7));
        AbstractC3848vD abstractC3848vD = this.f10737do;
        abstractC3848vD.f16036do = m7864else;
        abstractC3848vD.m8441for();
        abstractC3848vD.mo8440do(this);
    }

    @Override // android.view.View
    public final void getFocusedRect(Rect rect) {
        RectF rectF = this.f10735do;
        rect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    @Override // defpackage.InterfaceC0132Br
    /* renamed from: if */
    public final void mo235if(RectF rectF) {
        RectF rectF2 = this.f10735do;
        rectF2.set(rectF);
        AbstractC3848vD abstractC3848vD = this.f10737do;
        abstractC3848vD.f16035do = rectF2;
        abstractC3848vD.m8441for();
        abstractC3848vD.mo8440do(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Boolean bool = this.f10736do;
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            AbstractC3848vD abstractC3848vD = this.f10737do;
            if (booleanValue != abstractC3848vD.f16037do) {
                abstractC3848vD.f16037do = booleanValue;
                abstractC3848vD.mo8440do(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        AbstractC3848vD abstractC3848vD = this.f10737do;
        this.f10736do = Boolean.valueOf(abstractC3848vD.f16037do);
        if (true != abstractC3848vD.f16037do) {
            abstractC3848vD.f16037do = true;
            abstractC3848vD.mo8440do(this);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f = this.f10734do;
        if (f == -1.0f || f == -1.0f) {
            return;
        }
        float m6709do = C2785g1.m6709do(0.0f, getWidth() / 2.0f, 0.0f, 1.0f, f);
        mo235if(new RectF(m6709do, 0.0f, getWidth() - m6709do, getHeight()));
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        RectF rectF = this.f10735do;
        if (rectF.isEmpty() || motionEvent.getAction() != 0 || rectF.contains(motionEvent.getX(), motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public MaskableFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10734do = -1.0f;
        this.f10735do = new RectF();
        int i2 = Build.VERSION.SDK_INT;
        this.f10737do = i2 >= 33 ? new C4025yD(this) : i2 >= 22 ? new C3966xD(this) : new C3907wD();
        this.f10736do = null;
        mo4768do(new C3554qD(C3554qD.m7859for(context, attributeSet, i, 0)));
    }
}
