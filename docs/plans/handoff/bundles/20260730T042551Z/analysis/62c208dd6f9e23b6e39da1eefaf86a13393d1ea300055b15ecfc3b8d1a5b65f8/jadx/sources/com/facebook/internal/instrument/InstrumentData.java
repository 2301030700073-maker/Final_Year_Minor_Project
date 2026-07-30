package com.facebook.internal.instrument;

import android.os.Build;
import com.facebook.internal.Utility;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2819gd;
import java.io.File;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class InstrumentData {
    public static final Companion Companion = new Companion(null);
    private static final String PARAM_APP_VERSION = "app_version";
    private static final String PARAM_CALLSTACK = "callstack";
    private static final String PARAM_DEVICE_MODEL = "device_model";
    private static final String PARAM_DEVICE_OS = "device_os_version";
    private static final String PARAM_FEATURE_NAMES = "feature_names";
    private static final String PARAM_REASON = "reason";
    private static final String PARAM_TIMESTAMP = "timestamp";
    private static final String PARAM_TYPE = "type";
    private static final String UNKNOWN = "Unknown";
    private String appVersion;
    private String cause;
    private JSONArray featureNames;
    private String filename;
    private String stackTrace;
    private Long timestamp;
    private Type type;

    public static final class Builder {
        public static final Builder INSTANCE = new Builder();

        private Builder() {
        }

        public static final InstrumentData build(Throwable th, Type type) {
            C0173Do.m401try(type, "t");
            return new InstrumentData(th, type, (C2819gd) null);
        }

        public static final InstrumentData load(File file) {
            C0173Do.m401try(file, "file");
            return new InstrumentData(file, (C2819gd) null);
        }

        public static final InstrumentData build(JSONArray jSONArray) {
            C0173Do.m401try(jSONArray, "features");
            return new InstrumentData(jSONArray, (C2819gd) null);
        }

        public static final InstrumentData build(String str, String str2) {
            return new InstrumentData(str, str2, (C2819gd) null);
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Type getType(String str) {
            return BF.j(str, InstrumentUtility.CRASH_REPORT_PREFIX) ? Type.CrashReport : BF.j(str, InstrumentUtility.CRASH_SHIELD_PREFIX) ? Type.CrashShield : BF.j(str, InstrumentUtility.THREAD_CHECK_PREFIX) ? Type.ThreadCheck : BF.j(str, InstrumentUtility.ANALYSIS_REPORT_PREFIX) ? Type.Analysis : BF.j(str, InstrumentUtility.ANR_REPORT_PREFIX) ? Type.AnrReport : Type.Unknown;
        }
    }

    public enum Type {
        Unknown,
        Analysis,
        AnrReport,
        CrashReport,
        CrashShield,
        ThreadCheck;

        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.valuesCustom().length];
                iArr[Type.Analysis.ordinal()] = 1;
                iArr[Type.AnrReport.ordinal()] = 2;
                iArr[Type.CrashReport.ordinal()] = 3;
                iArr[Type.CrashShield.ordinal()] = 4;
                iArr[Type.ThreadCheck.ordinal()] = 5;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            return (Type[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }

        public final String getLogPrefix() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "Unknown" : InstrumentUtility.THREAD_CHECK_PREFIX : InstrumentUtility.CRASH_SHIELD_PREFIX : InstrumentUtility.CRASH_REPORT_PREFIX : InstrumentUtility.ANR_REPORT_PREFIX : InstrumentUtility.ANALYSIS_REPORT_PREFIX;
        }

        @Override // java.lang.Enum
        public String toString() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "AnrReport" : "Analysis";
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.valuesCustom().length];
            iArr[Type.Analysis.ordinal()] = 1;
            iArr[Type.AnrReport.ordinal()] = 2;
            iArr[Type.CrashReport.ordinal()] = 3;
            iArr[Type.CrashShield.ordinal()] = 4;
            iArr[Type.ThreadCheck.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ InstrumentData(File file, C2819gd c2819gd) {
        this(file);
    }

    public /* synthetic */ InstrumentData(String str, String str2, C2819gd c2819gd) {
        this(str, str2);
    }

    public /* synthetic */ InstrumentData(Throwable th, Type type, C2819gd c2819gd) {
        this(th, type);
    }

    private InstrumentData(JSONArray jSONArray) {
        this.type = Type.Analysis;
        this.timestamp = Long.valueOf(System.currentTimeMillis() / 1000);
        this.featureNames = jSONArray;
        StringBuffer stringBuffer = new StringBuffer(InstrumentUtility.ANALYSIS_REPORT_PREFIX);
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        C0173Do.m399new(stringBuffer2, "StringBuffer()\n            .append(InstrumentUtility.ANALYSIS_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()");
        this.filename = stringBuffer2;
    }

    public /* synthetic */ InstrumentData(JSONArray jSONArray, C2819gd c2819gd) {
        this(jSONArray);
    }

    private final JSONObject getAnalysisReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.featureNames;
            if (jSONArray != null) {
                jSONObject.put(PARAM_FEATURE_NAMES, jSONArray);
            }
            Long l = this.timestamp;
            if (l != null) {
                jSONObject.put(PARAM_TIMESTAMP, l);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject getExceptionReportParameters() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PARAM_DEVICE_OS, Build.VERSION.RELEASE);
            jSONObject.put(PARAM_DEVICE_MODEL, Build.MODEL);
            String str = this.appVersion;
            if (str != null) {
                jSONObject.put(PARAM_APP_VERSION, str);
            }
            Long l = this.timestamp;
            if (l != null) {
                jSONObject.put(PARAM_TIMESTAMP, l);
            }
            String str2 = this.cause;
            if (str2 != null) {
                jSONObject.put(PARAM_REASON, str2);
            }
            String str3 = this.stackTrace;
            if (str3 != null) {
                jSONObject.put(PARAM_CALLSTACK, str3);
            }
            Type type = this.type;
            if (type != null) {
                jSONObject.put(PARAM_TYPE, type);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject getParameters() {
        Type type = this.type;
        int i = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            return getAnalysisReportParameters();
        }
        if (i == 2 || i == 3 || i == 4 || i == 5) {
            return getExceptionReportParameters();
        }
        return null;
    }

    public final void clear() {
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        InstrumentUtility.deleteFile(this.filename);
    }

    public final int compareTo(InstrumentData instrumentData) {
        C0173Do.m401try(instrumentData, "data");
        Long l = this.timestamp;
        if (l == null) {
            return -1;
        }
        long longValue = l.longValue();
        Long l2 = instrumentData.timestamp;
        if (l2 == null) {
            return 1;
        }
        long longValue2 = l2.longValue();
        if (longValue2 < longValue) {
            return -1;
        }
        return longValue2 == longValue ? 0 : 1;
    }

    public final boolean isValid() {
        Type type = this.type;
        int i = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if ((i != 3 && i != 4 && i != 5) || this.stackTrace == null || this.timestamp == null) {
                    return false;
                }
            } else if (this.stackTrace == null || this.cause == null || this.timestamp == null) {
                return false;
            }
        } else if (this.featureNames == null || this.timestamp == null) {
            return false;
        }
        return true;
    }

    public final void save() {
        if (isValid()) {
            InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
            InstrumentUtility.writeFile(this.filename, toString());
        }
    }

    public String toString() {
        JSONObject parameters = getParameters();
        if (parameters == null) {
            String jSONObject = new JSONObject().toString();
            C0173Do.m399new(jSONObject, "JSONObject().toString()");
            return jSONObject;
        }
        String jSONObject2 = parameters.toString();
        C0173Do.m399new(jSONObject2, "params.toString()");
        return jSONObject2;
    }

    private InstrumentData(Throwable th, Type type) {
        this.type = type;
        this.appVersion = Utility.getAppVersion();
        this.cause = InstrumentUtility.getCause(th);
        this.stackTrace = InstrumentUtility.getStackTrace(th);
        this.timestamp = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(type.getLogPrefix());
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        C0173Do.m399new(stringBuffer2, "StringBuffer().append(t.logPrefix).append(timestamp.toString()).append(\".json\").toString()");
        this.filename = stringBuffer2;
    }

    private InstrumentData(String str, String str2) {
        this.type = Type.AnrReport;
        this.appVersion = Utility.getAppVersion();
        this.cause = str;
        this.stackTrace = str2;
        this.timestamp = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer(InstrumentUtility.ANR_REPORT_PREFIX);
        stringBuffer.append(String.valueOf(this.timestamp));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        C0173Do.m399new(stringBuffer2, "StringBuffer()\n            .append(InstrumentUtility.ANR_REPORT_PREFIX)\n            .append(timestamp.toString())\n            .append(\".json\")\n            .toString()");
        this.filename = stringBuffer2;
    }

    private InstrumentData(File file) {
        String name = file.getName();
        C0173Do.m399new(name, "file.name");
        this.filename = name;
        this.type = Companion.getType(name);
        InstrumentUtility instrumentUtility = InstrumentUtility.INSTANCE;
        JSONObject readFile = InstrumentUtility.readFile(this.filename, true);
        if (readFile != null) {
            this.timestamp = Long.valueOf(readFile.optLong(PARAM_TIMESTAMP, 0L));
            this.appVersion = readFile.optString(PARAM_APP_VERSION, null);
            this.cause = readFile.optString(PARAM_REASON, null);
            this.stackTrace = readFile.optString(PARAM_CALLSTACK, null);
            this.featureNames = readFile.optJSONArray(PARAM_FEATURE_NAMES);
        }
    }
}
