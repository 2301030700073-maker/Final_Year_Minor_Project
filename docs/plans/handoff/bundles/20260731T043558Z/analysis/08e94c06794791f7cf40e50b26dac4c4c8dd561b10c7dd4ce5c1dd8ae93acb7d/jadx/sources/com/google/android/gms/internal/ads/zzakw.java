package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzakw implements zzaki {
    private final zzeg zza = new zzeg();
    private final zzeg zzb = new zzeg();
    private final zzakv zzc = new zzakv();
    private Inflater zzd;

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzeg zzegVar = this.zza;
        zzegVar.zzb(bArr, i2 + i);
        zzegVar.zzh(i);
        if (this.zzd == null) {
            this.zzd = new Inflater();
        }
        zzeg zzegVar2 = this.zzb;
        if (zzep.zzM(zzegVar, zzegVar2, this.zzd)) {
            zzegVar.zzb(zzegVar2.zzi(), zzegVar2.zze());
        }
        zzakv zzakvVar = this.zzc;
        zzakvVar.zzb();
        ArrayList arrayList = new ArrayList();
        while (zzegVar.zzd() >= 3) {
            int zze = zzegVar.zze();
            int zzs = zzegVar.zzs();
            int zzt = zzegVar.zzt();
            int zzg = zzegVar.zzg() + zzt;
            zzcm zzcmVar = null;
            if (zzg > zze) {
                zzegVar.zzh(zze);
            } else {
                if (zzs != 128) {
                    switch (zzs) {
                        case 20:
                            zzakvVar.zzc(zzegVar, zzt);
                            break;
                        case 21:
                            zzakvVar.zzd(zzegVar, zzt);
                            break;
                        case 22:
                            zzakvVar.zze(zzegVar, zzt);
                            break;
                    }
                } else {
                    zzcm zza = zzakvVar.zza();
                    zzakvVar.zzb();
                    zzcmVar = zza;
                }
                zzegVar.zzh(zzg);
            }
            if (zzcmVar != null) {
                arrayList.add(zzcmVar);
            }
        }
        zzdgVar.zza(new zzaka(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }
}
