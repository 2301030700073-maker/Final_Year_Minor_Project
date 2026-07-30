package defpackage;

import defpackage.Cclass;

/* loaded from: classes.dex */
public final class UC<V> extends Cclass<V> {
    /* renamed from: break, reason: not valid java name */
    public final boolean m2364break(InterfaceFutureC3942wq<? extends V> interfaceFutureC3942wq) {
        Cclass.Cfor cfor;
        interfaceFutureC3942wq.getClass();
        Object obj = ((Cclass) this).f8614do;
        if (obj == null) {
            if (interfaceFutureC3942wq.isDone()) {
                if (!Cclass.f8608do.mo4931if(this, null, Cclass.m4924try(interfaceFutureC3942wq))) {
                    return false;
                }
                Cclass.m4923if(this);
            } else {
                Cclass.Ccase ccase = new Cclass.Ccase(this, interfaceFutureC3942wq);
                if (Cclass.f8608do.mo4931if(this, null, ccase)) {
                    try {
                        interfaceFutureC3942wq.addListener(ccase, EnumC3871ve.f16103do);
                    } catch (Throwable th) {
                        try {
                            cfor = new Cclass.Cfor(th);
                        } catch (Throwable unused) {
                            cfor = Cclass.Cfor.f8617do;
                        }
                        Cclass.f8608do.mo4931if(this, ccase, cfor);
                    }
                } else {
                    obj = ((Cclass) this).f8614do;
                }
            }
            return true;
        }
        if (!(obj instanceof Cclass.Cif)) {
            return false;
        }
        interfaceFutureC3942wq.cancel(((Cclass.Cif) obj).f8625do);
        return false;
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m2365goto(V v) {
        if (v == null) {
            v = (V) Cclass.f8611if;
        }
        if (!Cclass.f8608do.mo4931if(this, null, v)) {
            return false;
        }
        Cclass.m4923if(this);
        return true;
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m2366this(Throwable th) {
        th.getClass();
        if (!Cclass.f8608do.mo4931if(this, null, new Cclass.Cfor(th))) {
            return false;
        }
        Cclass.m4923if(this);
        return true;
    }
}
