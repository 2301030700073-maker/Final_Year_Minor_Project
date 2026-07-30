package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.Constraints;
import defpackage.C0181Ea;
import defpackage.C0203Fa;
import defpackage.C2710em;
import defpackage.N4;
import defpackage.O2;

/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {

    /* renamed from: do, reason: not valid java name */
    public N4 f6232do;

    /* renamed from: new, reason: not valid java name */
    public int f6233new;

    /* renamed from: try, reason: not valid java name */
    public int f6234try;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break */
    public final void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
        this.f6232do = new N4();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 15) {
                    this.f6233new = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 14) {
                    this.f6232do.f2299new = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 16) {
                    this.f6232do.f2301switch = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
        }
        ((ConstraintHelper) this).f6237do = this.f6232do;
        m3632while();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: catch */
    public final void mo3564catch(Cdo.C0033do c0033do, C2710em c2710em, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        super.mo3564catch(c0033do, c2710em, layoutParams, sparseArray);
        if (c2710em instanceof N4) {
            N4 n4 = (N4) c2710em;
            boolean z = ((C0203Fa) ((C0181Ea) c2710em).f808do).f1067new;
            Cdo.Cif cif = c0033do.f6352do;
            m3624import(n4, cif.d, z);
            n4.f2299new = cif.f6418try;
            n4.f2301switch = cif.e;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: class */
    public final void mo3565class(C0181Ea c0181Ea, boolean z) {
        m3624import(c0181Ea, this.f6233new, z);
    }

    /* renamed from: import, reason: not valid java name */
    public final void m3624import(C0181Ea c0181Ea, int i, boolean z) {
        this.f6234try = i;
        if (z) {
            int i2 = this.f6233new;
            if (i2 == 5) {
                this.f6234try = 1;
            } else if (i2 == 6) {
                this.f6234try = 0;
            }
        } else {
            int i3 = this.f6233new;
            if (i3 == 5) {
                this.f6234try = 0;
            } else if (i3 == 6) {
                this.f6234try = 1;
            }
        }
        if (c0181Ea instanceof N4) {
            ((N4) c0181Ea).f2300static = this.f6234try;
        }
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }
}
