package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaya;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzblz;
import com.google.android.gms.internal.ads.zzbmi;

/* loaded from: classes.dex */
public final class zzbs extends zzaya implements zzbu {
    public zzbs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final zzbr zze() {
        zzbr zzbpVar;
        Parcel zzcZ = zzcZ(1, zza());
        IBinder readStrongBinder = zzcZ.readStrongBinder();
        if (readStrongBinder == null) {
            zzbpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzbpVar = queryLocalInterface instanceof zzbr ? (zzbr) queryLocalInterface : new zzbp(readStrongBinder);
        }
        zzcZ.recycle();
        return zzbpVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzf(zzbgu zzbguVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzg(zzbgx zzbgxVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzh(String str, zzbhd zzbhdVar, zzbha zzbhaVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayc.zzf(zza, zzbhdVar);
        zzayc.zzf(zza, zzbhaVar);
        zzda(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzi(zzbmi zzbmiVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzj(zzbhh zzbhhVar, zzs zzsVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbhhVar);
        zzayc.zzd(zza, zzsVar);
        zzda(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzk(zzbhk zzbhkVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzbhkVar);
        zzda(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzl(zzbl zzblVar) {
        Parcel zza = zza();
        zzayc.zzf(zza, zzblVar);
        zzda(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        Parcel zza = zza();
        zzayc.zzd(zza, adManagerAdViewOptions);
        zzda(15, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzn(zzblz zzblzVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzo(zzbfl zzbflVar) {
        Parcel zza = zza();
        zzayc.zzd(zza, zzbflVar);
        zzda(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzq(zzcq zzcqVar) {
        throw null;
    }
}
