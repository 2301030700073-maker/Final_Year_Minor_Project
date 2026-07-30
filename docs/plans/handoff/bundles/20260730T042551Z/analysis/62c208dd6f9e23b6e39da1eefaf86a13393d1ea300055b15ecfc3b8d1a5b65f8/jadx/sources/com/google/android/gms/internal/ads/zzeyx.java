package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
final class zzeyx implements zzfuc {
    final /* synthetic */ zzezb zza;

    public zzeyx(zzezb zzezbVar) {
        this.zza = zzezbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuc
    @NullableDecl
    public final /* bridge */ /* synthetic */ Object apply(@NullableDecl Object obj) {
        zzfeg zze;
        zzeyz zzeyzVar;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (zzdyh) obj);
        com.google.android.gms.ads.internal.util.zze.zza("Failed to get a cache key, reverting to legacy flow.");
        zzezb zzezbVar = this.zza;
        zze = zzezbVar.zze();
        zzezbVar.zzd = new zzeyz(null, zze, null);
        zzeyzVar = this.zza.zzd;
        return zzeyzVar;
    }
}
