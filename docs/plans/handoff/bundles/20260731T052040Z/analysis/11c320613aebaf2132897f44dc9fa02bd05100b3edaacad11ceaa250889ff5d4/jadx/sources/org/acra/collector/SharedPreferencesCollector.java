package org.acra.collector;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import kotlin.text.Regex;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SharedPreferencesCollector extends BaseReportFieldCollector {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.USER_EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.SHARED_PREFERENCES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SharedPreferencesCollector() {
        super(ReportField.USER_EMAIL, ReportField.SHARED_PREFERENCES);
    }

    private JSONObject collect(Context context, CoreConfiguration coreConfiguration) {
        JSONObject jSONObject = new JSONObject();
        TreeMap treeMap = new TreeMap();
        treeMap.put("default", PreferenceManager.getDefaultSharedPreferences(context));
        for (String str : coreConfiguration.getAdditionalSharedPreferences()) {
            treeMap.put(str, context.getSharedPreferences(str, 0));
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            String str2 = (String) entry.getKey();
            Map<String, ?> all = ((SharedPreferences) entry.getValue()).getAll();
            if (all.isEmpty()) {
                jSONObject.put(str2, "empty");
            } else {
                Iterator<String> it = all.keySet().iterator();
                while (it.hasNext()) {
                    String next = it.next();
                    next.getClass();
                    if (filteredKey(coreConfiguration, next)) {
                        it.remove();
                    }
                }
                jSONObject.put(str2, new JSONObject(all));
            }
        }
        return jSONObject;
    }

    private boolean filteredKey(CoreConfiguration coreConfiguration, String str) {
        Iterator it = coreConfiguration.getExcludeMatchingSharedPreferencesKeys().iterator();
        while (it.hasNext()) {
            if (new Regex((String) it.next()).matches(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        SharedPreferences defaultSharedPreferences;
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        if (i != 1) {
            if (i == 2) {
                crashReportData.put(ReportField.SHARED_PREFERENCES, collect(context, coreConfiguration));
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
                return;
            }
        }
        ReportField reportField2 = ReportField.USER_EMAIL;
        if (coreConfiguration.getSharedPreferencesName() != null) {
            defaultSharedPreferences = context.getSharedPreferences(coreConfiguration.getSharedPreferencesName(), 0);
            defaultSharedPreferences.getClass();
        } else {
            defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            defaultSharedPreferences.getClass();
        }
        crashReportData.put(reportField2, defaultSharedPreferences.getString("acra.user.email", null));
    }
}
