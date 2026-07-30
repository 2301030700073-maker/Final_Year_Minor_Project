package com.google.android.gms.ads.admanager;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzby;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(Context context) {
        super(context);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AdSize[] getAdSizes() {
        return this.f9510do.zzC();
    }

    public AppEventListener getAppEventListener() {
        return this.f9510do.zzh();
    }

    public VideoController getVideoController() {
        return this.f9510do.zzf();
    }

    public VideoOptions getVideoOptions() {
        return this.f9510do.zzg();
    }

    public void loadAd(final AdManagerAdRequest adManagerAdRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbcl.zza(getContext());
        if (((Boolean) zzbej.zzf.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzla)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.admanager.zzb
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdManagerAdView adManagerAdView = AdManagerAdView.this;
                        AdManagerAdRequest adManagerAdRequest2 = adManagerAdRequest;
                        adManagerAdView.getClass();
                        try {
                            adManagerAdView.f9510do.zzm(adManagerAdRequest2.zza());
                        } catch (IllegalStateException e) {
                            zzbuh.zza(adManagerAdView.getContext()).zzh(e, "AdManagerAdView.loadAd");
                        }
                    }
                });
                return;
            }
        }
        this.f9510do.zzm(adManagerAdRequest.zza());
    }

    public void recordManualImpression() {
        this.f9510do.zzo();
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f9510do.zzt(adSizeArr);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.f9510do.zzv(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.f9510do.zzw(z);
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.f9510do.zzy(videoOptions);
    }

    public final boolean zzb(zzby zzbyVar) {
        return this.f9510do.zzz(zzbyVar);
    }

    public AdManagerAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }

    public AdManagerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, (Object) null);
        Preconditions.checkNotNull(context, "Context cannot be null");
    }
}
