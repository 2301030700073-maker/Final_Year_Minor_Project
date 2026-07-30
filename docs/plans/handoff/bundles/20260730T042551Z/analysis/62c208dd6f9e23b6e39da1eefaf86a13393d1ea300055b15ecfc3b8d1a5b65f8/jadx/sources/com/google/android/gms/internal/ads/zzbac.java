package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbac extends zzayb implements zzbad {
    public zzbac() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    public static zzbad zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        return queryLocalInterface instanceof zzbad ? (zzbad) queryLocalInterface : new zzbab(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbak zzbaiVar;
        switch (i) {
            case 2:
                com.google.android.gms.ads.internal.client.zzby zze = zze();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    if (queryLocalInterface instanceof zzbah) {
                    }
                }
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbaiVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzbaiVar = queryLocalInterface2 instanceof zzbak ? (zzbak) queryLocalInterface2 : new zzbai(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzi(n, zzbaiVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzdy zzf = zzf();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzf);
                return true;
            case 6:
                boolean zzg = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzg(zzg);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdr zzb = com.google.android.gms.ads.internal.client.zzdq.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzh(zzb);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
