package defpackage;

@InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1", f = "SingleProcessDataStore.kt", l = {402}, m = "invokeSuspend")
/* renamed from: uE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3790uE extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<Object>, Object> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f15867do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3641rk<Object, InterfaceC0576Wa<Object>, Object> f15868do;

    /* renamed from: new, reason: not valid java name */
    public int f15869new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3790uE(Object obj, InterfaceC0576Wa interfaceC0576Wa, InterfaceC3641rk interfaceC3641rk) {
        super(2, interfaceC0576Wa);
        this.f15868do = interfaceC3641rk;
        this.f15867do = obj;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f15869new;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            this.f15869new = 1;
            obj = this.f15868do.invoke(this.f15867do, this);
            if (obj == enumC3750tb) {
                return enumC3750tb;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C3645ro.m8017synchronized(obj);
        }
        return obj;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        return new C3790uE(this.f15867do, interfaceC0576Wa, this.f15868do);
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<Object> interfaceC0576Wa) {
        return ((C3790uE) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
