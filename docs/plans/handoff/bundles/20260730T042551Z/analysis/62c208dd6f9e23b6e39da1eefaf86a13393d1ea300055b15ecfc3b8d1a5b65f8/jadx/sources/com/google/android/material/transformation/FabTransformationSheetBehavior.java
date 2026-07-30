package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.transformation.FabTransformationBehavior;
import com.joeykrim.rootcheck.R;
import defpackage.C0156Ct;
import defpackage.C0315Kc;
import defpackage.C3385nL;
import defpackage.QK;
import java.util.HashMap;
import java.util.WeakHashMap;

@Deprecated
/* loaded from: classes3.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: do, reason: not valid java name */
    public HashMap f11793do;

    public FabTransformationSheetBehavior() {
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    /* renamed from: abstract */
    public final FabTransformationBehavior.Cif mo6029abstract(Context context, boolean z) {
        int i = z ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        FabTransformationBehavior.Cif cif = new FabTransformationBehavior.Cif();
        cif.f11787do = C0156Ct.m310if(context, i);
        cif.f11788do = new C0315Kc();
        return cif;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: switch */
    public final void mo6025switch(View view, View view2, boolean z, boolean z2) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                this.f11793do = new HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.Ctry) && (((CoordinatorLayout.Ctry) childAt.getLayoutParams()).f6472do instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (z) {
                        this.f11793do.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                        childAt.setImportantForAccessibility(4);
                    } else {
                        HashMap hashMap = this.f11793do;
                        if (hashMap != null && hashMap.containsKey(childAt)) {
                            int intValue = ((Integer) this.f11793do.get(childAt)).intValue();
                            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
                            childAt.setImportantForAccessibility(intValue);
                        }
                    }
                }
            }
            if (!z) {
                this.f11793do = null;
            }
        }
        super.mo6025switch(view, view2, z, z2);
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
