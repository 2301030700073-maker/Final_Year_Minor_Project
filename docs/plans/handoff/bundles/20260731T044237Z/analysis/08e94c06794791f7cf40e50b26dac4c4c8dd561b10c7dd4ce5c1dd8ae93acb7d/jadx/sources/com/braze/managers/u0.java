package com.braze.managers;

import android.app.AlarmManager;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.braze.Constants;
import com.braze.configuration.BrazeConfigurationProvider;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class u0 implements h0 {
    public final a0 A;
    public final h B;
    public final com.braze.storage.x C;
    public final com.braze.storage.p D;
    public final com.braze.requests.h E;
    public final com.braze.requests.framework.g F;

    /* renamed from: a, reason: collision with root package name */
    public final Context f137a;
    public final BrazeConfigurationProvider b;
    public final e0 c;
    public final i0 d;
    public final d0 e;
    public final boolean f;
    public final String g;
    public final String h;
    public final com.braze.storage.a0 i;
    public final com.braze.storage.h0 j;
    public final com.braze.storage.r k;
    public final com.braze.events.d l;
    public final com.braze.storage.e0 m;
    public final y n;
    public final com.braze.events.a o;
    public final com.braze.dispatch.f p;
    public final r q;
    public final z r;
    public final k0 s;
    public final com.braze.storage.z t;
    public final com.braze.storage.y u;
    public final com.braze.storage.b0 v;
    public final m w;
    public final com.braze.triggers.managers.f x;
    public final BrazeGeofenceManager y;
    public final k z;

    public u0(Context applicationContext, com.braze.configuration.e offlineUserStorageProvider, BrazeConfigurationProvider configurationProvider, com.braze.events.e externalEventPublisher, e0 deviceIdProvider, g0 registrationDataProvider, i0 pushDeliveryManager, boolean z, boolean z2, d0 deviceDataProvider, boolean z3) {
        m mVar;
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(offlineUserStorageProvider, "offlineUserStorageProvider");
        Intrinsics.checkNotNullParameter(configurationProvider, "configurationProvider");
        Intrinsics.checkNotNullParameter(externalEventPublisher, "externalEventPublisher");
        Intrinsics.checkNotNullParameter(deviceIdProvider, "deviceIdProvider");
        Intrinsics.checkNotNullParameter(registrationDataProvider, "registrationDataProvider");
        Intrinsics.checkNotNullParameter(pushDeliveryManager, "pushDeliveryManager");
        Intrinsics.checkNotNullParameter(deviceDataProvider, "deviceDataProvider");
        this.f137a = applicationContext;
        this.b = configurationProvider;
        this.c = deviceIdProvider;
        this.d = pushDeliveryManager;
        this.e = deviceDataProvider;
        this.f = z3;
        String a2 = offlineUserStorageProvider.a();
        this.g = a2;
        String str = configurationProvider.getBrazeApiKey().f162a;
        this.h = str;
        com.braze.storage.a0 a0Var = new com.braze.storage.a0(applicationContext);
        this.i = a0Var;
        com.braze.requests.util.a aVar = new com.braze.requests.util.a(applicationContext);
        com.braze.events.d dVar = new com.braze.events.d(a0Var, true);
        this.l = dVar;
        com.braze.storage.e0 e0Var = new com.braze.storage.e0(applicationContext, str, dVar);
        this.m = e0Var;
        this.n = new y(e0Var, dVar, applicationContext, a2, str);
        new s0(e0Var, dVar, applicationContext);
        com.braze.storage.s sVar = new com.braze.storage.s(new com.braze.storage.g0(applicationContext, a2, str), dVar);
        com.braze.dispatch.f fVar = new com.braze.dispatch.f(applicationContext, dVar, new com.braze.dispatch.a(applicationContext));
        this.p = fVar;
        Object systemService = applicationContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        r rVar = new r(applicationContext, sVar, dVar, externalEventPublisher, (AlarmManager) systemService, configurationProvider.getSessionTimeoutSeconds(), configurationProvider.isSessionStartBasedTimeoutEnabled());
        this.q = rVar;
        z zVar = new z(new com.braze.storage.v(new com.braze.storage.f0(applicationContext, a2, str), dVar));
        this.r = zVar;
        k0 k0Var = new k0(applicationContext, str, a2, dVar, e0Var);
        this.s = k0Var;
        this.t = new com.braze.storage.z(applicationContext, a2, str);
        n nVar = new n(applicationContext, dVar, e0Var);
        com.braze.storage.y yVar = new com.braze.storage.y(applicationContext, str, a2);
        this.u = yVar;
        com.braze.storage.b0 b0Var = new com.braze.storage.b0(applicationContext, a2, str);
        this.v = b0Var;
        m mVar2 = new m(applicationContext, a2, str, rVar, dVar, configurationProvider, e0Var, zVar, nVar, a0Var, k0Var, pushDeliveryManager, yVar);
        this.w = mVar2;
        com.braze.triggers.managers.f fVar2 = new com.braze.triggers.managers.f(applicationContext, mVar2, dVar, externalEventPublisher, configurationProvider, a2, str);
        this.x = fVar2;
        BrazeGeofenceManager brazeGeofenceManager = new BrazeGeofenceManager(applicationContext, str, mVar2, configurationProvider, e0Var, dVar);
        this.y = brazeGeofenceManager;
        k kVar = new k(applicationContext, mVar2, configurationProvider);
        this.z = kVar;
        a0 a0Var2 = new a0(applicationContext, str, a2, dVar, externalEventPublisher, e0Var, mVar2);
        this.A = a0Var2;
        h hVar = new h(applicationContext, str, a2, dVar, externalEventPublisher, e0Var, mVar2);
        this.B = hVar;
        com.braze.storage.x xVar = new com.braze.storage.x(applicationContext, a2, mVar2);
        this.C = xVar;
        com.braze.storage.p pVar = new com.braze.storage.p(applicationContext, a2, str, mVar2, Constants.BRAZE_SDK_VERSION);
        this.D = pVar;
        int i = com.braze.communication.c.f11a;
        com.braze.requests.u uVar = new com.braze.requests.u(new com.braze.communication.e(new com.braze.communication.b(com.braze.communication.c.f11a)), dVar, externalEventPublisher, xVar, e0Var, pVar, mVar2, aVar);
        this.E = new com.braze.requests.h(dVar, mVar2);
        this.F = new com.braze.requests.framework.g(new com.braze.dispatch.h(this), uVar, z, z3);
        com.braze.storage.r rVar2 = null;
        if (Intrinsics.areEqual(a2, "")) {
            mVar = mVar2;
            com.braze.storage.h0 h0Var = new com.braze.storage.h0(applicationContext, registrationDataProvider, a0Var, null, null);
            Intrinsics.checkNotNullParameter(h0Var, "<set-?>");
            this.j = h0Var;
            com.braze.storage.r rVar3 = new com.braze.storage.r(applicationContext, null, null);
            Intrinsics.checkNotNullParameter(rVar3, "<set-?>");
            this.k = rVar3;
        } else {
            mVar = mVar2;
            com.braze.storage.h0 h0Var2 = new com.braze.storage.h0(applicationContext, registrationDataProvider, a0Var, a2, str);
            Intrinsics.checkNotNullParameter(h0Var2, "<set-?>");
            this.j = h0Var2;
            com.braze.storage.r rVar4 = new com.braze.storage.r(applicationContext, a2, str);
            Intrinsics.checkNotNullParameter(rVar4, "<set-?>");
            this.k = rVar4;
        }
        synchronized (fVar) {
            fVar.l = z2;
            fVar.b();
            if (z2) {
                fVar.f();
            } else {
                fVar.c();
            }
        }
        com.braze.storage.h0 a3 = a();
        com.braze.storage.r rVar5 = this.k;
        if (rVar5 != null) {
            rVar2 = rVar5;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("deviceCache");
        }
        this.o = new com.braze.events.a(applicationContext, kVar, dVar, mVar, a3, rVar2, fVar2, fVar2.h, zVar, brazeGeofenceManager, externalEventPublisher, configurationProvider, pVar, b0Var, e0Var, a0Var2, pushDeliveryManager, hVar);
    }

    public final com.braze.storage.h0 a() {
        com.braze.storage.h0 h0Var = this.j;
        if (h0Var != null) {
            return h0Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userCache");
        return null;
    }
}
