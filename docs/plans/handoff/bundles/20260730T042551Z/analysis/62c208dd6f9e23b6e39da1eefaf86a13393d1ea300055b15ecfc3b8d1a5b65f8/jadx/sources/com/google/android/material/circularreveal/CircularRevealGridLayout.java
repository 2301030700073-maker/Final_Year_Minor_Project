package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import com.google.android.material.circularreveal.Cfor;

/* loaded from: classes3.dex */
public class CircularRevealGridLayout extends GridLayout implements Cfor {

    /* renamed from: do, reason: not valid java name */
    public final Cif f10882do;

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10882do = new Cif(this);
    }

    @Override // com.google.android.material.circularreveal.Cif.Cdo
    /* renamed from: break */
    public final void mo5765break(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: case */
    public final int mo5766case() {
        return this.f10882do.m5779if();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Cif cif = this.f10882do;
        if (cif != null) {
            cif.m5776do(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: else */
    public final void mo5767else() {
        this.f10882do.getClass();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: for */
    public final void mo5768for(int i) {
        this.f10882do.m5775case(i);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: goto */
    public final void mo5769goto(Cfor.Cnew cnew) {
        this.f10882do.m5777else(cnew);
    }

    @Override // com.google.android.material.circularreveal.Cif.Cdo
    /* renamed from: if */
    public final boolean mo5770if() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public final boolean isOpaque() {
        Cif cif = this.f10882do;
        return cif != null ? cif.m5780new() : super.isOpaque();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: new */
    public final Cfor.Cnew mo5771new() {
        return this.f10882do.m5778for();
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: this */
    public final void mo5772this(Drawable drawable) {
        this.f10882do.m5781try(drawable);
    }

    @Override // com.google.android.material.circularreveal.Cfor
    /* renamed from: try */
    public final void mo5773try() {
        this.f10882do.getClass();
    }
}
