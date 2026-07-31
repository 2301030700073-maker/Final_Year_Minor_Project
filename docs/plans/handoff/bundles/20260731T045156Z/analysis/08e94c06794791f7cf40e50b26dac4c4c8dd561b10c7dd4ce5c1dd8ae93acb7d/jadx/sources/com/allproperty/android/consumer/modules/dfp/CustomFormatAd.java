package com.allproperty.android.consumer.modules.dfp;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import kotlin.Metadata;

/* compiled from: CustomFormatAd.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\t"}, d2 = {"Lcom/allproperty/android/consumer/modules/dfp/CustomFormatAd;", "", "getText", "", SDKConstants.PARAM_KEY, "", "getImage", "performClick", "", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public interface CustomFormatAd {
    String getImage(String key);

    CharSequence getText(String key);

    void performClick(String key);
}
