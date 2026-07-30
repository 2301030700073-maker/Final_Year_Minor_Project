package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: za, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC4103za<T> implements InterfaceC0115Ba<T> {

    /* renamed from: do, reason: not valid java name */
    public final AbstractC0137Ca<T> f16917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public T f16918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f16919do = new ArrayList();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f16920do;

    /* renamed from: za$do, reason: invalid class name */
    public interface Cdo {
    }

    public AbstractC4103za(AbstractC0137Ca<T> abstractC0137Ca) {
        this.f16917do = abstractC0137Ca;
    }

    @Override // defpackage.InterfaceC0115Ba
    /* renamed from: do */
    public final void mo190do(T t) {
        this.f16918do = t;
        m8805try(this.f16920do, t);
    }

    /* renamed from: for */
    public abstract boolean mo652for(T t);

    /* renamed from: if */
    public abstract boolean mo653if(TM tm);

    /* renamed from: new, reason: not valid java name */
    public final void m8804new(Collection collection) {
        this.f16919do.clear();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            TM tm = (TM) it.next();
            if (mo653if(tm)) {
                this.f16919do.add(tm.f3655do);
            }
        }
        if (this.f16919do.isEmpty()) {
            this.f16917do.m274if(this);
        } else {
            AbstractC0137Ca<T> abstractC0137Ca = this.f16917do;
            synchronized (abstractC0137Ca.f391do) {
                if (abstractC0137Ca.f392do.add(this)) {
                    if (abstractC0137Ca.f392do.size() == 1) {
                        abstractC0137Ca.f393if = abstractC0137Ca.mo272do();
                        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                        int i = AbstractC0137Ca.f388do;
                        String.format("%s: initial state = %s", abstractC0137Ca.getClass().getSimpleName(), abstractC0137Ca.f393if);
                        m2869for.mo2872do(new Throwable[0]);
                        abstractC0137Ca.mo275new();
                    }
                    mo190do(abstractC0137Ca.f393if);
                }
            }
        }
        m8805try(this.f16920do, this.f16918do);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m8805try(Cdo cdo, T t) {
        if (this.f16919do.isEmpty() || cdo == null) {
            return;
        }
        if (t != null && !mo652for(t)) {
            ((C3798uM) cdo).m8386if(this.f16919do);
            return;
        }
        ArrayList arrayList = this.f16919do;
        C3798uM c3798uM = (C3798uM) cdo;
        synchronized (c3798uM.f15876do) {
            InterfaceC3739tM interfaceC3739tM = c3798uM.f15877do;
            if (interfaceC3739tM != null) {
                interfaceC3739tM.mo1458new(arrayList);
            }
        }
    }
}
