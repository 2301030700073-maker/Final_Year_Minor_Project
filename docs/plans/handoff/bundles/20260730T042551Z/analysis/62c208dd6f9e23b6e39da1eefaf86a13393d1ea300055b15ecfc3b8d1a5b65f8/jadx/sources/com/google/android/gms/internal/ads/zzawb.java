package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;

/* loaded from: classes.dex */
final class zzawb implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzawd zzb;

    public zzawb(zzawd zzawdVar, int i, boolean z) {
        this.zza = i;
        this.zzb = zzawdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzasy zzasyVar;
        int i = this.zza;
        zzawd zzawdVar = this.zzb;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzawdVar.zza.getPackageManager().getPackageInfo(zzawdVar.zza.getPackageName(), 0);
            Context context = zzawdVar.zza;
            zzasyVar = zzfnq.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzasyVar = null;
        }
        this.zzb.zzm = zzasyVar;
        if (this.zza < 4) {
            if (zzasyVar != null && zzasyVar.zzaj() && !zzasyVar.zzh().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzasyVar.zzak() && zzasyVar.zzf().zzg() && zzasyVar.zzf().zza() != -2) {
                return;
            }
            this.zzb.zzo(this.zza + 1, true);
        }
    }
}
