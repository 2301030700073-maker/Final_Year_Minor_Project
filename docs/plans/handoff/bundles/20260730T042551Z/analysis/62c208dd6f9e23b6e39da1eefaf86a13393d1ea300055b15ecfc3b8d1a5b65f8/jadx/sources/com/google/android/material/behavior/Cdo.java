package com.google.android.material.behavior;

import android.view.View;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.Ccase;
import defpackage.B;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: com.google.android.material.behavior.do, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements B {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ SwipeDismissBehavior f10552do;

    public Cdo(SwipeDismissBehavior swipeDismissBehavior) {
        this.f10552do = swipeDismissBehavior;
    }

    @Override // defpackage.B
    /* renamed from: case */
    public final boolean mo136case(View view) {
        SwipeDismissBehavior swipeDismissBehavior = this.f10552do;
        boolean z = false;
        if (!swipeDismissBehavior.mo5670switch(view)) {
            return false;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        boolean z2 = view.getLayoutDirection() == 1;
        int i = swipeDismissBehavior.f10543for;
        if ((i == 0 && z2) || (i == 1 && !z2)) {
            z = true;
        }
        int width = view.getWidth();
        if (z) {
            width = -width;
        }
        QK.m1849class(view, width);
        view.setAlpha(0.0f);
        SwipeDismissBehavior.Cif cif = swipeDismissBehavior.f10540do;
        if (cif != null) {
            ((Ccase) cif).m5932do(view);
        }
        return true;
    }
}
