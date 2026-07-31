package org.acra.data;

import android.util.Log;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CrashReportData {
    public final JSONObject content;

    public CrashReportData() {
        this.content = new JSONObject();
    }

    public final synchronized void put(String str, JSONObject jSONObject) {
        str.getClass();
        JSONObject jSONObject2 = this.content;
        if (jSONObject == null) {
            try {
                jSONObject2.put(str, "N/A");
            } catch (JSONException unused) {
            }
            return;
        }
        try {
            jSONObject2.put(str, jSONObject);
        } catch (JSONException unused2) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "Failed to put value into CrashReportData: " + jSONObject);
        }
    }

    public final Map toMap() {
        JSONObject jSONObject = this.content;
        Iterator<String> keys = jSONObject.keys();
        keys.getClass();
        Sequence<String> asSequence = SequencesKt.asSequence(keys);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : asSequence) {
            str.getClass();
            Pair pair = new Pair(str, jSONObject.opt(str));
            linkedHashMap.put(pair.component1(), pair.component2());
        }
        int size = linkedHashMap.size();
        if (size == 0) {
            return EmptyMap.INSTANCE;
        }
        if (size != 1) {
            return linkedHashMap;
        }
        Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        singletonMap.getClass();
        return singletonMap;
    }

    public CrashReportData(String str) {
        this.content = new JSONObject(str);
    }

    public final synchronized void put(String str, long j) {
        str.getClass();
        try {
            this.content.put(str, j);
        } catch (JSONException unused) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "Failed to put value into CrashReportData: " + j);
        }
    }

    public final synchronized void put(String str, String str2) {
        str.getClass();
        JSONObject jSONObject = this.content;
        if (str2 == null) {
            try {
                jSONObject.put(str, "N/A");
            } catch (JSONException unused) {
            }
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException unused2) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "Failed to put value into CrashReportData: ".concat(str2));
        }
    }

    public final synchronized void put(String str) {
        str.getClass();
        try {
            this.content.put(str, false);
        } catch (JSONException unused) {
            ErrorReporter errorReporter = ACRA.errorReporter;
            Log.w("ACRA", "Failed to put value into CrashReportData: false");
        }
    }

    public final synchronized void put(ReportField reportField) {
        reportField.getClass();
        put(reportField.toString());
    }

    public final synchronized void put(ReportField reportField, long j) {
        reportField.getClass();
        put(reportField.toString(), j);
    }

    public final synchronized void put(ReportField reportField, String str) {
        reportField.getClass();
        put(reportField.toString(), str);
    }

    public final synchronized void put(ReportField reportField, JSONObject jSONObject) {
        reportField.getClass();
        put(reportField.toString(), jSONObject);
    }
}
