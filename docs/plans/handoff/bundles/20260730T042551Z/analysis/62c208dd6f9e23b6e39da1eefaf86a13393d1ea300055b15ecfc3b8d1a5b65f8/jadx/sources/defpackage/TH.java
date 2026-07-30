package defpackage;

/* loaded from: classes.dex */
public abstract class TH {

    /* renamed from: TH$do, reason: invalid class name */
    public static final class Cdo extends TH {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC3134j6 f3641do;

        @InterfaceC0761bd(c = "androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures$Api33Ext4JavaImpl$getTopicsAsync$1", f = "TopicsManagerFutures.kt", l = {56}, m = "invokeSuspend")
        /* renamed from: TH$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0006do extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C0652Zk>, Object> {

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final /* synthetic */ C0630Yk f3643do;

            /* renamed from: new, reason: not valid java name */
            public int f3644new;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0006do(C0630Yk c0630Yk, InterfaceC0576Wa<? super C0006do> interfaceC0576Wa) {
                super(2, interfaceC0576Wa);
                this.f3643do = c0630Yk;
            }

            @Override // defpackage.P4
            /* renamed from: class */
            public final Object mo358class(Object obj) {
                EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
                int i = this.f3644new;
                if (i == 0) {
                    C3645ro.m8017synchronized(obj);
                    AbstractC3134j6 abstractC3134j6 = Cdo.this.f3641do;
                    this.f3644new = 1;
                    obj = abstractC3134j6.mo2371break(this.f3643do, this);
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
                return Cdo.this.new C0006do(this.f3643do, interfaceC0576Wa);
            }

            @Override // defpackage.InterfaceC3641rk
            public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C0652Zk> interfaceC0576Wa) {
                return ((C0006do) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
            }
        }

        public Cdo(UH uh) {
            this.f3641do = uh;
        }

        /* renamed from: do, reason: not valid java name */
        public InterfaceFutureC3942wq<C0652Zk> m2234do(C0630Yk c0630Yk) {
            C0173Do.m401try(c0630Yk, "request");
            C3752td c3752td = C0185Ee.f871do;
            return O2.m1588if(C0315Kc.m1161do(C3691sb.m8132do(C3648rr.f15331do), new C0006do(c0630Yk, null)));
        }
    }
}
