package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import defpackage.A0;
import defpackage.C0513Td;
import defpackage.C0605Xh;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C3222kd;
import defpackage.C3421nz;
import defpackage.Cdefault;
import defpackage.Dy;
import defpackage.InterfaceC0211Fi;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC4017y5;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;

@Keep
/* loaded from: classes3.dex */
public class RemoteConfigRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-rc";

    /* JADX INFO: Access modifiers changed from: private */
    public static C3421nz lambda$getComponents$0(Dy dy, InterfaceC2911i9 interfaceC2911i9) {
        C0605Xh c0605Xh;
        Context context = (Context) interfaceC2911i9.mo2881for(Context.class);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) interfaceC2911i9.mo2883if(dy);
        C0706ai c0706ai = (C0706ai) interfaceC2911i9.mo2881for(C0706ai.class);
        InterfaceC3227ki interfaceC3227ki = (InterfaceC3227ki) interfaceC2911i9.mo2881for(InterfaceC3227ki.class);
        Cdefault cdefault = (Cdefault) interfaceC2911i9.mo2881for(Cdefault.class);
        synchronized (cdefault) {
            if (!cdefault.f12519do.containsKey("frc")) {
                cdefault.f12519do.put("frc", new C0605Xh(cdefault.f12520do));
            }
            c0605Xh = (C0605Xh) cdefault.f12519do.get("frc");
        }
        return new C3421nz(context, scheduledExecutorService, c0706ai, interfaceC3227ki, c0605Xh, interfaceC2911i9.mo2884new(A0.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<?>> getComponents() {
        Dy dy = new Dy(InterfaceC4017y5.class, ScheduledExecutorService.class);
        C0793c9.Cdo cdo = new C0793c9.Cdo(C3421nz.class, new Class[]{InterfaceC0211Fi.class});
        cdo.f8506do = LIBRARY_NAME;
        cdo.m4891do(C0513Td.m2276for(Context.class));
        cdo.m4891do(new C0513Td((Dy<?>) dy, 1, 0));
        cdo.m4891do(C0513Td.m2276for(C0706ai.class));
        cdo.m4891do(C0513Td.m2276for(InterfaceC3227ki.class));
        cdo.m4891do(C0513Td.m2276for(Cdefault.class));
        cdo.m4891do(C0513Td.m2275do(A0.class));
        cdo.f8508do = new C3222kd(dy, 2);
        cdo.m4892for(2);
        return Arrays.asList(cdo.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "22.0.1"));
    }
}
