package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzayb;
import com.google.android.gms.internal.ads.zzayc;
import com.google.android.gms.internal.ads.zzbaf;
import com.google.android.gms.internal.ads.zzbag;
import com.google.android.gms.internal.ads.zzbdf;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzbtm;
import com.google.android.gms.internal.ads.zzbtn;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbwb;
import com.google.android.gms.internal.ads.zzbwc;
import defpackage.InterfaceC0456Qm;

/* loaded from: classes.dex */
public abstract class zzbx extends zzayb implements zzby {
    public zzbx() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzby zzad(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzby ? (zzby) queryLocalInterface : new zzbw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbl zzblVar = null;
        zzct zzctVar = null;
        zzbo zzboVar = null;
        zzdr zzdrVar = null;
        zzcc zzccVar = null;
        zzcq zzcqVar = null;
        zzbi zzbiVar = null;
        zzcm zzcmVar = null;
        switch (i) {
            case 1:
                InterfaceC0456Qm zzn = zzn();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzn);
                return true;
            case 2:
                zzx();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzaa = zzaa();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzaa ? 1 : 0);
                return true;
            case 4:
                zzm zzmVar = (zzm) zzayc.zza(parcel, zzm.CREATOR);
                zzayc.zzc(parcel);
                boolean zzab = zzab(zzmVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzab ? 1 : 0);
                return true;
            case 5:
                zzz();
                parcel2.writeNoException();
                return true;
            case 6:
                zzB();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzblVar = queryLocalInterface instanceof zzbl ? (zzbl) queryLocalInterface : new zzbj(readStrongBinder);
                }
                zzayc.zzc(parcel);
                zzD(zzblVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzcmVar = queryLocalInterface2 instanceof zzcm ? (zzcm) queryLocalInterface2 : new zzck(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzG(zzcmVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzX();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzA();
                parcel2.writeNoException();
                return true;
            case 12:
                zzs zzg = zzg();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzg);
                return true;
            case 13:
                zzs zzsVar = (zzs) zzayc.zza(parcel, zzs.CREATOR);
                zzayc.zzc(parcel);
                zzF(zzsVar);
                parcel2.writeNoException();
                return true;
            case 14:
                zzbtn zzb = zzbtm.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzM(zzb);
                parcel2.writeNoException();
                return true;
            case 15:
                zzbtq zzb2 = zzbtp.zzb(parcel.readStrongBinder());
                String readString = parcel.readString();
                zzayc.zzc(parcel);
                zzQ(zzb2, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 19:
                zzbdg zzb3 = zzbdf.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzO(zzb3);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbiVar = queryLocalInterface3 instanceof zzbi ? (zzbi) queryLocalInterface3 : new zzbg(readStrongBinder3);
                }
                zzayc.zzc(parcel);
                zzC(zzbiVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzcqVar = queryLocalInterface4 instanceof zzcq ? (zzcq) queryLocalInterface4 : new zzcq(readStrongBinder4);
                }
                zzayc.zzc(parcel);
                zzac(zzcqVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean zzg2 = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzN(zzg2);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                boolean zzZ = zzZ();
                parcel2.writeNoException();
                int i4 = zzayc.zza;
                parcel2.writeInt(zzZ ? 1 : 0);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                zzbwc zzb4 = zzbwb.zzb(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzS(zzb4);
                parcel2.writeNoException();
                return true;
            case Constants.MAX_TREE_DEPTH /* 25 */:
                String readString2 = parcel.readString();
                zzayc.zzc(parcel);
                zzT(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzeb zzl = zzl();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzl);
                return true;
            case 29:
                zzga zzgaVar = (zzga) zzayc.zza(parcel, zzga.CREATOR);
                zzayc.zzc(parcel);
                zzU(zzgaVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzef zzefVar = (zzef) zzayc.zza(parcel, zzef.CREATOR);
                zzayc.zzc(parcel);
                zzK(zzefVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 32:
                zzcm zzj = zzj();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzj);
                return true;
            case 33:
                zzbl zzi = zzi();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzi);
                return true;
            case 34:
                boolean zzg3 = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzL(zzg3);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzt = zzt();
                parcel2.writeNoException();
                parcel2.writeString(zzt);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzccVar = queryLocalInterface5 instanceof zzcc ? (zzcc) queryLocalInterface5 : new zzca(readStrongBinder5);
                }
                zzayc.zzc(parcel);
                zzE(zzccVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzd = zzd();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzd);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzayc.zzc(parcel);
                zzR(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzy zzyVar = (zzy) zzayc.zza(parcel, zzy.CREATOR);
                zzayc.zzc(parcel);
                zzI(zzyVar);
                parcel2.writeNoException();
                return true;
            case 40:
                zzbag zze = zzbaf.zze(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzH(zze);
                parcel2.writeNoException();
                return true;
            case 41:
                zzdy zzk = zzk();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzk);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzdrVar = queryLocalInterface6 instanceof zzdr ? (zzdr) queryLocalInterface6 : new zzdp(readStrongBinder6);
                }
                zzayc.zzc(parcel);
                zzP(zzdrVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzm zzmVar2 = (zzm) zzayc.zza(parcel, zzm.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzboVar = queryLocalInterface7 instanceof zzbo ? (zzbo) queryLocalInterface7 : new zzbm(readStrongBinder7);
                }
                zzayc.zzc(parcel);
                zzy(zzmVar2, zzboVar);
                parcel2.writeNoException();
                return true;
            case 44:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzW(n);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzctVar = queryLocalInterface8 instanceof zzct ? (zzct) queryLocalInterface8 : new zzcr(readStrongBinder8);
                }
                zzayc.zzc(parcel);
                zzJ(zzctVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zzY = zzY();
                parcel2.writeNoException();
                int i5 = zzayc.zza;
                parcel2.writeInt(zzY ? 1 : 0);
                return true;
        }
    }
}
