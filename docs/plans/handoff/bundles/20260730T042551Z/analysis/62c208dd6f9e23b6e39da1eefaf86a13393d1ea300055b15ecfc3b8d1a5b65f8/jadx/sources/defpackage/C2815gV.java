package defpackage;

import java.util.List;
import java.util.Map;

/* renamed from: gV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2815gV implements InterfaceC3510pS {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ ZU f13187do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C2874hV f13188do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String f13189do;

    public C2815gV(ZU zu, String str, C2874hV c2874hV) {
        this.f13189do = str;
        this.f13188do = c2874hV;
        this.f13187do = zu;
    }

    @Override // defpackage.InterfaceC3510pS
    /* renamed from: if */
    public final void mo88if(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f13187do.m3039return(this.f13189do, i, th, bArr, this.f13188do);
    }
}
