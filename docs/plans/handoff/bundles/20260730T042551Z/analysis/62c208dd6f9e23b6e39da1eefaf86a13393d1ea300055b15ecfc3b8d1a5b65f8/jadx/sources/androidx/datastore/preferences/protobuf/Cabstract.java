package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cclass;
import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cimport;
import defpackage.AbstractC3370n6;
import defpackage.BB;
import defpackage.EnumC3504pM;
import java.util.Iterator;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.abstract, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cabstract<T> implements BB<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cbreak<?> f6569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfinally f6570do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cimplements<?, ?> f6571do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f6572do;

    public Cabstract(Cimplements<?, ?> cimplements, Cbreak<?> cbreak, Cfinally cfinally) {
        this.f6571do = cimplements;
        this.f6572do = cbreak.mo3771try(cfinally);
        this.f6569do = cbreak;
        this.f6570do = cfinally;
    }

    /* renamed from: break, reason: not valid java name */
    public final <UT, UB, ET extends Cclass.Cdo<ET>> boolean m3761break(Cvolatile cvolatile, Cthis cthis, Cbreak<ET> cbreak, Cclass<ET> cclass, Cimplements<UT, UB> cimplements, UB ub) {
        int mo3799static = cvolatile.mo3799static();
        Cfinally cfinally = this.f6570do;
        if (mo3799static != 11) {
            if ((mo3799static & 7) != 2) {
                return cvolatile.mo3786goto();
            }
            Cfinal.Ctry mo3768if = cbreak.mo3768if(cthis, cfinally, mo3799static >>> 3);
            if (mo3768if == null) {
                return cimplements.m3887class(ub, cvolatile);
            }
            cbreak.mo3767goto(mo3768if);
            return true;
        }
        Cfinal.Ctry ctry = null;
        AbstractC3370n6 abstractC3370n6 = null;
        int i = 0;
        while (cvolatile.mo3782extends() != Integer.MAX_VALUE) {
            int mo3799static2 = cvolatile.mo3799static();
            if (mo3799static2 == 16) {
                i = cvolatile.mo3777const();
                ctry = cbreak.mo3768if(cthis, cfinally, i);
            } else if (mo3799static2 == 26) {
                if (ctry != null) {
                    cbreak.mo3767goto(ctry);
                } else {
                    abstractC3370n6 = cvolatile.mo3792native();
                }
            } else if (!cvolatile.mo3786goto()) {
                break;
            }
        }
        if (cvolatile.mo3799static() != 12) {
            throw new Cwhile("Protocol message end-group tag did not match expected tag.");
        }
        if (abstractC3370n6 != null) {
            if (ctry != null) {
                cbreak.mo3770this(ctry);
            } else {
                cimplements.mo3897new(ub, i, abstractC3370n6);
            }
        }
        return true;
    }

    @Override // defpackage.BB
    /* renamed from: case */
    public final boolean mo147case(T t) {
        return this.f6569do.mo3766for(t).m3824this();
    }

    @Override // defpackage.BB
    /* renamed from: do */
    public final void mo148do(T t, T t2) {
        Class<?> cls = Cinterface.f6607do;
        Cimplements<?, ?> cimplements = this.f6571do;
        cimplements.mo3898super(t, cimplements.mo3886catch(cimplements.mo3890else(t), cimplements.mo3890else(t2)));
        if (this.f6572do) {
            Cinterface.m3928package(this.f6569do, t, t2);
        }
    }

    @Override // defpackage.BB
    /* renamed from: else */
    public final void mo149else(T t) {
        this.f6571do.mo3884break(t);
        this.f6569do.mo3763case(t);
    }

    @Override // defpackage.BB
    /* renamed from: for */
    public final boolean mo150for(T t, T t2) {
        Cimplements<?, ?> cimplements = this.f6571do;
        if (!cimplements.mo3890else(t).equals(cimplements.mo3890else(t2))) {
            return false;
        }
        if (!this.f6572do) {
            return true;
        }
        Cbreak<?> cbreak = this.f6569do;
        return cbreak.mo3766for(t).equals(cbreak.mo3766for(t2));
    }

    @Override // defpackage.BB
    /* renamed from: goto */
    public final void mo151goto(T t, Cvolatile cvolatile, Cthis cthis) {
        Cimplements cimplements = this.f6571do;
        Cinstanceof mo3885case = cimplements.mo3885case(t);
        Cbreak cbreak = this.f6569do;
        Cclass<ET> mo3769new = cbreak.mo3769new(t);
        do {
            try {
                if (cvolatile.mo3782extends() == Integer.MAX_VALUE) {
                    break;
                }
            } finally {
                cimplements.mo3891final(t, mo3885case);
            }
        } while (m3761break(cvolatile, cthis, cbreak, mo3769new, cimplements, mo3885case));
    }

    @Override // defpackage.BB
    /* renamed from: if */
    public final int mo152if(T t) {
        int hashCode = this.f6571do.mo3890else(t).hashCode();
        return this.f6572do ? (hashCode * 53) + this.f6569do.mo3766for(t).hashCode() : hashCode;
    }

    @Override // defpackage.BB
    /* renamed from: new */
    public final int mo153new(T t) {
        Ctransient<?, Object> ctransient;
        Cimplements<?, ?> cimplements = this.f6571do;
        int i = 0;
        int mo3899this = cimplements.mo3899this(cimplements.mo3890else(t)) + 0;
        if (!this.f6572do) {
            return mo3899this;
        }
        Cclass<?> mo3766for = this.f6569do.mo3766for(t);
        int i2 = 0;
        while (true) {
            ctransient = mo3766for.f6578do;
            if (i >= ctransient.m4007new()) {
                break;
            }
            i2 += Cclass.m3812case(ctransient.m4004for(i));
            i++;
        }
        Iterator<Map.Entry<?, Object>> it = ctransient.m4009try().iterator();
        while (it.hasNext()) {
            i2 += Cclass.m3812case(it.next());
        }
        return mo3899this + i2;
    }

    @Override // defpackage.BB
    /* renamed from: this */
    public final void mo154this(Object obj, Celse celse) {
        Iterator<Map.Entry<?, Object>> m3818catch = this.f6569do.mo3766for(obj).m3818catch();
        while (m3818catch.hasNext()) {
            Map.Entry<?, Object> next = m3818catch.next();
            Cclass.Cdo cdo = (Cclass.Cdo) next.getKey();
            if (cdo.mo3827else() != EnumC3504pM.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            cdo.mo3828for();
            cdo.mo3831try();
            if (next instanceof Cimport.Cdo) {
                cdo.mo3829if();
                celse.m3850class(0, ((Cimport.Cdo) next).f6597do.getValue().m3946if());
            } else {
                cdo.mo3829if();
                celse.m3850class(0, next.getValue());
            }
        }
        Cimplements<?, ?> cimplements = this.f6571do;
        cimplements.mo3895import(cimplements.mo3890else(obj), celse);
    }

    @Override // defpackage.BB
    /* renamed from: try */
    public final T mo155try() {
        return (T) this.f6570do.mo3872for().m3877goto();
    }
}
