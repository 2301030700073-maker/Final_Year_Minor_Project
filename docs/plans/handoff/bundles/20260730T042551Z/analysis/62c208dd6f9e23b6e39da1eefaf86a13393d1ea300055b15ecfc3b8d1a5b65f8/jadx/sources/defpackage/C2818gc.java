package defpackage;

import defpackage.C3162jc;

/* renamed from: gc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2818gc extends AbstractC0459Qp implements InterfaceC0768bk<String> {

    /* renamed from: do, reason: not valid java name */
    public static final C2818gc f13191do = new C2818gc();

    public C2818gc() {
        super(0);
    }

    @Override // defpackage.InterfaceC0768bk
    /* renamed from: new */
    public final String mo585new() {
        StringBuilder sb = new StringBuilder("Must be called on a blocking thread, was called on ");
        C3162jc.f13733do.getClass();
        sb.append(C3162jc.Cdo.m7145if());
        sb.append('.');
        return sb.toString();
    }
}
