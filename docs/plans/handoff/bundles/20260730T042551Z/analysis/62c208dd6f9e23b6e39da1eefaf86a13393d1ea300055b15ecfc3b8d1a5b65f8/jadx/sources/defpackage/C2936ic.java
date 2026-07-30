package defpackage;

import defpackage.C3162jc;

/* renamed from: ic, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2936ic extends AbstractC0459Qp implements InterfaceC0768bk<String> {

    /* renamed from: do, reason: not valid java name */
    public static final C2936ic f13527do = new C2936ic();

    public C2936ic() {
        super(0);
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final String mo585new() {
        StringBuilder sb = new StringBuilder("Must not be called on a main thread, was called on ");
        C3162jc.f13733do.getClass();
        sb.append(C3162jc.Cdo.m7145if());
        sb.append('.');
        return sb.toString();
    }
}
