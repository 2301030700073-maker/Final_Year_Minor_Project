package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbcm {
    public static List zza() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzbdv.zzc("gad:dynamite_module:experiment_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        zzc(arrayList, zzbei.zza);
        zzc(arrayList, zzbei.zzb);
        zzc(arrayList, zzbei.zzc);
        zzc(arrayList, zzbei.zzd);
        zzc(arrayList, zzbei.zze);
        zzc(arrayList, zzbei.zzu);
        zzc(arrayList, zzbei.zzf);
        zzc(arrayList, zzbei.zzm);
        zzc(arrayList, zzbei.zzn);
        zzc(arrayList, zzbei.zzo);
        zzc(arrayList, zzbei.zzp);
        zzc(arrayList, zzbei.zzq);
        zzc(arrayList, zzbei.zzr);
        zzc(arrayList, zzbei.zzs);
        zzc(arrayList, zzbei.zzt);
        zzc(arrayList, zzbei.zzg);
        zzc(arrayList, zzbei.zzh);
        zzc(arrayList, zzbei.zzi);
        zzc(arrayList, zzbei.zzj);
        zzc(arrayList, zzbei.zzk);
        zzc(arrayList, zzbei.zzl);
        return arrayList;
    }

    public static List zzb() {
        ArrayList arrayList = new ArrayList();
        zzc(arrayList, zzbew.zza);
        return arrayList;
    }

    private static void zzc(List list, zzbdv zzbdvVar) {
        String str = (String) zzbdvVar.zze();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        list.add(str);
    }
}
