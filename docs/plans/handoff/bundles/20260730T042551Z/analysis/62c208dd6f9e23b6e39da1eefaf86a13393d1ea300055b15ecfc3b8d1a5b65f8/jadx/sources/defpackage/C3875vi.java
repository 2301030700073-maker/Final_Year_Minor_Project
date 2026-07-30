package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.session.SessionManager;
import j$.util.concurrent.ConcurrentHashMap;

/* renamed from: vi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3875vi {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f16110do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f16111do = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3227ki f16112do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<C3421nz> f16113do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC3655ry<InterfaceC3853vI> f16114if;

    public C3875vi(C0706ai c0706ai, InterfaceC3655ry<C3421nz> interfaceC3655ry, InterfaceC3227ki interfaceC3227ki, InterfaceC3655ry<InterfaceC3853vI> interfaceC3655ry2, RemoteConfigManager remoteConfigManager, L9 l9, SessionManager sessionManager) {
        Bundle bundle;
        this.f16113do = interfaceC3655ry;
        this.f16112do = interfaceC3227ki;
        this.f16114if = interfaceC3655ry2;
        if (c0706ai == null) {
            new C3762tn(new Bundle());
            return;
        }
        AI ai = AI.f54do;
        ai.f61do = c0706ai;
        c0706ai.m3147do();
        C3463oi c3463oi = c0706ai.f4989do;
        ai.f57catch = c3463oi.f14826else;
        ai.f67do = interfaceC3227ki;
        ai.f70do = interfaceC3655ry2;
        ai.f65do.execute(new RunnableC0651Zj(ai, 9));
        c0706ai.m3147do();
        Context context = c0706ai.f4985do;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            e.getMessage();
            bundle = null;
        }
        C3762tn c3762tn = bundle != null ? new C3762tn(bundle) : new C3762tn();
        remoteConfigManager.setFirebaseRemoteConfigProvider(interfaceC3655ry);
        l9.f1933do = c3762tn;
        L9.f1930do.f2857do = C0685aK.m3118do(context);
        l9.f1932do.m6824if(context);
        sessionManager.setApplicationContext(context);
        Boolean m1293else = l9.m1293else();
        Q0 q0 = f16110do;
        if (q0.f2857do) {
            if (m1293else != null ? m1293else.booleanValue() : C0706ai.m3146for().m3148else()) {
                c0706ai.m3147do();
                String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", String.format("%s/trends?utm_source=%s&utm_medium=%s", C3850vF.m8446class(c3463oi.f14826else, context.getPackageName()), "perf-android-sdk", "android-ide"));
                if (q0.f2857do) {
                    q0.f2856do.getClass();
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static C3875vi m8479do() {
        return (C3875vi) C0706ai.m3146for().m3149if(C3875vi.class);
    }
}
