package com.appsflyer.internal;

/* loaded from: classes2.dex */
public interface AFd1xSDK {

    public interface AFa1ySDK {
        void onConfigurationChanged(boolean z);
    }

    void getCurrencyIso4217Code();

    void getMediationNetwork(AFa1ySDK aFa1ySDK);

    void getRevenue();

    void getRevenue(Throwable th, String str);
}
