package org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import androidx.compose.ui.node.Owner;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.SystemServices$ServiceNotReachedException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DeviceIdCollector extends BaseReportFieldCollector {
    public DeviceIdCollector() {
        super(ReportField.DEVICE_ID);
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        String str;
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        if (Build.VERSION.SDK_INT <= 28) {
            Object systemService = context.getSystemService("phone");
            if (systemService == null) {
                throw new SystemServices$ServiceNotReachedException(Owner.CC.m("Unable to load SystemService ", "phone"));
            }
            str = ((TelephonyManager) systemService).getDeviceId();
        } else {
            str = null;
        }
        crashReportData.put(ReportField.DEVICE_ID, str);
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public boolean shouldCollect(Context context, CoreConfiguration coreConfiguration, ReportField reportField, ReportBuilder reportBuilder) {
        SharedPreferences defaultSharedPreferences;
        PackageManager packageManager;
        context.getClass();
        coreConfiguration.getClass();
        reportField.getClass();
        reportBuilder.getClass();
        if (super.shouldCollect(context, coreConfiguration, reportField, reportBuilder)) {
            if (coreConfiguration.getSharedPreferencesName() != null) {
                defaultSharedPreferences = context.getSharedPreferences(coreConfiguration.getSharedPreferencesName(), 0);
                defaultSharedPreferences.getClass();
            } else {
                defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                defaultSharedPreferences.getClass();
            }
            if (defaultSharedPreferences.getBoolean("acra.deviceid.enable", true) && (packageManager = context.getPackageManager()) != null) {
                try {
                    if (packageManager.checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) == 0) {
                        return true;
                    }
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }
}
