package com.facebook.internal.instrument.errorreport;

import com.facebook.GraphRequest;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C3166jg;
import defpackage.C3528po;
import defpackage.C3756th;
import defpackage.MJ;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ErrorReportHandler {
    public static final ErrorReportHandler INSTANCE = new ErrorReportHandler();
    private static final int MAX_ERROR_REPORT_NUM = 1000;

    private ErrorReportHandler() {
    }

    public static final void enable() {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            sendErrorReports();
        }
    }

    public static final File[] listErrorReportFiles() {
        File instrumentReportDir = InstrumentUtility.getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new C3528po(1));
        C0173Do.m399new(listFiles, "reportDir.listFiles { dir, name ->\n      name.matches(Regex(String.format(\"^%s[0-9]+.json$\", InstrumentUtility.ERROR_REPORT_PREFIX)))\n    }");
        return listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listErrorReportFiles$lambda-3, reason: not valid java name */
    public static final boolean m5477listErrorReportFiles$lambda3(File file, String str) {
        C0173Do.m399new(str, FacebookRequestErrorClassification.KEY_NAME);
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{InstrumentUtility.ERROR_REPORT_PREFIX}, 1));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        Pattern compile = Pattern.compile(format);
        C0173Do.m399new(compile, "compile(pattern)");
        return compile.matcher(str).matches();
    }

    public static final void save(String str) {
        try {
            new ErrorReportData(str).save();
        } catch (Exception unused) {
        }
    }

    public static final void sendErrorReports() {
        if (Utility.isDataProcessingRestricted()) {
            return;
        }
        File[] listErrorReportFiles = listErrorReportFiles();
        final ArrayList arrayList = new ArrayList();
        int length = listErrorReportFiles.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            File file = listErrorReportFiles[i2];
            i2++;
            ErrorReportData errorReportData = new ErrorReportData(file);
            if (errorReportData.isValid()) {
                arrayList.add(errorReportData);
            }
        }
        C3166jg c3166jg = new C3166jg(i);
        if (arrayList.size() > 1) {
            Collections.sort(arrayList, c3166jg);
        }
        JSONArray jSONArray = new JSONArray();
        while (i < arrayList.size() && i < 1000) {
            jSONArray.put(arrayList.get(i));
            i++;
        }
        InstrumentUtility.sendReports("error_reports", jSONArray, new GraphRequest.Cif() { // from class: kg
            @Override // com.facebook.GraphRequest.Cif
            /* renamed from: if */
            public final void mo78if(C0346Ll c0346Ll) {
                ErrorReportHandler.m5479sendErrorReports$lambda2(arrayList, c0346Ll);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendErrorReports$lambda-0, reason: not valid java name */
    public static final int m5478sendErrorReports$lambda0(ErrorReportData errorReportData, ErrorReportData errorReportData2) {
        C0173Do.m399new(errorReportData2, "o2");
        return errorReportData.compareTo(errorReportData2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendErrorReports$lambda-2, reason: not valid java name */
    public static final void m5479sendErrorReports$lambda2(ArrayList arrayList, C0346Ll c0346Ll) {
        C0173Do.m401try(arrayList, "$validReports");
        C0173Do.m401try(c0346Ll, "response");
        try {
            if (c0346Ll.f1995do == null) {
                JSONObject jSONObject = c0346Ll.f1998if;
                if (C0173Do.m394do(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean("success")), Boolean.TRUE)) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ErrorReportData) it.next()).clear();
                    }
                }
            }
        } catch (JSONException unused) {
        }
    }
}
