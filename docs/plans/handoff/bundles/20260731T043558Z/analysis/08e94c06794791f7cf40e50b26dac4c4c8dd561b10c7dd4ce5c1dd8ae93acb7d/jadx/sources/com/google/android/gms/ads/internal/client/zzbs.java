package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbhx;
import com.google.android.gms.internal.ads.zzbjf;
import com.google.android.gms.internal.ads.zzbjg;
import com.google.android.gms.internal.ads.zzbji;
import com.google.android.gms.internal.ads.zzbjj;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbjm;
import com.google.android.gms.internal.ads.zzbjo;
import com.google.android.gms.internal.ads.zzbjp;
import com.google.android.gms.internal.ads.zzbjs;
import com.google.android.gms.internal.ads.zzbjt;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzbjw;
import com.google.android.gms.internal.ads.zzboi;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbor;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbs extends zzbam implements zzbt {
    public zzbs() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbkVar = null;
        zzcs zzcsVar = null;
        switch (i) {
            case 1:
                zzbq zze = zze();
                parcel2.writeNoException();
                zzban.zze(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbkVar = queryLocalInterface instanceof zzbk ? (zzbk) queryLocalInterface : new zzbi(readStrongBinder);
                }
                zzban.zzh(parcel);
                zzf(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbjg zzb = zzbjf.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzg(zzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbjj zzb2 = zzbji.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzh(zzb2);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                zzbjp zzb3 = zzbjo.zzb(parcel.readStrongBinder());
                zzbjm zzb4 = zzbjl.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzi(readString, zzb3, zzb4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbhx zzbhxVar = (zzbhx) zzban.zzb(parcel, zzbhx.CREATOR);
                zzban.zzh(parcel);
                zzj(zzbhxVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcsVar = queryLocalInterface2 instanceof zzcs ? (zzcs) queryLocalInterface2 : new zzcs(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zzq(zzcsVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbjt zzb5 = zzbjs.zzb(parcel.readStrongBinder());
                zzr zzrVar = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                zzban.zzh(parcel);
                zzk(zzb5, zzrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzban.zzb(parcel, PublisherAdViewOptions.CREATOR);
                zzban.zzh(parcel);
                zzl(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbjw zzb6 = zzbjv.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzm(zzb6);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzboi zzboiVar = (zzboi) zzban.zzb(parcel, zzboi.CREATOR);
                zzban.zzh(parcel);
                zzn(zzboiVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbor zzb7 = zzboq.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzo(zzb7);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzban.zzb(parcel, AdManagerAdViewOptions.CREATOR);
                zzban.zzh(parcel);
                zzp(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
