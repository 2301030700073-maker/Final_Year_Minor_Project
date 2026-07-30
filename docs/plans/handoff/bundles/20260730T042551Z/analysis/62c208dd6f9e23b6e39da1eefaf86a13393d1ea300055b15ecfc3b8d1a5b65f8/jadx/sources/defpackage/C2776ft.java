package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: ft, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2776ft implements InterfaceC3336mV, InterfaceC3510pS, InterfaceC0598Xa, InterfaceC3597qy {

    /* renamed from: do, reason: not valid java name */
    public final Object f12995do;

    public /* synthetic */ C2776ft(Object obj) {
        this.f12995do = obj;
    }

    @Override // defpackage.InterfaceC3336mV
    /* renamed from: do */
    public final void mo403do(String str, String str2, Bundle bundle) {
        boolean isEmpty = TextUtils.isEmpty(str);
        Object obj = this.f12995do;
        if (!isEmpty) {
            ((TS) ((C3393nT) ((C4041yT) obj)).f14527do).getClass();
            throw new IllegalStateException("Unexpected call on client side");
        }
        C4041yT c4041yT = (C4041yT) obj;
        c4041yT.m8736finally("auto", str2, bundle, true, true, c4041yT.mo2257new().currentTimeMillis());
    }

    @Override // defpackage.InterfaceC3597qy
    public final Object get() {
        InterfaceC3655ry<InterfaceC3853vI> interfaceC3655ry = ((C3993xi) this.f12995do).f16595if;
        C3645ro.m8018this(interfaceC3655ry);
        return interfaceC3655ry;
    }

    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if */
    public final void mo88if(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((ZU) this.f12995do).m3030implements(str, i, th, bArr, map);
    }

    @Override // defpackage.InterfaceC0598Xa
    public final /* bridge */ /* synthetic */ Object then(FG fg) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll((Collection) this.f12995do);
        return LG.m1320try(arrayList);
    }
}
