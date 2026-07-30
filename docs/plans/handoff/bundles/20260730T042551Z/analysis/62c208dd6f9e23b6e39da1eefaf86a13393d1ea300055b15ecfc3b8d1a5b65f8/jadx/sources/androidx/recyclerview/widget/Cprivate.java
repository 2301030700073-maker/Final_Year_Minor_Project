package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.C0781bx;
import defpackage.C2680eE;
import defpackage.C3354mr;

/* renamed from: androidx.recyclerview.widget.private, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cprivate {

    /* renamed from: do, reason: not valid java name */
    public final C2680eE<RecyclerView.Cdefault, Cdo> f7667do = new C2680eE<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3354mr<RecyclerView.Cdefault> f7668do = new C3354mr<>();

    /* renamed from: androidx.recyclerview.widget.private$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final C0781bx f7669do = new C0781bx(20);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f7670do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public RecyclerView.Cthis.Cfor f7671do;

        /* renamed from: if, reason: not valid java name */
        public RecyclerView.Cthis.Cfor f7672if;

        /* renamed from: do, reason: not valid java name */
        public static Cdo m4561do() {
            Cdo cdo = (Cdo) f7669do.mo4867do();
            return cdo == null ? new Cdo() : cdo;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4557do(RecyclerView.Cdefault cdefault, RecyclerView.Cthis.Cfor cfor) {
        C2680eE<RecyclerView.Cdefault, Cdo> c2680eE = this.f7667do;
        Cdo orDefault = c2680eE.getOrDefault(cdefault, null);
        if (orDefault == null) {
            orDefault = Cdo.m4561do();
            c2680eE.put(cdefault, orDefault);
        }
        orDefault.f7672if = cfor;
        orDefault.f7670do |= 8;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4558for(RecyclerView.Cdefault cdefault) {
        Cdo orDefault = this.f7667do.getOrDefault(cdefault, null);
        if (orDefault == null) {
            return;
        }
        orDefault.f7670do &= -2;
    }

    /* renamed from: if, reason: not valid java name */
    public final RecyclerView.Cthis.Cfor m4559if(RecyclerView.Cdefault cdefault, int i) {
        Cdo m6524break;
        RecyclerView.Cthis.Cfor cfor;
        C2680eE<RecyclerView.Cdefault, Cdo> c2680eE = this.f7667do;
        int m6531try = c2680eE.m6531try(cdefault);
        if (m6531try >= 0 && (m6524break = c2680eE.m6524break(m6531try)) != null) {
            int i2 = m6524break.f7670do;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                m6524break.f7670do = i3;
                if (i == 4) {
                    cfor = m6524break.f7671do;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cfor = m6524break.f7672if;
                }
                if ((i3 & 12) == 0) {
                    c2680eE.m6530this(m6531try);
                    m6524break.f7670do = 0;
                    m6524break.f7671do = null;
                    m6524break.f7672if = null;
                    Cdo.f7669do.mo4868if(m6524break);
                }
                return cfor;
            }
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4560new(RecyclerView.Cdefault cdefault) {
        C3354mr<RecyclerView.Cdefault> c3354mr = this.f7668do;
        if (c3354mr.f14404do) {
            c3354mr.m7472new();
        }
        int i = c3354mr.f14407for - 1;
        while (true) {
            if (i < 0) {
                break;
            }
            if (cdefault == c3354mr.m7469else(i)) {
                Object[] objArr = c3354mr.f14406do;
                Object obj = objArr[i];
                Object obj2 = C3354mr.f14403do;
                if (obj != obj2) {
                    objArr[i] = obj2;
                    c3354mr.f14404do = true;
                }
            } else {
                i--;
            }
        }
        Cdo remove = this.f7667do.remove(cdefault);
        if (remove != null) {
            remove.f7670do = 0;
            remove.f7671do = null;
            remove.f7672if = null;
            Cdo.f7669do.mo4868if(remove);
        }
    }
}
