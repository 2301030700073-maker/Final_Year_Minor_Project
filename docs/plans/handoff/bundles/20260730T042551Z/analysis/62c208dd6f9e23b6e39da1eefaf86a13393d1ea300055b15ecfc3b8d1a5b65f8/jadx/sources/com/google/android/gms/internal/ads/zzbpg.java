package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import defpackage.InterfaceC0456Qm;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzbpg extends zzayb implements zzbph {
    public zzbpg() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbpk zzbpkVar = null;
        switch (i) {
            case 1:
                InterfaceC0456Qm n = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzs zzsVar = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface instanceof zzbpk ? (zzbpk) queryLocalInterface : new zzbpi(readStrongBinder);
                }
                zzbpk zzbpkVar2 = zzbpkVar;
                zzayc.zzc(parcel);
                zzu(n, zzsVar, zzmVar, readString, zzbpkVar2);
                parcel2.writeNoException();
                return true;
            case 2:
                InterfaceC0456Qm zzn = zzn();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzn);
                return true;
            case 3:
                InterfaceC0456Qm n2 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface2 instanceof zzbpk ? (zzbpk) queryLocalInterface2 : new zzbpi(readStrongBinder2);
                }
                zzayc.zzc(parcel);
                zzx(n2, zzmVar2, readString2, zzbpkVar);
                parcel2.writeNoException();
                return true;
            case 4:
                zzI();
                parcel2.writeNoException();
                return true;
            case 5:
                zzo();
                parcel2.writeNoException();
                return true;
            case 6:
                InterfaceC0456Qm n3 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzs zzsVar2 = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface3 instanceof zzbpk ? (zzbpk) queryLocalInterface3 : new zzbpi(readStrongBinder3);
                }
                zzbpk zzbpkVar3 = zzbpkVar;
                zzayc.zzc(parcel);
                zzv(n3, zzsVar2, zzmVar3, readString3, readString4, zzbpkVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                InterfaceC0456Qm n4 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface4 instanceof zzbpk ? (zzbpk) queryLocalInterface4 : new zzbpi(readStrongBinder4);
                }
                zzbpk zzbpkVar4 = zzbpkVar;
                zzayc.zzc(parcel);
                zzy(n4, zzmVar4, readString5, readString6, zzbpkVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzE();
                parcel2.writeNoException();
                return true;
            case 9:
                zzF();
                parcel2.writeNoException();
                return true;
            case 10:
                InterfaceC0456Qm n5 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString7 = parcel.readString();
                zzbwh zzb = zzbwg.zzb(parcel.readStrongBinder());
                String readString8 = parcel.readString();
                zzayc.zzc(parcel);
                zzp(n5, zzmVar5, readString7, zzb, readString8);
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString9 = parcel.readString();
                zzayc.zzc(parcel);
                zzs(zzmVar6, readString9);
                parcel2.writeNoException();
                return true;
            case 12:
                zzL();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzN = zzN();
                parcel2.writeNoException();
                int i3 = zzayc.zza;
                parcel2.writeInt(zzN ? 1 : 0);
                return true;
            case 14:
                InterfaceC0456Qm n6 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface5 instanceof zzbpk ? (zzbpk) queryLocalInterface5 : new zzbpi(readStrongBinder5);
                }
                zzbpk zzbpkVar5 = zzbpkVar;
                zzbfl zzbflVar = (zzbfl) zzayc.zza(parcel, zzbfl.CREATOR);
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzayc.zzc(parcel);
                zzz(n6, zzmVar7, readString10, readString11, zzbpkVar5, zzbflVar, createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzayc.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zze);
                return true;
            case 18:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzf);
                return true;
            case 19:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzg);
                return true;
            case 20:
                com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzayc.zzc(parcel);
                zzB(zzmVar8, readString12, readString13);
                parcel2.writeNoException();
                return true;
            case 21:
                InterfaceC0456Qm n7 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzD(n7);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                int i4 = zzayc.zza;
                parcel2.writeInt(0);
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                InterfaceC0456Qm n8 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzbwh zzb2 = zzbwg.zzb(parcel.readStrongBinder());
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzayc.zzc(parcel);
                zzr(n8, zzb2, createStringArrayList2);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                zzbgq zzi = zzi();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzi);
                return true;
            case Constants.MAX_TREE_DEPTH /* 25 */:
                boolean zzg2 = zzayc.zzg(parcel);
                zzayc.zzc(parcel);
                zzG(zzg2);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzeb zzh = zzh();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzh);
                return true;
            case 27:
                zzbpt zzk = zzk();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzk);
                return true;
            case 28:
                InterfaceC0456Qm n9 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar9 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString14 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface6 instanceof zzbpk ? (zzbpk) queryLocalInterface6 : new zzbpi(readStrongBinder6);
                }
                zzayc.zzc(parcel);
                zzA(n9, zzmVar9, readString14, zzbpkVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                InterfaceC0456Qm n10 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzK(n10);
                parcel2.writeNoException();
                return true;
            case 31:
                InterfaceC0456Qm n11 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzblr zzb3 = zzblq.zzb(parcel.readStrongBinder());
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzblx.CREATOR);
                zzayc.zzc(parcel);
                zzq(n11, zzb3, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                InterfaceC0456Qm n12 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar10 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString15 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface7 instanceof zzbpk ? (zzbpk) queryLocalInterface7 : new zzbpi(readStrongBinder7);
                }
                zzayc.zzc(parcel);
                zzC(n12, zzmVar10, readString15, zzbpkVar);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbrs zzl = zzl();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzl);
                return true;
            case 34:
                zzbrs zzm = zzm();
                parcel2.writeNoException();
                zzayc.zze(parcel2, zzm);
                return true;
            case 35:
                InterfaceC0456Qm n13 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzs zzsVar3 = (com.google.android.gms.ads.internal.client.zzs) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzs.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar11 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface8 instanceof zzbpk ? (zzbpk) queryLocalInterface8 : new zzbpi(readStrongBinder8);
                }
                zzbpk zzbpkVar6 = zzbpkVar;
                zzayc.zzc(parcel);
                zzw(n13, zzsVar3, zzmVar11, readString16, readString17, zzbpkVar6);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbpn zzj = zzj();
                parcel2.writeNoException();
                zzayc.zzf(parcel2, zzj);
                return true;
            case 37:
                InterfaceC0456Qm n14 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzJ(n14);
                parcel2.writeNoException();
                return true;
            case 38:
                InterfaceC0456Qm n15 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar12 = (com.google.android.gms.ads.internal.client.zzm) zzayc.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString18 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbpkVar = queryLocalInterface9 instanceof zzbpk ? (zzbpk) queryLocalInterface9 : new zzbpi(readStrongBinder9);
                }
                zzayc.zzc(parcel);
                zzt(n15, zzmVar12, readString18, zzbpkVar);
                parcel2.writeNoException();
                return true;
            case 39:
                InterfaceC0456Qm n16 = InterfaceC0456Qm.Cdo.n(parcel.readStrongBinder());
                zzayc.zzc(parcel);
                zzH(n16);
                parcel2.writeNoException();
                return true;
        }
    }
}
