package org.acra.data;

import j$.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt;
import okio.Okio;
import org.acra.ReportField;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.jsoup.Jsoup;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StringFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StringFormat[] $VALUES;
    public static final StringFormat JSON;
    public static final StringFormat KEY_VALUE_LIST;
    private final String matchingHttpContentType;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class JSON extends StringFormat {
        @Override // org.acra.data.StringFormat
        public final String toFormattedString(CrashReportData crashReportData, List list, String str, String str2, boolean z) {
            crashReportData.getClass();
            list.getClass();
            str.getClass();
            str2.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap(crashReportData.toMap());
            JSONStringer object = new JSONStringer().object();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ReportField reportField = (ReportField) it.next();
                object.key(reportField.toString()).value(linkedHashMap.remove(reportField.toString()));
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str3 = (String) entry.getKey();
                object.key(str3).value(entry.getValue());
            }
            String jSONStringer = object.endObject().toString();
            jSONStringer.getClass();
            return jSONStringer;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class KEY_VALUE_LIST extends StringFormat {
        public static void append(StringBuilder sb, String str, String str2, String str3, boolean z) {
            if (sb.length() > 0) {
                sb.append(str3);
            }
            if (z) {
                str = str != null ? URLEncoder.encode(str, "UTF-8") : null;
                str2 = str2 != null ? URLEncoder.encode(str2, "UTF-8") : null;
            }
            sb.append(str);
            sb.append('=');
            sb.append(str2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Iterable] */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList] */
        public static ArrayList flatten(JSONObject jSONObject) {
            Object obj;
            ?? listOf;
            Iterator<String> keys = jSONObject.keys();
            keys.getClass();
            List<String> list = SequencesKt.toList(SequencesKt.asSequence(keys));
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                try {
                    obj = jSONObject.get(str);
                } catch (JSONException unused) {
                    obj = null;
                }
                if (obj instanceof JSONObject) {
                    ArrayList flatten = flatten((JSONObject) obj);
                    listOf = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(flatten, 10));
                    Iterator it = flatten.iterator();
                    while (it.hasNext()) {
                        listOf.add(str + "." + ((String) it.next()));
                    }
                } else {
                    listOf = Jsoup.listOf(str + "=" + obj);
                }
                CollectionsKt__MutableCollectionsKt.addAll(listOf, arrayList);
            }
            return arrayList;
        }

        @Override // org.acra.data.StringFormat
        public final String toFormattedString(CrashReportData crashReportData, List list, String str, String str2, boolean z) {
            String str3;
            String valueOf;
            crashReportData.getClass();
            list.getClass();
            str.getClass();
            str2.getClass();
            Map map = crashReportData.toMap();
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof JSONObject) {
                    str3 = str2;
                    valueOf = CollectionsKt.joinToString$default(flatten((JSONObject) value), str3, null, null, null, 62);
                } else {
                    str3 = str2;
                    valueOf = String.valueOf(value);
                }
                linkedHashMap.put(key, valueOf);
                str2 = str3;
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.toMap(linkedHashMap));
            StringBuilder sb = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ReportField reportField = (ReportField) it.next();
                append(sb, reportField.toString(), (String) linkedHashMap2.remove(reportField.toString()), str, z);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                append(sb, (String) entry2.getKey(), (String) entry2.getValue(), str, z);
            }
            return sb.toString();
        }
    }

    private static final /* synthetic */ StringFormat[] $values() {
        return new StringFormat[]{JSON, KEY_VALUE_LIST};
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        JSON = new JSON("JSON", 0, "application/json", defaultConstructorMarker);
        KEY_VALUE_LIST = new KEY_VALUE_LIST("KEY_VALUE_LIST", 1, "application/x-www-form-urlencoded", defaultConstructorMarker);
        StringFormat[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private StringFormat(String str, int i, String str2) {
        this.matchingHttpContentType = str2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static StringFormat valueOf(String str) {
        return (StringFormat) Enum.valueOf(StringFormat.class, str);
    }

    public static StringFormat[] values() {
        return (StringFormat[]) $VALUES.clone();
    }

    public final String getMatchingHttpContentType() {
        return this.matchingHttpContentType;
    }

    public abstract String toFormattedString(CrashReportData crashReportData, List<? extends ReportField> list, String str, String str2, boolean z);

    public /* synthetic */ StringFormat(String str, int i, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i, str2);
    }
}
