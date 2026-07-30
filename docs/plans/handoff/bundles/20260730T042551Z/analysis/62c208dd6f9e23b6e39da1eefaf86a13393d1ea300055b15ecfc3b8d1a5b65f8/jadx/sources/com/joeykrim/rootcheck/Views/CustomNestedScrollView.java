package com.joeykrim.rootcheck.Views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.core.widget.NestedScrollView;
import defpackage.C0766bi;

/* loaded from: classes3.dex */
public class CustomNestedScrollView extends NestedScrollView {
    public CustomNestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            super.onTouchEvent(motionEvent);
            return true;
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            return true;
        }
    }

    public CustomNestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
