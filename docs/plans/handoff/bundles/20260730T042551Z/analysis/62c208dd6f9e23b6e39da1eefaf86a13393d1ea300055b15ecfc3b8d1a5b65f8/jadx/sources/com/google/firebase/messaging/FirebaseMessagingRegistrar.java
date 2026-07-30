package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.C0513Td;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C3222kd;
import defpackage.Dy;
import defpackage.FJ;
import defpackage.InterfaceC0653Zl;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC3345mi;
import defpackage.InterfaceC3676sI;
import defpackage.InterfaceC3853vI;
import defpackage.MF;
import java.util.Arrays;
import java.util.List;

@Keep
@KeepForSdk
/* loaded from: classes3.dex */
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-fcm";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseMessaging lambda$getComponents$0(Dy dy, InterfaceC2911i9 interfaceC2911i9) {
        return new FirebaseMessaging((C0706ai) interfaceC2911i9.mo2881for(C0706ai.class), (InterfaceC3345mi) interfaceC2911i9.mo2881for(InterfaceC3345mi.class), interfaceC2911i9.mo2884new(FJ.class), interfaceC2911i9.mo2884new(InterfaceC0653Zl.class), (InterfaceC3227ki) interfaceC2911i9.mo2881for(InterfaceC3227ki.class), interfaceC2911i9.mo2878case(dy), (MF) interfaceC2911i9.mo2881for(MF.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<C0793c9<?>> getComponents() {
        Dy dy = new Dy(InterfaceC3676sI.class, InterfaceC3853vI.class);
        C0793c9.Cdo m4890if = C0793c9.m4890if(FirebaseMessaging.class);
        m4890if.f8506do = LIBRARY_NAME;
        m4890if.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if.m4891do(new C0513Td(0, 0, InterfaceC3345mi.class));
        m4890if.m4891do(C0513Td.m2275do(FJ.class));
        m4890if.m4891do(C0513Td.m2275do(InterfaceC0653Zl.class));
        m4890if.m4891do(C0513Td.m2276for(InterfaceC3227ki.class));
        m4890if.m4891do(new C0513Td((Dy<?>) dy, 0, 1));
        m4890if.m4891do(C0513Td.m2276for(MF.class));
        m4890if.f8508do = new C3222kd(dy, 1);
        m4890if.m4892for(1);
        return Arrays.asList(m4890if.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "24.1.0"));
    }
}
