package defpackage;

import defpackage.PC;
import j$.util.Objects;
import java.util.Map;

@InterfaceC0761bd(c = "com.google.firebase.sessions.SessionLifecycleClient$ClientUpdateHandler$handleSessionUpdate$1", f = "SessionLifecycleClient.kt", l = {74}, m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class IC extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC3632rb, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f1464break;

    /* renamed from: new, reason: not valid java name */
    public int f1465new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IC(String str, InterfaceC0576Wa<? super IC> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f1464break = str;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f1465new;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            C0343Li c0343Li = C0343Li.f1980do;
            this.f1465new = 1;
            obj = c0343Li.m1342if(this);
            if (obj == enumC3750tb) {
                return enumC3750tb;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C3645ro.m8017synchronized(obj);
        }
        for (PC pc : ((Map) obj).values()) {
            pc.mo486for(new PC.Cif(this.f1464break));
            pc.mo487if();
            Objects.toString(PC.Cdo.CRASHLYTICS);
        }
        return C3206kJ.f13965do;
    }

    @Override // defpackage.P4
    /* renamed from: do */
    public final InterfaceC0576Wa<C3206kJ> mo359do(Object obj, InterfaceC0576Wa<?> interfaceC0576Wa) {
        return new IC(this.f1464break, interfaceC0576Wa);
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC3632rb interfaceC3632rb, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((IC) mo359do(interfaceC3632rb, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
