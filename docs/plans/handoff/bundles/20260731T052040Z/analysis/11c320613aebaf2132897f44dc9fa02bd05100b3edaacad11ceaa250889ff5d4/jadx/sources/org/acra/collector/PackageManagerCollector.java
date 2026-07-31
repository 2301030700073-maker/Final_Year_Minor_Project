package org.acra.collector;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.PackageManagerWrapperKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class PackageManagerCollector extends BaseReportFieldCollector {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.APP_VERSION_NAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.APP_VERSION_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PackageManagerCollector() {
        super(ReportField.APP_VERSION_NAME, ReportField.APP_VERSION_CODE);
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (packageManager != null) {
            try {
                packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
                ErrorReporter errorReporter = ACRA.errorReporter;
                Log.w("ACRA", "Failed to find PackageInfo for current App : " + context.getPackageName());
            } catch (Exception unused2) {
            }
        }
        if (packageInfo == null) {
            throw new CollectorException("Failed to get package info");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        if (i == 1) {
            crashReportData.put(ReportField.APP_VERSION_NAME, packageInfo.versionName);
        } else if (i == 2) {
            crashReportData.put(ReportField.APP_VERSION_CODE, PackageManagerWrapperKt.getVersionCodeLong(packageInfo));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        }
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }
}
