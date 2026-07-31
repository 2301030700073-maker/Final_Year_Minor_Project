package org.acra.collector;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SettingsCollector extends BaseReportFieldCollector {
    public static final Companion Companion = new Companion();
    private static final String ERROR = "Error: ";

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.SETTINGS_SYSTEM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.SETTINGS_SECURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReportField.SETTINGS_GLOBAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public SettingsCollector() {
        super(ReportField.SETTINGS_SYSTEM, ReportField.SETTINGS_SECURE, ReportField.SETTINGS_GLOBAL);
    }

    private JSONObject collectSettings(Context context, CoreConfiguration coreConfiguration, Class<?> cls) {
        JSONObject jSONObject = new JSONObject();
        Field[] fields = cls.getFields();
        Method method = cls.getMethod("getString", ContentResolver.class, String.class);
        UIntArray.Iterator it = Intrinsics.iterator(fields);
        while (it.hasNext()) {
            Field field = (Field) it.next();
            if (!field.isAnnotationPresent(Deprecated.class) && Intrinsics.areEqual(field.getType(), String.class) && isAuthorized(coreConfiguration, field)) {
                try {
                    Object invoke = method.invoke(null, context.getContentResolver(), field.get(null));
                    if (invoke != null) {
                        jSONObject.put(field.getName(), invoke);
                    }
                } catch (Exception e) {
                    ErrorReporter errorReporter = ACRA.errorReporter;
                    Log.w("ACRA", ERROR, e);
                }
            }
        }
        return jSONObject;
    }

    private boolean isAuthorized(CoreConfiguration coreConfiguration, Field field) {
        if (field == null) {
            return false;
        }
        String name = field.getName();
        name.getClass();
        if (StringsKt__StringsJVMKt.startsWith(name, "WIFI_AP", false)) {
            return false;
        }
        for (String str : coreConfiguration.getExcludeMatchingSettingsKeys()) {
            String name2 = field.getName();
            name2.getClass();
            if (new Regex(str).matches(name2)) {
                return false;
            }
        }
        return true;
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
            crashReportData.put(ReportField.SETTINGS_SYSTEM, collectSettings(context, coreConfiguration, Settings.System.class));
            return;
        }
        if (i == 2) {
            crashReportData.put(ReportField.SETTINGS_SECURE, collectSettings(context, coreConfiguration, Settings.Secure.class));
        } else if (i == 3) {
            crashReportData.put(ReportField.SETTINGS_GLOBAL, collectSettings(context, coreConfiguration, Settings.Global.class));
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
