package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: fV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2756fV implements InterfaceC3510pS {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ZU f12947do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f12948do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List f12949do;

    public C2756fV(ZU zu, String str, ArrayList arrayList) {
        this.f12948do = str;
        this.f12949do = arrayList;
        this.f12947do = zu;
    }

    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if */
    public final void mo88if(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f12947do.m3027finally(true, i, th, bArr, this.f12948do, this.f12949do);
    }
}
