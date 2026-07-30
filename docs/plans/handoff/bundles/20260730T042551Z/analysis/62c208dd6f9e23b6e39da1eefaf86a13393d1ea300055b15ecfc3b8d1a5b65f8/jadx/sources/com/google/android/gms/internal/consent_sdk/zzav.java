package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzav implements Application.ActivityLifecycleCallbacks {
    final /* synthetic */ zzay zza;
    private final Activity zzb;

    public zzav(zzay zzayVar, Activity activity) {
        this.zza = zzayVar;
        this.zzb = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb() {
        this.zza.zzb.unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Dialog dialog;
        Dialog dialog2;
        zzbt zzbtVar;
        AtomicReference atomicReference;
        Dialog dialog3;
        Dialog dialog4;
        AtomicReference atomicReference2;
        zzbt zzbtVar2;
        zzay zzayVar = this.zza;
        dialog = zzayVar.zzg;
        if (dialog == null || !zzayVar.zza) {
            return;
        }
        dialog2 = zzayVar.zzg;
        dialog2.setOwnerActivity(activity);
        zzay zzayVar2 = this.zza;
        zzbtVar = zzayVar2.zzc;
        if (zzbtVar != null) {
            zzbtVar2 = zzayVar2.zzc;
            zzbtVar2.zza(activity);
        }
        atomicReference = this.zza.zzl;
        zzav zzavVar = (zzav) atomicReference.getAndSet(null);
        if (zzavVar != null) {
            zzavVar.zzb();
            zzay zzayVar3 = this.zza;
            zzav zzavVar2 = new zzav(zzayVar3, activity);
            zzayVar3.zzb.registerActivityLifecycleCallbacks(zzavVar2);
            atomicReference2 = this.zza.zzl;
            atomicReference2.set(zzavVar2);
        }
        zzay zzayVar4 = this.zza;
        dialog3 = zzayVar4.zzg;
        if (dialog3 != null) {
            dialog4 = zzayVar4.zzg;
            dialog4.show();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Dialog dialog;
        Dialog dialog2;
        if (activity != this.zzb) {
            return;
        }
        if (activity.isChangingConfigurations()) {
            zzay zzayVar = this.zza;
            if (zzayVar.zza) {
                dialog = zzayVar.zzg;
                if (dialog != null) {
                    dialog2 = zzayVar.zzg;
                    dialog2.dismiss();
                    return;
                }
            }
        }
        this.zza.zzh(new zzg(3, "Activity is destroyed."));
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
