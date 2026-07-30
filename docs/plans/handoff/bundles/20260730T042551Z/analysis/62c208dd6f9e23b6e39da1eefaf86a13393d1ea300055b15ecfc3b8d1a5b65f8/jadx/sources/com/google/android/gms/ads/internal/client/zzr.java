package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzr {
    public static final zzr zza = new zzr();

    public final zzm zza(Context context, zzei zzeiVar) {
        Context context2;
        List list;
        String str;
        String zzk = zzeiVar.zzk();
        Set zzp = zzeiVar.zzp();
        if (zzp.isEmpty()) {
            context2 = context;
            list = null;
        } else {
            list = DesugarCollections.unmodifiableList(new ArrayList(zzp));
            context2 = context;
        }
        boolean zzs = zzeiVar.zzs(context2);
        Bundle zzf = zzeiVar.zzf(AdMobAdapter.class);
        String zzl = zzeiVar.zzl();
        SearchAdRequest zzi = zzeiVar.zzi();
        zzfx zzfxVar = zzi != null ? new zzfx(zzi) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzbc.zzb();
            str = com.google.android.gms.ads.internal.util.client.zzf.zzq(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean zzr = zzeiVar.zzr();
        RequestConfiguration zzc = zzex.zzf().zzc();
        return new zzm(8, -1L, zzf, -1, list, zzs, Math.max(zzeiVar.zzb(), zzc.getTagForChildDirectedTreatment()), false, zzl, zzfxVar, null, zzk, zzeiVar.zzg(), zzeiVar.zze(), DesugarCollections.unmodifiableList(new ArrayList(zzeiVar.zzo())), zzeiVar.zzm(), str, zzr, null, zzc.getTagForUnderAgeOfConsent(), (String) Collections.max(Arrays.asList(null, zzc.getMaxAdContentRating()), new Comparator() { // from class: com.google.android.gms.ads.internal.client.zzp
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list2 = RequestConfiguration.zza;
                return list2.indexOf((String) obj) - list2.indexOf((String) obj2);
            }
        }), zzeiVar.zzn(), zzeiVar.zza(), zzeiVar.zzj(), zzc.getPublisherPrivacyPersonalizationState().getValue(), zzeiVar.zzc());
    }
}
