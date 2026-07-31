package com.allproperty.android.consumer.modules.dfp;

import android.content.Context;
import com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DfpCustomFormatAdLoader.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAdLoader;", "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader;", "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;", "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;", "mContext", "Landroid/content/Context;", "adUnitId", "", "templateId", "customTargeting", "Lcom/facebook/react/bridge/ReadableMap;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V", "adLoader", "Lcom/google/android/gms/ads/AdLoader;", "callback", "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAdLoader$Callback;", "onCustomClick", "", "ad", "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;", SDKConstants.PARAM_KEY, "setCallback", "loadAd", "onCustomFormatAdLoaded", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DfpCustomFormatAdLoader implements CustomFormatAdLoader, NativeCustomFormatAd.OnCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener {
    private AdLoader adLoader;
    private CustomFormatAdLoader.Callback callback;
    private final ReadableMap customTargeting;

    public DfpCustomFormatAdLoader(Context mContext, String adUnitId, String templateId, ReadableMap readableMap) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(templateId, "templateId");
        this.customTargeting = readableMap;
        this.adLoader = new AdLoader.Builder(mContext.getApplicationContext(), adUnitId).forCustomFormatAd(templateId, this, this).withAdListener(new AdListener() { // from class: com.allproperty.android.consumer.modules.dfp.DfpCustomFormatAdLoader.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(LoadAdError adError) {
                Intrinsics.checkNotNullParameter(adError, "adError");
                super.onAdFailedToLoad(adError);
                CustomFormatAdLoader.Callback callback = DfpCustomFormatAdLoader.this.callback;
                if (callback != null) {
                    callback.onAdFailedToLoad();
                }
            }
        }).build();
    }

    public /* synthetic */ DfpCustomFormatAdLoader(Context context, String str, String str2, ReadableMap readableMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, str2, (i & 8) != 0 ? null : readableMap);
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.OnCustomClickListener
    public void onCustomClick(NativeCustomFormatAd ad, String key) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(key, "key");
        CustomFormatAdLoader.Callback callback = this.callback;
        if (callback != null) {
            callback.onAdClicked(new DfpCustomFormatAd(ad), key);
        }
    }

    @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader
    public void setCallback(CustomFormatAdLoader.Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAdLoader
    public void loadAd() {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        ReadableMap readableMap = this.customTargeting;
        if (readableMap != null) {
            ReadableMapKeySetIterator keySetIterator = readableMap.keySetIterator();
            while (keySetIterator.hasNextKey()) {
                String nextKey = keySetIterator.nextKey();
                String string = readableMap.getString(nextKey);
                if (string != null) {
                    builder.addCustomTargeting(nextKey, string);
                }
            }
        }
        AdManagerAdRequest build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.adLoader.loadAd(build);
    }

    @Override // com.google.android.gms.ads.nativead.NativeCustomFormatAd.OnCustomFormatAdLoadedListener
    public void onCustomFormatAdLoaded(NativeCustomFormatAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        CustomFormatAdLoader.Callback callback = this.callback;
        if (callback != null) {
            callback.onAdLoaded(new DfpCustomFormatAd(ad));
        }
        ad.recordImpression();
    }
}
