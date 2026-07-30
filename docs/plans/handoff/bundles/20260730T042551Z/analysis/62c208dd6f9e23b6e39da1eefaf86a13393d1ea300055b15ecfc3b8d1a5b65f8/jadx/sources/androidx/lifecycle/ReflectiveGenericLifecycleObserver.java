package androidx.lifecycle;

import androidx.lifecycle.Cdo;
import androidx.lifecycle.Ctry;
import defpackage.InterfaceC2714eq;
import java.util.HashMap;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements Celse {

    /* renamed from: do, reason: not valid java name */
    public final Cdo.C0038do f7082do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f7083do;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f7083do = obj;
        this.f7082do = Cdo.f7108do.m4254if(obj.getClass());
    }

    @Override // androidx.lifecycle.Celse
    /* renamed from: case */
    public final void mo3192case(InterfaceC2714eq interfaceC2714eq, Ctry.Cdo cdo) {
        HashMap hashMap = this.f7082do.f7111do;
        List list = (List) hashMap.get(cdo);
        Object obj = this.f7083do;
        Cdo.C0038do.m4255do(list, interfaceC2714eq, cdo, obj);
        Cdo.C0038do.m4255do((List) hashMap.get(Ctry.Cdo.ON_ANY), interfaceC2714eq, cdo, obj);
    }
}
