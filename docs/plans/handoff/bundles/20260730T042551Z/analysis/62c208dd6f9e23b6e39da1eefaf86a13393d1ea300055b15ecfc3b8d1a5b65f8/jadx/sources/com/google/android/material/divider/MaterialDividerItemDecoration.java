package com.google.android.material.divider;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.joeykrim.rootcheck.R;
import defpackage.C0426Pe;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C3738tL;
import defpackage.Creturn;
import defpackage.O2;

/* loaded from: classes3.dex */
public class MaterialDividerItemDecoration extends RecyclerView.Ccatch {

    /* renamed from: do, reason: not valid java name */
    public final int f11028do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f11029do = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f11030do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f11031do;

    /* renamed from: for, reason: not valid java name */
    public int f11032for;

    /* renamed from: if, reason: not valid java name */
    public int f11033if;

    /* renamed from: new, reason: not valid java name */
    public final int f11034new;

    /* renamed from: try, reason: not valid java name */
    public final int f11035try;

    public MaterialDividerItemDecoration(Context context, AttributeSet attributeSet, int i) {
        TypedArray m3115new = C0682aH.m3115new(context, attributeSet, O2.f2511strictfp, R.attr.materialDividerStyle, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f11033if = C0659Zr.m3071if(context, m3115new, 0).getDefaultColor();
        this.f11028do = m3115new.getDimensionPixelSize(3, context.getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f11034new = m3115new.getDimensionPixelOffset(2, 0);
        this.f11035try = m3115new.getDimensionPixelOffset(1, 0);
        this.f11031do = m3115new.getBoolean(4, true);
        m3115new.recycle();
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        this.f11030do = shapeDrawable;
        int i2 = this.f11033if;
        this.f11033if = i2;
        Drawable m1779goto = C0426Pe.m1779goto(shapeDrawable);
        this.f11030do = m1779goto;
        C0426Pe.Cdo.m1785else(m1779goto, i2);
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(Creturn.m7981if("Invalid orientation: ", i, ". It should be either HORIZONTAL or VERTICAL"));
        }
        this.f11032for = i;
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m5809else(RecyclerView recyclerView, View view) {
        RecyclerView recyclerView2;
        recyclerView.getClass();
        RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(view);
        int m4352interface = (m4335implements == null || (recyclerView2 = m4335implements.f7402do) == null) ? -1 : recyclerView2.m4352interface(m4335implements);
        RecyclerView.Ctry ctry = recyclerView.f7323do;
        boolean z = ctry != null && m4352interface == ctry.mo1023for() - 1;
        if (m4352interface != -1) {
            return !z || this.f11031do;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ccatch
    /* renamed from: new */
    public final void mo4376new(Rect rect, View view, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
        if (m5809else(recyclerView, view)) {
            int i = this.f11032for;
            int i2 = this.f11028do;
            if (i == 1) {
                rect.bottom = i2;
            } else if (C3738tL.m8282else(recyclerView)) {
                rect.left = i2;
            } else {
                rect.right = i2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Ccatch
    /* renamed from: try */
    public final void mo4377try(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i;
        int i2;
        int i3;
        int width;
        int i4;
        if (recyclerView.f7312do == null) {
            return;
        }
        int i5 = this.f11032for;
        int i6 = 0;
        int i7 = this.f11028do;
        Rect rect = this.f11029do;
        int i8 = this.f11035try;
        int i9 = this.f11034new;
        if (i5 == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                i4 = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(i4, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                i4 = 0;
            }
            boolean m8282else = C3738tL.m8282else(recyclerView);
            int i10 = i4 + (m8282else ? i8 : i9);
            if (m8282else) {
                i8 = i9;
            }
            int i11 = width - i8;
            int childCount = recyclerView.getChildCount();
            while (i6 < childCount) {
                View childAt = recyclerView.getChildAt(i6);
                if (m5809else(recyclerView, childAt)) {
                    recyclerView.f7312do.mo4389finally(rect, childAt);
                    int round = Math.round(childAt.getTranslationY()) + rect.bottom;
                    this.f11030do.setBounds(i10, round - i7, i11, round);
                    this.f11030do.setAlpha(Math.round(childAt.getAlpha() * 255.0f));
                    this.f11030do.draw(canvas);
                }
                i6++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i = 0;
        }
        int i12 = i + i9;
        int i13 = height - i8;
        boolean m8282else2 = C3738tL.m8282else(recyclerView);
        int childCount2 = recyclerView.getChildCount();
        while (i6 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i6);
            if (m5809else(recyclerView, childAt2)) {
                recyclerView.f7312do.mo4389finally(rect, childAt2);
                int round2 = Math.round(childAt2.getTranslationX());
                if (m8282else2) {
                    i3 = rect.left + round2;
                    i2 = i7 + i3;
                } else {
                    i2 = round2 + rect.right;
                    i3 = i2 - i7;
                }
                this.f11030do.setBounds(i3, i12, i2, i13);
                this.f11030do.setAlpha(Math.round(childAt2.getAlpha() * 255.0f));
                this.f11030do.draw(canvas);
            }
            i6++;
        }
        canvas.restore();
    }
}
