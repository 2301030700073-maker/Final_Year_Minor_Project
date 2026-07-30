package com.google.firebase.perf;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.perf.FirebasePerfRegistrar;
import defpackage.AbstractC0680aF;
import defpackage.C0174Dp;
import defpackage.C0339Le;
import defpackage.C0481Rp;
import defpackage.C0513Td;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C2776ft;
import defpackage.C3393nT;
import defpackage.C3400ne;
import defpackage.C3421nz;
import defpackage.C3576qd;
import defpackage.C3581qi;
import defpackage.C3875vi;
import defpackage.C3993xi;
import defpackage.C4052yi;
import defpackage.C4082zB;
import defpackage.Dy;
import defpackage.GP;
import defpackage.InterfaceC0803cJ;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC3314m9;
import defpackage.InterfaceC3853vI;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;

@Keep
/* loaded from: classes3.dex */
public class FirebasePerfRegistrar implements ComponentRegistrar {
    private static final String EARLY_LIBRARY_NAME = "fire-perf-early";
    private static final String LIBRARY_NAME = "fire-perf";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ C3581qi lambda$getComponents$0(Dy dy, InterfaceC2911i9 interfaceC2911i9) {
        return new C3581qi((C0706ai) interfaceC2911i9.mo2881for(C0706ai.class), (AbstractC0680aF) interfaceC2911i9.mo2884new(AbstractC0680aF.class).get(), (Executor) interfaceC2911i9.mo2883if(dy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [Le] */
    public static C3875vi providesFirebasePerformance(InterfaceC2911i9 interfaceC2911i9) {
        interfaceC2911i9.mo2881for(C3581qi.class);
        C3993xi c3993xi = new C3993xi((C0706ai) interfaceC2911i9.mo2881for(C0706ai.class), (InterfaceC3227ki) interfaceC2911i9.mo2881for(InterfaceC3227ki.class), interfaceC2911i9.mo2884new(C3421nz.class), interfaceC2911i9.mo2884new(InterfaceC3853vI.class));
        C4052yi c4052yi = new C4052yi(new C3576qd(c3993xi, 4), new C0174Dp(c3993xi, 6), new GP(c3993xi), new C2776ft(c3993xi), new C0481Rp(c3993xi), new C3393nT(c3993xi), new C4082zB(c3993xi, 3));
        Object obj = C0339Le.f1971if;
        if (!(c4052yi instanceof C0339Le)) {
            c4052yi = new C0339Le(c4052yi);
        }
        return (C3875vi) c4052yi.get();
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<C0793c9<?>> getComponents() {
        final Dy dy = new Dy(InterfaceC0803cJ.class, Executor.class);
        C0793c9.Cdo m4890if = C0793c9.m4890if(C3875vi.class);
        m4890if.f8506do = LIBRARY_NAME;
        m4890if.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if.m4891do(new C0513Td(1, 1, C3421nz.class));
        m4890if.m4891do(C0513Td.m2276for(InterfaceC3227ki.class));
        m4890if.m4891do(new C0513Td(1, 1, InterfaceC3853vI.class));
        m4890if.m4891do(C0513Td.m2276for(C3581qi.class));
        m4890if.f8508do = new C3400ne(1);
        C0793c9.Cdo m4890if2 = C0793c9.m4890if(C3581qi.class);
        m4890if2.f8506do = EARLY_LIBRARY_NAME;
        m4890if2.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if2.m4891do(C0513Td.m2275do(AbstractC0680aF.class));
        m4890if2.m4891do(new C0513Td((Dy<?>) dy, 1, 0));
        m4890if2.m4892for(2);
        m4890if2.f8508do = new InterfaceC3314m9() { // from class: ti
            @Override // defpackage.InterfaceC3314m9
            /* renamed from: try */
            public final Object mo1186try(Xz xz) {
                C3581qi lambda$getComponents$0;
                lambda$getComponents$0 = FirebasePerfRegistrar.lambda$getComponents$0(Dy.this, xz);
                return lambda$getComponents$0;
            }
        };
        return Arrays.asList(m4890if.m4893if(), m4890if2.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "21.0.2"));
    }
}
