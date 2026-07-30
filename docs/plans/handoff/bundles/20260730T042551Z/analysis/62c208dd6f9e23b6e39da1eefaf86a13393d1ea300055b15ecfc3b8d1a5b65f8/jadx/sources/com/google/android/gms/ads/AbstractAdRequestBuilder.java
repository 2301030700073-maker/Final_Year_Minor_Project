package com.google.android.gms.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.internal.client.zzeh;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AbstractAdRequestBuilder<T extends AbstractAdRequestBuilder<T>> {

    /* renamed from: do, reason: not valid java name */
    public final zzeh f9488do;

    public AbstractAdRequestBuilder() {
        zzeh zzehVar = new zzeh();
        this.f9488do = zzehVar;
        zzehVar.zzt("B3EEABB8EE11C2BE770B684D95219ECB");
    }

    @Deprecated
    public T addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
        this.f9488do.zzo(cls, bundle);
        return self();
    }

    public T addCustomTargeting(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
            zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
        }
        this.f9488do.zzp(str, str2);
        return self();
    }

    public T addKeyword(String str) {
        this.f9488do.zzq(str);
        return self();
    }

    public T addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
        zzeh zzehVar = this.f9488do;
        zzehVar.zzr(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            zzehVar.zzu("B3EEABB8EE11C2BE770B684D95219ECB");
        }
        return self();
    }

    public abstract T self();

    public T setAdString(String str) {
        this.f9488do.zzv(str);
        return self();
    }

    public T setContentUrl(String str) {
        Preconditions.checkNotNull(str, "Content URL must be non-null.");
        Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
        int length = str.length();
        Preconditions.checkArgument(length <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf(AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length()));
        this.f9488do.zzw(str);
        return self();
    }

    public T setHttpTimeoutMillis(int i) {
        this.f9488do.zzx(i);
        return self();
    }

    public T setNeighboringContentUrls(List<String> list) {
        if (list == null) {
            zzo.zzj("neighboring content URLs list should not be null");
            return self();
        }
        this.f9488do.zzz(list);
        return self();
    }

    public T setRequestAgent(String str) {
        this.f9488do.zzC(str);
        return self();
    }

    @Deprecated
    public final AbstractAdRequestBuilder zza(String str) {
        this.f9488do.zzt(str);
        return self();
    }

    @Deprecated
    public final AbstractAdRequestBuilder zzb(boolean z) {
        this.f9488do.zzy(z);
        return self();
    }

    public final AbstractAdRequestBuilder zzc(Bundle bundle) {
        this.f9488do.zzA(bundle);
        return self();
    }

    @Deprecated
    public final AbstractAdRequestBuilder zzd(boolean z) {
        this.f9488do.zzD(z);
        return self();
    }

    public T addCustomTargeting(String str, List<String> list) {
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
                    zzo.zzj("Value " + str2 + " contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
                }
            }
            this.f9488do.zzp(str, TextUtils.join(",", list));
        }
        return self();
    }
}
