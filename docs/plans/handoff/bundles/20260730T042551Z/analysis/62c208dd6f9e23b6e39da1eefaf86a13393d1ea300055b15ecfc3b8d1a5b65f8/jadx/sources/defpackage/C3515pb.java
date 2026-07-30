package defpackage;

import defpackage.InterfaceC3397nb;

/* renamed from: pb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3515pb {
    /* renamed from: do, reason: not valid java name */
    public static final void m7796do(InterfaceC3161jb interfaceC3161jb, Throwable th) {
        try {
            InterfaceC3397nb interfaceC3397nb = (InterfaceC3397nb) interfaceC3161jb.mo814new(InterfaceC3397nb.Cdo.f14536do);
            if (interfaceC3397nb != null) {
                interfaceC3397nb.mo1734package(interfaceC3161jb, th);
            } else {
                C0315Kc.m1175public(interfaceC3161jb, th);
            }
        } catch (Throwable th2) {
            if (th != th2) {
                RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                C3850vF.m8451for(runtimeException, th);
                th = runtimeException;
            }
            C0315Kc.m1175public(interfaceC3161jb, th);
        }
    }
}
