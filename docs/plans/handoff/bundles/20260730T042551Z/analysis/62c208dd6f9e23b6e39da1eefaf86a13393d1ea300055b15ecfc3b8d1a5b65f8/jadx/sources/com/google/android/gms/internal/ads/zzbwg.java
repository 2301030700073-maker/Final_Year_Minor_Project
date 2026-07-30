package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbwg extends zzayb implements zzbwh {
    public zzbwg() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzbwh zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzbwh ? (zzbwh) queryLocalInterface : new zzbwf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzl(n);
                break;
            case 2:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzayc.zzc(parcel);
                zzk(n2, readInt);
                break;
            case 3:
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzi(n3);
                break;
            case 4:
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzj(n4);
                break;
            case 5:
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzo(n5);
                break;
            case 6:
                InterfaceC0456Qm n6 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzf(n6);
                break;
            case 7:
                InterfaceC0456Qm n7 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbwi zzbwiVar = (zzbwi) zzayc.zza(parcel, zzbwi.CREATOR);
                zzayc.zzc(parcel);
                zzm(n7, zzbwiVar);
                break;
            case 8:
                InterfaceC0456Qm n8 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zze(n8);
                break;
            case 9:
                InterfaceC0456Qm n9 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzayc.zzc(parcel);
                zzg(n9, readInt2);
                break;
            case 10:
                InterfaceC0456Qm n10 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzh(n10);
                break;
            case 11:
                InterfaceC0456Qm n11 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzn(n11);
                break;
            case 12:
                zzayc.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
