package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;
import defpackage.C2785g1;
import defpackage.C3738tL;

/* renamed from: com.google.android.material.tabs.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {
    /* renamed from: do, reason: not valid java name */
    public static RectF m5964do(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.f11558if || !(view instanceof TabLayout.Celse)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        TabLayout.Celse celse = (TabLayout.Celse) view;
        View[] viewArr = {celse.f11579do, celse.f11578do, celse.f11577do};
        int i = 0;
        int i2 = 0;
        boolean z = false;
        for (int i3 = 0; i3 < 3; i3++) {
            View view2 = viewArr[i3];
            if (view2 != null && view2.getVisibility() == 0) {
                i2 = z ? Math.min(i2, view2.getLeft()) : view2.getLeft();
                i = z ? Math.max(i, view2.getRight()) : view2.getRight();
                z = true;
            }
        }
        int i4 = i - i2;
        View[] viewArr2 = {celse.f11579do, celse.f11578do, celse.f11577do};
        int i5 = 0;
        int i6 = 0;
        boolean z2 = false;
        for (int i7 = 0; i7 < 3; i7++) {
            View view3 = viewArr2[i7];
            if (view3 != null && view3.getVisibility() == 0) {
                i6 = z2 ? Math.min(i6, view3.getTop()) : view3.getTop();
                i5 = z2 ? Math.max(i5, view3.getBottom()) : view3.getBottom();
                z2 = true;
            }
        }
        int i8 = i5 - i6;
        int m8283for = (int) C3738tL.m8283for(celse.getContext(), 24);
        if (i4 < m8283for) {
            i4 = m8283for;
        }
        int right = (celse.getRight() + celse.getLeft()) / 2;
        int bottom = (celse.getBottom() + celse.getTop()) / 2;
        int i9 = i4 / 2;
        return new RectF(right - i9, bottom - (i8 / 2), i9 + right, (right / 2) + bottom);
    }

    /* renamed from: if, reason: not valid java name */
    public void mo5965if(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF m5964do = m5964do(tabLayout, view);
        RectF m5964do2 = m5964do(tabLayout, view2);
        drawable.setBounds(C2785g1.m6710if(f, (int) m5964do.left, (int) m5964do2.left), drawable.getBounds().top, C2785g1.m6710if(f, (int) m5964do.right, (int) m5964do2.right), drawable.getBounds().bottom);
    }
}
