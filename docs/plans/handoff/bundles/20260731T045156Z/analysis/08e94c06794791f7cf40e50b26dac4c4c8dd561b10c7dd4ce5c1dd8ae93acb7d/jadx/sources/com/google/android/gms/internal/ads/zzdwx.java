package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdwx extends zzbmz {
    private final zzdxa zza;
    private final zzdwv zzb;
    private final Map zzc = new HashMap();

    zzdwx(zzdxa zzdxaVar, zzdwv zzdwvVar) {
        this.zza = zzdxaVar;
        this.zzb = zzdwvVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static com.google.android.gms.ads.internal.client.zzm zzc(Map map) {
        char c;
        com.google.android.gms.ads.internal.client.zzn zznVar = new com.google.android.gms.ads.internal.client.zzn();
        String str = (String) map.get("ad_request");
        if (str == null) {
            return zznVar.zza();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (nextName.equals("extras")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -839117230:
                        if (nextName.equals("isTestDevice")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case -733436947:
                        if (nextName.equals("tagForUnderAgeOfConsent")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case -99890337:
                        if (nextName.equals("httpTimeoutMillis")) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 523149226:
                        if (nextName.equals("keywords")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 597632527:
                        if (nextName.equals("maxAdContentRating")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1411582723:
                        if (nextName.equals("tagForChildDirectedTreatment")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        zznVar.zzb(bundle);
                        break;
                    case 1:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        zznVar.zzc(arrayList);
                        break;
                    case 2:
                        zznVar.zzd(jsonReader.nextBoolean());
                        break;
                    case 3:
                        if (!jsonReader.nextBoolean()) {
                            zznVar.zze(0);
                            break;
                        } else {
                            zznVar.zze(1);
                            break;
                        }
                    case 4:
                        if (!jsonReader.nextBoolean()) {
                            zznVar.zzf(0);
                            break;
                        } else {
                            zznVar.zzf(1);
                            break;
                        }
                    case 5:
                        String nextString = jsonReader.nextString();
                        if (!RequestConfiguration.zza.contains(nextString)) {
                            break;
                        } else {
                            zznVar.zzg(nextString);
                            break;
                        }
                    case 6:
                        zznVar.zzh(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad Request json was malformed, parsing ended early.");
        }
        com.google.android.gms.ads.internal.client.zzm zza = zznVar.zza();
        Bundle bundle2 = zza.zzm;
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle3 == null) {
            bundle3 = zza.zzc;
            bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new com.google.android.gms.ads.internal.client.zzm(zza.zza, zza.zzb, bundle3, zza.zzd, zza.zze, zza.zzf, zza.zzg, zza.zzh, zza.zzi, zza.zzj, zza.zzk, zza.zzl, bundle2, zza.zzn, zza.zzo, zza.zzp, zza.zzq, zza.zzr, zza.zzs, zza.zzt, zza.zzu, zza.zzv, zza.zzw, zza.zzx, zza.zzy, zza.zzz, zza.zzA);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00ab, code lost:
    
        if (r0.equals("create_interstitial_ad") != false) goto L50;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzbna
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.lang.String r12) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwx.zze(java.lang.String):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbna
    public final void zzf() {
        this.zzc.clear();
    }
}
