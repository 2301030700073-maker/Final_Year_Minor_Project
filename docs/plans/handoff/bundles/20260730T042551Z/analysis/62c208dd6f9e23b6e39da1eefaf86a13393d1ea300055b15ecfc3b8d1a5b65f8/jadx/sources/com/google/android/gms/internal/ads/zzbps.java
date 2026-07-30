package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import defpackage.InterfaceC0456Qm;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbps extends zzayb implements zzbpt {
    public zzbps() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    public static zzbpt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
        return queryLocalInterface instanceof zzbpt ? (zzbpt) queryLocalInterface : new zzbpr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 3:
                List zzv = zzv();
                parcel2.writeNoException();
                parcel2.writeList(zzv);
                return true;
            case 4:
                String zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeString(zzq);
                return true;
            case 5:
                zzbfw zzl = zzl();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzl);
                return true;
            case 6:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 7:
                String zzp = zzp();
                parcel2.writeNoException();
                parcel2.writeString(zzp);
                return true;
            case 8:
                double zze = zze();
                parcel2.writeNoException();
                parcel2.writeDouble(zze);
                return true;
            case 9:
                String zzu = zzu();
                parcel2.writeNoException();
                parcel2.writeString(zzu);
                return true;
            case 10:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzeb zzj = zzj();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzj);
                return true;
            case 12:
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 13:
                InterfaceC0456Qm zzm = zzm();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzm);
                return true;
            case 14:
                InterfaceC0456Qm zzn = zzn();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzn);
                return true;
            case 15:
                InterfaceC0456Qm zzo = zzo();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzo);
                return true;
            case 16:
                Bundle zzi = zzi();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzi);
                return true;
            case 17:
                boolean zzB = zzB();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzB ? 1 : 0);
                return true;
            case 18:
                boolean zzA = zzA();
                parcel2.writeNoException();
                int i4 = zzayc.zza;
                parcel2.writeInt(zzA ? 1 : 0);
                return true;
            case 19:
                zzx();
                parcel2.writeNoException();
                return true;
            case 20:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzw(n);
                parcel2.writeNoException();
                return true;
            case 21:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzy(n2, n3, n4);
                parcel2.writeNoException();
                return true;
            case 22:
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzz(n5);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                float zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeFloat(zzf);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                float zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeFloat(zzh);
                return true;
            case Constants.MAX_TREE_DEPTH /* 25 */:
                float zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeFloat(zzg);
                return true;
            default:
                return false;
        }
    }
}
