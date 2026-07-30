package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.Cdo;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* renamed from: androidx.recyclerview.widget.switch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cswitch implements Cdo.InterfaceC0041do {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ RecyclerView f7685do;

    public Cswitch(RecyclerView recyclerView) {
        this.f7685do = recyclerView;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4572do(Cdo.Cif cif) {
        int i = cif.f7618do;
        RecyclerView recyclerView = this.f7685do;
        if (i == 1) {
            recyclerView.f7312do.q(cif.f7621if, cif.f7620for);
            return;
        }
        if (i == 2) {
            recyclerView.f7312do.t(cif.f7621if, cif.f7620for);
        } else if (i == 4) {
            recyclerView.f7312do.u(cif.f7621if, cif.f7620for);
        } else {
            if (i != 8) {
                return;
            }
            recyclerView.f7312do.s(cif.f7621if, cif.f7620for);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4573for(int i, int i2, Object obj) {
        int i3;
        int i4;
        RecyclerView recyclerView = this.f7685do;
        int m4526goto = recyclerView.f7328do.m4526goto();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < m4526goto; i6++) {
            View m4524else = recyclerView.f7328do.m4524else(i6);
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(m4524else);
            if (m4335implements != null && !m4335implements.m4418super() && (i4 = m4335implements.f7396do) >= i && i4 < i5) {
                m4335implements.m4416if(2);
                m4335implements.m4411do(obj);
                ((RecyclerView.LayoutParams) m4524else.getLayoutParams()).f7369do = true;
            }
        }
        RecyclerView.Cimport cimport = recyclerView.f7316do;
        ArrayList<RecyclerView.Cdefault> arrayList = cimport.f7421for;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                recyclerView.f7304const = true;
                return;
            }
            RecyclerView.Cdefault cdefault = arrayList.get(size);
            if (cdefault != null && (i3 = cdefault.f7396do) >= i && i3 < i5) {
                cdefault.m4416if(2);
                cimport.m4434goto(size);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final RecyclerView.Cdefault m4574if(int i) {
        RecyclerView recyclerView = this.f7685do;
        int m4526goto = recyclerView.f7328do.m4526goto();
        int i2 = 0;
        RecyclerView.Cdefault cdefault = null;
        while (true) {
            if (i2 >= m4526goto) {
                break;
            }
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(recyclerView.f7328do.m4524else(i2));
            if (m4335implements != null && !m4335implements.m4419this() && m4335implements.f7396do == i) {
                if (!recyclerView.f7328do.m4520break(m4335implements.f7398do)) {
                    cdefault = m4335implements;
                    break;
                }
                cdefault = m4335implements;
            }
            i2++;
        }
        if (cdefault == null) {
            return null;
        }
        if (!recyclerView.f7328do.m4520break(cdefault.f7398do)) {
            return cdefault;
        }
        int[] iArr = RecyclerView.f7292try;
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4575new(int i, int i2) {
        RecyclerView recyclerView = this.f7685do;
        int m4526goto = recyclerView.f7328do.m4526goto();
        for (int i3 = 0; i3 < m4526goto; i3++) {
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(recyclerView.f7328do.m4524else(i3));
            if (m4335implements != null && !m4335implements.m4418super() && m4335implements.f7396do >= i) {
                m4335implements.m4409class(i2, false);
                recyclerView.f7319do.f7443do = true;
            }
        }
        ArrayList<RecyclerView.Cdefault> arrayList = recyclerView.f7316do.f7421for;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView.Cdefault cdefault = arrayList.get(i4);
            if (cdefault != null && cdefault.f7396do >= i) {
                cdefault.m4409class(i2, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.f7302class = true;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4576try(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = this.f7685do;
        int m4526goto = recyclerView.f7328do.m4526goto();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < m4526goto; i11++) {
            RecyclerView.Cdefault m4335implements = RecyclerView.m4335implements(recyclerView.f7328do.m4524else(i11));
            if (m4335implements != null && (i9 = m4335implements.f7396do) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    m4335implements.m4409class(i2 - i, false);
                } else {
                    m4335implements.m4409class(i5, false);
                }
                recyclerView.f7319do.f7443do = true;
            }
        }
        RecyclerView.Cimport cimport = recyclerView.f7316do;
        cimport.getClass();
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        ArrayList<RecyclerView.Cdefault> arrayList = cimport.f7421for;
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.Cdefault cdefault = arrayList.get(i12);
            if (cdefault != null && (i8 = cdefault.f7396do) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    cdefault.m4409class(i2 - i, false);
                } else {
                    cdefault.m4409class(i10, false);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.f7302class = true;
    }
}
