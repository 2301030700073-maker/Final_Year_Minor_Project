package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import defpackage.InterfaceC0456Qm;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbgp extends zzayb implements zzbgq {
    public zzbgp() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzbgq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzbgq ? (zzbgq) queryLocalInterface : new zzbgo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                String readString = parcel.readString();
                zzayc.zzc(parcel);
                String zzj = zzj(readString);
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzayc.zzc(parcel);
                zzbfw zzg = zzg(readString2);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzg);
                return true;
            case 3:
                List<String> zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeStringList(zzk);
                return true;
            case 4:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 5:
                String readString3 = parcel.readString();
                zzayc.zzc(parcel);
                zzn(readString3);
                parcel2.writeNoException();
                return true;
            case 6:
                zzo();
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzeb zze = zze();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                InterfaceC0456Qm zzh = zzh();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzh);
                return true;
            case 10:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                boolean zzs = zzs(n);
                parcel2.writeNoException();
                parcel2.writeInt(zzs ? 1 : 0);
                return true;
            case 11:
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 12:
                boolean zzq = zzq();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzq ? 1 : 0);
                return true;
            case 13:
                boolean zzt = zzt();
                parcel2.writeNoException();
                int i4 = zzayc.zza;
                parcel2.writeInt(zzt ? 1 : 0);
                return true;
            case 14:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzp(n2);
                parcel2.writeNoException();
                return true;
            case 15:
                zzm();
                parcel2.writeNoException();
                return true;
            case 16:
                zzbft zzf = zzf();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzf);
                return true;
            case 17:
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                boolean zzr = zzr(n3);
                parcel2.writeNoException();
                parcel2.writeInt(zzr ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
