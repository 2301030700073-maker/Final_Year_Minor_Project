package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzcvc {
    private final Context zza;
    private final zzfcj zzb;
    private final Bundle zzc;
    private final zzfcb zzd;
    private final zzcut zze;
    private final zzedb zzf;
    private final int zzg;

    public /* synthetic */ zzcvc(zzcva zzcvaVar, zzcvb zzcvbVar) {
        Context context;
        zzfcj zzfcjVar;
        Bundle bundle;
        zzfcb zzfcbVar;
        zzcut zzcutVar;
        zzedb zzedbVar;
        int i;
        context = zzcvaVar.zza;
        this.zza = context;
        zzfcjVar = zzcvaVar.zzb;
        this.zzb = zzfcjVar;
        bundle = zzcvaVar.zzc;
        this.zzc = bundle;
        zzfcbVar = zzcvaVar.zzd;
        this.zzd = zzfcbVar;
        zzcutVar = zzcvaVar.zze;
        this.zze = zzcutVar;
        zzedbVar = zzcvaVar.zzf;
        this.zzf = zzedbVar;
        i = zzcvaVar.zzg;
        this.zzg = i;
    }

    public final int zza() {
        return this.zzg;
    }

    public final Context zzb(Context context) {
        return this.zza;
    }

    public final Bundle zzc() {
        return this.zzc;
    }

    public final zzcut zzd() {
        return this.zze;
    }

    public final zzcva zze() {
        zzcva zzcvaVar = new zzcva();
        zzcvaVar.zzf(this.zza);
        zzcvaVar.zzk(this.zzb);
        zzcvaVar.zzg(this.zzc);
        zzcvaVar.zzh(this.zze);
        zzcvaVar.zze(this.zzf);
        return zzcvaVar;
    }

    public final zzedb zzf(String str) {
        zzedb zzedbVar = this.zzf;
        return zzedbVar != null ? zzedbVar : new zzedb(str);
    }

    public final zzfcb zzg() {
        return this.zzd;
    }

    public final zzfcj zzh() {
        return this.zzb;
    }
}
