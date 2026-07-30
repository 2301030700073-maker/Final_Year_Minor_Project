package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzetf implements zzetr {
    private final zzgcs zza;
    private final Context zzb;
    private final VersionInfoParcel zzc;
    private final String zzd;

    public zzetf(zzgcs zzgcsVar, Context context, VersionInfoParcel versionInfoParcel, String str) {
        this.zza = zzgcsVar;
        this.zzb = context;
        this.zzc = versionInfoParcel;
        this.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzete
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetf.this.zzc();
            }
        });
    }

    public final zzetg zzc() {
        boolean isCallerInstantApp = Wrappers.packageManager(this.zzb).isCallerInstantApp();
        com.google.android.gms.ads.internal.zzv.zzq();
        boolean zzF = com.google.android.gms.ads.internal.util.zzs.zzF(this.zzb);
        String str = this.zzc.afmaVersion;
        com.google.android.gms.ads.internal.zzv.zzq();
        boolean zzG = com.google.android.gms.ads.internal.util.zzs.zzG();
        com.google.android.gms.ads.internal.zzv.zzq();
        ApplicationInfo applicationInfo = this.zzb.getApplicationInfo();
        int i = applicationInfo == null ? 0 : applicationInfo.targetSdkVersion;
        Context context = this.zzb;
        return new zzetg(isCallerInstantApp, zzF, str, zzG, i, DynamiteModule.m5608new(context, ModuleDescriptor.MODULE_ID, false), DynamiteModule.m5604do(context, ModuleDescriptor.MODULE_ID), this.zzd);
    }
}
