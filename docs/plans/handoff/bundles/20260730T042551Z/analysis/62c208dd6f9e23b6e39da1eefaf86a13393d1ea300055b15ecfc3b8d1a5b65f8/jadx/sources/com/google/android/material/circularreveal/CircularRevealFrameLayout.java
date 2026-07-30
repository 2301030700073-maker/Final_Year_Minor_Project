package com.google.android.material.circularreveal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.circularreveal.Cfor;

/* loaded from: classes3.dex */
public class CircularRevealFrameLayout extends FrameLayout implements Cfor {

    /* renamed from: do, reason: not valid java name */
    public final Cif f10881do;

    public CircularRevealFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10881do = new Cif(this);
    }

    @Override // com.google.android.material.circularreveal.Cif.Cdo
    /* renamed from: break, reason: not valid java name */
    public final void mo5765break(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: case, reason: not valid java name */
    public final int mo5766case() {
        return this.f10881do.m5779if();
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public final void draw(Canvas canvas) {
        Cif cif = this.f10881do;
        if (cif != null) {
            cif.m5776do(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: else, reason: not valid java name */
    public final void mo5767else() {
        this.f10881do.getClass();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: for, reason: not valid java name */
    public final void mo5768for(int i) {
        this.f10881do.m5775case(i);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: goto, reason: not valid java name */
    public final void mo5769goto(Cfor.Cnew cnew) {
        this.f10881do.m5777else(cnew);
    }

    @Override // com.google.android.material.circularreveal.Cif.Cdo
    /* renamed from: if, reason: not valid java name */
    public final boolean mo5770if() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        Cif cif = this.f10881do;
        return cif != null ? cif.m5780new() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: new, reason: not valid java name */
    public final Cfor.Cnew mo5771new() {
        return this.f10881do.m5778for();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: this, reason: not valid java name */
    public final void mo5772this(Drawable drawable) {
        this.f10881do.m5781try(drawable);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: try, reason: not valid java name */
    public final void mo5773try() {
        this.f10881do.getClass();
    }
}
