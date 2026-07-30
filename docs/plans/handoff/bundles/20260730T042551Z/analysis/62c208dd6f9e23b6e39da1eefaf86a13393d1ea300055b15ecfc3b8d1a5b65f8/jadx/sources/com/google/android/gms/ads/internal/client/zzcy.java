package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbpd;
import com.google.android.gms.internal.ads.zzbpe;
import defpackage.InterfaceC0456Qm;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzcy extends zzayb implements zzcz {
    public zzcy() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzdl zzdjVar;
        switch (i) {
            case 1:
                zzk();
                parcel2.writeNoException();
                return true;
            case 2:
                float readFloat = parcel.readFloat();
                zzayc.zzc(parcel);
                zzq(readFloat);
                parcel2.writeNoException();
                return true;
            case 3:
                String readString = parcel.readString();
                zzayc.zzc(parcel);
                zzr(readString);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zzg = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzp(zzg);
                parcel2.writeNoException();
                return true;
            case 5:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                String readString2 = parcel.readString();
                zzayc.zzc(parcel);
                zzn(n, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                String readString3 = parcel.readString();
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzl(readString3, n2);
                parcel2.writeNoException();
                return true;
            case 7:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 8:
                boolean zzv = zzv();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzv ? 1 : 0);
                return true;
            case 9:
                String zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            case 10:
                String readString4 = parcel.readString();
                zzayc.zzc(parcel);
                zzh(readString4);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbpe zzf2 = zzbpd.zzf(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzo(zzf2);
                parcel2.writeNoException();
                return true;
            case 12:
                zzblu zzc = zzblt.zzc(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzs(zzc);
                parcel2.writeNoException();
                return true;
            case 13:
                List zzg2 = zzg();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzg2);
                return true;
            case 14:
                zzfv zzfvVar = (zzfv) zzayc.zza(parcel, zzfv.CREATOR);
                zzayc.zzc(parcel);
                zzu(zzfvVar);
                parcel2.writeNoException();
                return true;
            case 15:
                zzi();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzdjVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzdjVar = queryLocalInterface instanceof zzdl ? (zzdl) queryLocalInterface : new zzdj(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzm(zzdjVar);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean zzg3 = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzj(zzg3);
                parcel2.writeNoException();
                return true;
            case 18:
                String readString5 = parcel.readString();
                zzayc.zzc(parcel);
                zzt(readString5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
