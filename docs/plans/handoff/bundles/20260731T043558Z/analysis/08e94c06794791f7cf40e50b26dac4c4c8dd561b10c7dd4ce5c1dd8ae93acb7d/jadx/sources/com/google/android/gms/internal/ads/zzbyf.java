package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbyf extends zzbam implements zzbyg {
    public zzbyf() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzbyg zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzbyg ? (zzbyg) queryLocalInterface : new zzbye(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zze(asInterface);
                break;
            case 2:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzban.zzh(parcel);
                zzf(asInterface2, readInt);
                break;
            case 3:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzg(asInterface3);
                break;
            case 4:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzh(asInterface4);
                break;
            case 5:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzi(asInterface5);
                break;
            case 6:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzj(asInterface6);
                break;
            case 7:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbyh zzbyhVar = (zzbyh) zzban.zzb(parcel, zzbyh.CREATOR);
                zzban.zzh(parcel);
                zzk(asInterface7, zzbyhVar);
                break;
            case 8:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzl(asInterface8);
                break;
            case 9:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzban.zzh(parcel);
                zzm(asInterface9, readInt2);
                break;
            case 10:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzn(asInterface10);
                break;
            case 11:
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzo(asInterface11);
                break;
            case 12:
                zzban.zzh(parcel);
                break;
            case 13:
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzp(asInterface12);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
