package defpackage;

/* renamed from: nx, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3419nx implements InterfaceC0512Tc<AbstractC3890vx> {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0512Tc<AbstractC3890vx> f14632do;

    @InterfaceC0761bd(c = "androidx.datastore.preferences.core.PreferenceDataStore$updateData$2", f = "PreferenceDataStoreFactory.kt", l = {85}, m = "invokeSuspend")
    /* renamed from: nx$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<AbstractC3890vx, InterfaceC0576Wa<? super AbstractC3890vx>, Object> {

        /* renamed from: do, reason: not valid java name */
        public /* synthetic */ Object f14633do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ InterfaceC3641rk<AbstractC3890vx, InterfaceC0576Wa<? super AbstractC3890vx>, Object> f14634do;

        /* renamed from: new, reason: not valid java name */
        public int f14635new;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Cdo(InterfaceC3641rk<? super AbstractC3890vx, ? super InterfaceC0576Wa<? super AbstractC3890vx>, ? extends Object> interfaceC3641rk, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f14634do = interfaceC3641rk;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
            int i = this.f14635new;
            if (i == 0) {
                C3645ro.m8017synchronized(obj);
                AbstractC3890vx abstractC3890vx = (AbstractC3890vx) this.f14633do;
                this.f14635new = 1;
                obj = this.f14634do.invoke(abstractC3890vx, this);
                if (obj == enumC3750tb) {
                    return enumC3750tb;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C3645ro.m8017synchronized(obj);
            }
            AbstractC3890vx abstractC3890vx2 = (AbstractC3890vx) obj;
            ((C0441Pt) abstractC3890vx2).f2835do.set(true);
            return abstractC3890vx2;
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            Cdo cdo = new Cdo(this.f14634do, interfaceC0576Wa);
            cdo.f14633do = obj;
            return cdo;
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(AbstractC3890vx abstractC3890vx, InterfaceC0576Wa<? super AbstractC3890vx> interfaceC0576Wa) {
            return ((Cdo) mo359do(abstractC3890vx, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    public C3419nx(C3201kE c3201kE) {
        this.f14632do = c3201kE;
    }

    @Override // defpackage.InterfaceC0512Tc
    /* renamed from: do */
    public final InterfaceC0628Yi<AbstractC3890vx> mo2273do() {
        return this.f14632do.mo2273do();
    }

    @Override // defpackage.InterfaceC0512Tc
    /* renamed from: if */
    public final Object mo2274if(InterfaceC3641rk<? super AbstractC3890vx, ? super InterfaceC0576Wa<? super AbstractC3890vx>, ? extends Object> interfaceC3641rk, InterfaceC0576Wa<? super AbstractC3890vx> interfaceC0576Wa) {
        return this.f14632do.mo2274if(new Cdo(interfaceC3641rk, null), interfaceC0576Wa);
    }
}
