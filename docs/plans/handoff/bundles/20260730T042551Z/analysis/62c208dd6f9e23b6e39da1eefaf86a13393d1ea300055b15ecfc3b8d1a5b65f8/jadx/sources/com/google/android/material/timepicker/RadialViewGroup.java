package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0716as;
import defpackage.C3244kz;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.O2;
import defpackage.QK;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
class RadialViewGroup extends ConstraintLayout {

    /* renamed from: break, reason: not valid java name */
    public int f11759break;

    /* renamed from: do, reason: not valid java name */
    public C0716as f11760do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f11761do;

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            Cdo cdo = this.f11761do;
            handler.removeCallbacks(cdo);
            handler.post(cdo);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        mo6021throw();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            Cdo cdo = this.f11761do;
            handler.removeCallbacks(cdo);
            handler.post(cdo);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i) {
        this.f11760do.m4778super(ColorStateList.valueOf(i));
    }

    /* renamed from: throw */
    public void mo6021throw() {
        Cdo cdo = new Cdo();
        cdo.m3652new(this);
        HashMap hashMap = new HashMap();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int i2 = (Integer) childAt.getTag(R.id.material_clock_level);
                if (i2 == null) {
                    i2 = 1;
                }
                if (!hashMap.containsKey(i2)) {
                    hashMap.put(i2, new ArrayList());
                }
                ((List) hashMap.get(i2)).add(childAt);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            List list = (List) entry.getValue();
            int round = ((Integer) entry.getKey()).intValue() == 2 ? Math.round(this.f11759break * 0.66f) : this.f11759break;
            Iterator it = list.iterator();
            float f = 0.0f;
            while (it.hasNext()) {
                Cdo.Cif cif = cdo.m3648else(((View) it.next()).getId()).f6352do;
                cif.f6395import = R.id.circle_center;
                cif.f6398native = round;
                cif.f6399new = f;
                f += 360.0f / list.size();
            }
        }
        cdo.m3651if(this);
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.material.timepicker.do] */
    public RadialViewGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        C0716as c0716as = new C0716as();
        this.f11760do = c0716as;
        C3244kz c3244kz = new C3244kz(0.5f);
        C3554qD c3554qD = c0716as.f8253do.f8278do;
        c3554qD.getClass();
        C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
        cdo.f15070do = c3244kz;
        cdo.f15076if = c3244kz;
        cdo.f15073for = c3244kz;
        cdo.f15079new = c3244kz;
        c0716as.mo4768do(new C3554qD(cdo));
        this.f11760do.m4778super(ColorStateList.valueOf(-1));
        C0716as c0716as2 = this.f11760do;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setBackground(c0716as2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.d, i, 0);
        this.f11759break = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f11761do = new Runnable() { // from class: com.google.android.material.timepicker.do
            @Override // java.lang.Runnable
            public final void run() {
                RadialViewGroup.this.mo6021throw();
            }
        };
        obtainStyledAttributes.recycle();
    }
}
