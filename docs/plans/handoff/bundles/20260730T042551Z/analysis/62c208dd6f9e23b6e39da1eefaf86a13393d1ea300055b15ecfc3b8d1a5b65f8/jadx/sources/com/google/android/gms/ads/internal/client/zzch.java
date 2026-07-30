package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbpd;
import com.google.android.gms.internal.ads.zzbpe;
import com.google.android.gms.internal.ads.zzbwp;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzch extends zzayb implements zzci {
    public zzch() {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzcf zzcdVar;
        switch (i) {
            case 1:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzft.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcdVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    zzcdVar = queryLocalInterface instanceof zzcf ? (zzcf) queryLocalInterface : new zzcd(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzi(createTypedArrayList, zzcdVar);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                zzayc.zzc(parcel);
                boolean zzl = zzl(readString);
                parcel2.writeNoException();
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 3:
                String readString2 = parcel.readString();
                zzayc.zzc(parcel);
                zzbwp zzg = zzg(readString2);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzg);
                return true;
            case 4:
                String readString3 = parcel.readString();
                zzayc.zzc(parcel);
                boolean zzj = zzj(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zzj ? 1 : 0);
                return true;
            case 5:
                String readString4 = parcel.readString();
                zzayc.zzc(parcel);
                zzbad zze = zze(readString4);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zze);
                return true;
            case 6:
                String readString5 = parcel.readString();
                zzayc.zzc(parcel);
                boolean zzk = zzk(readString5);
                parcel2.writeNoException();
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            case 7:
                String readString6 = parcel.readString();
                zzayc.zzc(parcel);
                zzby zzf = zzf(readString6);
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzf);
                return true;
            case 8:
                zzbpe zzf2 = zzbpd.zzf(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzh(zzf2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
