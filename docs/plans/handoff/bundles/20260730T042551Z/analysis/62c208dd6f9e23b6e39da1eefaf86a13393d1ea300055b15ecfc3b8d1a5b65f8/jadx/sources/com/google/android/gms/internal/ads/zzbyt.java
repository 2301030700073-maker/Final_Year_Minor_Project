package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzbyt extends zzayb implements zzbyu {
    public zzbyt() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzbyu zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof zzbyu ? (zzbyu) queryLocalInterface : new zzbys(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbyr zzbyrVar = null;
        switch (i) {
            case 1:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbyy zzbyyVar = (zzbyy) zzayc.zza(parcel, zzbyy.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzbyrVar = queryLocalInterface instanceof zzbyr ? (zzbyr) queryLocalInterface : new zzbyp(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzf(n, zzbyyVar, zzbyrVar);
                parcel2.writeNoException();
                return true;
            case 2:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzk(n2);
                parcel2.writeNoException();
                return true;
            case 3:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 4:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 5:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbtt zzb = zzbts.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzm(createTypedArrayList, n3, zzb);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList createTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbtt zzb2 = zzbts.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzl(createTypedArrayList2, n4, zzb2);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbuc zzbucVar = (zzbuc) zzayc.zza(parcel, zzbuc.CREATOR);
                zzayc.zzc(parcel);
                zzg(zzbucVar);
                parcel2.writeNoException();
                return true;
            case 8:
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzj(n5);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList createTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                InterfaceC0456Qm n6 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbtt zzb3 = zzbts.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzi(createTypedArrayList3, n6, zzb3);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList createTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                InterfaceC0456Qm n7 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbtt zzb4 = zzbts.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzh(createTypedArrayList4, n7, zzb4);
                parcel2.writeNoException();
                return true;
            case 11:
                InterfaceC0456Qm n8 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n9 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                String readString = parcel.readString();
                InterfaceC0456Qm n10 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                InterfaceC0456Qm zze = zze(n8, n9, readString, n10);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            default:
                return false;
        }
    }
}
