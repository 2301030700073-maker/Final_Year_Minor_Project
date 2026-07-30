package com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.core.system;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.facebook.internal.AnalyticsEvents;

/* loaded from: classes.dex */
public class AndroidAppDetails implements AppDetails {

    /* renamed from: do, reason: not valid java name */
    public final Context f8820do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8821do;

    /* renamed from: for, reason: not valid java name */
    public final String f8822for;

    /* renamed from: if, reason: not valid java name */
    public final String f8823if;

    /* renamed from: new, reason: not valid java name */
    public final String f8824new;

    /* renamed from: try, reason: not valid java name */
    public final String f8825try;

    public AndroidAppDetails(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f8820do = applicationContext;
        try {
            PackageManager packageManager = applicationContext.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(applicationContext.getPackageName(), 0);
            this.f8821do = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageInfo.packageName, 0));
            this.f8823if = packageInfo.packageName;
            this.f8822for = String.valueOf(packageInfo.versionCode);
            this.f8824new = packageInfo.versionName;
            this.f8825try = "0de7788050864972a25d2d9c40c503e0";
        } catch (PackageManager.NameNotFoundException unused) {
            this.f8820do.getPackageName();
            this.f8821do = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            this.f8823if = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            this.f8822for = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            this.f8824new = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    public AndroidAppDetails(String str, String str2, String str3, String str4, String str5) {
        this.f8823if = str;
        this.f8822for = str2;
        this.f8824new = str3;
        this.f8821do = str4;
        this.f8825try = str5;
    }
}
