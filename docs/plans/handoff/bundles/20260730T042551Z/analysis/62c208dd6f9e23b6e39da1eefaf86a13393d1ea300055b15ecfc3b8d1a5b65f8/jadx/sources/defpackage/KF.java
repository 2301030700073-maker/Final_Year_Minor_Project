package defpackage;

@InterfaceC0761bd(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {419, 423}, m = "onSubscription")
/* loaded from: classes3.dex */
public final class KF extends AbstractC0620Ya {

    /* renamed from: do, reason: not valid java name */
    public LF f1778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2736fB f1779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public /* synthetic */ Object f1780do;

    /* renamed from: for, reason: not valid java name */
    public int f1781for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ LF<Object> f1782if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KF(LF<Object> lf, InterfaceC0576Wa<? super KF> interfaceC0576Wa) {
        super(interfaceC0576Wa);
        this.f1782if = lf;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        this.f1780do = obj;
        this.f1781for |= Integer.MIN_VALUE;
        return this.f1782if.m1311do(this);
    }
}
