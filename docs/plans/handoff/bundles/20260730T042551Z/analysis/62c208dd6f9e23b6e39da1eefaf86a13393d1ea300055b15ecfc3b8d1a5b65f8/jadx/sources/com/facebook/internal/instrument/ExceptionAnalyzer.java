package com.facebook.internal.instrument;

import com.facebook.GraphRequest;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.internal.instrument.InstrumentData;
import defpackage.AsyncTaskC0302Jl;
import defpackage.C0173Do;
import defpackage.C0209Fg;
import defpackage.C0324Kl;
import defpackage.C0346Ll;
import defpackage.C3756th;
import defpackage.MJ;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ExceptionAnalyzer {
    public static final ExceptionAnalyzer INSTANCE = new ExceptionAnalyzer();
    private static boolean enabled;

    private ExceptionAnalyzer() {
    }

    public static final void enable() {
        enabled = true;
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            INSTANCE.sendExceptionAnalysisReports$facebook_core_release();
        }
    }

    public static final void execute(Throwable th) {
        if (!enabled || isDebug$facebook_core_release() || th == null) {
            return;
        }
        HashSet hashSet = new HashSet();
        StackTraceElement[] stackTrace = th.getStackTrace();
        C0173Do.m399new(stackTrace, "e.stackTrace");
        for (StackTraceElement stackTraceElement : stackTrace) {
            FeatureManager featureManager = FeatureManager.INSTANCE;
            String className = stackTraceElement.getClassName();
            C0173Do.m399new(className, "it.className");
            FeatureManager.Feature feature = FeatureManager.getFeature(className);
            if (feature != FeatureManager.Feature.Unknown) {
                FeatureManager.disableFeature(feature);
                hashSet.add(feature.toString());
            }
        }
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if() && (!hashSet.isEmpty())) {
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.build(new JSONArray((Collection) hashSet)).save();
        }
    }

    public static final boolean isDebug$facebook_core_release() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendExceptionAnalysisReports$lambda-1, reason: not valid java name */
    public static final void m5451sendExceptionAnalysisReports$lambda1(InstrumentData instrumentData, C0346Ll c0346Ll) {
        C0173Do.m401try(instrumentData, "$instrumentData");
        C0173Do.m401try(c0346Ll, "response");
        try {
            if (c0346Ll.f1995do == null) {
                JSONObject jSONObject = c0346Ll.f1998if;
                if (C0173Do.m394do(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean("success")), Boolean.TRUE)) {
                    instrumentData.clear();
                }
            }
        } catch (JSONException unused) {
        }
    }

    public final void sendExceptionAnalysisReports$facebook_core_release() {
        if (Utility.isDataProcessingRestricted()) {
            return;
        }
        File[] listExceptionAnalysisReportFiles = InstrumentUtility.listExceptionAnalysisReportFiles();
        ArrayList arrayList = new ArrayList();
        int length = listExceptionAnalysisReportFiles.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            File file = listExceptionAnalysisReportFiles[i2];
            i2++;
            InstrumentData load = InstrumentData.Builder.load(file);
            if (load.isValid()) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("crash_shield", load.toString());
                    String str = GraphRequest.f9271for;
                    String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C3756th.m8303if()}, 1));
                    C0173Do.m399new(format, "java.lang.String.format(format, *args)");
                    arrayList.add(GraphRequest.Cfor.m5289goto(null, format, jSONObject, new C0209Fg(load, i)));
                } catch (JSONException unused) {
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        C0324Kl c0324Kl = new C0324Kl(arrayList);
        String str2 = GraphRequest.f9271for;
        Validate.notEmptyAndContainsNoNulls(c0324Kl, "requests");
        new AsyncTaskC0302Jl(c0324Kl).executeOnExecutor(C3756th.m8304new(), new Void[0]);
    }
}
