package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbam;
import com.google.android.gms.internal.ads.zzban;
import com.google.android.gms.internal.ads.zzbcp;
import com.google.android.gms.internal.ads.zzbcq;
import com.google.android.gms.internal.ads.zzbfo;
import com.google.android.gms.internal.ads.zzbfp;
import com.google.android.gms.internal.ads.zzbvq;
import com.google.android.gms.internal.ads.zzbvr;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzbvu;
import com.google.android.gms.internal.ads.zzbya;
import com.google.android.gms.internal.ads.zzbyb;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbw extends zzbam implements zzbx {
    public zzbw() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbx zzZ(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzbx ? (zzbx) queryLocalInterface : new zzbv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbk zzbkVar = null;
        zzcv zzcvVar = null;
        zzbn zzbnVar = null;
        zzdt zzdtVar = null;
        zzcb zzcbVar = null;
        zzcs zzcsVar = null;
        zzbh zzbhVar = null;
        zzco zzcoVar = null;
        switch (i) {
            case 1:
                IObjectWrapper zzb = zzb();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzb);
                return true;
            case 2:
                zzc();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzd = zzd();
                parcel2.writeNoException();
                int i3 = zzban.zza;
                parcel2.writeInt(zzd ? 1 : 0);
                return true;
            case 4:
                zzm zzmVar = (zzm) zzban.zzb(parcel, zzm.CREATOR);
                zzban.zzh(parcel);
                boolean zze = zze(zzmVar);
                parcel2.writeNoException();
                parcel2.writeInt(zze ? 1 : 0);
                return true;
            case 5:
                zzf();
                parcel2.writeNoException();
                return true;
            case 6:
                zzg();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbkVar = queryLocalInterface instanceof zzbk ? (zzbk) queryLocalInterface : new zzbi(readStrongBinder);
                }
                zzban.zzh(parcel);
                zzdW(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzcoVar = queryLocalInterface2 instanceof zzco ? (zzco) queryLocalInterface2 : new zzcm(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zzi(zzcoVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzl();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzm();
                parcel2.writeNoException();
                return true;
            case 12:
                zzr zzn = zzn();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzn);
                return true;
            case 13:
                zzr zzrVar = (zzr) zzban.zzb(parcel, zzr.CREATOR);
                zzban.zzh(parcel);
                zzo(zzrVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbvr zzb2 = zzbvq.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzp(zzb2);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbvu zzb3 = zzbvt.zzb(parcel.readStrongBinder());
                String readString = parcel.readString();
                zzban.zzh(parcel);
                zzq(zzb3, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 19:
                zzbfp zzb4 = zzbfo.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzx(zzb4);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbhVar = queryLocalInterface3 instanceof zzbh ? (zzbh) queryLocalInterface3 : new zzbf(readStrongBinder3);
                }
                zzban.zzh(parcel);
                zzy(zzbhVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcsVar = queryLocalInterface4 instanceof zzcs ? (zzcs) queryLocalInterface4 : new zzcs(readStrongBinder4);
                }
                zzban.zzh(parcel);
                zzY(zzcsVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zza = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzz(zza);
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzB = zzB();
                parcel2.writeNoException();
                int i4 = zzban.zza;
                parcel2.writeInt(zzB ? 1 : 0);
                return true;
            case 24:
                zzbyb zzb5 = zzbya.zzb(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzC(zzb5);
                parcel2.writeNoException();
                return true;
            case 25:
                String readString2 = parcel.readString();
                zzban.zzh(parcel);
                zzD(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzed zzF = zzF();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzF);
                return true;
            case 29:
                zzga zzgaVar = (zzga) zzban.zzb(parcel, zzga.CREATOR);
                zzban.zzh(parcel);
                zzG(zzgaVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzeh zzehVar = (zzeh) zzban.zzb(parcel, zzeh.CREATOR);
                zzban.zzh(parcel);
                zzH(zzehVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String zzu = zzu();
                parcel2.writeNoException();
                parcel2.writeString(zzu);
                return true;
            case 32:
                zzco zzv = zzv();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzv);
                return true;
            case 33:
                zzbk zzw = zzw();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzw);
                return true;
            case 34:
                boolean zza2 = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzK(zza2);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzcbVar = queryLocalInterface5 instanceof zzcb ? (zzcb) queryLocalInterface5 : new zzbz(readStrongBinder5);
                }
                zzban.zzh(parcel);
                zzj(zzcbVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzk = zzk();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzk);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzban.zzh(parcel);
                zzE(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzx zzxVar = (zzx) zzban.zzb(parcel, zzx.CREATOR);
                zzban.zzh(parcel);
                zzI(zzxVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzbcq zze2 = zzbcp.zze(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzJ(zze2);
                parcel2.writeNoException();
                return true;
            case 41:
                zzea zzt = zzt();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzt);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzdtVar = queryLocalInterface6 instanceof zzdt ? (zzdt) queryLocalInterface6 : new zzdr(readStrongBinder6);
                }
                zzban.zzh(parcel);
                zzP(zzdtVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzm zzmVar2 = (zzm) zzban.zzb(parcel, zzm.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzbnVar = queryLocalInterface7 instanceof zzbn ? (zzbn) queryLocalInterface7 : new zzbl(readStrongBinder7);
                }
                zzban.zzh(parcel);
                zzQ(zzmVar2, zzbnVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzR(asInterface);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzcvVar = queryLocalInterface8 instanceof zzcv ? (zzcv) queryLocalInterface8 : new zzct(readStrongBinder8);
                }
                zzban.zzh(parcel);
                zzS(zzcvVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zzA = zzA();
                parcel2.writeNoException();
                int i5 = zzban.zza;
                parcel2.writeInt(zzA ? 1 : 0);
                return true;
            case 47:
                long zzU = zzU();
                parcel2.writeNoException();
                parcel2.writeLong(zzU);
                return true;
            case 48:
                long readLong = parcel.readLong();
                zzban.zzh(parcel);
                zzT(readLong);
                parcel2.writeNoException();
                return true;
        }
    }
}
