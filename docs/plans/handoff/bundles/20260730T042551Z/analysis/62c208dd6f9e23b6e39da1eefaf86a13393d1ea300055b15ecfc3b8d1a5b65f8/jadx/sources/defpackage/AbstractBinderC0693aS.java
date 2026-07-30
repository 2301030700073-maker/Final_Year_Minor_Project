package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbw;
import com.google.android.gms.internal.measurement.zzbx;
import com.google.android.gms.internal.measurement.zznr;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

/* renamed from: aS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractBinderC0693aS extends zzbx implements YR {
    public AbstractBinderC0693aS() {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbx
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        ArrayList arrayList = null;
        int i3 = 0;
        switch (i) {
            case 1:
                zzbf zzbfVar = (zzbf) zzbw.zza(parcel, zzbf.CREATOR);
                zzo zzoVar = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2930while(zzbfVar, zzoVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzon zzonVar = (zzon) zzbw.zza(parcel, zzon.CREATOR);
                zzo zzoVar2 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).j(zzonVar, zzoVar2);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case ConnectionResult.API_DISABLED /* 23 */:
            default:
                return false;
            case 4:
                zzo zzoVar3 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2916case(zzoVar3);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbf zzbfVar2 = (zzbf) zzbw.zza(parcel, zzbf.CREATOR);
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzbw.zzb(parcel);
                ((YS) this).n(zzbfVar2, readString, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                zzo zzoVar4 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2924package(zzoVar4);
                parcel2.writeNoException();
                return true;
            case 7:
                zzo zzoVar5 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                boolean zzc = zzbw.zzc(parcel);
                zzbw.zzb(parcel);
                YS ys = (YS) this;
                ys.q(zzoVar5);
                String str = zzoVar5.f10320break;
                Preconditions.checkNotNull(str);
                ZU zu = ys.f4740do;
                try {
                    List<C3218kV> list = (List) zu.mo2253do().m1969throw(new CallableC3452oT(ys, str)).get();
                    ArrayList arrayList2 = new ArrayList(list.size());
                    for (C3218kV c3218kV : list) {
                        if (zzc || !C3395nV.E(c3218kV.f14003for)) {
                            arrayList2.add(new zzon(c3218kV));
                        }
                    }
                    arrayList = arrayList2;
                } catch (InterruptedException | ExecutionException e) {
                    C3156jS mo2249case = zu.mo2249case();
                    mo2249case.f13717do.m7367do(C3156jS.m7106while(str), "Failed to get user properties. appId", e);
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                zzbf zzbfVar3 = (zzbf) zzbw.zza(parcel, zzbf.CREATOR);
                String readString3 = parcel.readString();
                zzbw.zzb(parcel);
                byte[] mo2920extends = ((YS) this).mo2920extends(zzbfVar3, readString3);
                parcel2.writeNoException();
                parcel2.writeByteArray(mo2920extends);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                zzbw.zzb(parcel);
                ((YS) this).mo2923native(readLong, readString4, readString5, readString6);
                parcel2.writeNoException();
                return true;
            case 11:
                zzo zzoVar6 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                String mo2918class = ((YS) this).mo2918class(zzoVar6);
                parcel2.writeNoException();
                parcel2.writeString(mo2918class);
                return true;
            case 12:
                zzae zzaeVar = (zzae) zzbw.zza(parcel, zzae.CREATOR);
                zzo zzoVar7 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).c(zzaeVar, zzoVar7);
                parcel2.writeNoException();
                return true;
            case 13:
                zzae zzaeVar2 = (zzae) zzbw.zza(parcel, zzae.CREATOR);
                zzbw.zzb(parcel);
                YS ys2 = (YS) this;
                Preconditions.checkNotNull(zzaeVar2);
                Preconditions.checkNotNull(zzaeVar2.f10305do);
                Preconditions.checkNotEmpty(zzaeVar2.f10300break);
                ys2.p(zzaeVar2.f10300break, true);
                ys2.r(new ZS(1, ys2, new zzae(zzaeVar2)));
                parcel2.writeNoException();
                return true;
            case 14:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                boolean zzc2 = zzbw.zzc(parcel);
                zzo zzoVar8 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                List<zzon> mo2919default = ((YS) this).mo2919default(readString7, readString8, zzc2, zzoVar8);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo2919default);
                return true;
            case 15:
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                boolean zzc3 = zzbw.zzc(parcel);
                zzbw.zzb(parcel);
                List<zzon> mo2929throws = ((YS) this).mo2929throws(readString9, readString10, readString11, zzc3);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo2929throws);
                return true;
            case 16:
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzo zzoVar9 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                List<zzae> mo2928throw = ((YS) this).mo2928throw(readString12, readString13, zzoVar9);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo2928throw);
                return true;
            case 17:
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                zzbw.zzb(parcel);
                List<zzae> mo2926public = ((YS) this).mo2926public(readString14, readString15, readString16);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo2926public);
                return true;
            case 18:
                zzo zzoVar10 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2922for(zzoVar10);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzo zzoVar11 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2917catch(bundle, zzoVar11);
                parcel2.writeNoException();
                return true;
            case 20:
                zzo zzoVar12 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).d(zzoVar12);
                parcel2.writeNoException();
                return true;
            case 21:
                zzo zzoVar13 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                zzaj e2 = ((YS) this).e(zzoVar13);
                parcel2.writeNoException();
                zzbw.zzb(parcel2, e2);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                zzo zzoVar14 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                Bundle bundle2 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzbw.zzb(parcel);
                List m = ((YS) this).m(bundle2, zzoVar14);
                parcel2.writeNoException();
                parcel2.writeTypedList(m);
                return true;
            case Constants.MAX_TREE_DEPTH /* 25 */:
                zzo zzoVar15 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2927static(zzoVar15);
                parcel2.writeNoException();
                return true;
            case 26:
                zzo zzoVar16 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2925protected(zzoVar16);
                parcel2.writeNoException();
                return true;
            case 27:
                zzo zzoVar17 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                ((YS) this).mo2921final(zzoVar17);
                parcel2.writeNoException();
                return true;
            case 28:
                Bundle bundle3 = (Bundle) zzbw.zza(parcel, Bundle.CREATOR);
                zzo zzoVar18 = (zzo) zzbw.zza(parcel, zzo.CREATOR);
                zzbw.zzb(parcel);
                YS ys3 = (YS) this;
                if (zznr.zza() && ys3.f4740do.e().m3012throws(null, C3684sQ.s0)) {
                    ys3.q(zzoVar18);
                    String str2 = zzoVar18.f10320break;
                    Preconditions.checkNotNull(str2);
                    ys3.r(new RunnableC0694aT(ys3, bundle3, str2, i3));
                }
                parcel2.writeNoException();
                return true;
        }
    }
}
