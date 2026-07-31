package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfgy {
    public static zzblx zza(final zzefy zzefyVar, final zzfng zzfngVar, final zzcpe zzcpeVar, final zzdgv zzdgvVar) {
        return new zzblx() { // from class: com.google.android.gms.internal.ads.zzfgx
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzcgy zzcgyVar = (zzcgy) obj;
                zzblw.zzc(map, zzdgv.this);
                String str = (String) map.get("u");
                if (str == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from click GMSG.");
                } else {
                    zzefy zzefyVar2 = zzefyVar;
                    zzfng zzfngVar2 = zzfngVar;
                    zzgui.zzr(zzblw.zza(zzcgyVar, str), new zzfgv(zzcgyVar, zzcpeVar, zzfngVar2, zzefyVar2), zzcbv.zza);
                }
            }
        };
    }

    public static zzblx zzb(final zzefy zzefyVar, final zzfng zzfngVar) {
        return new zzblx() { // from class: com.google.android.gms.internal.ads.zzfgw
            @Override // com.google.android.gms.internal.ads.zzblx
            public final /* synthetic */ void zza(Object obj, Map map) {
                zzcgp zzcgpVar = (zzcgp) obj;
                String str = (String) map.get("u");
                if (str == null) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from httpTrack GMSG.");
                    return;
                }
                zzffu zzC = zzcgpVar.zzC();
                if (zzC != null && !zzC.zzai) {
                    zzfng.this.zzb(str, zzC.zzax, null, null);
                    return;
                }
                zzffx zzaC = ((zzcif) zzcgpVar).zzaC();
                if (zzaC != null) {
                    zzefyVar.zze(new zzega(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), zzaC.zzb, str, 2));
                } else {
                    com.google.android.gms.ads.internal.zzt.zzh().zzg(new IllegalArgumentException("Common configuration cannot be null"), "BufferingGmsgHandlers.getBufferingHttpTrackGmsgHandler");
                }
            }
        };
    }
}
