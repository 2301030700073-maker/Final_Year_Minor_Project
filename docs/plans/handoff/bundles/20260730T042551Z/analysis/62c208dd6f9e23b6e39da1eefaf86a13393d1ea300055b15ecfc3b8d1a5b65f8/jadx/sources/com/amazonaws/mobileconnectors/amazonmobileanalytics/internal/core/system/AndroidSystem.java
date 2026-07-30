package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class AndroidSystem {

    /* renamed from: do, reason: not valid java name */
    public final AndroidAppDetails f8833do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AndroidConnectivity f8834do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AndroidDeviceDetails f8835do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AndroidPreferences f8836do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final DefaultFileManager f8837do;

    public AndroidSystem(Context context) {
        String str;
        TelephonyManager telephonyManager;
        this.f8836do = new AndroidPreferences(context, "0de7788050864972a25d2d9c40c503e0515d6767-01b7-49e5-8273-c8d11b0f331d");
        this.f8837do = new DefaultFileManager(context.getDir("0de7788050864972a25d2d9c40c503e0515d6767-01b7-49e5-8273-c8d11b0f331d", 0));
        this.f8834do = new AndroidConnectivity(context);
        this.f8833do = new AndroidAppDetails(context);
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Exception unused) {
        }
        if (telephonyManager.getNetworkOperatorName() != null && !telephonyManager.getNetworkOperatorName().equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            str = telephonyManager.getNetworkOperatorName();
            this.f8835do = new AndroidDeviceDetails(str);
        }
        str = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        this.f8835do = new AndroidDeviceDetails(str);
    }
}
