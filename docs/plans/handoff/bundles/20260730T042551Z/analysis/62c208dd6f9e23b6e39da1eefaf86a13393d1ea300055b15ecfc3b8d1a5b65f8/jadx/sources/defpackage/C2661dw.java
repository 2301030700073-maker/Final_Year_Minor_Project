package defpackage;

import defpackage.InterfaceC2603cw;

/* renamed from: dw, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2661dw implements InterfaceC2603cw {

    /* renamed from: do, reason: not valid java name */
    public final C0419Ot<InterfaceC2603cw.Cdo> f12556do = new C0419Ot<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final UC<InterfaceC2603cw.Cdo.Cfor> f12557do = new UC<>();

    public C2661dw() {
        m6478do(InterfaceC2603cw.f12406do);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6478do(InterfaceC2603cw.Cdo cdo) {
        this.f12556do.m1686this(cdo);
        boolean z = cdo instanceof InterfaceC2603cw.Cdo.Cfor;
        UC<InterfaceC2603cw.Cdo.Cfor> uc = this.f12557do;
        if (z) {
            uc.m2365goto((InterfaceC2603cw.Cdo.Cfor) cdo);
        } else if (cdo instanceof InterfaceC2603cw.Cdo.C0083do) {
            uc.m2366this(((InterfaceC2603cw.Cdo.C0083do) cdo).f12407do);
        }
    }
}
