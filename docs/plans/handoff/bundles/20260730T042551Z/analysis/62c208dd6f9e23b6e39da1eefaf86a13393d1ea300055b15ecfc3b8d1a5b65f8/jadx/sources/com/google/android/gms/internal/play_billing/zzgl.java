package com.google.android.gms.internal.play_billing;

import com.google.android.gms.common.api.Api;

/* loaded from: classes3.dex */
final class zzgl extends zzgn {
    private int zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzgl(byte[] bArr, int i, int i2, boolean z, zzgm zzgmVar) {
        super(null);
        this.zzd = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.zzb = 0;
    }

    public final int zza(int i) {
        int i2 = this.zzd;
        this.zzd = 0;
        int i3 = this.zzb + this.zzc;
        this.zzb = i3;
        if (i3 > 0) {
            this.zzc = i3;
            this.zzb = i3 - i3;
        } else {
            this.zzc = 0;
        }
        return i2;
    }
}
