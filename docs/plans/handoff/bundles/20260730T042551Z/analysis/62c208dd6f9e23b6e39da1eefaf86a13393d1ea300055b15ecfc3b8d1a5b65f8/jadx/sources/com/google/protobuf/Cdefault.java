package com.google.protobuf;

import com.google.protobuf.Cconst;
import com.google.protobuf.Cgoto;
import defpackage.AB;
import defpackage.EnumC3445oM;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.google.protobuf.default, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdefault<T> implements AB<T> {

    /* renamed from: do, reason: not valid java name */
    public final Cabstract<?, ?> f12056do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase<?> f12057do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cstatic f12058do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f12059do;

    public Cdefault(Cabstract<?, ?> cabstract, Ccase<?> ccase, Cstatic cstatic) {
        this.f12056do = cabstract;
        this.f12059do = ccase.mo6185new(cstatic);
        this.f12057do = ccase;
        this.f12058do = cstatic;
    }

    @Override // defpackage.AB
    /* renamed from: case */
    public final boolean mo47case(T t) {
        return this.f12057do.mo6184if(t).m6258this();
    }

    @Override // defpackage.AB
    /* renamed from: do */
    public final void mo48do(T t, T t2) {
        Class<?> cls = Cfinally.f12067do;
        Cabstract<?, ?> cabstract = this.f12056do;
        cabstract.mo6169case(t, cabstract.mo6176try(cabstract.mo6170do(t), cabstract.mo6170do(t2)));
        if (this.f12059do) {
            Cfinally.m6214extends(this.f12057do, t, t2);
        }
    }

    @Override // defpackage.AB
    /* renamed from: else */
    public final void mo49else(T t) {
        this.f12056do.mo6175new(t);
        this.f12057do.mo6186try(t);
    }

    @Override // defpackage.AB
    /* renamed from: for */
    public final boolean mo50for(T t, T t2) {
        Cabstract<?, ?> cabstract = this.f12056do;
        if (!cabstract.mo6170do(t).equals(cabstract.mo6170do(t2))) {
            return false;
        }
        if (!this.f12059do) {
            return true;
        }
        Ccase<?> ccase = this.f12057do;
        return ccase.mo6184if(t).equals(ccase.mo6184if(t2));
    }

    @Override // defpackage.AB
    /* renamed from: goto */
    public final void mo51goto(Object obj, Ctry ctry) {
        Iterator<Map.Entry<?, Object>> m6251catch = this.f12057do.mo6184if(obj).m6251catch();
        while (m6251catch.hasNext()) {
            Map.Entry<?, Object> next = m6251catch.next();
            Cgoto.Cdo cdo = (Cgoto.Cdo) next.getKey();
            if (cdo.mo6260catch() != EnumC3445oM.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            cdo.mo6262for();
            cdo.mo6265try();
            if (next instanceof Cconst.Cdo) {
                cdo.mo6263if();
                ctry.m6332class(0, ((Cconst.Cdo) next).f12048do.getValue().m6203if());
            } else {
                cdo.mo6263if();
                ctry.m6332class(0, next.getValue());
            }
        }
        Cabstract<?, ?> cabstract = this.f12056do;
        cabstract.mo6171else(cabstract.mo6170do(obj), ctry);
    }

    @Override // defpackage.AB
    /* renamed from: if */
    public final int mo52if(T t) {
        int hashCode = this.f12056do.mo6170do(t).hashCode();
        return this.f12059do ? (hashCode * 53) + this.f12057do.mo6184if(t).hashCode() : hashCode;
    }

    @Override // defpackage.AB
    /* renamed from: new */
    public final int mo53new(T t) {
        Cprivate<?, Object> cprivate;
        Cabstract<?, ?> cabstract = this.f12056do;
        int i = 0;
        int mo6172for = cabstract.mo6172for(cabstract.mo6170do(t)) + 0;
        if (!this.f12059do) {
            return mo6172for;
        }
        Cgoto<?> mo6184if = this.f12057do.mo6184if(t);
        int i2 = 0;
        while (true) {
            cprivate = mo6184if.f12070do;
            if (i >= cprivate.m6277new()) {
                break;
            }
            i2 += Cgoto.m6245case(cprivate.m6274for(i));
            i++;
        }
        Iterator<Map.Entry<?, Object>> it = cprivate.m6279try().iterator();
        while (it.hasNext()) {
            i2 += Cgoto.m6245case(it.next());
        }
        return mo6172for + i2;
    }

    @Override // defpackage.AB
    /* renamed from: try */
    public final T mo54try() {
        Cstatic cstatic = this.f12058do;
        return cstatic instanceof Cthis ? (T) ((Cthis) ((Cthis) cstatic).m6303switch()) : (T) cstatic.mo6286case().m6306final();
    }
}
