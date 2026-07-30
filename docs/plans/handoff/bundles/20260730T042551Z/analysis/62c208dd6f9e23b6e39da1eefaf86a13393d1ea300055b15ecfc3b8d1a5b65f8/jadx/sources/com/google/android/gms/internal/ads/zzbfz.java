package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbfz extends zzayb implements zzbga {
    public zzbfz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzbga zzdy(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof zzbga ? (zzbga) queryLocalInterface : new zzbfy(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbft zzbfrVar;
        switch (i) {
            case 1:
                String readString = parcel.readString();
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzdt(readString, n);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzayc.zzc(parcel);
                InterfaceC0456Qm zzb = zzb(readString2);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzb);
                return true;
            case 3:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzdx(n2);
                parcel2.writeNoException();
                return true;
            case 4:
                zzc();
                parcel2.writeNoException();
                return true;
            case 5:
                InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                parcel.readInt();
                zzayc.zzc(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzdu(n3);
                parcel2.writeNoException();
                return true;
            case 7:
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzd(n4);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbfrVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    zzbfrVar = queryLocalInterface instanceof zzbft ? (zzbft) queryLocalInterface : new zzbfr(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzdv(zzbfrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzdw(n5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
