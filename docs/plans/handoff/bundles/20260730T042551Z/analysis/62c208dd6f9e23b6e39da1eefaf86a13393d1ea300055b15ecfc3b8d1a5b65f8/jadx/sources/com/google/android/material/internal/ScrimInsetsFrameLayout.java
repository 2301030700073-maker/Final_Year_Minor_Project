package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0633Yn;
import defpackage.C0682aH;
import defpackage.C3150jM;
import defpackage.C3385nL;
import defpackage.InterfaceC0136Bv;
import defpackage.O2;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    public Rect f11194do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Drawable f11195do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f11196do;

    /* renamed from: for, reason: not valid java name */
    public boolean f11197for;

    /* renamed from: if, reason: not valid java name */
    public final Rect f11198if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f11199if;

    /* renamed from: new, reason: not valid java name */
    public boolean f11200new;

    /* renamed from: com.google.android.material.internal.ScrimInsetsFrameLayout$do, reason: invalid class name */
    public class Cdo implements InterfaceC0136Bv {
        public Cdo() {
        }

        @Override // defpackage.InterfaceC0136Bv
        /* renamed from: for */
        public final C3150jM mo137for(View view, C3150jM c3150jM) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f11194do == null) {
                scrimInsetsFrameLayout.f11194do = new Rect();
            }
            scrimInsetsFrameLayout.f11194do.set(c3150jM.m7059for(), c3150jM.m7063try(), c3150jM.m7062new(), c3150jM.m7061if());
            scrimInsetsFrameLayout.mo5842for(c3150jM);
            C3150jM.Ccatch ccatch = c3150jM.f13676do;
            boolean z = true;
            if ((!ccatch.mo7070break().equals(C0633Yn.f4757do)) && scrimInsetsFrameLayout.f11195do != null) {
                z = false;
            }
            scrimInsetsFrameLayout.setWillNotDraw(z);
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            scrimInsetsFrameLayout.postInvalidateOnAnimation();
            return ccatch.mo7081for();
        }
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f11194do == null || (drawable = this.f11195do) == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        boolean z = this.f11196do;
        Rect rect = this.f11198if;
        if (z) {
            rect.set(0, 0, width, this.f11194do.top);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
        if (this.f11199if) {
            rect.set(0, height - this.f11194do.bottom, width, height);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
        if (this.f11197for) {
            Rect rect2 = this.f11194do;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
        if (this.f11200new) {
            Rect rect3 = this.f11194do;
            rect.set(width - rect3.right, rect3.top, width, height - rect3.bottom);
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    /* renamed from: for, reason: not valid java name */
    public void mo5842for(C3150jM c3150jM) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f11195do;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f11195do;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11198if = new Rect();
        this.f11196do = true;
        this.f11199if = true;
        this.f11197for = true;
        this.f11200new = true;
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f, i, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f11195do = m3115new.getDrawable(0);
        m3115new.recycle();
        setWillNotDraw(true);
        Cdo cdo = new Cdo();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cnew.m1935return(this, cdo);
    }
}
