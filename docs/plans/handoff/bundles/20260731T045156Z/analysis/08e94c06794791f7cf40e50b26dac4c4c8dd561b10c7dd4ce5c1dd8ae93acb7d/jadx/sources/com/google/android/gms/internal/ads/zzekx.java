package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzekx {
    private final zzfhg zza;
    private final zzdsv zzb;
    private final zzdvi zzc;

    public zzekx(zzfhg zzfhgVar, zzdsv zzdsvVar, zzdvi zzdviVar) {
        this.zza = zzfhgVar;
        this.zzb = zzdsvVar;
        this.zzc = zzdviVar;
    }

    public final void zza(zzffx zzffxVar, zzffu zzffuVar, int i, @Nullable zzeho zzehoVar, long j) {
        zzdsu zzdsuVar;
        zzdvh zza = this.zzc.zza();
        zza.zza(zzffxVar);
        zza.zzb(zzffuVar);
        zza.zzc("action", "adapter_status");
        zza.zzc("adapter_l", String.valueOf(j));
        zza.zzc("sc", Integer.toString(i));
        if (zzehoVar != null) {
            zza.zzc("arec", Integer.toString(zzehoVar.zzb().zza));
            String zza2 = this.zza.zza(zzehoVar.getMessage());
            if (zza2 != null) {
                zza.zzc("areec", zza2);
            }
        }
        zzdsv zzdsvVar = this.zzb;
        Iterator it = zzffuVar.zzt.iterator();
        while (true) {
            if (!it.hasNext()) {
                zzdsuVar = null;
                break;
            } else {
                zzdsuVar = zzdsvVar.zzc((String) it.next());
                if (zzdsuVar != null) {
                    break;
                }
            }
        }
        if (zzdsuVar != null) {
            zza.zzc("ancn", zzdsuVar.zza);
            zzbtx zzbtxVar = zzdsuVar.zzb;
            if (zzbtxVar != null) {
                zza.zzc("adapter_v", zzbtxVar.toString());
            }
            zzbtx zzbtxVar2 = zzdsuVar.zzc;
            if (zzbtxVar2 != null) {
                zza.zzc("adapter_sv", zzbtxVar2.toString());
            }
        }
        zza.zzd();
    }
}
