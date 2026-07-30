package defpackage;

import defpackage.C3201kE;

@InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore$data$1", f = "SingleProcessDataStore.kt", l = {117}, m = "invokeSuspend")
/* renamed from: oE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3437oE extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC0650Zi<Object>, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public /* synthetic */ Object f14710do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C3201kE<Object> f14711do;

    /* renamed from: new, reason: not valid java name */
    public int f14712new;

    @InterfaceC0761bd(c = "androidx.datastore.core.SingleProcessDataStore$data$1$1", f = "SingleProcessDataStore.kt", l = {}, m = "invokeSuspend")
    /* renamed from: oE$do, reason: invalid class name */
    public static final class Cdo extends AbstractC2800gG implements InterfaceC3641rk<AbstractC0799cF<Object>, InterfaceC0576Wa<? super Boolean>, Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ AbstractC0799cF<Object> f14713do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public /* synthetic */ Object f14714do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(AbstractC0799cF<Object> abstractC0799cF, InterfaceC0576Wa<? super Cdo> interfaceC0576Wa) {
            super(2, interfaceC0576Wa);
            this.f14713do = abstractC0799cF;
        }

        @Override // defpackage.P4
        /* renamed from: class */
        public final Object mo358class(Object obj) {
            C3645ro.m8017synchronized(obj);
            AbstractC0799cF<Object> abstractC0799cF = (AbstractC0799cF) this.f14714do;
            AbstractC0799cF<Object> abstractC0799cF2 = this.f14713do;
            boolean z = false;
            if (!(abstractC0799cF2 instanceof C0249Hc) && !(abstractC0799cF2 instanceof C0561Vh) && abstractC0799cF == abstractC0799cF2) {
                z = true;
            }
            return Boolean.valueOf(z);
        }

        @Override // defpackage.P4
        /* renamed from: do */
        public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
            Cdo cdo = new Cdo(this.f14713do, interfaceC0576Wa);
            cdo.f14714do = obj;
            return cdo;
        }

        @Override // defpackage.InterfaceC3641rk
        public final Object invoke(AbstractC0799cF<Object> abstractC0799cF, InterfaceC0576Wa<? super Boolean> interfaceC0576Wa) {
            return ((Cdo) mo359do(abstractC0799cF, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3437oE(C3201kE<Object> c3201kE, InterfaceC0576Wa<? super C3437oE> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f14711do = c3201kE;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f14712new;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            InterfaceC0650Zi interfaceC0650Zi = (InterfaceC0650Zi) this.f14710do;
            C3201kE<Object> c3201kE = this.f14711do;
            AbstractC0799cF abstractC0799cF = (AbstractC0799cF) c3201kE.f13889do.m6445new();
            if (!(abstractC0799cF instanceof C0249Hc)) {
                c3201kE.f13888do.m6444do(new C3201kE.Cdo.C0087do(abstractC0799cF));
            }
            Cdo cdo = new Cdo(abstractC0799cF, null);
            this.f14712new = 1;
            if (interfaceC0650Zi instanceof C3204kH) {
                ((C3204kH) interfaceC0650Zi).getClass();
                throw null;
            }
            Object mo2945do = c3201kE.f13889do.mo2945do(new C2649dj(new C2606cz(), new C3496pE(interfaceC0650Zi), cdo), this);
            if (mo2945do != enumC3750tb) {
                mo2945do = C3206kJ.f13965do;
            }
            if (mo2945do != enumC3750tb) {
                mo2945do = C3206kJ.f13965do;
            }
            if (mo2945do != enumC3750tb) {
                mo2945do = C3206kJ.f13965do;
            }
            if (mo2945do == enumC3750tb) {
                return enumC3750tb;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C3645ro.m8017synchronized(obj);
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        C3437oE c3437oE = new C3437oE(this.f14711do, interfaceC0576Wa);
        c3437oE.f14710do = obj;
        return c3437oE;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC0650Zi<Object> interfaceC0650Zi, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C3437oE) mo359do(interfaceC0650Zi, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
