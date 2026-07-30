package com.google.firebase.sessions;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.sessions.FirebaseSessionsRegistrar;
import defpackage.AbstractC3338mb;
import defpackage.C0173Do;
import defpackage.C0299Ji;
import defpackage.C0472Rg;
import defpackage.C0513Td;
import defpackage.C0706ai;
import defpackage.C0774bq;
import defpackage.C0793c9;
import defpackage.C3400ne;
import defpackage.C3461og;
import defpackage.C3697sh;
import defpackage.C4024yC;
import defpackage.C4122zt;
import defpackage.CC;
import defpackage.Cif;
import defpackage.DC;
import defpackage.Dy;
import defpackage.G4;
import defpackage.GC;
import defpackage.InterfaceC2911i9;
import defpackage.InterfaceC3161jb;
import defpackage.InterfaceC3227ki;
import defpackage.InterfaceC3314m9;
import defpackage.InterfaceC3655ry;
import defpackage.InterfaceC3853vI;
import defpackage.InterfaceC3965xC;
import defpackage.InterfaceC4017y5;
import defpackage.LC;
import defpackage.MC;
import defpackage.O4;
import defpackage.SC;
import java.util.List;

@Keep
/* loaded from: classes3.dex */
public final class FirebaseSessionsRegistrar implements ComponentRegistrar {
    private static final String LIBRARY_NAME = "fire-sessions";
    private static final Cdo Companion = new Cdo();
    private static final Dy<C0706ai> firebaseApp = Dy.m416do(C0706ai.class);
    private static final Dy<InterfaceC3227ki> firebaseInstallationsApi = Dy.m416do(InterfaceC3227ki.class);
    private static final Dy<AbstractC3338mb> backgroundDispatcher = new Dy<>(G4.class, AbstractC3338mb.class);
    private static final Dy<AbstractC3338mb> blockingDispatcher = new Dy<>(InterfaceC4017y5.class, AbstractC3338mb.class);
    private static final Dy<InterfaceC3853vI> transportFactory = Dy.m416do(InterfaceC3853vI.class);
    private static final Dy<SC> sessionsSettings = Dy.m416do(SC.class);
    private static final Dy<LC> sessionLifecycleServiceBinder = Dy.m416do(LC.class);

