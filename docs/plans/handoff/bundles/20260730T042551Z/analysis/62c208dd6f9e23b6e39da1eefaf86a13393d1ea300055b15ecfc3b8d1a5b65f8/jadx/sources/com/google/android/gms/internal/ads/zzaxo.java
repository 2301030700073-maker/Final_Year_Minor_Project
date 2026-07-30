package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes.dex */
public final class zzaxo extends zzaxr {
    private final View zzh;

    public zzaxo(zzawd zzawdVar, String str, String str2, zzasc zzascVar, int i, int i2, View view) {
        super(zzawdVar, "mEjNDtPMm+doViWgwYfgFasHLoNhAzlke51uTCfqtDoGOxX1zsnuUhlK2oJYi5bg", "XF2ECF8x32hNHbBL1ZweWW5YOt0QuzlbOpXni7lBWlc=", zzascVar, i, 57);
        this.zzh = view;
    }

    @Override // com.google.android.gms.internal.ads.zzaxr
    public final void zza() {
        if (this.zzh != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdy);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzkP);
            zzawh zzawhVar = new zzawh((String) this.zze.invoke(null, this.zzh, this.zza.zzb().getResources().getDisplayMetrics(), bool, bool2));
            zzasw zza = zzasx.zza();
            zza.zzb(zzawhVar.zza.longValue());
            zza.zzd(zzawhVar.zzb.longValue());
            zza.zze(zzawhVar.zzc.longValue());
            if (bool2.booleanValue()) {
                zza.zzc(zzawhVar.zze.longValue());
            }
            if (bool.booleanValue()) {
                zza.zza(zzawhVar.zzd.longValue());
            }
            this.zzd.zzY((zzasx) zza.zzbr());
        }
    }
}
