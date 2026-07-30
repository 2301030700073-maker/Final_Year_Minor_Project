package com.google.android.material.divider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.C0659Zr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.O2;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialDivider extends View {

    /* renamed from: case, reason: not valid java name */
    public final int f11023case;

    /* renamed from: do, reason: not valid java name */
    public final C0716as f11024do;

    /* renamed from: for, reason: not valid java name */
    public final int f11025for;

    /* renamed from: new, reason: not valid java name */
    public int f11026new;

    /* renamed from: try, reason: not valid java name */
    public final int f11027try;

    public MaterialDivider(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialDividerStyle);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z = getLayoutDirection() == 1;
        int i = this.f11023case;
        int i2 = this.f11027try;
        int i3 = z ? i : i2;
        int width = z ? getWidth() - i2 : getWidth() - i;
        C0716as c0716as = this.f11024do;
        c0716as.setBounds(i3, 0, width, getBottom() - getTop());
        c0716as.draw(canvas);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int measuredHeight = getMeasuredHeight();
        if (mode == Integer.MIN_VALUE || mode == 0) {
            int i3 = this.f11025for;
            if (i3 > 0 && measuredHeight != i3) {
                measuredHeight = i3;
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
    }

    public MaterialDivider(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_MaterialDivider), attributeSet, i);
        Context context2 = getContext();
        C0716as c0716as = new C0716as();
        this.f11024do = c0716as;
        TypedArray m3115new = C0682aH.m3115new(context2, attributeSet, O2.f2511strictfp, i, R.style.Widget_MaterialComponents_MaterialDivider, new int[0]);
        this.f11025for = m3115new.getDimensionPixelSize(3, getResources().getDimensionPixelSize(R.dimen.material_divider_thickness));
        this.f11027try = m3115new.getDimensionPixelOffset(2, 0);
        this.f11023case = m3115new.getDimensionPixelOffset(1, 0);
        int defaultColor = C0659Zr.m3071if(context2, m3115new, 0).getDefaultColor();
        if (this.f11026new != defaultColor) {
            this.f11026new = defaultColor;
            c0716as.m4778super(ColorStateList.valueOf(defaultColor));
            invalidate();
        }
        m3115new.recycle();
    }
}
