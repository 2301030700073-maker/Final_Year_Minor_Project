package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbww extends zzbam implements zzbwx {
    public zzbww() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbxb zzbxbVar = null;
        zzbxc zzbxcVar = null;
        zzbxb zzbxbVar2 = null;
        zzbxb zzbxbVar3 = null;
        zzbxb zzbxbVar4 = null;
        switch (i) {
            case 1:
                zzban.zzh(parcel);
                parcel2.writeNoException();
                zzban.zzd(parcel2, null);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (queryLocalInterface instanceof zzbwy) {
                    }
                }
                zzban.zzh(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbxj zzbxjVar = (zzbxj) zzban.zzb(parcel, zzbxj.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbxbVar = queryLocalInterface2 instanceof zzbxb ? (zzbxb) queryLocalInterface2 : new zzbwz(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zze(zzbxjVar, zzbxbVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbxj zzbxjVar2 = (zzbxj) zzban.zzb(parcel, zzbxj.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbxbVar4 = queryLocalInterface3 instanceof zzbxb ? (zzbxb) queryLocalInterface3 : new zzbwz(readStrongBinder3);
                }
                zzban.zzh(parcel);
                zzf(zzbxjVar2, zzbxbVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbxj zzbxjVar3 = (zzbxj) zzban.zzb(parcel, zzbxj.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbxbVar3 = queryLocalInterface4 instanceof zzbxb ? (zzbxb) queryLocalInterface4 : new zzbwz(readStrongBinder4);
                }
                zzban.zzh(parcel);
                zzg(zzbxjVar3, zzbxbVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbxbVar2 = queryLocalInterface5 instanceof zzbxb ? (zzbxb) queryLocalInterface5 : new zzbwz(readStrongBinder5);
                }
                zzban.zzh(parcel);
                zzh(readString, zzbxbVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbwt zzbwtVar = (zzbwt) zzban.zzb(parcel, zzbwt.CREATOR);
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    zzbxcVar = queryLocalInterface6 instanceof zzbxc ? (zzbxc) queryLocalInterface6 : new zzbxc(readStrongBinder6);
                }
                zzban.zzh(parcel);
                zzj(zzbwtVar, zzbxcVar);
                parcel2.writeNoException();
                return true;
            case 9:
                String readString2 = parcel.readString();
                zzban.zzh(parcel);
                zzi(readString2);
                parcel2.writeNoException();
                return true;
        }
    }
}
