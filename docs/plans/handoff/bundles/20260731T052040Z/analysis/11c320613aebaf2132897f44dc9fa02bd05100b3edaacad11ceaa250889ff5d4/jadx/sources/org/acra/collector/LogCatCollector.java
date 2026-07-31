package org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.preference.PreferenceManager;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.StreamReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LogCatCollector extends BaseReportFieldCollector {
    public static final Companion Companion = new Companion();
    private static final int READ_TIMEOUT = 3000;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.LOGCAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.EVENTSLOG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.RADIOLOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LogCatCollector() {
        super(ReportField.LOGCAT, ReportField.EVENTSLOG, ReportField.RADIOLOG);
    }

    private String collectLogCat(CoreConfiguration coreConfiguration, String str) {
        Process.myPid();
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        if (str != null) {
            arrayList.add("-b");
            arrayList.add(str);
        }
        List list = CollectionsKt.toList(coreConfiguration.getLogcatArguments());
        int indexOf = list.indexOf("-t");
        int i = -1;
        if (indexOf > -1 && indexOf < list.size()) {
            i = Integer.parseInt((String) list.get(indexOf + 1));
        }
        arrayList.addAll(list);
        Process start = new ProcessBuilder(new String[0]).command(arrayList).redirectErrorStream(true).start();
        ErrorReporter errorReporter = ACRA.errorReporter;
        try {
            InputStream inputStream = start.getInputStream();
            inputStream.getClass();
            return streamToString(coreConfiguration, inputStream, null, i);
        } finally {
            start.destroy();
        }
    }

    private static final boolean collectLogCat$lambda$2$lambda$1(String str, String str2) {
        str2.getClass();
        return StringsKt.contains$default(str2, str);
    }

    private String streamToString(CoreConfiguration coreConfiguration, InputStream inputStream, Function1 function1, int i) {
        StreamReader streamReader = new StreamReader(inputStream);
        streamReader.filter = function1;
        streamReader.limit = i;
        if (coreConfiguration.getLogcatReadNonBlocking()) {
            streamReader.timeout = READ_TIMEOUT;
        }
        return streamReader.read();
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        String str;
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        if (i == 1) {
            str = null;
        } else if (i == 2) {
            str = "events";
        } else {
            if (i != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
            str = "radio";
        }
        crashReportData.put(reportField, collectLogCat(coreConfiguration, str));
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector
    public Collector.Order getOrder() {
        return Collector.Order.FIRST;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public boolean shouldCollect(Context context, CoreConfiguration coreConfiguration, ReportField reportField, ReportBuilder reportBuilder) {
        SharedPreferences defaultSharedPreferences;
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
            if (defaultSharedPreferences.getBoolean("acra.syslog.enable", true)) {
                return true;
            }
        }
        return false;
    }
}
