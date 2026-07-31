package org.acra.collector;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.UUID;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SimpleValuesCollector extends BaseReportFieldCollector {
    public static final Companion Companion = new Companion();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.IS_SILENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.REPORT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.INSTALLATION_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ReportField.PACKAGE_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ReportField.PHONE_MODEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ReportField.ANDROID_VERSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ReportField.BRAND.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ReportField.PRODUCT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ReportField.FILE_PATH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ReportField.USER_IP.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SimpleValuesCollector() {
        super(ReportField.IS_SILENT, ReportField.REPORT_ID, ReportField.INSTALLATION_ID, ReportField.PACKAGE_NAME, ReportField.PHONE_MODEL, ReportField.ANDROID_VERSION, ReportField.BRAND, ReportField.PRODUCT, ReportField.FILE_PATH, ReportField.USER_IP);
    }

    private String getApplicationFilePath(Context context) {
        String absolutePath = context.getFilesDir().getAbsolutePath();
        absolutePath.getClass();
        return absolutePath;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        String str;
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        switch (WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()]) {
            case 1:
                crashReportData.put(ReportField.IS_SILENT);
                return;
            case 2:
                crashReportData.put(ReportField.REPORT_ID, UUID.randomUUID().toString());
                return;
            case 3:
                ReportField reportField2 = ReportField.INSTALLATION_ID;
                synchronized (Jsoup.class) {
                    try {
                        File file = new File(context.getFilesDir(), "ACRA-INSTALLATION");
                        try {
                            if (!file.exists()) {
                                String uuid = UUID.randomUUID().toString();
                                uuid.getClass();
                                Cookie.Companion.writeText$default(file, uuid);
                            }
                            str = Cookie.Companion.readText$default(file);
                        } catch (IOException e) {
                            ErrorReporter errorReporter = ACRA.errorReporter;
                            Log.w("ACRA", "Couldn't retrieve InstallationId for " + context.getPackageName(), e);
                            str = "Couldn't retrieve InstallationId";
                        } catch (RuntimeException e2) {
                            ErrorReporter errorReporter2 = ACRA.errorReporter;
                            Log.w("ACRA", "Couldn't retrieve InstallationId for " + context.getPackageName(), e2);
                            str = "Couldn't retrieve InstallationId";
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                crashReportData.put(reportField2, str);
                return;
            case 4:
                crashReportData.put(ReportField.PACKAGE_NAME, context.getPackageName());
                return;
            case 5:
                crashReportData.put(ReportField.PHONE_MODEL, Build.MODEL);
                return;
            case 6:
                crashReportData.put(ReportField.ANDROID_VERSION, Build.VERSION.RELEASE);
                return;
            case 7:
                crashReportData.put(ReportField.BRAND, Build.BRAND);
                return;
            case 8:
                crashReportData.put(ReportField.PRODUCT, Build.PRODUCT);
                return;
            case 9:
                crashReportData.put(ReportField.FILE_PATH, getApplicationFilePath(context));
                return;
            case 10:
                ReportField reportField3 = ReportField.USER_IP;
                Companion.getClass();
                StringBuilder sb = new StringBuilder();
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                boolean z = true;
                while (networkInterfaces.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement = inetAddresses.nextElement();
                        if (!nextElement.isLoopbackAddress()) {
                            if (!z) {
                                sb.append('\n');
                            }
                            sb.append(nextElement.getHostAddress());
                            z = false;
                        }
                    }
                }
                crashReportData.put(reportField3, sb.toString());
                return;
            default:
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
        }
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public boolean shouldCollect(Context context, CoreConfiguration coreConfiguration, ReportField reportField, ReportBuilder reportBuilder) {
        context.getClass();
        coreConfiguration.getClass();
        reportField.getClass();
        reportBuilder.getClass();
        return reportField == ReportField.IS_SILENT || reportField == ReportField.REPORT_ID || super.shouldCollect(context, coreConfiguration, reportField, reportBuilder);
    }
}
