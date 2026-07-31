package org.acra.collector;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import kotlin.UIntArray;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ConfigurationCollector extends BaseReportFieldCollector implements ApplicationStartupCollector {
    public static final Companion Companion = new Companion();
    private static final String FIELD_MCC = "mcc";
    private static final String FIELD_MNC = "mnc";
    private static final String FIELD_SCREENLAYOUT = "screenLayout";
    private static final String FIELD_UIMODE = "uiMode";
    private static final String SUFFIX_MASK = "_MASK";
    private JSONObject initialConfiguration;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Prefix {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Prefix[] $VALUES;
        private final String text;
        public static final Prefix UI_MODE = new Prefix("UI_MODE", 0, "UI_MODE_");
        public static final Prefix TOUCHSCREEN = new Prefix("TOUCHSCREEN", 1, "TOUCHSCREEN_");
        public static final Prefix SCREENLAYOUT = new Prefix("SCREENLAYOUT", 2, "SCREENLAYOUT_");
        public static final Prefix ORIENTATION = new Prefix("ORIENTATION", 3, "ORIENTATION_");
        public static final Prefix NAVIGATIONHIDDEN = new Prefix("NAVIGATIONHIDDEN", 4, "NAVIGATIONHIDDEN_");
        public static final Prefix NAVIGATION = new Prefix("NAVIGATION", 5, "NAVIGATION_");
        public static final Prefix KEYBOARDHIDDEN = new Prefix("KEYBOARDHIDDEN", 6, "KEYBOARDHIDDEN_");
        public static final Prefix KEYBOARD = new Prefix("KEYBOARD", 7, "KEYBOARD_");
        public static final Prefix HARDKEYBOARDHIDDEN = new Prefix("HARDKEYBOARDHIDDEN", 8, "HARDKEYBOARDHIDDEN_");

        private static final /* synthetic */ Prefix[] $values() {
            return new Prefix[]{UI_MODE, TOUCHSCREEN, SCREENLAYOUT, ORIENTATION, NAVIGATIONHIDDEN, NAVIGATION, KEYBOARDHIDDEN, KEYBOARD, HARDKEYBOARDHIDDEN};
        }

        static {
            Prefix[] $values = $values();
            $VALUES = $values;
            $ENTRIES = Okio.enumEntries($values);
        }

        private Prefix(String str, int i, String str2) {
            this.text = str2;
        }

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        public static Prefix valueOf(String str) {
            return (Prefix) Enum.valueOf(Prefix.class, str);
        }

        public static Prefix[] values() {
            return (Prefix[]) $VALUES.clone();
        }

        public final String getText() {
            return this.text;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReportField.values().length];
            try {
                iArr[ReportField.INITIAL_CONFIGURATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReportField.CRASH_CONFIGURATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ConfigurationCollector() {
        super(ReportField.INITIAL_CONFIGURATION, ReportField.CRASH_CONFIGURATION);
    }

    private String activeFlags(SparseArray<String> sparseArray, int i) {
        int i2;
        StringBuilder sb = new StringBuilder();
        int size = sparseArray.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = sparseArray.keyAt(i3);
            String str = sparseArray.get(keyAt);
            str.getClass();
            if (StringsKt__StringsJVMKt.endsWith(str, SUFFIX_MASK, false) && (i2 = keyAt & i) > 0) {
                if (sb.length() > 0) {
                    sb.append('+');
                }
                sb.append(sparseArray.get(i2));
            }
        }
        return sb.toString();
    }

    private JSONObject collectConfiguration(Context context) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            configuration.getClass();
            return configToJson(configuration);
        } catch (RuntimeException e) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "Couldn't retrieve CrashConfiguration for : " + context.getPackageName(), e);
            return null;
        }
    }

    private JSONObject configToJson(Configuration configuration) {
        JSONObject jSONObject = new JSONObject();
        Map<Prefix, SparseArray<String>> valueArrays = getValueArrays();
        UIntArray.Iterator it = Intrinsics.iterator(configuration.getClass().getFields());
        while (it.hasNext()) {
            Field field = (Field) it.next();
            try {
                if (!Modifier.isStatic(field.getModifiers())) {
                    String name = field.getName();
                    try {
                        if (Intrinsics.areEqual(field.getType(), Integer.TYPE)) {
                            jSONObject.put(name, getFieldValueName(valueArrays, configuration, field));
                        } else if (field.get(configuration) != null) {
                            jSONObject.put(name, field.get(configuration));
                        }
                    } catch (JSONException e) {
                        ErrorReporter errorReporter = ACRA.errorReporter;
                        Log.w("ACRA", "Could not collect configuration field " + name, e);
                    }
                }
            } catch (IllegalAccessException e2) {
                ErrorReporter errorReporter2 = ACRA.errorReporter;
                Log.e("ACRA", "Error while inspecting device configuration: ", e2);
            } catch (IllegalArgumentException e3) {
                ErrorReporter errorReporter3 = ACRA.errorReporter;
                Log.e("ACRA", "Error while inspecting device configuration: ", e3);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MCC) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MNC) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        return java.lang.Integer.valueOf(r10.getInt(r9));
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Object getFieldValueName(java.util.Map<org.acra.collector.ConfigurationCollector.Prefix, ? extends android.util.SparseArray<java.lang.String>> r8, android.content.res.Configuration r9, java.lang.reflect.Field r10) {
        /*
            r7 = this;
            java.lang.String r0 = r10.getName()
            if (r0 == 0) goto L5d
            int r1 = r0.hashCode()
            switch(r1) {
                case -1896438090: goto L43;
                case -845983145: goto L28;
                case 107917: goto L17;
                case 108258: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L5d
        Le:
            java.lang.String r7 = "mnc"
            boolean r7 = r0.equals(r7)
            if (r7 != 0) goto L1f
            goto L5d
        L17:
            java.lang.String r7 = "mcc"
            boolean r7 = r0.equals(r7)
            if (r7 == 0) goto L5d
        L1f:
            int r7 = r10.getInt(r9)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            return r7
        L28:
            java.lang.String r1 = "uiMode"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L32
            goto L5d
        L32:
            org.acra.collector.ConfigurationCollector$Prefix r0 = org.acra.collector.ConfigurationCollector.Prefix.UI_MODE
            java.lang.Object r8 = kotlin.collections.MapsKt__MapsKt.getValue(r0, r8)
            android.util.SparseArray r8 = (android.util.SparseArray) r8
            int r9 = r10.getInt(r9)
            java.lang.String r7 = r7.activeFlags(r8, r9)
            return r7
        L43:
            java.lang.String r1 = "screenLayout"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L4c
            goto L5d
        L4c:
            org.acra.collector.ConfigurationCollector$Prefix r0 = org.acra.collector.ConfigurationCollector.Prefix.SCREENLAYOUT
            java.lang.Object r8 = kotlin.collections.MapsKt__MapsKt.getValue(r0, r8)
            android.util.SparseArray r8 = (android.util.SparseArray) r8
            int r9 = r10.getInt(r9)
            java.lang.String r7 = r7.activeFlags(r8, r9)
            return r7
        L5d:
            org.acra.collector.ConfigurationCollector$Prefix[] r7 = org.acra.collector.ConfigurationCollector.Prefix.values()
            int r1 = r7.length
            r2 = 0
        L63:
            if (r2 >= r1) goto L87
            r3 = r7[r2]
            java.lang.String r4 = r3.getText()
            r0.getClass()
            java.util.Locale r5 = java.util.Locale.ROOT
            java.lang.String r5 = r0.toUpperCase(r5)
            r5.getClass()
            java.lang.String r6 = "_"
            java.lang.String r5 = r5.concat(r6)
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r5)
            if (r4 == 0) goto L84
            goto L88
        L84:
            int r2 = r2 + 1
            goto L63
        L87:
            r3 = 0
        L88:
            if (r3 == 0) goto La8
            java.lang.Object r7 = kotlin.collections.MapsKt__MapsKt.getValue(r3, r8)
            android.util.SparseArray r7 = (android.util.SparseArray) r7
            if (r7 != 0) goto L93
            goto La8
        L93:
            int r8 = r10.getInt(r9)
            java.lang.Object r7 = r7.get(r8)
            java.lang.String r7 = (java.lang.String) r7
            if (r7 != 0) goto La7
            int r7 = r10.getInt(r9)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
        La7:
            return r7
        La8:
            int r7 = r10.getInt(r9)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.ConfigurationCollector.getFieldValueName(java.util.Map, android.content.res.Configuration, java.lang.reflect.Field):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<org.acra.collector.ConfigurationCollector.Prefix, android.util.SparseArray<java.lang.String>> getValueArrays() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.ConfigurationCollector.getValueArrays():java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SparseArray getValueArrays$lambda$11(Prefix prefix) {
        return new SparseArray();
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
            crashReportData.put(ReportField.INITIAL_CONFIGURATION, this.initialConfiguration);
        } else if (i == 2) {
            crashReportData.put(ReportField.CRASH_CONFIGURATION, collectConfiguration(context));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1();
        }
    }

    @Override // org.acra.collector.ApplicationStartupCollector
    public void collectApplicationStartUp(Context context, CoreConfiguration coreConfiguration) {
        context.getClass();
        coreConfiguration.getClass();
        if (coreConfiguration.getReportContent().contains(ReportField.INITIAL_CONFIGURATION)) {
            this.initialConfiguration = collectConfiguration(context);
        }
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }
}
