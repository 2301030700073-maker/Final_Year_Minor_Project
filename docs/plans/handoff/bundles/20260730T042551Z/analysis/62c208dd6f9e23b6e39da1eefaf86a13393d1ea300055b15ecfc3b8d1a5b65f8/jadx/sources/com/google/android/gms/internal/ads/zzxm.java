package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
final class zzxm extends zzxo implements Comparable {
    private final int zze;
    private final boolean zzf;
    private final boolean zzg;
    private final boolean zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;

    public zzxm(int i, zzbr zzbrVar, int i2, zzxh zzxhVar, int i3, String str) {
        super(i, zzbrVar, i2);
        int i4;
        int i5 = 0;
        this.zzf = zzlk.zza(i3, false);
        int i6 = this.zzd.zze;
        int i7 = zzxhVar.zzw;
        this.zzg = 1 == (i6 & 1);
        this.zzh = (i6 & 2) != 0;
        zzfxn zzo = zzxhVar.zzu.isEmpty() ? zzfxn.zzo(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) : zzxhVar.zzu;
        int i8 = 0;
        while (true) {
            if (i8 >= zzo.size()) {
                i8 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                i4 = 0;
                break;
            } else {
                i4 = zzxt.zzc(this.zzd, (String) zzo.get(i8), false);
                if (i4 > 0) {
                    break;
                } else {
                    i8++;
                }
            }
        }
        this.zzi = i8;
        this.zzj = i4;
        int zzb = zzxt.zzb(this.zzd.zzf, zzxhVar.zzv);
        this.zzk = zzb;
        this.zzm = (this.zzd.zzf & 1088) != 0;
        int zzc = zzxt.zzc(this.zzd, str, zzxt.zzh(str) == null);
        this.zzl = zzc;
        boolean z = i4 > 0 || (zzxhVar.zzu.isEmpty() && zzb > 0) || this.zzg || (this.zzh && zzc > 0);
        if (zzlk.zza(i3, zzxhVar.zzO) && z) {
            i5 = 1;
        }
        this.zze = i5;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxm zzxmVar) {
        zzfxc zzb = zzfxc.zzj().zzd(this.zzf, zzxmVar.zzf).zzc(Integer.valueOf(this.zzi), Integer.valueOf(zzxmVar.zzi), zzfyy.zzc().zza()).zzb(this.zzj, zzxmVar.zzj).zzb(this.zzk, zzxmVar.zzk).zzd(this.zzg, zzxmVar.zzg).zzc(Boolean.valueOf(this.zzh), Boolean.valueOf(zzxmVar.zzh), this.zzj == 0 ? zzfyy.zzc() : zzfyy.zzc().zza()).zzb(this.zzl, zzxmVar.zzl);
        if (this.zzk == 0) {
            zzb = zzb.zze(this.zzm, zzxmVar.zzm);
        }
        return zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzxo
    public final /* bridge */ /* synthetic */ boolean zzc(zzxo zzxoVar) {
        return false;
    }
}
