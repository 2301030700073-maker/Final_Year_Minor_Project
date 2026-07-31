package org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.DropBoxManager;
import android.preference.PreferenceManager;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.collector.Collector;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.util.SystemServices$ServiceNotReachedException;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DropBoxCollector extends BaseReportFieldCollector {
    public static final Companion Companion = new Companion();
    private static final String[] SYSTEM_TAGS = {"system_app_anr", "system_app_wtf", "system_app_crash", "system_server_anr", "system_server_wtf", "system_server_crash", "BATTERY_DISCHARGE_INFO", "SYSTEM_RECOVERY_LOG", "SYSTEM_BOOT", "SYSTEM_LAST_KMSG", "APANIC_CONSOLE", "APANIC_THREADS", "SYSTEM_RESTART", "SYSTEM_TOMBSTONE", "data_app_strictmode"};
    private final SimpleDateFormat dateFormat;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public DropBoxCollector() {
        super(ReportField.DROPBOX);
        this.dateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.getDefault());
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        Object systemService = context.getSystemService("dropbox");
        if (systemService == null) {
            throw new SystemServices$ServiceNotReachedException("Unable to load SystemService dropbox");
        }
        DropBoxManager dropBoxManager = (DropBoxManager) systemService;
        Calendar calendar = Calendar.getInstance();
        calendar.roll(12, -coreConfiguration.getDropboxCollectionMinutes());
        long timeInMillis = calendar.getTimeInMillis();
        this.dateFormat.format(calendar.getTime());
        ArrayList arrayList = new ArrayList();
        if (coreConfiguration.getIncludeDropBoxSystemTags()) {
            String[] strArr = SYSTEM_TAGS;
            strArr.getClass();
            List asList = Arrays.asList(strArr);
            asList.getClass();
            arrayList.addAll(asList);
        }
        List list = CollectionsKt.toList(coreConfiguration.getAdditionalDropBoxTags());
        if (!list.isEmpty()) {
            arrayList.addAll(list);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            StringBuilder sb = new StringBuilder();
            DropBoxManager.Entry nextEntry = dropBoxManager.getNextEntry(str, timeInMillis);
            if (nextEntry == null) {
                sb.append("Nothing.\n");
            } else {
                while (nextEntry != null) {
                    long timeMillis = nextEntry.getTimeMillis();
                    calendar.setTimeInMillis(timeMillis);
                    sb.append('@');
                    sb.append(this.dateFormat.format(calendar.getTime()));
                    sb.append('\n');
                    String text = nextEntry.getText(500);
                    if (text != null) {
                        sb.append("Text: ");
                        sb.append(text);
                        sb.append('\n');
                    } else {
                        sb.append("Not Text!\n");
                    }
                    nextEntry.close();
                    nextEntry = dropBoxManager.getNextEntry(str, timeMillis);
                }
                try {
                    jSONObject.put(str, sb.toString());
                } catch (JSONException e) {
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    Log.w("ACRA", "Failed to collect data for tag " + str, e);
                }
            }
        }
        crashReportData.put(ReportField.DROPBOX, jSONObject);
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
