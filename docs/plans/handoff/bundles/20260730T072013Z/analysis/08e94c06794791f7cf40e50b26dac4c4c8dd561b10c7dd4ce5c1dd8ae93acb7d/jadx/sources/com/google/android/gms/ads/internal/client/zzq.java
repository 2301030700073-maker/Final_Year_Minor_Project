package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzq {
    public static final zzq zza = new zzq();

    protected zzq() {
    }

    public final zzm zza(Context context, zzek zzekVar) {
        Context context2;
        List list;
        String str;
        String zza2 = zzekVar.zza();
        Set zzc = zzekVar.zzc();
        if (zzc.isEmpty()) {
            context2 = context;
            list = null;
        } else {
            list = Collections.unmodifiableList(new ArrayList(zzc));
            context2 = context;
        }
        boolean zzh = zzekVar.zzh(context2);
        Bundle zzd = zzekVar.zzd(AdMobAdapter.class);
        String zzf = zzekVar.zzf();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzbb.zza();
            str = com.google.android.gms.ads.internal.util.client.zzf.zzv(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean zzm = zzekVar.zzm();
        RequestConfiguration zzo = zzex.zzb().zzo();
        return new zzm(8, -1L, zzd, -1, list, zzh, Math.max(zzekVar.zzj(), zzo.getTagForChildDirectedTreatment()), false, zzf, null, null, zza2, zzekVar.zzi(), zzekVar.zzk(), Collections.unmodifiableList(new ArrayList(zzekVar.zzl())), zzekVar.zzg(), str, zzm, null, zzo.getTagForUnderAgeOfConsent(), (String) Collections.max(Arrays.asList(null, zzo.getMaxAdContentRating()), zzp.zza), zzekVar.zzb(), zzekVar.zzo(), zzekVar.zzn(), zzo.getPublisherPrivacyPersonalizationState().getValue(), zzekVar.zzq(), zzekVar.zzr());
    }
}
