package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import java.util.Collections;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzafm extends zzafr {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzafm(zzaem zzaemVar) {
        super(zzaemVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    protected final boolean zza(zzeg zzegVar) throws zzafq {
        if (this.zzc) {
            zzegVar.zzk(1);
        } else {
            int zzs = zzegVar.zzs();
            int i = zzs >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(zzs >> 2) & 3];
                zzt zztVar = new zzt();
                zztVar.zzl(MimeTypes.VIDEO_FLV);
                zztVar.zzm(MimeTypes.AUDIO_MPEG);
                zztVar.zzE(1);
                zztVar.zzF(i2);
                this.zza.zzu(zztVar.zzM());
                this.zzd = true;
            } else if (i == 7 || i == 8) {
                zzt zztVar2 = new zzt();
                zztVar2.zzl(MimeTypes.VIDEO_FLV);
                zztVar2.zzm(i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW);
                zztVar2.zzE(1);
                zztVar2.zzF(8000);
                this.zza.zzu(zztVar2.zzM());
                this.zzd = true;
            } else if (i != 10) {
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 28);
                sb.append("Audio format not supported: ");
                sb.append(i);
                throw new zzafq(sb.toString());
            }
            this.zzc = true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    protected final boolean zzb(zzeg zzegVar, long j) throws zzat {
        if (this.zze == 2) {
            int zzd = zzegVar.zzd();
            zzaem zzaemVar = this.zza;
            zzaemVar.zzz(zzegVar, zzd);
            zzaemVar.zzx(j, 1, zzd, 0, null);
            return true;
        }
        int zzs = zzegVar.zzs();
        if (zzs != 0 || this.zzd) {
            if (this.zze == 10 && zzs != 1) {
                return false;
            }
            int zzd2 = zzegVar.zzd();
            zzaem zzaemVar2 = this.zza;
            zzaemVar2.zzz(zzegVar, zzd2);
            zzaemVar2.zzx(j, 1, zzd2, 0, null);
            return true;
        }
        int zzd3 = zzegVar.zzd();
        byte[] bArr = new byte[zzd3];
        zzegVar.zzm(bArr, 0, zzd3);
        zzaby zza = zzabz.zza(bArr);
        zzt zztVar = new zzt();
        zztVar.zzl(MimeTypes.VIDEO_FLV);
        zztVar.zzm(MimeTypes.AUDIO_AAC);
        zztVar.zzj(zza.zzc);
        zztVar.zzE(zza.zzb);
        zztVar.zzF(zza.zza);
        zztVar.zzp(Collections.singletonList(bArr));
        this.zza.zzu(zztVar.zzM());
        this.zzd = true;
        return false;
    }
}
