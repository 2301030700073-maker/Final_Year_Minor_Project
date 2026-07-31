package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcha implements zzguf {
    final /* synthetic */ List zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Uri zzc;
    final /* synthetic */ zzchj zzd;

    zzcha(zzchj zzchjVar, List list, String str, Uri uri) {
        this.zza = list;
        this.zzb = str;
        this.zzc = uri;
        Objects.requireNonNull(zzchjVar);
        this.zzd = zzchjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        String valueOf = String.valueOf(this.zzc);
        String.valueOf(valueOf);
        String valueOf2 = String.valueOf(valueOf);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to parse gmsg params for: ".concat(valueOf2));
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list = this.zza;
        String str = this.zzb;
        this.zzd.zzY((Map) obj, list, str);
    }
}
