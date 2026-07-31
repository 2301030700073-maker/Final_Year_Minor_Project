package org.acra.collector;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.StreamReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MemoryInfoCollector extends BaseReportFieldCollector {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.DUMPSYS_MEMINFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.TOTAL_MEM_SIZE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.AVAILABLE_MEM_SIZE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MemoryInfoCollector() {
        super(ReportField.DUMPSYS_MEMINFO, ReportField.TOTAL_MEM_SIZE, ReportField.AVAILABLE_MEM_SIZE);
    }

    private String collectMemInfo() {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("dumpsys");
            arrayList.add("meminfo");
            arrayList.add(String.valueOf(Process.myPid()));
            InputStream inputStream = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[0])).getInputStream();
            inputStream.getClass();
            return new StreamReader(inputStream).read();
        } catch (IOException e) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.e("ACRA", "MemoryInfoCollector.meminfo could not retrieve data", e);
            return null;
        }
    }

    private long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    private long getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        if (i == 1) {
            crashReportData.put(ReportField.DUMPSYS_MEMINFO, collectMemInfo());
            return;
        }
        if (i == 2) {
            crashReportData.put(ReportField.TOTAL_MEM_SIZE, getTotalInternalMemorySize());
        } else if (i == 3) {
            crashReportData.put(ReportField.AVAILABLE_MEM_SIZE, getAvailableInternalMemorySize());
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
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
        return super.shouldCollect(context, coreConfiguration, reportField, reportBuilder) && !(reportBuilder.exception instanceof OutOfMemoryError);
    }
}
