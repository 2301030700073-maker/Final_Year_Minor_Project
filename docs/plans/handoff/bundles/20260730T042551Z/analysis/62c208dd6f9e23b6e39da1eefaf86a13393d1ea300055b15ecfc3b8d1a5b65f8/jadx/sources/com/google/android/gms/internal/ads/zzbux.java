package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbux extends zzayb implements zzbuy {
    public zzbux() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbvc zzbvcVar = null;
        zzbvd zzbvdVar = null;
        zzbvc zzbvcVar2 = null;
        zzbvc zzbvcVar3 = null;
        zzbvc zzbvcVar4 = null;
        switch (i) {
            case 1:
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                zzayc.zze(parcel2, null);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (queryLocalInterface instanceof zzbuz) {
                    }
                }
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbvk zzbvkVar = (zzbvk) zzayc.zza(parcel, zzbvk.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvcVar = queryLocalInterface2 instanceof zzbvc ? (zzbvc) queryLocalInterface2 : new zzbva(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzg(zzbvkVar, zzbvcVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbvk zzbvkVar2 = (zzbvk) zzayc.zza(parcel, zzbvk.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvcVar4 = queryLocalInterface3 instanceof zzbvc ? (zzbvc) queryLocalInterface3 : new zzbva(readStrongBinder3);
                }
                zzayc.zzc(parcel);
                zzf(zzbvkVar2, zzbvcVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbvk zzbvkVar3 = (zzbvk) zzayc.zza(parcel, zzbvk.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvcVar3 = queryLocalInterface4 instanceof zzbvc ? (zzbvc) queryLocalInterface4 : new zzbva(readStrongBinder4);
                }
                zzayc.zzc(parcel);
                zze(zzbvkVar3, zzbvcVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbvcVar2 = queryLocalInterface5 instanceof zzbvc ? (zzbvc) queryLocalInterface5 : new zzbva(readStrongBinder5);
                }
                zzayc.zzc(parcel);
                zzh(readString, zzbvcVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbuu zzbuuVar = (zzbuu) zzayc.zza(parcel, zzbuu.CREATOR);
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    zzbvdVar = queryLocalInterface6 instanceof zzbvd ? (zzbvd) queryLocalInterface6 : new zzbvd(readStrongBinder6);
                }
                zzayc.zzc(parcel);
                zzi(zzbuuVar, zzbvdVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
