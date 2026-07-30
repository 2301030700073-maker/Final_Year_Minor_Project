package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;

/* loaded from: classes.dex */
public final class zzawn extends zzaxr {
    private final Activity zzh;
    private final View zzi;

    public zzawn(zzawd zzawdVar, String str, String str2, zzasc zzascVar, int i, int i2, View view, Activity activity) {
        super(zzawdVar, "gB+BkxFVoHhSmqLqktRH8YIZYx6a0pcuaOoWc5H2QcQW6Jk8qB3UFfft8KyvHwiE", "A7tv2KK9I23pi5gqrDhkhgrz6cV3BFoHJTUga5I7vx4=", zzascVar, i, 62);
        this.zzi = view;
        this.zzh = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaxr
    public final void zza() {
        if (this.zzi == null) {
            return;
        }
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzcJ)).booleanValue();
        Object[] objArr = (Object[]) this.zze.invoke(null, this.zzi, this.zzh, Boolean.valueOf(booleanValue));
        synchronized (this.zzd) {
            this.zzd.zzc(((Long) objArr[0]).longValue());
            this.zzd.zze(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.zzd.zzd((String) objArr[2]);
            }
        }
    }
}
