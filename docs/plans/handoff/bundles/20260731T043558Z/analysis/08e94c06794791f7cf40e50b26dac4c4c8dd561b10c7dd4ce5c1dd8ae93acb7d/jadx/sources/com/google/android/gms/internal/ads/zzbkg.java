package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbkg extends zzbjl {
    final /* synthetic */ zzbki zza;

    /* synthetic */ zzbkg(zzbki zzbkiVar, byte[] bArr) {
        Objects.requireNonNull(zzbkiVar);
        this.zza = zzbkiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final void zze(zzbjc zzbjcVar, String str) {
        zzbki zzbkiVar = this.zza;
        if (zzbkiVar.zzd() == null) {
            return;
        }
        zzbkiVar.zzd().zzc(zzbkiVar.zze(zzbjcVar), str);
    }
}
