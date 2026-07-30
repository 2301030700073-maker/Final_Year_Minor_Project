package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.zzel;
import com.google.android.gms.ads.internal.util.client.zzo;

/* loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {

    /* renamed from: do, reason: not valid java name */
    public final zzel f10137do;

    public SearchAdView(Context context) {
        super(context);
        this.f10137do = new zzel(this);
    }

    public void destroy() {
        this.f10137do.zzk();
    }

    public AdListener getAdListener() {
        return this.f10137do.zza();
    }

    public AdSize getAdSize() {
        return this.f10137do.zzb();
    }

    public String getAdUnitId() {
        return this.f10137do.zzj();
    }

    public void loadAd(SearchAdRequest searchAdRequest) {
        this.f10137do.zzm(searchAdRequest.f10135do);
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
        this.f10137do.zzn();
    }

    public void resume() {
        this.f10137do.zzp();
    }

    public void setAdListener(AdListener adListener) {
        this.f10137do.zzr(adListener);
    }

    public void setAdSize(AdSize adSize) {
        this.f10137do.zzs(adSize);
    }

    public void setAdUnitId(String str) {
        this.f10137do.zzu(str);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10137do = new zzel(this, attributeSet, false);
    }

    public void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (AdSize.SEARCH.equals(getAdSize())) {
            this.f10137do.zzm(dynamicHeightSearchAdRequest.f10132do.f10135do);
            return;
        }
        throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10137do = new zzel(this, attributeSet, false);
    }
}
