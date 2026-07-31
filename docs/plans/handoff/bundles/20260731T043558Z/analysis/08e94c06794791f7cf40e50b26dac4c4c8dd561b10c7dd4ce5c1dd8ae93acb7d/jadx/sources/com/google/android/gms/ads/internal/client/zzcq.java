package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbim;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzbmw;
import com.google.android.gms.internal.ads.zzbmx;
import com.google.android.gms.internal.ads.zzbna;
import com.google.android.gms.internal.ads.zzbri;
import com.google.android.gms.internal.ads.zzbrj;
import com.google.android.gms.internal.ads.zzbvb;
import com.google.android.gms.internal.ads.zzbvi;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzbyo;
import com.google.android.gms.internal.ads.zzcas;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzcq extends zzbam implements zzcr {
    public zzcq() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                String readString = parcel.readString();
                zzbrj zzf = zzbri.zzf(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzban.zzh(parcel);
                zzbx zzb = zzb(asInterface, zzrVar, readString, zzf, readInt);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzb);
                return true;
            case 2:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar2 = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                String readString2 = parcel.readString();
                zzbrj zzf2 = zzbri.zzf(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzban.zzh(parcel);
                zzbx zzc = zzc(asInterface2, zzrVar2, readString2, zzf2, readInt2);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzc);
                return true;
            case 3:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString3 = parcel.readString();
                zzbrj zzf3 = zzbri.zzf(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                zzban.zzh(parcel);
                zzbt zzd = zzd(asInterface3, readString3, zzf3, readInt3);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzd);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                parcel2.writeNoException();
                zzban.zze(parcel2, null);
                return true;
            case 5:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzbim zze = zze(asInterface4, asInterface5);
                parcel2.writeNoException();
                zzban.zze(parcel2, zze);
                return true;
            case 6:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf4 = zzbri.zzf(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                zzban.zzh(parcel);
                zzbxy zzf5 = zzf(asInterface6, zzf4, readInt4);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzf5);
                return true;
            case 7:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                parcel2.writeNoException();
                zzban.zze(parcel2, null);
                return true;
            case 8:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzbvi zzg = zzg(asInterface7);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzg);
                return true;
            case 9:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int readInt5 = parcel.readInt();
                zzban.zzh(parcel);
                zzdb zzi = zzi(asInterface8, readInt5);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzi);
                return true;
            case 10:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar3 = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                String readString4 = parcel.readString();
                int readInt6 = parcel.readInt();
                zzban.zzh(parcel);
                zzbx zzj = zzj(asInterface9, zzrVar3, readString4, readInt6);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzj);
                return true;
            case 11:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzbis zzk = zzk(asInterface10, asInterface11, asInterface12);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzk);
                return true;
            case 12:
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String readString5 = parcel.readString();
                zzbrj zzf6 = zzbri.zzf(parcel.readStrongBinder());
                int readInt7 = parcel.readInt();
                zzban.zzh(parcel);
                zzbyo zzl = zzl(asInterface13, readString5, zzf6, readInt7);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzl);
                return true;
            case 13:
                IObjectWrapper asInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzr zzrVar4 = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                String readString6 = parcel.readString();
                zzbrj zzf7 = zzbri.zzf(parcel.readStrongBinder());
                int readInt8 = parcel.readInt();
                zzban.zzh(parcel);
                zzbx zzm = zzm(asInterface14, zzrVar4, readString6, zzf7, readInt8);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzm);
                return true;
            case 14:
                IObjectWrapper asInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf8 = zzbri.zzf(parcel.readStrongBinder());
                int readInt9 = parcel.readInt();
                zzban.zzh(parcel);
                zzcas zzn = zzn(asInterface15, zzf8, readInt9);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzn);
                return true;
            case 15:
                IObjectWrapper asInterface16 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf9 = zzbri.zzf(parcel.readStrongBinder());
                int readInt10 = parcel.readInt();
                zzban.zzh(parcel);
                zzbvb zzo = zzo(asInterface16, zzf9, readInt10);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzo);
                return true;
            case 16:
                IObjectWrapper asInterface17 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf10 = zzbri.zzf(parcel.readStrongBinder());
                int readInt11 = parcel.readInt();
                zzbmx zzc2 = zzbmw.zzc(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzbna zzp = zzp(asInterface17, zzf10, readInt11, zzc2);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzp);
                return true;
            case 17:
                IObjectWrapper asInterface18 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf11 = zzbri.zzf(parcel.readStrongBinder());
                int readInt12 = parcel.readInt();
                zzban.zzh(parcel);
                zzdw zzq = zzq(asInterface18, zzf11, readInt12);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzq);
                return true;
            case 18:
                IObjectWrapper asInterface19 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbrj zzf12 = zzbri.zzf(parcel.readStrongBinder());
                int readInt13 = parcel.readInt();
                zzban.zzh(parcel);
                zzck zzh = zzh(asInterface19, zzf12, readInt13);
                parcel2.writeNoException();
                zzban.zze(parcel2, zzh);
                return true;
            default:
                return false;
        }
    }
}
