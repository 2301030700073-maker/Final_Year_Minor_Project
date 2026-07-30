package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbjm implements zzbjp {
    @Override // com.google.android.gms.internal.ads.zzbjp
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcex zzcexVar = (zzcex) obj;
        if (map.keySet().contains("start")) {
            zzcexVar.zzN().zzm();
        } else if (map.keySet().contains("stop")) {
            zzcexVar.zzN().zzn();
        } else if (map.keySet().contains("cancel")) {
            zzcexVar.zzN().zzl();
        }
    }
}
