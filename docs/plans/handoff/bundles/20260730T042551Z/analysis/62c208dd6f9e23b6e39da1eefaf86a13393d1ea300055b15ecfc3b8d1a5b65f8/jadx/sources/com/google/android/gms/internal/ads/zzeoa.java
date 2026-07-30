package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import com.facebook.internal.AnalyticsEvents;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeoa implements zzetr {
    private final zzgcs zza;
    private final Context zzb;

    public zzeoa(zzgcs zzgcsVar, Context context) {
        this.zza = zzgcsVar;
        this.zzb = context;
    }

    @SuppressLint({"UnprotectedReceiver"})
    private final Intent zzd() {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkR)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            return this.zzb.registerReceiver(null, intentFilter);
        }
        registerReceiver = this.zzb.registerReceiver(null, intentFilter, 4);
        return registerReceiver;
    }

    private static final boolean zze(Intent intent) {
        if (intent == null) {
            return false;
        }
        int intExtra = intent.getIntExtra(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS, -1);
        return intExtra == 2 || intExtra == 5;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    @SuppressLint({"UnprotectedReceiver"})
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzenz
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeoa.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeob zzc() {
        double intExtra;
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzlS)).booleanValue()) {
            BatteryManager batteryManager = (BatteryManager) this.zzb.getSystemService("batterymanager");
            intExtra = batteryManager != null ? batteryManager.getIntProperty(4) / 100.0d : -1.0d;
            z = (Build.VERSION.SDK_INT < 23 || batteryManager == null) ? zze(zzd()) : batteryManager.isCharging();
        } else {
            Intent zzd = zzd();
            boolean zze = zze(zzd);
            intExtra = zzd != null ? zzd.getIntExtra("level", -1) / zzd.getIntExtra("scale", -1) : -1.0d;
            z = zze;
        }
        return new zzeob(intExtra, z);
    }
}
