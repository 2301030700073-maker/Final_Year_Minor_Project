package org.acra.collector;

import android.content.Context;
import android.content.res.Configuration;
import android.util.SparseArray;
import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.acra.ACRA;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.acra.plugins.Plugin;
import org.bouncycastle.i18n.TextBundle;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ConfigurationCollector.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0017\u0018\u0000 '2\u00020\u00012\u00020\u0002:\u0002&'B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J0\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016H\u0012J\u001a\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u0018H\u0012J2\u0010\u001c\u001a\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a0\u00182\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0012J\u001e\u0010!\u001a\u00020\u001b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010#\u001a\u00020$H\u0012J\u0012\u0010%\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0012R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0092\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lorg/acra/collector/ConfigurationCollector;", "Lorg/acra/collector/BaseReportFieldCollector;", "Lorg/acra/collector/ApplicationStartupCollector;", "<init>", "()V", "initialConfiguration", "Lorg/json/JSONObject;", "collect", "", "reportField", "Lorg/acra/ReportField;", CoreConstants.CONTEXT_SCOPE_VALUE, "Landroid/content/Context;", "config", "Lorg/acra/config/CoreConfiguration;", "reportBuilder", "Lorg/acra/builder/ReportBuilder;", "target", "Lorg/acra/data/CrashReportData;", "collectApplicationStartUp", "configToJson", "conf", "Landroid/content/res/Configuration;", "getValueArrays", "", "Lorg/acra/collector/ConfigurationCollector$Prefix;", "Landroid/util/SparseArray;", "", "getFieldValueName", "", "valueArrays", "f", "Ljava/lang/reflect/Field;", "activeFlags", "valueNames", "bitfield", "", "collectConfiguration", "Prefix", "Companion", "acra-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public class ConfigurationCollector extends BaseReportFieldCollector implements ApplicationStartupCollector {
    private static final String FIELD_MCC = "mcc";
    private static final String FIELD_MNC = "mnc";
    private static final String FIELD_SCREENLAYOUT = "screenLayout";
    private static final String FIELD_UIMODE = "uiMode";
    private static final String SUFFIX_MASK = "_MASK";
    private JSONObject initialConfiguration;

    /* compiled from: ConfigurationCollector.kt */
    public /* synthetic */ class WhenMappings {
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

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public /* bridge */ /* synthetic */ boolean enabled(CoreConfiguration coreConfiguration) {
        return Plugin.CC.$default$enabled(this, coreConfiguration);
    }

    public ConfigurationCollector() {
        super(ReportField.INITIAL_CONFIGURATION, ReportField.CRASH_CONFIGURATION);
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration config, ReportBuilder reportBuilder, CrashReportData target) {
        Intrinsics.checkNotNullParameter(reportField, "reportField");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(reportBuilder, "reportBuilder");
        Intrinsics.checkNotNullParameter(target, "target");
        int i = WhenMappings.$EnumSwitchMapping$0[reportField.ordinal()];
        if (i == 1) {
            target.put(ReportField.INITIAL_CONFIGURATION, this.initialConfiguration);
        } else {
            if (i == 2) {
                target.put(ReportField.CRASH_CONFIGURATION, collectConfiguration(context));
                return;
            }
            throw new IllegalArgumentException();
        }
    }

    @Override // org.acra.collector.ApplicationStartupCollector
    public void collectApplicationStartUp(Context context, CoreConfiguration config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(config, "config");
        if (config.getReportContent().contains(ReportField.INITIAL_CONFIGURATION)) {
            this.initialConfiguration = collectConfiguration(context);
        }
    }

    private JSONObject configToJson(Configuration conf) {
        JSONObject jSONObject = new JSONObject();
        Map<Prefix, SparseArray<String>> valueArrays = getValueArrays();
        Iterator it = ArrayIteratorKt.iterator(conf.getClass().getFields());
        while (it.hasNext()) {
            Field field = (Field) it.next();
            try {
                if (!Modifier.isStatic(field.getModifiers())) {
                    String name = field.getName();
                    try {
                        if (Intrinsics.areEqual(field.getType(), Integer.TYPE)) {
                            Intrinsics.checkNotNull(field);
                            jSONObject.put(name, getFieldValueName(valueArrays, conf, field));
                        } else if (field.get(conf) != null) {
                            jSONObject.put(name, field.get(conf));
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (JSONException e) {
                        ACRA.log.w(ACRA.LOG_TAG, "Could not collect configuration field " + name, e);
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
            } catch (IllegalAccessException e2) {
                ACRA.log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", e2);
            } catch (IllegalArgumentException e3) {
                ACRA.log.e(ACRA.LOG_TAG, "Error while inspecting device configuration: ", e3);
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0116 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Map<org.acra.collector.ConfigurationCollector.Prefix, android.util.SparseArray<java.lang.String>> getValueArrays() {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.ConfigurationCollector.getValueArrays():java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SparseArray getValueArrays$lambda$11(Prefix prefix) {
        return new SparseArray();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MCC) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0.equals(org.acra.collector.ConfigurationCollector.FIELD_MNC) == false) goto L21;
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
    private java.lang.Object getFieldValueName(java.util.Map<org.acra.collector.ConfigurationCollector.Prefix, ? extends android.util.SparseArray<java.lang.String>> r9, android.content.res.Configuration r10, java.lang.reflect.Field r11) throws java.lang.IllegalAccessException {
        /*
            r8 = this;
            java.lang.String r0 = r11.getName()
            if (r0 == 0) goto L5e
            int r1 = r0.hashCode()
            switch(r1) {
                case -1896438090: goto L44;
                case -845983145: goto L29;
                case 107917: goto L17;
                case 108258: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L5e
        Le:
            java.lang.String r1 = "mnc"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L1f
            goto L5e
        L17:
            java.lang.String r1 = "mcc"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L5e
        L1f:
            int r9 = r11.getInt(r10)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            goto Lb5
        L29:
            java.lang.String r1 = "uiMode"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L32
            goto L5e
        L32:
            org.acra.collector.ConfigurationCollector$Prefix r0 = org.acra.collector.ConfigurationCollector.Prefix.UI_MODE
            java.lang.Object r9 = kotlin.collections.MapsKt.getValue(r9, r0)
            android.util.SparseArray r9 = (android.util.SparseArray) r9
            int r10 = r11.getInt(r10)
            java.lang.String r9 = r8.activeFlags(r9, r10)
            goto Lb5
        L44:
            java.lang.String r1 = "screenLayout"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L4d
            goto L5e
        L4d:
            org.acra.collector.ConfigurationCollector$Prefix r0 = org.acra.collector.ConfigurationCollector.Prefix.SCREENLAYOUT
            java.lang.Object r9 = kotlin.collections.MapsKt.getValue(r9, r0)
            android.util.SparseArray r9 = (android.util.SparseArray) r9
            int r10 = r11.getInt(r10)
            java.lang.String r9 = r8.activeFlags(r9, r10)
            goto Lb5
        L5e:
            org.acra.collector.ConfigurationCollector$Prefix[] r1 = org.acra.collector.ConfigurationCollector.Prefix.values()
            int r2 = r1.length
            r3 = 0
        L64:
            if (r3 >= r2) goto L95
            r4 = r1[r3]
            java.lang.String r5 = r4.getText()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            java.util.Locale r6 = java.util.Locale.ROOT
            java.lang.String r6 = r0.toUpperCase(r6)
            java.lang.String r7 = "toUpperCase(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r6)
            java.lang.String r6 = "_"
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            if (r5 == 0) goto L92
            goto L96
        L92:
            int r3 = r3 + 1
            goto L64
        L95:
            r4 = 0
        L96:
            if (r4 == 0) goto Lb6
            java.lang.Object r9 = kotlin.collections.MapsKt.getValue(r9, r4)
            android.util.SparseArray r9 = (android.util.SparseArray) r9
            if (r9 != 0) goto La1
            goto Lb6
        La1:
            int r0 = r11.getInt(r10)
            java.lang.Object r9 = r9.get(r0)
            java.lang.String r9 = (java.lang.String) r9
            if (r9 != 0) goto Lb5
            int r9 = r11.getInt(r10)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
        Lb5:
            return r9
        Lb6:
            int r9 = r11.getInt(r10)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.acra.collector.ConfigurationCollector.getFieldValueName(java.util.Map, android.content.res.Configuration, java.lang.reflect.Field):java.lang.Object");
    }

    private String activeFlags(SparseArray<String> valueNames, int bitfield) {
        int i;
        StringBuilder sb = new StringBuilder();
        int size = valueNames.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = valueNames.keyAt(i2);
            String str = valueNames.get(keyAt);
            Intrinsics.checkNotNullExpressionValue(str, "get(...)");
            if (StringsKt.endsWith$default(str, SUFFIX_MASK, false, 2, (Object) null) && (i = keyAt & bitfield) > 0) {
                if (sb.length() > 0) {
                    sb.append('+');
                }
                sb.append(valueNames.get(i));
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    private JSONObject collectConfiguration(Context context) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            Intrinsics.checkNotNullExpressionValue(configuration, "getConfiguration(...)");
            return configToJson(configuration);
        } catch (RuntimeException e) {
            ACRA.log.w(ACRA.LOG_TAG, "Couldn't retrieve CrashConfiguration for : " + context.getPackageName(), e);
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: ConfigurationCollector.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lorg/acra/collector/ConfigurationCollector$Prefix;", "", TextBundle.TEXT_ENTRY, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getText", "()Ljava/lang/String;", "UI_MODE", "TOUCHSCREEN", "SCREENLAYOUT", "ORIENTATION", "NAVIGATIONHIDDEN", "NAVIGATION", "KEYBOARDHIDDEN", "KEYBOARD", "HARDKEYBOARDHIDDEN", "acra-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
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

        public static EnumEntries getEntries() {
            return $ENTRIES;
        }

        private Prefix(String str, int i, String str2) {
            this.text = str2;
        }

        public final String getText() {
            return this.text;
        }

        static {
            Prefix[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static Prefix valueOf(String str) {
            return (Prefix) Enum.valueOf(Prefix.class, str);
        }

        public static Prefix[] values() {
            return (Prefix[]) $VALUES.clone();
        }
    }
}
