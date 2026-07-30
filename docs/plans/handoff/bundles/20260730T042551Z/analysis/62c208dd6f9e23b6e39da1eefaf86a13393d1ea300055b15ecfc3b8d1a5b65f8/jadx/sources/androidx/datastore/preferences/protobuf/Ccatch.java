package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Cfinal;
import androidx.datastore.preferences.protobuf.Cthis;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.catch, reason: invalid class name */
/* loaded from: classes.dex */
public final class Ccatch extends Cbreak<Cfinal.Cnew> {
    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: break */
    public final void mo3762break(Map.Entry entry) {
        ((Cfinal.Cnew) entry.getKey()).getClass();
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: case */
    public final void mo3763case(Object obj) {
        Cclass<Cfinal.Cnew> cclass = ((Cfinal.Cfor) obj).extensions;
        if (cclass.f6579do) {
            return;
        }
        cclass.f6578do.mo3982else();
        cclass.f6579do = true;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: do */
    public final void mo3764do(Map.Entry entry) {
        ((Cfinal.Cnew) entry.getKey()).getClass();
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: else */
    public final Object mo3765else(Object obj) {
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: for */
    public final Cclass<Cfinal.Cnew> mo3766for(Object obj) {
        return ((Cfinal.Cfor) obj).extensions;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: goto */
    public final void mo3767goto(Object obj) {
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: if */
    public final Cfinal.Ctry mo3768if(Cthis cthis, Cfinally cfinally, int i) {
        cthis.getClass();
        return cthis.f6652do.get(new Cthis.Cdo(cfinally, i));
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: new */
    public final Cclass<Cfinal.Cnew> mo3769new(Object obj) {
        Cfinal.Cfor cfor = (Cfinal.Cfor) obj;
        Cclass<Cfinal.Cnew> cclass = cfor.extensions;
        if (cclass.f6579do) {
            cfor.extensions = cclass.clone();
        }
        return cfor.extensions;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: this */
    public final void mo3770this(Object obj) {
        throw null;
    }

    @Override // androidx.datastore.preferences.protobuf.Cbreak
    /* renamed from: try */
    public final boolean mo3771try(Cfinally cfinally) {
        return cfinally instanceof Cfinal.Cfor;
    }
}
