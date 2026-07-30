package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
abstract class zzfva extends zzfts {
    final CharSequence zzb;
    int zzc = 0;
    int zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    public zzfva(zzfvc zzfvcVar, CharSequence charSequence) {
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    public final /* bridge */ /* synthetic */ Object zza() {
        int zzc;
        int i = this.zzc;
        while (true) {
            int i2 = this.zzc;
            if (i2 == -1) {
                zzb();
                return null;
            }
            int zzd = zzd(i2);
            if (zzd == -1) {
                zzd = this.zzb.length();
                this.zzc = -1;
                zzc = -1;
            } else {
                zzc = zzc(zzd);
                this.zzc = zzc;
            }
            if (zzc != i) {
                if (i < zzd) {
                    this.zzb.charAt(i);
                }
                if (i < zzd) {
                    this.zzb.charAt(zzd - 1);
                }
                int i3 = this.zzd;
                if (i3 == 1) {
                    zzd = this.zzb.length();
                    this.zzc = -1;
                    if (zzd > i) {
                        this.zzb.charAt(zzd - 1);
                    }
                } else {
                    this.zzd = i3 - 1;
                }
                return this.zzb.subSequence(i, zzd).toString();
            }
            int i4 = zzc + 1;
            this.zzc = i4;
            if (i4 > this.zzb.length()) {
                this.zzc = -1;
            }
        }
    }

    public abstract int zzc(int i);

    public abstract int zzd(int i);
}
