package defpackage;

/* loaded from: classes3.dex */
public final class VR implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C3922wS f4124do;

    public VR(C3922wS c3922wS) {
        this.f4124do = c3922wS;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4124do.f16347do) {
            InterfaceC0377Mv interfaceC0377Mv = this.f4124do.f16346do;
            if (interfaceC0377Mv != null) {
                interfaceC0377Mv.mo355for();
            }
        }
    }
}
