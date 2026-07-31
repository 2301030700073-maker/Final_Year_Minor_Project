package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbcm extends zzbam implements zzbcn {
    public zzbcm() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    public static zzbcn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        return queryLocalInterface instanceof zzbcn ? (zzbcn) queryLocalInterface : new zzbcl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbcu zzbcsVar;
        switch (i) {
            case 2:
                com.google.android.gms.ads.internal.client.zzbx zze = zze();
                parcel2.writeNoException();
                zzban.zze(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    if (queryLocalInterface instanceof zzbcr) {
                    }
                }
                zzban.zzh(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbcsVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzbcsVar = queryLocalInterface2 instanceof zzbcu ? (zzbcu) queryLocalInterface2 : new zzbcs(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zzf(asInterface, zzbcsVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzea zzg = zzg();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzg);
                return true;
            case 6:
                boolean zza = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzh(zza);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdt zzb = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzi(zzb);
                parcel2.writeNoException();
                return true;
            case 8:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 9:
                long zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeLong(zzk);
                return true;
            case 10:
                long readLong = parcel.readLong();
                zzban.zzh(parcel);
                zzl(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
