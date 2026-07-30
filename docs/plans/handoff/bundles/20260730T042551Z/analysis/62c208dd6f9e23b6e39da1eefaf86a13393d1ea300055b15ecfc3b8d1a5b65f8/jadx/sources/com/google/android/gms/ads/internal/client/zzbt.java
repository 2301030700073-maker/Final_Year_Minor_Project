package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbfl;
import com.google.android.gms.internal.ads.zzbgt;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgw;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhc;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbhg;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzbhj;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzblz;
import com.google.android.gms.internal.ads.zzbmh;
import com.google.android.gms.internal.ads.zzbmi;

/* loaded from: classes.dex */
public abstract class zzbt extends zzayb implements zzbu {
    public zzbt() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbl zzblVar = null;
        zzcq zzcqVar = null;
        switch (i) {
            case 1:
                zzbr zze = zze();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzblVar = queryLocalInterface instanceof zzbl ? (zzbl) queryLocalInterface : new zzbj(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzl(zzblVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzbgu zzb = zzbgt.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 4:
                zzbgx zzb2 = zzbgw.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzg(zzb2);
                parcel2.writeNoException();
                return true;
            case 5:
                String readString = parcel.readString();
                zzbhd zzb3 = zzbhc.zzb(parcel.readStrongBinder());
                zzbha zzb4 = zzbgz.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzh(readString, zzb3, zzb4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbfl zzbflVar = (zzbfl) zzayc.zza(parcel, zzbfl.CREATOR);
                zzayc.zzc(parcel);
                zzo(zzbflVar);
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcqVar = queryLocalInterface2 instanceof zzcq ? (zzcq) queryLocalInterface2 : new zzcq(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzq(zzcqVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbhh zzb5 = zzbhg.zzb(parcel.readStrongBinder());
                zzs zzsVar = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                zzayc.zzc(parcel);
                zzj(zzb5, zzsVar);
                parcel2.writeNoException();
                return true;
            case 9:
                PublisherAdViewOptions publisherAdViewOptions = (PublisherAdViewOptions) zzayc.zza(parcel, PublisherAdViewOptions.CREATOR);
                zzayc.zzc(parcel);
                zzp(publisherAdViewOptions);
                parcel2.writeNoException();
                return true;
            case 10:
                zzbhk zzb6 = zzbhj.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzk(zzb6);
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzblz zzblzVar = (zzblz) zzayc.zza(parcel, zzblz.CREATOR);
                zzayc.zzc(parcel);
                zzn(zzblzVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbmi zzb7 = zzbmh.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzi(zzb7);
                parcel2.writeNoException();
                return true;
            case 15:
                AdManagerAdViewOptions adManagerAdViewOptions = (AdManagerAdViewOptions) zzayc.zza(parcel, AdManagerAdViewOptions.CREATOR);
                zzayc.zzc(parcel);
                zzm(adManagerAdViewOptions);
                parcel2.writeNoException();
                return true;
        }
    }
}
