package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayDeque;

/* renamed from: Jh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0298Jh implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do, reason: not valid java name */
    public final ArrayDeque f1666do = new ArrayDeque(10);

    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0034  */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1046do(android.content.Intent r6) {
        /*
            r5 = this;
            android.os.Bundle r6 = r6.getExtras()     // Catch: java.lang.RuntimeException -> L2d
            if (r6 == 0) goto L2d
            java.lang.String r0 = "google.message_id"
            java.lang.String r0 = r6.getString(r0)     // Catch: java.lang.RuntimeException -> L2d
            if (r0 != 0) goto L14
            java.lang.String r0 = "message_id"
            java.lang.String r0 = r6.getString(r0)     // Catch: java.lang.RuntimeException -> L2d
        L14:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.RuntimeException -> L2d
            if (r1 != 0) goto L26
            java.util.ArrayDeque r1 = r5.f1666do
            boolean r2 = r1.contains(r0)     // Catch: java.lang.RuntimeException -> L2d
            if (r2 == 0) goto L23
            return
        L23:
            r1.add(r0)     // Catch: java.lang.RuntimeException -> L2d
        L26:
            java.lang.String r0 = "gcm.n.analytics_data"
            android.os.Bundle r6 = r6.getBundle(r0)     // Catch: java.lang.RuntimeException -> L2d
            goto L2e
        L2d:
            r6 = 0
        L2e:
            java.lang.String r0 = "1"
            if (r6 != 0) goto L34
            r1 = 0
            goto L3e
        L34:
            java.lang.String r1 = "google.c.a.e"
            java.lang.String r1 = r6.getString(r1)
            boolean r1 = r0.equals(r1)
        L3e:
            if (r1 == 0) goto L8a
            if (r6 != 0) goto L43
            goto L85
        L43:
            java.lang.String r1 = "google.c.a.tc"
            java.lang.String r1 = r6.getString(r1)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L85
            ai r0 = defpackage.C0706ai.m3146for()
            java.lang.Class<A0> r1 = defpackage.A0.class
            java.lang.Object r0 = r0.m3149if(r1)
            A0 r0 = (defpackage.A0) r0
            if (r0 == 0) goto L85
            java.lang.String r1 = "google.c.a.c_id"
            java.lang.String r1 = r6.getString(r1)
            r0.mo6for(r1)
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
            java.lang.String r3 = "source"
            java.lang.String r4 = "Firebase"
            r2.putString(r3, r4)
            java.lang.String r3 = "medium"
            java.lang.String r4 = "notification"
            r2.putString(r3, r4)
            java.lang.String r3 = "campaign"
            r2.putString(r3, r1)
            java.lang.String r1 = "_cmp"
            java.lang.String r3 = "fcm"
            r0.mo8if(r2, r3, r1)
        L85:
            java.lang.String r0 = "_no"
            defpackage.C0550Us.m2476for(r6, r0)
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0298Jh.m1046do(android.content.Intent):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @SuppressLint({"ThreadPoolCreation"})
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Intent intent = activity.getIntent();
        if (intent == null) {
            return;
        }
        if (Build.VERSION.SDK_INT <= 25) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0667a2(4, this, intent));
        } else {
            m1046do(intent);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
