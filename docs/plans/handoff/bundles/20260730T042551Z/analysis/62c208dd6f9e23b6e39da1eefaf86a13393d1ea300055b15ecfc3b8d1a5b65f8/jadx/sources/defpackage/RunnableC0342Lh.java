package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.login.CustomTabLoginMethodHandler;
import com.facebook.login.LoginClient;
import com.google.firebase.perf.session.gauges.GaugeManager;
import defpackage.Ew;

/* renamed from: Lh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0342Lh implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f1976do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1977for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1978for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1979if;

    public /* synthetic */ RunnableC0342Lh(Object obj, Object obj2, Object obj3, int i) {
        this.f1977for = i;
        this.f1976do = obj;
        this.f1979if = obj2;
        this.f1978for = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f1977for;
        Object obj = this.f1978for;
        Object obj2 = this.f1979if;
        Object obj3 = this.f1976do;
        switch (i) {
            case 0:
                FetchedAppSettingsManager.m5416loadAppSettingsAsync$lambda0((Context) obj3, (String) obj2, (String) obj);
                break;
            case 1:
                CustomTabLoginMethodHandler customTabLoginMethodHandler = (CustomTabLoginMethodHandler) obj3;
                LoginClient.Request request = (LoginClient.Request) obj2;
                Bundle bundle = (Bundle) obj;
                C0173Do.m401try(customTabLoginMethodHandler, "this$0");
                C0173Do.m401try(request, "$request");
                C0173Do.m401try(bundle, "$values");
                try {
                    customTabLoginMethodHandler.m5518final(bundle, request);
                    customTabLoginMethodHandler.m5528native(request, bundle, null);
                    break;
                } catch (C3344mh e) {
                    customTabLoginMethodHandler.m5528native(request, null, e);
                    return;
                }
            case 2:
                ((GaugeManager) obj3).lambda$startCollectingGauges$2((String) obj2, (EnumC3601r2) obj);
                break;
            default:
                AI ai = (AI) obj3;
                Q0 q0 = AI.f55do;
                ai.getClass();
                Ew.Cdo m511instanceof = Ew.m511instanceof();
                m511instanceof.m6307super();
                Ew.m513protected((Ew) m511instanceof.f12107if, (C4123zu) obj2);
                ai.m68new(m511instanceof, (EnumC3601r2) obj);
                break;
        }
    }
}
