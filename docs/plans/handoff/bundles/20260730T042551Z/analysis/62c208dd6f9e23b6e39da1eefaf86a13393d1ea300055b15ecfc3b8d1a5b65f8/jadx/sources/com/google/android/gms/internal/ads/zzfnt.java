package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zzfnt {
    private final Context zza;
    private final Looper zzb;

    public zzfnt(Context context, Looper looper) {
        this.zza = context;
        this.zzb = looper;
    }

    public final void zza(String str) {
        zzfog zza = zzfoj.zza();
        zza.zza(this.zza.getPackageName());
        zza.zzc(2);
        zzfod zza2 = zzfof.zza();
        zza2.zza(str);
        zza2.zzb(2);
        zza.zzb(zza2);
        new zzfnu(this.zza, this.zzb, (zzfoj) zza.zzbr()).zza();
    }
}
