package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzbal;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbjm;
import com.google.android.gms.internal.ads.zzbjp;
import com.google.android.gms.internal.ads.zzbjt;
import com.google.android.gms.internal.ads.zzbjw;
import com.google.android.gms.internal.ads.zzboi;
import com.google.android.gms.internal.ads.zzbor;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbr extends zzbal implements zzbt {
    zzbr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final zzbq zze() throws RemoteException {
        zzbq zzboVar;
        Parcel zzde = zzde(1, zza());
        IBinder readStrongBinder = zzde.readStrongBinder();
        if (readStrongBinder == null) {
            zzboVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzboVar = queryLocalInterface instanceof zzbq ? (zzbq) queryLocalInterface : new zzbo(readStrongBinder);
        }
        zzde.recycle();
        return zzboVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzf(zzbk zzbkVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbkVar);
        zzdf(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzg(zzbjg zzbjgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzh(zzbjj zzbjjVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzi(String str, zzbjp zzbjpVar, zzbjm zzbjmVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzban.zze(zza, zzbjpVar);
        zzban.zze(zza, zzbjmVar);
        zzdf(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzj(zzbhx zzbhxVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, zzbhxVar);
        zzdf(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzk(zzbjt zzbjtVar, zzr zzrVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbjtVar);
        zzban.zzc(zza, zzrVar);
        zzdf(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzl(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzm(zzbjw zzbjwVar) throws RemoteException {
        Parcel zza = zza();
        zzban.zze(zza, zzbjwVar);
        zzdf(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzn(zzboi zzboiVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzo(zzbor zzborVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzp(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zza = zza();
        zzban.zzc(zza, adManagerAdViewOptions);
        zzdf(15, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbt
    public final void zzq(zzcs zzcsVar) throws RemoteException {
        throw null;
    }
}
