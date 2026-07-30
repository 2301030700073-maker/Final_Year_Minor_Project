package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceFutureC3942wq;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzegf implements zzecw {
    private static Bundle zzd(Bundle bundle) {
        return bundle == null ? new Bundle() : new Bundle(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final InterfaceFutureC3942wq zza(zzfca zzfcaVar, zzfbo zzfboVar) {
        String optString = zzfboVar.zzv.optString("pubid", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        zzfcj zzfcjVar = zzfcaVar.zza.zza;
        zzfch zzfchVar = new zzfch();
        zzfchVar.zzq(zzfcjVar);
        zzfchVar.zzt(optString);
        Bundle zzd = zzd(zzfcjVar.zzd.zzm);
        Bundle zzd2 = zzd(zzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter"));
        zzd2.putInt("gw", 1);
        String optString2 = zzfboVar.zzv.optString("mad_hac", null);
        if (optString2 != null) {
            zzd2.putString("mad_hac", optString2);
        }
        String optString3 = zzfboVar.zzv.optString("adJson", null);
        if (optString3 != null) {
            zzd2.putString("_ad", optString3);
        }
        zzd2.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzfboVar.zzD.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzfboVar.zzD.optString(next, null);
            if (next != null) {
                zzd2.putString(next, optString4);
            }
        }
        zzd.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzd2);
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfcjVar.zzd;
        zzfchVar.zzH(new com.google.android.gms.ads.internal.client.zzm(zzmVar.zza, zzmVar.zzb, zzd2, zzmVar.zzd, zzmVar.zze, zzmVar.zzf, zzmVar.zzg, zzmVar.zzh, zzmVar.zzi, zzmVar.zzj, zzmVar.zzk, zzmVar.zzl, zzd, zzmVar.zzn, zzmVar.zzo, zzmVar.zzp, zzmVar.zzq, zzmVar.zzr, zzmVar.zzs, zzmVar.zzt, zzmVar.zzu, zzmVar.zzv, zzmVar.zzw, zzmVar.zzx, zzmVar.zzy, zzmVar.zzz));
        zzfcj zzJ = zzfchVar.zzJ();
        Bundle bundle = new Bundle();
        zzfbr zzfbrVar = zzfcaVar.zzb.zzb;
        Bundle bundle2 = new Bundle();
        bundle2.putStringArrayList("nofill_urls", new ArrayList<>(zzfbrVar.zza));
        bundle2.putInt("refresh_interval", zzfbrVar.zzc);
        bundle2.putString("gws_query_id", zzfbrVar.zzb);
        bundle.putBundle("parent_common_config", bundle2);
        zzfcj zzfcjVar2 = zzfcaVar.zza.zza;
        Bundle bundle3 = new Bundle();
        bundle3.putString("initial_ad_unit_id", zzfcjVar2.zzf);
        bundle3.putString("allocation_id", zzfboVar.zzw);
        bundle3.putString("ad_source_name", zzfboVar.zzF);
        bundle3.putStringArrayList("click_urls", new ArrayList<>(zzfboVar.zzc));
        bundle3.putStringArrayList("imp_urls", new ArrayList<>(zzfboVar.zzd));
        bundle3.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfboVar.zzp));
        bundle3.putStringArrayList("fill_urls", new ArrayList<>(zzfboVar.zzm));
        bundle3.putStringArrayList("video_start_urls", new ArrayList<>(zzfboVar.zzg));
        bundle3.putStringArrayList("video_reward_urls", new ArrayList<>(zzfboVar.zzh));
        bundle3.putStringArrayList("video_complete_urls", new ArrayList<>(zzfboVar.zzi));
        bundle3.putString("transaction_id", zzfboVar.zzj);
        bundle3.putString("valid_from_timestamp", zzfboVar.zzk);
        bundle3.putBoolean("is_closable_area_disabled", zzfboVar.zzP);
        bundle3.putString("recursive_server_response_data", zzfboVar.zzao);
        bundle3.putBoolean("is_analytics_logging_enabled", zzfboVar.zzW);
        if (zzfboVar.zzl != null) {
            Bundle bundle4 = new Bundle();
            bundle4.putInt("rb_amount", zzfboVar.zzl.zzb);
            bundle4.putString("rb_type", zzfboVar.zzl.zza);
            bundle3.putParcelableArray("rewards", new Bundle[]{bundle4});
        }
        bundle.putBundle("parent_ad_config", bundle3);
        return zzc(zzJ, bundle, zzfboVar, zzfcaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzecw
    public final boolean zzb(zzfca zzfcaVar, zzfbo zzfboVar) {
        return !TextUtils.isEmpty(zzfboVar.zzv.optString("pubid", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    public abstract InterfaceFutureC3942wq zzc(zzfcj zzfcjVar, Bundle bundle, zzfbo zzfboVar, zzfca zzfcaVar);
}
