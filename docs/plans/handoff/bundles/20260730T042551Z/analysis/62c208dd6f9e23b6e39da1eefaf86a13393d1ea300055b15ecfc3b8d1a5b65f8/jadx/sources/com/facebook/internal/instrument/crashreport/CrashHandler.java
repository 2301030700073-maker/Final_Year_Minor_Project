package com.facebook.internal.instrument.crashreport;

import com.facebook.GraphRequest;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.ExceptionAnalyzer;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import defpackage.AbstractC3704so;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C2819gd;
import defpackage.C3756th;
import defpackage.C3822uo;
import defpackage.C3850vF;
import defpackage.C4104zb;
import defpackage.E8;
import defpackage.MJ;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static final int MAX_CRASH_REPORT_NUM = 5;
    private static CrashHandler instance;
    private final Thread.UncaughtExceptionHandler previousHandler;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = CrashHandler.class.getCanonicalName();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        private final void sendExceptionReports() {
            if (Utility.isDataProcessingRestricted()) {
                return;
            }
            File[] listExceptionReportFiles = InstrumentUtility.listExceptionReportFiles();
            ArrayList arrayList = new ArrayList(listExceptionReportFiles.length);
            int i = 0;
            for (File file : listExceptionReportFiles) {
                arrayList.add(InstrumentData.Builder.load(file));
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((InstrumentData) next).isValid()) {
                    arrayList2.add(next);
                }
            }
            final List h = E8.h(new C4104zb(i), arrayList2);
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it2 = C3850vF.m8461switch(0, Math.min(h.size(), 5)).iterator();
            while (((C3822uo) it2).f15951do) {
                jSONArray.put(h.get(((AbstractC3704so) it2).nextInt()));
            }
            InstrumentUtility.sendReports("crash_reports", jSONArray, new GraphRequest.Cif() { // from class: Ab
                @Override // com.facebook.GraphRequest.Cif
                /* renamed from: if, reason: not valid java name */
                public final void mo78if(C0346Ll c0346Ll) {
                    CrashHandler.Companion.m5473sendExceptionReports$lambda5(h, c0346Ll);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: sendExceptionReports$lambda-2, reason: not valid java name */
        public static final int m5472sendExceptionReports$lambda2(InstrumentData instrumentData, InstrumentData instrumentData2) {
            C0173Do.m399new(instrumentData2, "o2");
            return instrumentData.compareTo(instrumentData2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: sendExceptionReports$lambda-5, reason: not valid java name */
        public static final void m5473sendExceptionReports$lambda5(List list, C0346Ll c0346Ll) {
            C0173Do.m401try(list, "$validReports");
            C0173Do.m401try(c0346Ll, "response");
            try {
                if (c0346Ll.f1995do == null) {
                    JSONObject jSONObject = c0346Ll.f1998if;
                    if (C0173Do.m394do(jSONObject == null ? null : Boolean.valueOf(jSONObject.getBoolean("success")), Boolean.TRUE)) {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ((InstrumentData) it.next()).clear();
                        }
                    }
                }
            } catch (JSONException unused) {
            }
        }

        public final synchronized void enable() {
            C3756th c3756th = C3756th.f15751do;
            if (MJ.m1411if()) {
                sendExceptionReports();
            }
            if (CrashHandler.instance != null) {
                String unused = CrashHandler.TAG;
            } else {
                CrashHandler.instance = new CrashHandler(Thread.getDefaultUncaughtExceptionHandler(), null);
                Thread.setDefaultUncaughtExceptionHandler(CrashHandler.instance);
            }
        }
    }

    private CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.previousHandler = uncaughtExceptionHandler;
    }

    public /* synthetic */ CrashHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C2819gd c2819gd) {
        this(uncaughtExceptionHandler);
    }

    public static final synchronized void enable() {
        synchronized (CrashHandler.class) {
            Companion.enable();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        C0173Do.m401try(thread, "t");
        C0173Do.m401try(th, "e");
        if (InstrumentUtility.isSDKRelatedException(th)) {
            ExceptionAnalyzer.execute(th);
            InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
            InstrumentData.Builder.build(th, InstrumentData.Type.CrashReport).save();
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.previousHandler;
        if (uncaughtExceptionHandler == null) {
            return;
        }
        uncaughtExceptionHandler.uncaughtException(thread, th);
    }
}
