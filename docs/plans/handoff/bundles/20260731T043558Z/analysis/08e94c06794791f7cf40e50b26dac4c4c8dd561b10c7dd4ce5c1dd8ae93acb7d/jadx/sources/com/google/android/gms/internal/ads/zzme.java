package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzme implements Handler.Callback, zzaz {
    private final zzbb zza;
    private final zzlz zzb;
    private final zzbd zzc = new zzbd();
    private final zzdm zzd;
    private final zzma zze;
    private final zzmb zzf;
    private final zzmc zzg;
    private final zzmd zzh;

    public zzme(zzbb zzbbVar, zzlz zzlzVar, zzdc zzdcVar, int i, int i2, int i3, int i4) {
        this.zza = zzbbVar;
        this.zzb = zzlzVar;
        this.zzd = zzdcVar.zzd(zzbbVar.zzd(), this);
        this.zze = new zzma(this, i);
        this.zzf = new zzmb(this, i2);
        this.zzg = new zzmc(this, i3);
        this.zzh = new zzmd(this, i4);
        zzbbVar.zze(this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.zze.zza();
            return true;
        }
        if (i == 2) {
            this.zzf.zza();
            return true;
        }
        if (i == 3) {
            this.zzg.zza();
            return true;
        }
        if (i != 4) {
            return false;
        }
        this.zzh.zza();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzaz
    public final void zza(zzbb zzbbVar, zzay zzayVar) {
        this.zze.zza();
        this.zzf.zza();
        this.zzg.zza();
        this.zzh.zza();
    }

    public final void zzv() {
        this.zzd.zzl(null);
        this.zza.zzf(this);
    }

    final /* synthetic */ zzbb zzw() {
        return this.zza;
    }

    final /* synthetic */ zzlz zzx() {
        return this.zzb;
    }

    final /* synthetic */ zzbd zzy() {
        return this.zzc;
    }

    final /* synthetic */ zzdm zzz() {
        return this.zzd;
    }
}
