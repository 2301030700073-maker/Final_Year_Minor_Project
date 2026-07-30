package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzall implements zzakf {
    private final zzdy zza = new zzdy();

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        zzco zzp;
        this.zza.zzJ(bArr, i2 + i);
        this.zza.zzL(i);
        ArrayList arrayList = new ArrayList();
        while (true) {
            zzdy zzdyVar = this.zza;
            if (zzdyVar.zzb() <= 0) {
                zzdbVar.zza(new zzajx(arrayList, -9223372036854775807L, -9223372036854775807L));
                return;
            }
            zzcw.zze(zzdyVar.zzb() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            zzdy zzdyVar2 = this.zza;
            int zzg = zzdyVar2.zzg() - 8;
            if (zzdyVar2.zzg() == 1987343459) {
                zzdy zzdyVar3 = this.zza;
                CharSequence charSequence = null;
                zzcm zzcmVar = null;
                while (zzg > 0) {
                    zzcw.zze(zzg >= 8, "Incomplete vtt cue box header found.");
                    int zzg2 = zzdyVar3.zzg();
                    int zzg3 = zzdyVar3.zzg();
                    int i3 = zzg - 8;
                    int i4 = zzg2 - 8;
                    String zzC = zzei.zzC(zzdyVar3.zzN(), zzdyVar3.zzd(), i4);
                    zzdyVar3.zzM(i4);
                    if (zzg3 == 1937011815) {
                        zzcmVar = zzalv.zzb(zzC);
                    } else if (zzg3 == 1885436268) {
                        charSequence = zzalv.zza(null, zzC.trim(), Collections.emptyList());
                    }
                    zzg = i3 - i4;
                }
                if (charSequence == null) {
                    charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (zzcmVar != null) {
                    zzcmVar.zzl(charSequence);
                    zzp = zzcmVar.zzp();
                } else {
                    zzalt zzaltVar = new zzalt();
                    zzaltVar.zzc = charSequence;
                    zzp = zzaltVar.zza().zzp();
                }
                arrayList.add(zzp);
            } else {
                this.zza.zzM(zzg);
            }
        }
    }
}