    /* renamed from: com.google.firebase.sessions.FirebaseSessionsRegistrar$do, reason: invalid class name */
    public static final class Cdo {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final C0299Ji getComponents$lambda$0(InterfaceC2911i9 interfaceC2911i9) {
        Object mo2883if = interfaceC2911i9.mo2883if(firebaseApp);
        C0173Do.m399new(mo2883if, "container[firebaseApp]");
        Object mo2883if2 = interfaceC2911i9.mo2883if(sessionsSettings);
        C0173Do.m399new(mo2883if2, "container[sessionsSettings]");
        Object mo2883if3 = interfaceC2911i9.mo2883if(backgroundDispatcher);
        C0173Do.m399new(mo2883if3, "container[backgroundDispatcher]");
        Object mo2883if4 = interfaceC2911i9.mo2883if(sessionLifecycleServiceBinder);
        C0173Do.m399new(mo2883if4, "container[sessionLifecycleServiceBinder]");
        return new C0299Ji((C0706ai) mo2883if, (SC) mo2883if2, (InterfaceC3161jb) mo2883if3, (LC) mo2883if4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GC getComponents$lambda$1(InterfaceC2911i9 interfaceC2911i9) {
        return new GC(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CC getComponents$lambda$2(InterfaceC2911i9 interfaceC2911i9) {
        Object mo2883if = interfaceC2911i9.mo2883if(firebaseApp);
        C0173Do.m399new(mo2883if, "container[firebaseApp]");
        C0706ai c0706ai = (C0706ai) mo2883if;
        Object mo2883if2 = interfaceC2911i9.mo2883if(firebaseInstallationsApi);
        C0173Do.m399new(mo2883if2, "container[firebaseInstallationsApi]");
        InterfaceC3227ki interfaceC3227ki = (InterfaceC3227ki) mo2883if2;
        Object mo2883if3 = interfaceC2911i9.mo2883if(sessionsSettings);
        C0173Do.m399new(mo2883if3, "container[sessionsSettings]");
        SC sc = (SC) mo2883if3;
        InterfaceC3655ry mo2878case = interfaceC2911i9.mo2878case(transportFactory);
        C0173Do.m399new(mo2878case, "container.getProvider(transportFactory)");
        C3461og c3461og = new C3461og(mo2878case);
        Object mo2883if4 = interfaceC2911i9.mo2883if(backgroundDispatcher);
        C0173Do.m399new(mo2883if4, "container[backgroundDispatcher]");
        return new DC(c0706ai, interfaceC3227ki, sc, c3461og, (InterfaceC3161jb) mo2883if4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SC getComponents$lambda$3(InterfaceC2911i9 interfaceC2911i9) {
        Object mo2883if = interfaceC2911i9.mo2883if(firebaseApp);
        C0173Do.m399new(mo2883if, "container[firebaseApp]");
        Object mo2883if2 = interfaceC2911i9.mo2883if(blockingDispatcher);
        C0173Do.m399new(mo2883if2, "container[blockingDispatcher]");
        Object mo2883if3 = interfaceC2911i9.mo2883if(backgroundDispatcher);
        C0173Do.m399new(mo2883if3, "container[backgroundDispatcher]");
        Object mo2883if4 = interfaceC2911i9.mo2883if(firebaseInstallationsApi);
        C0173Do.m399new(mo2883if4, "container[firebaseInstallationsApi]");
        return new SC((C0706ai) mo2883if, (InterfaceC3161jb) mo2883if2, (InterfaceC3161jb) mo2883if3, (InterfaceC3227ki) mo2883if4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InterfaceC3965xC getComponents$lambda$4(InterfaceC2911i9 interfaceC2911i9) {
        C0706ai c0706ai = (C0706ai) interfaceC2911i9.mo2883if(firebaseApp);
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        C0173Do.m399new(context, "container[firebaseApp].applicationContext");
        Object mo2883if = interfaceC2911i9.mo2883if(backgroundDispatcher);
        C0173Do.m399new(mo2883if, "container[backgroundDispatcher]");
        return new C4024yC(context, (InterfaceC3161jb) mo2883if);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LC getComponents$lambda$5(InterfaceC2911i9 interfaceC2911i9) {
        Object mo2883if = interfaceC2911i9.mo2883if(firebaseApp);
        C0173Do.m399new(mo2883if, "container[firebaseApp]");
        return new MC((C0706ai) mo2883if);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<C0793c9<? extends Object>> getComponents() {
        C0793c9.Cdo m4890if = C0793c9.m4890if(C0299Ji.class);
        m4890if.f8506do = LIBRARY_NAME;
        Dy<C0706ai> dy = firebaseApp;
        m4890if.m4891do(C0513Td.m2277if(dy));
        Dy<SC> dy2 = sessionsSettings;
        m4890if.m4891do(C0513Td.m2277if(dy2));
        Dy<AbstractC3338mb> dy3 = backgroundDispatcher;
        m4890if.m4891do(C0513Td.m2277if(dy3));
        m4890if.m4891do(C0513Td.m2277if(sessionLifecycleServiceBinder));
        int i = 2;
        m4890if.f8508do = new C3400ne(i);
        m4890if.m4892for(2);
        C0793c9.Cdo m4890if2 = C0793c9.m4890if(GC.class);
        m4890if2.f8506do = "session-generator";
        m4890if2.f8508do = new C3697sh(i);
        C0793c9.Cdo m4890if3 = C0793c9.m4890if(CC.class);
        m4890if3.f8506do = "session-publisher";
        m4890if3.m4891do(new C0513Td(dy, 1, 0));
        Dy<InterfaceC3227ki> dy4 = firebaseInstallationsApi;
        m4890if3.m4891do(C0513Td.m2277if(dy4));
        m4890if3.m4891do(new C0513Td(dy2, 1, 0));
        m4890if3.m4891do(new C0513Td(transportFactory, 1, 1));
        m4890if3.m4891do(new C0513Td(dy3, 1, 0));
        m4890if3.f8508do = new C4122zt();
        C0793c9.Cdo m4890if4 = C0793c9.m4890if(SC.class);
        m4890if4.f8506do = "sessions-settings";
        m4890if4.m4891do(new C0513Td(dy, 1, 0));
        m4890if4.m4891do(C0513Td.m2277if(blockingDispatcher));
        m4890if4.m4891do(new C0513Td(dy3, 1, 0));
        m4890if4.m4891do(new C0513Td(dy4, 1, 0));
        m4890if4.f8508do = new InterfaceC3314m9() { // from class: Mi
            @Override // defpackage.InterfaceC3314m9
            /* renamed from: try */
            public final Object mo1186try(Xz xz) {
                SC components$lambda$3;
                components$lambda$3 = FirebaseSessionsRegistrar.getComponents$lambda$3(xz);
                return components$lambda$3;
            }
        };
        C0793c9.Cdo m4890if5 = C0793c9.m4890if(InterfaceC3965xC.class);
        m4890if5.f8506do = "sessions-datastore";
        m4890if5.m4891do(new C0513Td(dy, 1, 0));
        m4890if5.m4891do(new C0513Td(dy3, 1, 0));
        m4890if5.f8508do = new Cif();
        C0793c9.Cdo m4890if6 = C0793c9.m4890if(LC.class);
        m4890if6.f8506do = "sessions-service-binder";
        m4890if6.m4891do(new C0513Td(dy, 1, 0));
        m4890if6.f8508do = new C0472Rg(1);
        return O4.m1618private(m4890if.m4893if(), m4890if2.m4893if(), m4890if3.m4893if(), m4890if4.m4893if(), m4890if5.m4893if(), m4890if6.m4893if(), C0774bq.m4863do(LIBRARY_NAME, "2.0.6"));
    }
}
