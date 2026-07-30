package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.recyclerview.widget.Cconst;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.QK;
import defpackage.V1;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: break, reason: not valid java name */
    public int f7235break;

    /* renamed from: catch, reason: not valid java name */
    public boolean f7236catch;

    /* renamed from: do, reason: not valid java name */
    public final Rect f7237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SparseIntArray f7238do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f7239do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View[] f7240do;

    /* renamed from: if, reason: not valid java name */
    public final SparseIntArray f7241if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f7242if;

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$do, reason: invalid class name */
    public static final class Cdo extends Cif {
    }

    /* renamed from: androidx.recyclerview.widget.GridLayoutManager$if, reason: invalid class name */
    public static abstract class Cif {

        /* renamed from: do, reason: not valid java name */
        public final SparseIntArray f7245do = new SparseIntArray();

        /* renamed from: if, reason: not valid java name */
        public final SparseIntArray f7246if = new SparseIntArray();

        /* renamed from: do, reason: not valid java name */
        public static int m4313do(int i, int i2) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i3++;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = 1;
                }
            }
            return i3 + 1 > i2 ? i4 + 1 : i4;
        }

        /* renamed from: if, reason: not valid java name */
        public final void m4314if() {
            this.f7245do.clear();
        }
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f7236catch = false;
        this.f7235break = -1;
        this.f7238do = new SparseIntArray();
        this.f7241if = new SparseIntArray();
        this.f7239do = new Cdo();
        this.f7237do = new Rect();
        G0(RecyclerView.Cclass.m4381instanceof(context, attributeSet, i, i2).f7392if);
    }

    public final void A0(int i) {
        int i2;
        int[] iArr = this.f7242if;
        int i3 = this.f7235break;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.f7242if = iArr;
    }

    public final int B0(int i, int i2) {
        if (((LinearLayoutManager) this).f7248case != 1 || !o0()) {
            int[] iArr = this.f7242if;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f7242if;
        int i3 = this.f7235break;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    public final int C0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        boolean z = cstatic.f7448if;
        Cdo cdo = this.f7239do;
        if (!z) {
            int i2 = this.f7235break;
            cdo.getClass();
            return Cif.m4313do(i, i2);
        }
        int m4435if = cimport.m4435if(i);
        if (m4435if == -1) {
            return 0;
        }
        int i3 = this.f7235break;
        cdo.getClass();
        return Cif.m4313do(m4435if, i3);
    }

    public final int D0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        boolean z = cstatic.f7448if;
        Cdo cdo = this.f7239do;
        if (!z) {
            int i2 = this.f7235break;
            cdo.getClass();
            return i % i2;
        }
        int i3 = this.f7241if.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m4435if = cimport.m4435if(i);
        if (m4435if == -1) {
            return 0;
        }
        int i4 = this.f7235break;
        cdo.getClass();
        return m4435if % i4;
    }

    public final int E0(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        boolean z = cstatic.f7448if;
        Cdo cdo = this.f7239do;
        if (!z) {
            cdo.getClass();
            return 1;
        }
        int i2 = this.f7238do.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (cimport.m4435if(i) == -1) {
            return 1;
        }
        cdo.getClass();
        return 1;
    }

    public final void F0(View view, boolean z, int i) {
        int i2;
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect = ((RecyclerView.LayoutParams) layoutParams).f7367do;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int B0 = B0(layoutParams.f7243do, layoutParams.f7244if);
        if (((LinearLayoutManager) this).f7248case == 1) {
            i3 = RecyclerView.Cclass.m4378default(false, B0, i, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = RecyclerView.Cclass.m4378default(true, ((LinearLayoutManager) this).f7254do.mo4542class(), ((RecyclerView.Cclass) this).f7379for, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        } else {
            int m4378default = RecyclerView.Cclass.m4378default(false, B0, i, i4, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int m4378default2 = RecyclerView.Cclass.m4378default(true, ((LinearLayoutManager) this).f7254do.mo4542class(), ((RecyclerView.Cclass) this).f7381if, i5, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            i2 = m4378default;
            i3 = m4378default2;
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? R(view, i3, i2, layoutParams2) : P(view, i3, i2, layoutParams2)) {
            view.measure(i3, i2);
        }
    }

    public final void G0(int i) {
        if (i == this.f7235break) {
            return;
        }
        this.f7236catch = true;
        if (i < 1) {
            throw new IllegalArgumentException(V1.m2494case("Span count should be at least 1. Provided ", i));
        }
        this.f7235break = i;
        this.f7239do.m4314if();
        G();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final int H(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        H0();
        View[] viewArr = this.f7240do;
        if (viewArr == null || viewArr.length != this.f7235break) {
            this.f7240do = new View[this.f7235break];
        }
        return super.H(i, cimport, cstatic);
    }

    public final void H0() {
        int m4397volatile;
        int m4396transient;
        if (((LinearLayoutManager) this).f7248case == 1) {
            m4397volatile = ((RecyclerView.Cclass) this).f7384new - m4393protected();
            m4396transient = m4391interface();
        } else {
            m4397volatile = ((RecyclerView.Cclass) this).f7386try - m4397volatile();
            m4396transient = m4396transient();
        }
        A0(m4397volatile - m4396transient);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final int J(int i, RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        H0();
        View[] viewArr = this.f7240do;
        if (viewArr == null || viewArr.length != this.f7235break) {
            this.f7240do = new View[this.f7235break];
        }
        return super.J(i, cimport, cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void M(int i, int i2, Rect rect) {
        int m4379goto;
        int m4379goto2;
        if (this.f7242if == null) {
            super.M(i, i2, rect);
        }
        int m4393protected = m4393protected() + m4391interface();
        int m4397volatile = m4397volatile() + m4396transient();
        if (((LinearLayoutManager) this).f7248case == 1) {
            int height = rect.height() + m4397volatile;
            RecyclerView recyclerView = ((RecyclerView.Cclass) this).f7375do;
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            m4379goto2 = RecyclerView.Cclass.m4379goto(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.f7242if;
            m4379goto = RecyclerView.Cclass.m4379goto(i, iArr[iArr.length - 1] + m4393protected, ((RecyclerView.Cclass) this).f7375do.getMinimumWidth());
        } else {
            int width = rect.width() + m4393protected;
            RecyclerView recyclerView2 = ((RecyclerView.Cclass) this).f7375do;
            WeakHashMap<View, C3385nL> weakHashMap2 = QK.f2909do;
            m4379goto = RecyclerView.Cclass.m4379goto(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.f7242if;
            m4379goto2 = RecyclerView.Cclass.m4379goto(i2, iArr2[iArr2.length - 1] + m4397volatile, ((RecyclerView.Cclass) this).f7375do.getMinimumHeight());
        }
        ((RecyclerView.Cclass) this).f7375do.setMeasuredDimension(m4379goto, m4379goto2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final boolean U() {
        return ((LinearLayoutManager) this).f7250do == null && !this.f7236catch;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void W(RecyclerView.Cstatic cstatic, LinearLayoutManager.Cfor cfor, RecyclerView.Cclass.Cfor cfor2) {
        int i = this.f7235break;
        for (int i2 = 0; i2 < this.f7235break; i2++) {
            int i3 = cfor.f7275for;
            if (!(i3 >= 0 && i3 < cstatic.m4449if()) || i <= 0) {
                return;
            }
            ((Cconst.Cif) cfor2).m4498do(cfor.f7275for, Math.max(0, cfor.f7270case));
            this.f7239do.getClass();
            i--;
            cfor.f7275for += cfor.f7279new;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final int a(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (((LinearLayoutManager) this).f7248case == 0) {
            return this.f7235break;
        }
        if (cstatic.m4449if() < 1) {
            return 0;
        }
        return C0(cstatic.m4449if() - 1, cimport, cstatic) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: class, reason: not valid java name */
    public final int mo4304class(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: const, reason: not valid java name */
    public final int mo4305const(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: else, reason: not valid java name */
    public final boolean mo4306else(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: extends, reason: not valid java name */
    public final int mo4307extends(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        if (((LinearLayoutManager) this).f7248case == 1) {
            return this.f7235break;
        }
        if (cstatic.m4449if() < 1) {
            return 0;
        }
        return C0(cstatic.m4449if() - 1, cimport, cstatic) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View j0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, boolean z, boolean z2) {
        int i;
        int i2;
        int m4395throws = m4395throws();
        int i3 = 1;
        if (z2) {
            i2 = m4395throws() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = m4395throws;
            i2 = 0;
        }
        int m4449if = cstatic.m4449if();
        b0();
        int mo4541catch = ((LinearLayoutManager) this).f7254do.mo4541catch();
        int mo4544else = ((LinearLayoutManager) this).f7254do.mo4544else();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View m4394switch = m4394switch(i2);
            int m4380implements = RecyclerView.Cclass.m4380implements(m4394switch);
            if (m4380implements >= 0 && m4380implements < m4449if && D0(m4380implements, cimport, cstatic) == 0) {
                if (((RecyclerView.LayoutParams) m4394switch.getLayoutParams()).m4369for()) {
                    if (view2 == null) {
                        view2 = m4394switch;
                    }
                } else {
                    if (((LinearLayoutManager) this).f7254do.mo4552try(m4394switch) < mo4544else && ((LinearLayoutManager) this).f7254do.mo4548if(m4394switch) >= mo4541catch) {
                        return m4394switch;
                    }
                    if (view == null) {
                        view = m4394switch;
                    }
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00e1, code lost:
    
        if (r13 == (r2 > r15)) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0110, code lost:
    
        if (r13 == (r2 > r8)) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x001e, code lost:
    
        if (((androidx.recyclerview.widget.RecyclerView.Cclass) r22).f7376do.m4520break(r3) != false) goto L5;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011b  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View l(android.view.View r23, int r24, androidx.recyclerview.widget.RecyclerView.Cimport r25, androidx.recyclerview.widget.RecyclerView.Cstatic r26) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.l(android.view.View, int, androidx.recyclerview.widget.RecyclerView$import, androidx.recyclerview.widget.RecyclerView$static):android.view.View");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void n(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, C3893w c3893w) {
        super.n(cimport, cstatic, c3893w);
        c3893w.m8495break(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: native, reason: not valid java name */
    public final RecyclerView.LayoutParams mo4308native() {
        return ((LinearLayoutManager) this).f7248case == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void p(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, View view, C3893w c3893w) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            o(view, c3893w);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int C0 = C0(layoutParams2.m4368do(), cimport, cstatic);
        if (((LinearLayoutManager) this).f7248case == 0) {
            c3893w.m8497catch(C3893w.Ccase.m8509do(layoutParams2.f7243do, layoutParams2.f7244if, C0, false, false, 1));
        } else {
            c3893w.m8497catch(C3893w.Ccase.m8509do(C0, 1, layoutParams2.f7243do, false, false, layoutParams2.f7244if));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void p0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, LinearLayoutManager.Cfor cfor, LinearLayoutManager.Cif cif) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int m4391interface;
        int mo4549new;
        int m4378default;
        int i9;
        boolean z;
        View m4329if;
        int mo4539break = ((LinearLayoutManager) this).f7254do.mo4539break();
        boolean z2 = mo4539break != 1073741824;
        int i10 = m4395throws() > 0 ? this.f7242if[this.f7235break] : 0;
        if (z2) {
            H0();
        }
        boolean z3 = cfor.f7279new == 1;
        int i11 = this.f7235break;
        if (!z3) {
            i11 = D0(cfor.f7275for, cimport, cstatic) + E0(cfor.f7275for, cimport, cstatic);
        }
        int i12 = 0;
        while (i12 < this.f7235break) {
            int i13 = cfor.f7275for;
            if (!(i13 >= 0 && i13 < cstatic.m4449if()) || i11 <= 0) {
                break;
            }
            int i14 = cfor.f7275for;
            int E0 = E0(i14, cimport, cstatic);
            if (E0 > this.f7235break) {
                StringBuilder sb = new StringBuilder("Item at position ");
                sb.append(i14);
                sb.append(" requires ");
                sb.append(E0);
                sb.append(" spans but GridLayoutManager has only ");
                throw new IllegalArgumentException(V1.m2506this(sb, this.f7235break, " spans."));
            }
            i11 -= E0;
            if (i11 < 0 || (m4329if = cfor.m4329if(cimport)) == null) {
                break;
            }
            this.f7240do[i12] = m4329if;
            i12++;
        }
        if (i12 == 0) {
            cif.f7283do = true;
            return;
        }
        if (z3) {
            i = 0;
            i2 = i12;
            i3 = 0;
            i4 = 1;
        } else {
            i = i12 - 1;
            i2 = -1;
            i3 = 0;
            i4 = -1;
        }
        while (i != i2) {
            View view = this.f7240do[i];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int E02 = E0(RecyclerView.Cclass.m4380implements(view), cimport, cstatic);
            layoutParams.f7244if = E02;
            layoutParams.f7243do = i3;
            i3 += E02;
            i += i4;
        }
        float f = 0.0f;
        int i15 = 0;
        for (int i16 = 0; i16 < i12; i16++) {
            View view2 = this.f7240do[i16];
            if (cfor.f7272do != null) {
                z = false;
                if (z3) {
                    m4390if(view2, true, -1);
                } else {
                    m4390if(view2, true, 0);
                }
            } else if (z3) {
                z = false;
                m4390if(view2, false, -1);
            } else {
                z = false;
                m4390if(view2, false, 0);
            }
            m4392new(this.f7237do, view2);
            F0(view2, z, mo4539break);
            int mo4546for = ((LinearLayoutManager) this).f7254do.mo4546for(view2);
            if (mo4546for > i15) {
                i15 = mo4546for;
            }
            float mo4549new2 = (((LinearLayoutManager) this).f7254do.mo4549new(view2) * 1.0f) / ((LayoutParams) view2.getLayoutParams()).f7244if;
            if (mo4549new2 > f) {
                f = mo4549new2;
            }
        }
        if (z2) {
            A0(Math.max(Math.round(f * this.f7235break), i10));
            i15 = 0;
            for (int i17 = 0; i17 < i12; i17++) {
                View view3 = this.f7240do[i17];
                F0(view3, true, 1073741824);
                int mo4546for2 = ((LinearLayoutManager) this).f7254do.mo4546for(view3);
                if (mo4546for2 > i15) {
                    i15 = mo4546for2;
                }
            }
        }
        for (int i18 = 0; i18 < i12; i18++) {
            View view4 = this.f7240do[i18];
            if (((LinearLayoutManager) this).f7254do.mo4546for(view4) != i15) {
                LayoutParams layoutParams2 = (LayoutParams) view4.getLayoutParams();
                Rect rect = ((RecyclerView.LayoutParams) layoutParams2).f7367do;
                int i19 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                int i20 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                int B0 = B0(layoutParams2.f7243do, layoutParams2.f7244if);
                if (((LinearLayoutManager) this).f7248case == 1) {
                    i9 = RecyclerView.Cclass.m4378default(false, B0, 1073741824, i20, ((ViewGroup.MarginLayoutParams) layoutParams2).width);
                    m4378default = View.MeasureSpec.makeMeasureSpec(i15 - i19, 1073741824);
                } else {
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i15 - i20, 1073741824);
                    m4378default = RecyclerView.Cclass.m4378default(false, B0, 1073741824, i19, ((ViewGroup.MarginLayoutParams) layoutParams2).height);
                    i9 = makeMeasureSpec;
                }
                if (R(view4, i9, m4378default, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(i9, m4378default);
                }
            }
        }
        cif.f7282do = i15;
        if (((LinearLayoutManager) this).f7248case == 1) {
            if (cfor.f7281try == -1) {
                i8 = cfor.f7271do;
                i7 = i8 - i15;
            } else {
                i7 = cfor.f7271do;
                i8 = i15 + i7;
            }
            i5 = 0;
            i6 = 0;
        } else {
            if (cfor.f7281try == -1) {
                int i21 = cfor.f7271do;
                i6 = i21;
                i5 = i21 - i15;
            } else {
                int i22 = cfor.f7271do;
                i5 = i22;
                i6 = i15 + i22;
            }
            i7 = 0;
            i8 = 0;
        }
        for (int i23 = 0; i23 < i12; i23++) {
            View view5 = this.f7240do[i23];
            LayoutParams layoutParams3 = (LayoutParams) view5.getLayoutParams();
            if (((LinearLayoutManager) this).f7248case == 1) {
                if (o0()) {
                    mo4549new = m4391interface() + this.f7242if[this.f7235break - layoutParams3.f7243do];
                    m4391interface = mo4549new - ((LinearLayoutManager) this).f7254do.mo4549new(view5);
                } else {
                    m4391interface = this.f7242if[layoutParams3.f7243do] + m4391interface();
                    mo4549new = ((LinearLayoutManager) this).f7254do.mo4549new(view5) + m4391interface;
                }
                int i24 = m4391interface;
                i6 = mo4549new;
                i5 = i24;
            } else {
                int m4396transient = m4396transient() + this.f7242if[layoutParams3.f7243do];
                i7 = m4396transient;
                i8 = ((LinearLayoutManager) this).f7254do.mo4549new(view5) + m4396transient;
            }
            RecyclerView.Cclass.f(view5, i5, i7, i6, i8);
            if (layoutParams3.m4369for() || layoutParams3.m4370if()) {
                cif.f7285if = true;
            }
            cif.f7284for = view5.hasFocusable() | cif.f7284for;
        }
        Arrays.fill(this.f7240do, (Object) null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: public, reason: not valid java name */
    public final RecyclerView.LayoutParams mo4309public(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void q(int i, int i2) {
        Cdo cdo = this.f7239do;
        cdo.m4314if();
        cdo.f7246if.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void q0(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic, LinearLayoutManager.Cdo cdo, int i) {
        H0();
        if (cstatic.m4449if() > 0 && !cstatic.f7448if) {
            boolean z = i == 1;
            int D0 = D0(cdo.f7265do, cimport, cstatic);
            if (z) {
                while (D0 > 0) {
                    int i2 = cdo.f7265do;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    cdo.f7265do = i3;
                    D0 = D0(i3, cimport, cstatic);
                }
            } else {
                int m4449if = cstatic.m4449if() - 1;
                int i4 = cdo.f7265do;
                while (i4 < m4449if) {
                    int i5 = i4 + 1;
                    int D02 = D0(i5, cimport, cstatic);
                    if (D02 <= D0) {
                        break;
                    }
                    i4 = i5;
                    D0 = D02;
                }
                cdo.f7265do = i4;
            }
        }
        View[] viewArr = this.f7240do;
        if (viewArr == null || viewArr.length != this.f7235break) {
            this.f7240do = new View[this.f7235break];
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void r() {
        Cdo cdo = this.f7239do;
        cdo.m4314if();
        cdo.f7246if.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: return, reason: not valid java name */
    public final RecyclerView.LayoutParams mo4310return(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void s(int i, int i2) {
        Cdo cdo = this.f7239do;
        cdo.m4314if();
        cdo.f7246if.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: super, reason: not valid java name */
    public final int mo4311super(RecyclerView.Cstatic cstatic) {
        return Y(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void t(int i, int i2) {
        Cdo cdo = this.f7239do;
        cdo.m4314if();
        cdo.f7246if.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    /* renamed from: throw, reason: not valid java name */
    public final int mo4312throw(RecyclerView.Cstatic cstatic) {
        return Z(cstatic);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Cclass
    public final void u(int i, int i2) {
        Cdo cdo = this.f7239do;
        cdo.m4314if();
        cdo.f7246if.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final void v(RecyclerView.Cimport cimport, RecyclerView.Cstatic cstatic) {
        boolean z = cstatic.f7448if;
        SparseIntArray sparseIntArray = this.f7241if;
        SparseIntArray sparseIntArray2 = this.f7238do;
        if (z) {
            int m4395throws = m4395throws();
            for (int i = 0; i < m4395throws; i++) {
                LayoutParams layoutParams = (LayoutParams) m4394switch(i).getLayoutParams();
                int m4368do = layoutParams.m4368do();
                sparseIntArray2.put(m4368do, layoutParams.f7244if);
                sparseIntArray.put(m4368do, layoutParams.f7243do);
            }
        }
        super.v(cimport, cstatic);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.Cclass
    public final void w(RecyclerView.Cstatic cstatic) {
        super.w(cstatic);
        this.f7236catch = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void w0(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.w0(false);
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: do, reason: not valid java name */
        public int f7243do;

        /* renamed from: if, reason: not valid java name */
        public int f7244if;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7243do = -1;
            this.f7244if = 0;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f7243do = -1;
            this.f7244if = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7243do = -1;
            this.f7244if = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7243do = -1;
            this.f7244if = 0;
        }
    }

    public GridLayoutManager(int i) {
        super(1);
        this.f7236catch = false;
        this.f7235break = -1;
        this.f7238do = new SparseIntArray();
        this.f7241if = new SparseIntArray();
        this.f7239do = new Cdo();
        this.f7237do = new Rect();
        G0(i);
    }
}
