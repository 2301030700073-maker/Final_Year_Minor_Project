package com.google.android.gms.wearable;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* loaded from: classes3.dex */
final class zzn extends com.google.android.gms.internal.wearable.zzi {
    final /* synthetic */ WearableListenerService zza;
    private boolean zzb;
    private final zzm zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzn(WearableListenerService wearableListenerService, Looper looper) {
        super(looper);
        this.zza = wearableListenerService;
        this.zzc = new zzm(wearableListenerService, null);
    }

    private final synchronized void zzc() {
        Intent intent;
        ComponentName componentName;
        if (this.zzb) {
            return;
        }
        if (Log.isLoggable("WearableLS", 2)) {
            componentName = this.zza.zza;
            "bindService: ".concat(String.valueOf(componentName));
        }
        WearableListenerService wearableListenerService = this.zza;
        intent = wearableListenerService.zzd;
        wearableListenerService.bindService(intent, this.zzc, 1);
        this.zzb = true;
    }

    private final synchronized void zzd(String str) {
        ComponentName componentName;
        if (this.zzb) {
            if (Log.isLoggable("WearableLS", 2)) {
                componentName = this.zza.zza;
                String.valueOf(componentName);
            }
            try {
                this.zza.unbindService(this.zzc);
            } catch (RuntimeException unused) {
            }
            this.zzb = false;
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzi
    public final void zza(Message message) {
        zzc();
        try {
            super.zza(message);
            if (hasMessages(0)) {
                return;
            }
            zzd("dispatch");
        } catch (Throwable th) {
            if (!hasMessages(0)) {
                zzd("dispatch");
            }
            throw th;
        }
    }

    public final void zzb() {
        getLooper().quit();
        zzd("quit");
    }
}
