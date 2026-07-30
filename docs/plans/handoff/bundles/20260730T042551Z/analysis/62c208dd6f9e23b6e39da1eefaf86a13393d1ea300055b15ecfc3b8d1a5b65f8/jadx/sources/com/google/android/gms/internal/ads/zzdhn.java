package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import defpackage.BinderC3652rv;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public final class zzdhn extends zzbfs {
    private final zzdif zza;
    private InterfaceC0456Qm zzb;

    public zzdhn(zzdif zzdifVar) {
        this.zza = zzdifVar;
    }

    private static float zzb(InterfaceC0456Qm interfaceC0456Qm) {
        Drawable drawable;
        if (interfaceC0456Qm == null || (drawable = (Drawable) BinderC3652rv.o(interfaceC0456Qm)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zze() {
        if (this.zza.zzb() != 0.0f) {
            return this.zza.zzb();
        }
        if (this.zza.zzj() != null) {
            try {
                return this.zza.zzj().zze();
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        InterfaceC0456Qm interfaceC0456Qm = this.zzb;
        if (interfaceC0456Qm != null) {
            return zzb(interfaceC0456Qm);
        }
        zzbfw zzm = this.zza.zzm();
        if (zzm == null) {
            return 0.0f;
        }
        float zzd = (zzm.zzd() == -1 || zzm.zzc() == -1) ? 0.0f : zzm.zzd() / zzm.zzc();
        return zzd == 0.0f ? zzb(zzm.zzf()) : zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zzf() {
        if (this.zza.zzj() != null) {
            return this.zza.zzj().zzf();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final float zzg() {
        if (this.zza.zzj() != null) {
            return this.zza.zzj().zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final com.google.android.gms.ads.internal.client.zzeb zzh() {
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final InterfaceC0456Qm zzi() {
        InterfaceC0456Qm interfaceC0456Qm = this.zzb;
        if (interfaceC0456Qm != null) {
            return interfaceC0456Qm;
        }
        zzbfw zzm = this.zza.zzm();
        if (zzm == null) {
            return null;
        }
        return zzm.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzj(InterfaceC0456Qm interfaceC0456Qm) {
        this.zzb = interfaceC0456Qm;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzk() {
        return this.zza.zzaf();
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final boolean zzl() {
        return this.zza.zzj() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzbft
    public final void zzm(zzbhe zzbheVar) {
        if (this.zza.zzj() instanceof zzcfz) {
            ((zzcfz) this.zza.zzj()).zzv(zzbheVar);
        }
    }
}
