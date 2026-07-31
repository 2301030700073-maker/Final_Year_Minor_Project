package com.allproperty.android.consumer.modules.dfp;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DfpCustomFormatAd.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/DfpCustomFormatAd;", "Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;", "ad", "Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;", "<init>", "(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V", "getText", "", SDKConstants.PARAM_KEY, "", "getImage", "performClick", "", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DfpCustomFormatAd implements CustomFormatAd {
    private final NativeCustomFormatAd ad;

    public DfpCustomFormatAd(NativeCustomFormatAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.ad = ad;
    }

    @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAd
    public CharSequence getText(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.ad.getText(key);
    }

    @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAd
    public String getImage(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        NativeAd.Image image = this.ad.getImage(key);
        return String.valueOf(image != null ? image.getUri() : null);
    }

    @Override // com.allproperty.android.consumer.modules.dfp.CustomFormatAd
    public void performClick(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.ad.performClick(key);
    }
}
