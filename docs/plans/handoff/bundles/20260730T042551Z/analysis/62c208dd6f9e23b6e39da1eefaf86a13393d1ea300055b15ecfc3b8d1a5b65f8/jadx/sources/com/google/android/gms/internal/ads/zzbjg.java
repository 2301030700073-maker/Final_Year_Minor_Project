package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbjg implements zzbjp {
    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        if (zzcexVar.zzJ() != null) {
            zzcexVar.zzJ().zza();
        }
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzcexVar.zzL();
        if (zzL != null) {
            zzL.zzb();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzm zzM = zzcexVar.zzM();
        if (zzM != null) {
            zzM.zzb();
        } else {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
