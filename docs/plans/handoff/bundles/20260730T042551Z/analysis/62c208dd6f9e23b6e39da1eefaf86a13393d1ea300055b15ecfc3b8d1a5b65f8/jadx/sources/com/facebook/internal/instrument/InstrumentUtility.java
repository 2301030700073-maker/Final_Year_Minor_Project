package com.facebook.internal.instrument;

import com.facebook.GraphRequest;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentUtility;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C3528po;
import defpackage.C3548q7;
import defpackage.C3756th;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class InstrumentUtility {
    public static final String ANALYSIS_REPORT_PREFIX = "analysis_log_";
    public static final String ANR_REPORT_PREFIX = "anr_log_";
    private static final String CODELESS_PREFIX = "com.facebook.appevents.codeless";
    public static final String CRASH_REPORT_PREFIX = "crash_log_";
    public static final String CRASH_SHIELD_PREFIX = "shield_log_";
    public static final String ERROR_REPORT_PREFIX = "error_log_";
    private static final String FBSDK_PREFIX = "com.facebook";
    public static final InstrumentUtility INSTANCE = new InstrumentUtility();
    private static final String INSTRUMENT_DIR = "instrument";
    private static final String METASDK_PREFIX = "com.meta";
    private static final String SUGGESTED_EVENTS_PREFIX = "com.facebook.appevents.suggestedevents";
    public static final String THREAD_CHECK_PREFIX = "thread_check_log_";

    private InstrumentUtility() {
    }

    public static final boolean deleteFile(String str) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null) {
            return false;
        }
        return new File(instrumentReportDir, str).delete();
    }

    public static final String getCause(Throwable th) {
        if (th == null) {
            return null;
        }
        return th.getCause() == null ? th.toString() : String.valueOf(th.getCause());
    }

    public static final File getInstrumentReportDir() {
        File file = new File(C3756th.m8299do().getCacheDir(), INSTRUMENT_DIR);
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        return null;
    }

    public static final String getStackTrace(Throwable th) {
        Throwable th2 = null;
        if (th == null) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            C0173Do.m399new(stackTrace, "t.stackTrace");
            int length = stackTrace.length;
            int i = 0;
            while (i < length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                i++;
                jSONArray.put(stackTraceElement.toString());
            }
            th2 = th;
            th = th.getCause();
        }
        return jSONArray.toString();
    }

    public static final boolean isFromFbOrMeta(StackTraceElement stackTraceElement) {
        C0173Do.m401try(stackTraceElement, "element");
        String className = stackTraceElement.getClassName();
        C0173Do.m399new(className, "element.className");
        if (!BF.j(className, FBSDK_PREFIX)) {
            String className2 = stackTraceElement.getClassName();
            C0173Do.m399new(className2, "element.className");
            if (!BF.j(className2, METASDK_PREFIX)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isSDKRelatedException(Throwable th) {
        if (th == null) {
            return false;
        }
        Throwable th2 = null;
        while (th != null && th != th2) {
            StackTraceElement[] stackTrace = th.getStackTrace();
            C0173Do.m399new(stackTrace, "t.stackTrace");
            int length = stackTrace.length;
            int i = 0;
            while (i < length) {
                StackTraceElement stackTraceElement = stackTrace[i];
                i++;
                C0173Do.m399new(stackTraceElement, "element");
                if (isFromFbOrMeta(stackTraceElement)) {
                    return true;
                }
            }
            th2 = th;
            th = th.getCause();
        }
        return false;
    }

    public static final boolean isSDKRelatedThread(Thread thread) {
        StackTraceElement[] stackTrace;
        if (thread != null && (stackTrace = thread.getStackTrace()) != null) {
            for (StackTraceElement stackTraceElement : stackTrace) {
                C0173Do.m399new(stackTraceElement, "element");
                if (isFromFbOrMeta(stackTraceElement)) {
                    String className = stackTraceElement.getClassName();
                    C0173Do.m399new(className, "element.className");
                    if (!BF.j(className, CODELESS_PREFIX)) {
                        String className2 = stackTraceElement.getClassName();
                        C0173Do.m399new(className2, "element.className");
                        if (!BF.j(className2, SUGGESTED_EVENTS_PREFIX)) {
                            return true;
                        }
                    }
                    String methodName = stackTraceElement.getMethodName();
                    C0173Do.m399new(methodName, "element.methodName");
                    if (BF.j(methodName, "onClick")) {
                        continue;
                    } else {
                        String methodName2 = stackTraceElement.getMethodName();
                        C0173Do.m399new(methodName2, "element.methodName");
                        if (BF.j(methodName2, "onItemClick")) {
                            continue;
                        } else {
                            String methodName3 = stackTraceElement.getMethodName();
                            C0173Do.m399new(methodName3, "element.methodName");
                            if (!BF.j(methodName3, "onTouch")) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final File[] listAnrReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: qo
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m5461listAnrReportFiles$lambda1;
                m5461listAnrReportFiles$lambda1 = InstrumentUtility.m5461listAnrReportFiles$lambda1(file, str);
                return m5461listAnrReportFiles$lambda1;
            }
        });
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listAnrReportFiles$lambda-1, reason: not valid java name */
    public static final boolean m5461listAnrReportFiles$lambda1(File file, String str) {
        C0173Do.m399new(str, FacebookRequestErrorClassification.KEY_NAME);
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANR_REPORT_PREFIX}, 1));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        Pattern compile = Pattern.compile(format);
        C0173Do.m399new(compile, "compile(pattern)");
        return compile.matcher(str).matches();
    }

    public static final File[] listExceptionAnalysisReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        int i = 0;
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new C3528po(i));
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listExceptionAnalysisReportFiles$lambda-2, reason: not valid java name */
    public static final boolean m5462listExceptionAnalysisReportFiles$lambda2(File file, String str) {
        C0173Do.m399new(str, FacebookRequestErrorClassification.KEY_NAME);
        String format = String.format("^%s[0-9]+.json$", Arrays.copyOf(new Object[]{ANALYSIS_REPORT_PREFIX}, 1));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        Pattern compile = Pattern.compile(format);
        C0173Do.m399new(compile, "compile(pattern)");
        return compile.matcher(str).matches();
    }

    public static final File[] listExceptionReportFiles() {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null) {
            return new File[0];
        }
        File[] listFiles = instrumentReportDir.listFiles(new FilenameFilter() { // from class: oo
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean m5463listExceptionReportFiles$lambda3;
                m5463listExceptionReportFiles$lambda3 = InstrumentUtility.m5463listExceptionReportFiles$lambda3(file, str);
                return m5463listExceptionReportFiles$lambda3;
            }
        });
        return listFiles == null ? new File[0] : listFiles;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: listExceptionReportFiles$lambda-3, reason: not valid java name */
    public static final boolean m5463listExceptionReportFiles$lambda3(File file, String str) {
        C0173Do.m399new(str, FacebookRequestErrorClassification.KEY_NAME);
        String format = String.format("^(%s|%s|%s)[0-9]+.json$", Arrays.copyOf(new Object[]{CRASH_REPORT_PREFIX, CRASH_SHIELD_PREFIX, THREAD_CHECK_PREFIX}, 3));
        C0173Do.m399new(format, "java.lang.String.format(format, *args)");
        Pattern compile = Pattern.compile(format);
        C0173Do.m399new(compile, "compile(pattern)");
        return compile.matcher(str).matches();
    }

    public static final JSONObject readFile(String str, boolean z) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir != null && str != null) {
            try {
                return new JSONObject(Utility.readStreamToString(new FileInputStream(new File(instrumentReportDir, str))));
            } catch (Exception unused) {
                if (z) {
                    deleteFile(str);
                }
            }
        }
        return null;
    }

    public static final void sendReports(String str, JSONArray jSONArray, GraphRequest.Cif cif) {
        C0173Do.m401try(jSONArray, "reports");
        if (jSONArray.length() == 0) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, jSONArray.toString());
            JSONObject dataProcessingOptions = Utility.getDataProcessingOptions();
            if (dataProcessingOptions != null) {
                Iterator<String> keys = dataProcessingOptions.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    jSONObject.put(next, dataProcessingOptions.get(next));
                }
            }
            String str2 = GraphRequest.f9271for;
            String format = String.format("%s/instruments", Arrays.copyOf(new Object[]{C3756th.m8303if()}, 1));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            GraphRequest.Cfor.m5289goto(null, format, jSONObject, cif).m5270new();
        } catch (JSONException unused) {
        }
    }

    public static final void writeFile(String str, String str2) {
        File instrumentReportDir = getInstrumentReportDir();
        if (instrumentReportDir == null || str == null || str2 == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(instrumentReportDir, str));
            byte[] bytes = str2.getBytes(C3548q7.f15043do);
            C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
            fileOutputStream.write(bytes);
            fileOutputStream.close();
        } catch (Exception unused) {
        }
    }

    public static final String getStackTrace(Thread thread) {
        C0173Do.m401try(thread, "thread");
        StackTraceElement[] stackTrace = thread.getStackTrace();
        JSONArray jSONArray = new JSONArray();
        C0173Do.m399new(stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (i < length) {
            StackTraceElement stackTraceElement = stackTrace[i];
            i++;
            jSONArray.put(stackTraceElement.toString());
        }
        return jSONArray.toString();
    }
}
