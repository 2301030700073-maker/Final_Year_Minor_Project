package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzboc;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbri;
import com.google.android.gms.internal.ads.zzbrj;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzda extends zzbam implements zzdb {
    public zzda() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzdn zzdlVar;
        switch (i) {
            case 1:
                zze();
                parcel2.writeNoException();
                return true;
            case 2:
                float readFloat = parcel.readFloat();
                zzban.zzh(parcel);
                zzf(readFloat);
                parcel2.writeNoException();
                return true;
            case 3:
                String readString = parcel.readString();
                zzban.zzh(parcel);
                zzg(readString);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zza = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzh(zza);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString2 = parcel.readString();
                zzban.zzh(parcel);
                zzi(asInterface, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                String readString3 = parcel.readString();
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzj(readString3, asInterface2);
                parcel2.writeNoException();
                return true;
            case 7:
                float zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeFloat(zzk);
                return true;
            case 8:
                boolean zzl = zzl();
                parcel2.writeNoException();
                int i3 = zzban.zza;
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 9:
                String zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeString(zzm);
                return true;
            case 10:
                String readString4 = parcel.readString();
                zzban.zzh(parcel);
                zzn(readString4);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbrj zzf = zzbri.zzf(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzo(zzf);
                parcel2.writeNoException();
                return true;
            case 12:
                zzbod zzc = zzboc.zzc(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzp(zzc);
                parcel2.writeNoException();
                return true;
            case 13:
                List zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzq);
                return true;
            case 14:
                zzfv zzfvVar = (zzfv) zzban.zzb(parcel, zzfv.CREATOR);
                zzban.zzh(parcel);
                zzr(zzfvVar);
                parcel2.writeNoException();
                return true;
            case 15:
                zzs();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzdlVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzdlVar = queryLocalInterface instanceof zzdn ? (zzdn) queryLocalInterface : new zzdl(readStrongBinder);
                }
                zzban.zzh(parcel);
                zzt(zzdlVar);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean zza2 = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzu(zza2);
                parcel2.writeNoException();
                return true;
            case 18:
                String readString5 = parcel.readString();
                zzban.zzh(parcel);
                zzv(readString5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
