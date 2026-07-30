package com.facebook.internal.instrument.anrreport;

import com.facebook.internal.Utility;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.AbstractC3704so;
import defpackage.C0173Do;
import defpackage.C0209Fg;
import defpackage.C0346Ll;
import defpackage.C3756th;
import defpackage.C3822uo;
import defpackage.C3850vF;
import defpackage.Cdo;
import defpackage.E8;
import defpackage.MJ;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ANRHandler {
    private static final int MAX_ANR_REPORT_NUM = 5;
    public static final ANRHandler INSTANCE = new ANRHandler();
    private static final AtomicBoolean enabled = new AtomicBoolean(false);

    private ANRHandler() {
    }

    public static final synchronized void enable() {
        synchronized (ANRHandler.class) {
            if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
                return;
            }
            try {
                if (enabled.getAndSet(true)) {
                    return;
                }
                C3756th c3756th = C3756th.f15751do;
                if (MJ.m1411if()) {
                    sendANRReports();
                }
                ANRDetector.start();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, ANRHandler.class);
            }
        }
    }

    public static final void sendANRReports() {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
            if (Utility.isDataProcessingRestricted()) {
                return;
            }
            File[] listAnrReportFiles = InstrumentUtility.listAnrReportFiles();
            ArrayList arrayList = new ArrayList(listAnrReportFiles.length);
            int i = 0;
            for (File file : listAnrReportFiles) {
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
            List h = E8.h(new Cdo(i), arrayList2);
            JSONArray jSONArray = new JSONArray();
            Iterator<Integer> it2 = C3850vF.m8461switch(0, Math.min(h.size(), 5)).iterator();
            while (((C3822uo) it2).f15951do) {
                jSONArray.put(h.get(((AbstractC3704so) it2).nextInt()));
            }
            InstrumentUtility.sendReports("anr_reports", jSONArray, new C0209Fg(h, 1));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendANRReports$lambda-2, reason: not valid java name */
    public static final int m5468sendANRReports$lambda2(InstrumentData instrumentData, InstrumentData instrumentData2) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return 0;
        }
        try {
            C0173Do.m399new(instrumentData2, "o2");
            return instrumentData.compareTo(instrumentData2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sendANRReports$lambda-5, reason: not valid java name */
    public static final void m5469sendANRReports$lambda5(List list, C0346Ll c0346Ll) {
        if (CrashShieldHandler.isObjectCrashing(ANRHandler.class)) {
            return;
        }
        try {
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
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ANRHandler.class);
        }
    }
}
