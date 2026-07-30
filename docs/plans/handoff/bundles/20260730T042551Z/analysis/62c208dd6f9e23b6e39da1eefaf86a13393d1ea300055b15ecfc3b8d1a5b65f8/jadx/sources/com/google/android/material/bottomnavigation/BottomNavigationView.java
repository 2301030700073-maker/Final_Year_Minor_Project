package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.navigation.NavigationBarView;
import com.joeykrim.rootcheck.R;
import defpackage.AbstractC2895hu;
import defpackage.C0682aH;
import defpackage.C3738tL;
import defpackage.C3970xH;
import defpackage.I5;
import defpackage.J5;
import defpackage.O2;

/* loaded from: classes3.dex */
public class BottomNavigationView extends NavigationBarView {
    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomNavigationStyle);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    /* renamed from: do, reason: not valid java name */
    public final AbstractC2895hu mo5679do(Context context) {
        return new I5(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarView
    /* renamed from: if, reason: not valid java name */
    public final int mo5680if() {
        return 5;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        if (View.MeasureSpec.getMode(i2) != 1073741824 && suggestedMinimumHeight > 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), getPaddingBottom() + getPaddingTop() + suggestedMinimumHeight), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, R.style.Widget_Design_BottomNavigationView);
        C3970xH m3116try = C0682aH.m3116try(getContext(), attributeSet, O2.f2473case, i, R.style.Widget_Design_BottomNavigationView, new int[0]);
        boolean m8631do = m3116try.m8631do(2, true);
        I5 i5 = (I5) ((NavigationBarView) this).f11223do;
        if (i5.f1434new != m8631do) {
            i5.f1434new = m8631do;
            ((NavigationBarView) this).f11221do.mo3321new(false);
        }
        if (m3116try.m8630class(0)) {
            setMinimumHeight(m3116try.m8637new(0, 0));
        }
        m3116try.m8631do(1, true);
        m3116try.m8633final();
        C3738tL.m8285if(this, new J5());
    }
}
