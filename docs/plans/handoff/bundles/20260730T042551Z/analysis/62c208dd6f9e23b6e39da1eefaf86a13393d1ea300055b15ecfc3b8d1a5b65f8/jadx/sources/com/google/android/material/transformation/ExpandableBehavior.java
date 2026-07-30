package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.C3385nL;
import defpackage.InterfaceC0538Ug;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

@Deprecated
/* loaded from: classes3.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: for, reason: not valid java name */
    public int f11772for;

    /* renamed from: com.google.android.material.transformation.ExpandableBehavior$do, reason: invalid class name */
    public class Cdo implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InterfaceC0538Ug f11773do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ View f11774do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ int f11776for;

        public Cdo(View view, int i, InterfaceC0538Ug interfaceC0538Ug) {
            this.f11774do = view;
            this.f11776for = i;
            this.f11773do = interfaceC0538Ug;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            View view = this.f11774do;
            view.getViewTreeObserver().removeOnPreDrawListener(this);
            ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
            if (expandableBehavior.f11772for == this.f11776for) {
                InterfaceC0538Ug interfaceC0538Ug = this.f11773do;
                expandableBehavior.mo6025switch((View) interfaceC0538Ug, view, interfaceC0538Ug.mo2458if(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f11772for = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: case */
    public abstract boolean mo3682case(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: class */
    public final boolean mo3684class(CoordinatorLayout coordinatorLayout, View view, int i) {
        InterfaceC0538Ug interfaceC0538Ug;
        int i2;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (!view.isLaidOut()) {
            ArrayList m3676public = coordinatorLayout.m3676public(view);
            int size = m3676public.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    interfaceC0538Ug = null;
                    break;
                }
                View view2 = (View) m3676public.get(i3);
                if (mo3682case(view, view2)) {
                    interfaceC0538Ug = (InterfaceC0538Ug) view2;
                    break;
                }
                i3++;
            }
            if (interfaceC0538Ug != null) {
                if (!interfaceC0538Ug.mo2458if() ? this.f11772for != 1 : !((i2 = this.f11772for) == 0 || i2 == 2)) {
                    int i4 = interfaceC0538Ug.mo2458if() ? 1 : 2;
                    this.f11772for = i4;
                    view.getViewTreeObserver().addOnPreDrawListener(new Cdo(view, i4, interfaceC0538Ug));
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: goto */
    public final boolean mo3689goto(CoordinatorLayout coordinatorLayout, View view, View view2) {
        int i;
        InterfaceC0538Ug interfaceC0538Ug = (InterfaceC0538Ug) view2;
        if (!(!interfaceC0538Ug.mo2458if() ? this.f11772for != 1 : !((i = this.f11772for) == 0 || i == 2))) {
            return false;
        }
        this.f11772for = interfaceC0538Ug.mo2458if() ? 1 : 2;
        mo6025switch((View) interfaceC0538Ug, view, interfaceC0538Ug.mo2458if(), true);
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public abstract void mo6025switch(View view, View view2, boolean z, boolean z2);

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11772for = 0;
    }
}
