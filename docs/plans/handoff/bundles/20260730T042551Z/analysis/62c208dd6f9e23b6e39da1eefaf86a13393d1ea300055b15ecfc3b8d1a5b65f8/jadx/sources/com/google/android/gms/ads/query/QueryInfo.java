package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzei;
import com.google.android.gms.ads.internal.client.zzfa;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbtv;

/* loaded from: classes.dex */
public class QueryInfo {

    /* renamed from: do, reason: not valid java name */
    public final zzfa f10125do;

    public QueryInfo(zzfa zzfaVar) {
        this.f10125do = zzfaVar;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5600do(final Context context, final AdFormat adFormat, final AdRequest adRequest, final String str, final QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzbcl.zza(context);
        if (((Boolean) zzbej.zzj.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzla)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.query.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdRequest adRequest2 = adRequest;
                        zzei zza = adRequest2 == null ? null : adRequest2.zza();
                        new zzbtv(context, adFormat, zza, str).zzb(queryInfoGenerationCallback);
                    }
                });
                return;
            }
        }
        new zzbtv(context, adFormat, adRequest == null ? null : adRequest.zza(), str).zzb(queryInfoGenerationCallback);
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        m5600do(context, adFormat, adRequest, null, queryInfoGenerationCallback);
    }

    public String getQuery() {
        return this.f10125do.zzb();
    }

    @KeepForSdk
    public Bundle getQueryBundle() {
        return this.f10125do.zza();
    }

    @KeepForSdk
    public String getRequestId() {
        return this.f10125do.zzc();
    }

    public static void generate(Context context, AdFormat adFormat, AdRequest adRequest, String str, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        Preconditions.checkNotNull(str, "AdUnitId cannot be null.");
        m5600do(context, adFormat, adRequest, str, queryInfoGenerationCallback);
    }
}
