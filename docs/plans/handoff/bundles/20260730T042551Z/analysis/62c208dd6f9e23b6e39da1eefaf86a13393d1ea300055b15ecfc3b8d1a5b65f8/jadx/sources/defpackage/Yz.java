package defpackage;

/* loaded from: classes3.dex */
public abstract class Yz extends P4 {
    public Yz(InterfaceC0576Wa<Object> interfaceC0576Wa) {
        super(interfaceC0576Wa);
        if (interfaceC0576Wa != null) {
            if (!(interfaceC0576Wa.mo2221if() == C0405Of.f2659do)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // defpackage.InterfaceC0576Wa
    /* renamed from: if */
    public final InterfaceC3161jb mo2221if() {
        return C0405Of.f2659do;
    }
}
