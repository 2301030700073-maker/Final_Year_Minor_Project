package defpackage;

import defpackage.C0490Sc;
import java.util.List;

@InterfaceC0761bd(c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1", f = "DataMigrationInitializer.kt", l = {33}, m = "invokeSuspend")
/* renamed from: Pc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0424Pc extends AbstractC2800gG implements InterfaceC3641rk<InterfaceC0282In<Object>, InterfaceC0576Wa<? super C3206kJ>, Object> {

    /* renamed from: do, reason: not valid java name */
    public /* synthetic */ Object f2799do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ List<InterfaceC0402Oc<Object>> f2800do;

    /* renamed from: new, reason: not valid java name */
    public int f2801new;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C0424Pc(List<? extends InterfaceC0402Oc<Object>> list, InterfaceC0576Wa<? super C0424Pc> interfaceC0576Wa) {
        super(2, interfaceC0576Wa);
        this.f2800do = list;
    }

    @Override // defpackage.P4
    /* renamed from: class */
    public final Object mo358class(Object obj) {
        EnumC3750tb enumC3750tb = EnumC3750tb.COROUTINE_SUSPENDED;
        int i = this.f2801new;
        if (i == 0) {
            C3645ro.m8017synchronized(obj);
            InterfaceC0282In interfaceC0282In = (InterfaceC0282In) this.f2799do;
            C0490Sc.Cdo cdo = C0490Sc.f3529do;
            this.f2801new = 1;
            if (C0490Sc.Cdo.m2172do(cdo, this.f2800do, interfaceC0282In, this) == enumC3750tb) {
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
        C0424Pc c0424Pc = new C0424Pc(this.f2800do, interfaceC0576Wa);
        c0424Pc.f2799do = obj;
        return c0424Pc;
    }

    @Override // defpackage.InterfaceC3641rk
    public final Object invoke(InterfaceC0282In<Object> interfaceC0282In, InterfaceC0576Wa<? super C3206kJ> interfaceC0576Wa) {
        return ((C0424Pc) mo359do(interfaceC0282In, interfaceC0576Wa)).mo358class(C3206kJ.f13965do);
    }
}
