package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeqo implements zzetr {
    private final Context zza;
    private final zzgcs zzb;

    public zzeqo(Context context, zzgcs zzgcsVar) {
        this.zza = context;
        this.zzb = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 18;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeql
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeqo.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeqm zzc() {
        Bundle bundle;
        com.google.android.gms.ads.internal.zzv.zzq();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfU)).booleanValue();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        String string = !booleanValue ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : this.zza.getSharedPreferences("mobileads_consent", 0).getString("consent_string", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfW)).booleanValue()) {
            str = this.zza.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        Context context = this.zza;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzfV)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            bundle = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
            for (int i = 0; i < 4; i++) {
                String str2 = strArr[i];
                if (defaultSharedPreferences.contains(str2)) {
                    bundle.putString(str2, defaultSharedPreferences.getString(str2, null));
                }
            }
        } else {
            bundle = null;
        }
        return new zzeqm(string, str, bundle, null);
    }
}
