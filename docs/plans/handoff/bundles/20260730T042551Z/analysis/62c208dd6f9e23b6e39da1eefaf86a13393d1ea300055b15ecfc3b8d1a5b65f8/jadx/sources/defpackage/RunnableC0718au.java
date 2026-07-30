package defpackage;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookRequestError;
import com.facebook.login.LoginClient;
import com.facebook.login.NativeAppLoginMethodHandler;
import com.google.firebase.messaging.EnhancedIntentService;
import defpackage.ScheduledFutureC0425Pd;

/* renamed from: au, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0718au implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f8296do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f8297for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f8298for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f8299if;

    public /* synthetic */ RunnableC0718au(Object obj, Object obj2, Object obj3, int i) {
        this.f8297for = i;
        this.f8296do = obj;
        this.f8299if = obj2;
        this.f8298for = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f8297for;
        Object obj = this.f8298for;
        Object obj2 = this.f8299if;
        Object obj3 = this.f8296do;
        switch (i) {
            case 0:
                NativeAppLoginMethodHandler nativeAppLoginMethodHandler = (NativeAppLoginMethodHandler) obj3;
                LoginClient.Request request = (LoginClient.Request) obj2;
                Bundle bundle = (Bundle) obj;
                C0173Do.m401try(nativeAppLoginMethodHandler, "this$0");
                C0173Do.m401try(request, "$request");
                C0173Do.m401try(bundle, "$extras");
                try {
                    nativeAppLoginMethodHandler.m5518final(bundle, request);
                    nativeAppLoginMethodHandler.m5525public(bundle, request);
                    return;
                } catch (C3874vh e) {
                    FacebookRequestError facebookRequestError = e.f16109do;
                    nativeAppLoginMethodHandler.m5524native(request, facebookRequestError.f9257break, facebookRequestError.m5261do(), String.valueOf(facebookRequestError.f9264new));
                    return;
                } catch (C3344mh e2) {
                    nativeAppLoginMethodHandler.m5524native(request, null, e2.getMessage(), null);
                    return;
                }
            case 1:
                ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = (ScheduledExecutorServiceC0403Od) obj3;
                scheduledExecutorServiceC0403Od.getClass();
                scheduledExecutorServiceC0403Od.f2656do.execute(new Pz(3, (Runnable) obj2, (ScheduledFutureC0425Pd.Cif) obj));
                return;
            default:
                EnhancedIntentService enhancedIntentService = (EnhancedIntentService) obj3;
                Intent intent = (Intent) obj2;
                GG gg = (GG) obj;
                int i2 = EnhancedIntentService.f11881try;
                enhancedIntentService.getClass();
                try {
                    enhancedIntentService.mo6080for(intent);
                    return;
                } finally {
                    gg.m721if(null);
                }
        }
    }
}
