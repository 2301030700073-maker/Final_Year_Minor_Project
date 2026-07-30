package com.google.android.gms.ads.query;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzbua;
import com.google.android.gms.internal.ads.zzbub;
import java.util.List;
import java.util.Map;

@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public final class ReportingInfo {

    /* renamed from: do, reason: not valid java name */
    public final zzbub f10126do;

    @KeepForSdk
    @Deprecated
    public static final class Builder {

        /* renamed from: do, reason: not valid java name */
        public final zzbua f10127do;

        @KeepForSdk
        @Deprecated
        public Builder(View view) {
            zzbua zzbuaVar = new zzbua();
            this.f10127do = zzbuaVar;
            zzbuaVar.zzb(view);
        }

        @KeepForSdk
        @Deprecated
        public ReportingInfo build() {
            return new ReportingInfo(this);
        }

        @KeepForSdk
        @Deprecated
        public Builder setAssetViews(Map<String, View> map) {
            this.f10127do.zzc(map);
            return this;
        }
    }

    public /* synthetic */ ReportingInfo(Builder builder) {
        this.f10126do = new zzbub(builder.f10127do);
    }

    @KeepForSdk
    @Deprecated
    public void recordClick(List<Uri> list) {
        this.f10126do.zza(list);
    }

    @KeepForSdk
    @Deprecated
    public void recordImpression(List<Uri> list) {
        this.f10126do.zzb(list);
    }

    @KeepForSdk
    @Deprecated
    public void reportTouchEvent(MotionEvent motionEvent) {
        this.f10126do.zzc(motionEvent);
    }

    @KeepForSdk
    @Deprecated
    public void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        this.f10126do.zzd(uri, updateClickUrlCallback);
    }

    @KeepForSdk
    @Deprecated
    public void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.f10126do.zze(list, updateImpressionUrlsCallback);
    }
}
