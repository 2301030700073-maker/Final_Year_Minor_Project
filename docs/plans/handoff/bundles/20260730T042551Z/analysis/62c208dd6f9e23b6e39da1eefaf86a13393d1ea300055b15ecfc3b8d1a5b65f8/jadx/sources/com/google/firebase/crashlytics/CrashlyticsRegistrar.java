package com.google.firebase.crashlytics;

import com.google.firebase.components.ComponentRegistrar;
import defpackage.A0;
import defpackage.C0343Li;
import defpackage.C0513Td;
import defpackage.C0551Ut;
import defpackage.C0674a9;
import defpackage.C0706ai;
import defpackage.C0766bi;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.Dy;
import defpackage.G4;
import defpackage.InterfaceC0211Fi;
import defpackage.InterfaceC0467Rb;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC4017y5;
import defpackage.PC;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f11874do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Dy<ExecutorService> f11875do = new Dy<>(G4.class, ExecutorService.class);

    /* renamed from: if, reason: not valid java name */
    public final Dy<ExecutorService> f11876if = new Dy<>(InterfaceC4017y5.class, ExecutorService.class);

    static {
        PC.Cdo cdo = PC.Cdo.CRASHLYTICS;
        Map<PC.Cdo, C0343Li.Cdo> map = C0343Li.f1981do;
        if (map.containsKey(cdo)) {
            cdo.toString();
        } else {
            map.put(cdo, new C0343Li.Cdo(new C0551Ut(true)));
            cdo.toString();
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<C0793c9<?>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(C0766bi.class);
        m4890if.f8506do = "fire-cls";
        m4890if.m4891do(C0513Td.m2276for(C0706ai.class));
        m4890if.m4891do(C0513Td.m2276for(InterfaceC3227ki.class));
        m4890if.m4891do(C0513Td.m2277if(this.f11875do));
        m4890if.m4891do(C0513Td.m2277if(this.f11876if));
        m4890if.m4891do(new C0513Td(0, 2, InterfaceC0467Rb.class));
        m4890if.m4891do(new C0513Td(0, 2, A0.class));
        m4890if.m4891do(new C0513Td(0, 2, InterfaceC0211Fi.class));
        m4890if.f8508do = new C0674a9(this, 1);
        m4890if.m4892for(2);
        return Arrays.asList(m4890if.m4893if(), C0774bq.m4863do("fire-cls", "19.2.1"));
    }
}
