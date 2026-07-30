package defpackage;

/* renamed from: Eo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0195Eo extends Yz {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f893do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk f894do;

    /* renamed from: for, reason: not valid java name */
    public int f895for;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0195Eo(Object obj, InterfaceC0576Wa interfaceC0576Wa, InterfaceC3641rk interfaceC3641rk) {
        super(interfaceC0576Wa);
        this.f894do = interfaceC3641rk;
        this.f893do = obj;
        C0173Do.m396for(interfaceC0576Wa, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        int i = this.f895for;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f895for = 2;
            C3645ro.m8017synchronized(obj);
            return obj;
        }
        this.f895for = 1;
        C3645ro.m8017synchronized(obj);
        InterfaceC3641rk interfaceC3641rk = this.f894do;
        C0173Do.m396for(interfaceC3641rk, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
        JI.m1035do(2, interfaceC3641rk);
        return interfaceC3641rk.invoke(this.f893do, this);
    }
}
