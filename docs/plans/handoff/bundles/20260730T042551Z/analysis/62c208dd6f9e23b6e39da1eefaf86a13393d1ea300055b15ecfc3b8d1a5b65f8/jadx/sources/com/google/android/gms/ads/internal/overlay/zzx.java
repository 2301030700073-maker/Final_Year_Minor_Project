package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.ads.zzcex;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class zzx implements Runnable {
    public final /* synthetic */ zzz zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ Map zzc;

    public /* synthetic */ zzx(zzz zzzVar, String str, Map map) {
        this.zza = zzzVar;
        this.zzb = str;
        this.zzc = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzz zzzVar = this.zza;
        String str = this.zzb;
        Map map = this.zzc;
        zzcex zzcexVar = zzzVar.f9725do;
        if (zzcexVar != null) {
            zzcexVar.zzd(str, map);
        }
    }
}
