package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbri extends zzbam implements zzbrj {
    public zzbri() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbrj zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzbrj ? (zzbrj) queryLocalInterface : new zzbrh(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String readString = parcel.readString();
            zzban.zzh(parcel);
            zzbrm zzb = zzb(readString);
            parcel2.writeNoException();
            zzban.zze(parcel2, zzb);
        } else if (i == 2) {
            String readString2 = parcel.readString();
            zzban.zzh(parcel);
            boolean zzc = zzc(readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zzc ? 1 : 0);
        } else if (i == 3) {
            String readString3 = parcel.readString();
            zzban.zzh(parcel);
            zzbti zze = zze(readString3);
            parcel2.writeNoException();
            zzban.zze(parcel2, zze);
        } else {
            if (i != 4) {
                return false;
            }
            String readString4 = parcel.readString();
            zzban.zzh(parcel);
            boolean zzd = zzd(readString4);
            parcel2.writeNoException();
            parcel2.writeInt(zzd ? 1 : 0);
        }
        return true;
    }
}
