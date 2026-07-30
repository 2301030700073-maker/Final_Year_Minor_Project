package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.ads.internal.client.zzel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbej;
import com.google.android.gms.internal.ads.zzbuh;

/* loaded from: classes.dex */
public abstract class BaseAdView extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public final zzel f9510do;

    public BaseAdView(Context context) {
        super(context);
        this.f9510do = new zzel(this, 0);
    }

    public void destroy() {
        zzbcl.zza(getContext());
        if (((Boolean) zzbej.zze.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzkX)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zze
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f9510do.zzk();
                        } catch (IllegalStateException e) {
                            zzbuh.zza(baseAdView.getContext()).zzh(e, "BaseAdView.destroy");
                        }
                    }
                });
                return;
            }
        }
        this.f9510do.zzk();
    }

    public AdListener getAdListener() {
        return this.f9510do.zza();
    }

    public AdSize getAdSize() {
        return this.f9510do.zzb();
    }

    public String getAdUnitId() {
        return this.f9510do.zzj();
    }

    public OnPaidEventListener getOnPaidEventListener() {
        return this.f9510do.zzc();
    }

    public ResponseInfo getResponseInfo() {
        return this.f9510do.zzd();
    }

    public boolean isCollapsible() {
        return this.f9510do.zzA();
    }

    public boolean isLoading() {
        return this.f9510do.zzB();
    }

    public void loadAd(final AdRequest adRequest) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbcl.zza(getContext());
        if (((Boolean) zzbej.zzf.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzla)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzg
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f9510do.zzm(adRequest.f9496do);
                        } catch (IllegalStateException e) {
                            zzbuh.zza(baseAdView.getContext()).zzh(e, "BaseAdView.loadAd");
                        }
                    }
                });
                return;
            }
        }
        this.f9510do.zzm(adRequest.f9496do);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AdSize adSize;
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                zzo.zzh("Unable to retrieve ad size.", e);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
                i4 = widthInPixels;
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void pause() {
        zzbcl.zza(getContext());
        if (((Boolean) zzbej.zzg.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzkY)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzf
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f9510do.zzn();
                        } catch (IllegalStateException e) {
                            zzbuh.zza(baseAdView.getContext()).zzh(e, "BaseAdView.pause");
                        }
                    }
                });
                return;
            }
        }
        this.f9510do.zzn();
    }

    public void resume() {
        zzbcl.zza(getContext());
        if (((Boolean) zzbej.zzh.zze()).booleanValue()) {
            if (((Boolean) zzbe.zzc().zza(zzbcl.zzkW)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zzd
                    @Override // java.lang.Runnable
                    public final void run() {
                        BaseAdView baseAdView = BaseAdView.this;
                        try {
                            baseAdView.f9510do.zzp();
                        } catch (IllegalStateException e) {
                            zzbuh.zza(baseAdView.getContext()).zzh(e, "BaseAdView.resume");
                        }
                    }
                });
                return;
            }
        }
        this.f9510do.zzp();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(AdListener adListener) {
        zzel zzelVar = this.f9510do;
        zzelVar.zzr(adListener);
        if (adListener == 0) {
            zzelVar.zzq(null);
            return;
        }
        if (adListener instanceof com.google.android.gms.ads.internal.client.zza) {
            zzelVar.zzq((com.google.android.gms.ads.internal.client.zza) adListener);
        }
        if (adListener instanceof AppEventListener) {
            zzelVar.zzv((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        this.f9510do.zzs(adSize);
    }

    public void setAdUnitId(String str) {
        this.f9510do.zzu(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.f9510do.zzx(onPaidEventListener);
    }

    public BaseAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9510do = new zzel(this, attributeSet, false, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.f9510do = new zzel(this, attributeSet, false, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i, Object obj) {
        super(context, attributeSet, i);
        this.f9510do = new zzel(this, attributeSet, true, 0);
    }

    public BaseAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f9510do = new zzel(this, attributeSet, true);
    }
}
