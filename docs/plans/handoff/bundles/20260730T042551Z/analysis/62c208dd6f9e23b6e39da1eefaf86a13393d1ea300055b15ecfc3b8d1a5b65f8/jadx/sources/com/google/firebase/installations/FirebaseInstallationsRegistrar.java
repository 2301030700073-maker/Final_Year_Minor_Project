package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.C0513Td;
import defpackage.C0674a9;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C3168ji;
import defpackage.C3697sh;
import defpackage.C3850vF;
import defpackage.Dy;
import defpackage.ExecutorC3553qC;
import defpackage.G4;
import defpackage.InterfaceC0609Xl;
import defpackage.InterfaceC0631Yl;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC4017y5;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

@Keep
/* loaded from: classes3.dex */
public class FirebaseInstallationsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-installations";

    /* JADX INFO: Access modifiers changed from: private */
    public static InterfaceC3227ki lambda$getComponents$0(InterfaceC2911i9 interfaceC2911i9) {
        return new C3168ji((C0706ai) interfaceC2911i9.mo2881for(C0706ai.class), interfaceC2911i9.mo2884new(InterfaceC0631Yl.class), (ExecutorService) interfaceC2911i9.mo2883if(new Dy(G4.class, ExecutorService.class)), new ExecutorC3553qC((Executor) interfaceC2911i9.mo2883if(new Dy(InterfaceC4017y5.class, Executor.class))));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(InterfaceC3227ki.class);
        m4890if.f8506do = LIBRARY_NAME;
        m4890if.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if.m4891do(C0513Td.m2275do(InterfaceC0631Yl.class));
        m4890if.m4891do(new C0513Td((Dy<?>) new Dy(G4.class, ExecutorService.class), 1, 0));
        m4890if.m4891do(new C0513Td((Dy<?>) new Dy(InterfaceC4017y5.class, Executor.class), 1, 0));
        m4890if.f8508do = new C3697sh(1);
        C3850vF c3850vF = new C3850vF();
        C0793c9.Cdo m4890if2 = C0793c9.m4890if(InterfaceC0609Xl.class);
        m4890if2.f8510if = 1;
        m4890if2.f8508do = new C0674a9(c3850vF, 0);
        return Arrays.asList(m4890if.m4893if(), m4890if2.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "18.0.0"));
    }
}
