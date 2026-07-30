package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdy;
import defpackage.C0706ai;
import defpackage.C3168ji;
import defpackage.C3744tR;
import defpackage.InterfaceC3227ki;
import defpackage.LG;
import defpackage.YT;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class FirebaseAnalytics {

    /* renamed from: do, reason: not valid java name */
    public static volatile FirebaseAnalytics f11868do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdy f11869do;

    public FirebaseAnalytics(zzdy zzdyVar) {
        Preconditions.checkNotNull(zzdyVar);
        this.f11869do = zzdyVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f11868do == null) {
            synchronized (FirebaseAnalytics.class) {
                if (f11868do == null) {
                    f11868do = new FirebaseAnalytics(zzdy.zza(context));
                }
            }
        }
        return f11868do;
    }

    @Keep
    public static YT getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzdy zza = zzdy.zza(context, (String) null, (String) null, (String) null, bundle);
        if (zza == null) {
            return null;
        }
        return new C3744tR(zza);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m6073do(String str, Bundle bundle) {
        this.f11869do.zza(str, bundle);
    }

    @Keep
    public final String getFirebaseInstanceId() {
        try {
            Object obj = C3168ji.f13747if;
            C0706ai m3146for = C0706ai.m3146for();
            Preconditions.checkArgument(true, "Null is not a valid value of FirebaseApp.");
            return (String) LG.m1318if(((C3168ji) m3146for.m3149if(InterfaceC3227ki.class)).mo7159if(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6074if(String str, String str2) {
        this.f11869do.zzb(str, str2);
    }

    @Keep
    @Deprecated
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        this.f11869do.zza(activity, str, str2);
    }
}
