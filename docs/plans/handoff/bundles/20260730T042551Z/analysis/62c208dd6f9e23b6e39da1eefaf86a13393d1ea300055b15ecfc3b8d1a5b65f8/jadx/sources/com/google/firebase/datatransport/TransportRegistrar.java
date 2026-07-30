package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.BI;
import defpackage.C0513Td;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C3400ne;
import defpackage.C3459oe;
import defpackage.C3547q6;
import defpackage.C3697sh;
import defpackage.Dy;
import defpackage.InterfaceC0613Xp;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3676sI;
import defpackage.InterfaceC3853vI;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes3.dex */
public class TransportRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-transport";

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3853vI lambda$getComponents$0(InterfaceC2911i9 interfaceC2911i9) {
        BI.m174if((Context) interfaceC2911i9.mo2881for(Context.class));
        return BI.m173do().m175for(C3547q6.f15040if);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3853vI lambda$getComponents$1(InterfaceC2911i9 interfaceC2911i9) {
        BI.m174if((Context) interfaceC2911i9.mo2881for(Context.class));
        return BI.m173do().m175for(C3547q6.f15040if);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ InterfaceC3853vI lambda$getComponents$2(InterfaceC2911i9 interfaceC2911i9) {
        BI.m174if((Context) interfaceC2911i9.mo2881for(Context.class));
        return BI.m173do().m175for(C3547q6.f15038do);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(InterfaceC3853vI.class);
        m4890if.f8506do = LIBRARY_NAME;
        m4890if.m4891do(C0513Td.m2276for(Context.class));
        m4890if.f8508do = new C3459oe(1);
        int i = 0;
        C0793c9.Cdo m4888do = C0793c9.m4888do(new Dy(InterfaceC0613Xp.class, InterfaceC3853vI.class));
        m4888do.m4891do(C0513Td.m2276for(Context.class));
        m4888do.f8508do = new C3400ne(i);
        C0793c9.Cdo m4888do2 = C0793c9.m4888do(new Dy(InterfaceC3676sI.class, InterfaceC3853vI.class));
        m4888do2.m4891do(C0513Td.m2276for(Context.class));
        m4888do2.f8508do = new C3697sh(i);
        return Arrays.asList(m4890if.m4893if(), m4888do.m4893if(), m4888do2.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "19.0.0"));
    }
}
