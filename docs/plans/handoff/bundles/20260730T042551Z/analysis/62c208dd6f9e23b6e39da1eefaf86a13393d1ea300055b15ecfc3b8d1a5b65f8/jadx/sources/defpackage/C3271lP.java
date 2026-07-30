package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: lP, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3271lP implements InterfaceC3510pS {

    /* renamed from: do, reason: not valid java name */
    public final Object f14152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14153do;

    /* renamed from: if, reason: not valid java name */
    public final Object f14154if;

    public /* synthetic */ C3271lP(String str, String str2, byte[] bArr) {
        this.f14152do = bArr;
        this.f14153do = str;
        this.f14154if = str2;
    }

    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if */
    public final void mo88if(String str, int i, Throwable th, byte[] bArr, Map map) {
        ((ZU) this.f14154if).m3027finally(true, i, th, bArr, this.f14153do, (List) this.f14152do);
    }

    public /* synthetic */ C3271lP(ZU zu, String str, ArrayList arrayList) {
        this.f14153do = str;
        this.f14152do = arrayList;
        this.f14154if = zu;
    }
}
