package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzbrl extends zzbam implements zzbrm {
    public zzbrl() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    protected final boolean zzdi(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbrp zzbrpVar = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface instanceof zzbrp ? (zzbrp) queryLocalInterface : new zzbrn(readStrongBinder);
                }
                zzbrp zzbrpVar2 = zzbrpVar;
                zzban.zzh(parcel);
                zze(asInterface, zzrVar, zzmVar, readString, zzbrpVar2);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzf = zzf();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzf);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface2 instanceof zzbrp ? (zzbrp) queryLocalInterface2 : new zzbrn(readStrongBinder2);
                }
                zzban.zzh(parcel);
                zzg(asInterface2, zzmVar2, readString2, zzbrpVar);
                parcel2.writeNoException();
                return true;
            case 4:
                zzh();
                parcel2.writeNoException();
                return true;
            case 5:
                zzi();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar2 = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface3 instanceof zzbrp ? (zzbrp) queryLocalInterface3 : new zzbrn(readStrongBinder3);
                }
                zzbrp zzbrpVar3 = zzbrpVar;
                zzban.zzh(parcel);
                zzj(asInterface3, zzrVar2, zzmVar3, readString3, readString4, zzbrpVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface4 instanceof zzbrp ? (zzbrp) queryLocalInterface4 : new zzbrn(readStrongBinder4);
                }
                zzbrp zzbrpVar4 = zzbrpVar;
                zzban.zzh(parcel);
                zzk(asInterface4, zzmVar4, readString5, readString6, zzbrpVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                zzm();
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString7 = parcel.readString();
                zzbyg zzb = zzbyf.zzb(parcel.readStrongBinder());
                String readString8 = parcel.readString();
                zzban.zzh(parcel);
                zzn(asInterface5, zzmVar5, readString7, zzb, readString8);
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString9 = parcel.readString();
                zzban.zzh(parcel);
                zzo(zzmVar6, readString9);
                parcel2.writeNoException();
                return true;
            case 12:
                zzp();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzq = zzq();
                parcel2.writeNoException();
                int i3 = zzban.zza;
                parcel2.writeInt(zzq ? 1 : 0);
                return true;
            case 14:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface5 instanceof zzbrp ? (zzbrp) queryLocalInterface5 : new zzbrn(readStrongBinder5);
                }
                zzbrp zzbrpVar5 = zzbrpVar;
                zzbhx zzbhxVar = (zzbhx) zzban.zzb(parcel, zzbhx.CREATOR);
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzban.zzh(parcel);
                zzr(asInterface6, zzmVar7, readString10, readString11, zzbrpVar5, zzbhxVar, createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzban.zze(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzban.zze(parcel2, null);
                return true;
            case 17:
                Bundle zzs = zzs();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzs);
                return true;
            case 18:
                Bundle zzt = zzt();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzt);
                return true;
            case 19:
                Bundle zzu = zzu();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzu);
                return true;
            case 20:
                com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzban.zzh(parcel);
                zzv(zzmVar8, readString12, readString13);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzw(asInterface7);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                int i4 = zzban.zza;
                parcel2.writeInt(0);
                return true;
            case 23:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbyg zzb2 = zzbyf.zzb(parcel.readStrongBinder());
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzban.zzh(parcel);
                zzy(asInterface8, zzb2, createStringArrayList2);
                parcel2.writeNoException();
                return true;
            case 24:
                zzbjc zzz = zzz();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzz);
                return true;
            case 25:
                boolean zza = zzban.zza(parcel);
                zzban.zzh(parcel);
                zzA(zza);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzed zzB = zzB();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzB);
                return true;
            case 27:
                zzbry zzC = zzC();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzC);
                return true;
            case 28:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar9 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString14 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface6 instanceof zzbrp ? (zzbrp) queryLocalInterface6 : new zzbrn(readStrongBinder6);
                }
                zzban.zzh(parcel);
                zzD(asInterface9, zzmVar9, readString14, zzbrpVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzE(asInterface10);
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzboa zzb3 = zzbnz.zzb(parcel.readStrongBinder());
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbog.CREATOR);
                zzban.zzh(parcel);
                zzF(asInterface11, zzb3, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar10 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString15 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface7 instanceof zzbrp ? (zzbrp) queryLocalInterface7 : new zzbrn(readStrongBinder7);
                }
                zzban.zzh(parcel);
                zzG(asInterface12, zzmVar10, readString15, zzbrpVar);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbtx zzH = zzH();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzH);
                return true;
            case 34:
                zzbtx zzI = zzI();
                parcel2.writeNoException();
                zzban.zzd(parcel2, zzI);
                return true;
            case 35:
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzr zzrVar3 = (com.google.android.gms.ads.internal.client.zzr) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
                com.google.android.gms.ads.internal.client.zzm zzmVar11 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface8 instanceof zzbrp ? (zzbrp) queryLocalInterface8 : new zzbrn(readStrongBinder8);
                }
                zzbrp zzbrpVar6 = zzbrpVar;
                zzban.zzh(parcel);
                zzJ(asInterface13, zzrVar3, zzmVar11, readString16, readString17, zzbrpVar6);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbrs zzK = zzK();
                parcel2.writeNoException();
                zzban.zze(parcel2, zzK);
                return true;
            case 37:
                IObjectWrapper asInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzL(asInterface14);
                parcel2.writeNoException();
                return true;
            case 38:
                IObjectWrapper asInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzm zzmVar12 = (com.google.android.gms.ads.internal.client.zzm) zzban.zzb(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                String readString18 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
                    zzbrpVar = queryLocalInterface9 instanceof zzbrp ? (zzbrp) queryLocalInterface9 : new zzbrn(readStrongBinder9);
                }
                zzban.zzh(parcel);
                zzM(asInterface15, zzmVar12, readString18, zzbrpVar);
                parcel2.writeNoException();
                return true;
            case 39:
                IObjectWrapper asInterface16 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzban.zzh(parcel);
                zzN(asInterface16);
                parcel2.writeNoException();
                return true;
        }
    }
}
