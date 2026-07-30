package com.facebook.internal.instrument;

import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import com.facebook.internal.instrument.threadcheck.ThreadCheckHandler;
import defpackage.C0472Rg;
import defpackage.C3580qh;
import defpackage.C3756th;
import defpackage.Cpackage;
import defpackage.MJ;

/* loaded from: classes.dex */
public final class InstrumentManager {
    public static final InstrumentManager INSTANCE = new InstrumentManager();

    private InstrumentManager() {
    }

    public static final void start() {
        C3756th c3756th = C3756th.f15751do;
        if (MJ.m1411if()) {
            FeatureManager featureManager = FeatureManager.INSTANCE;
            FeatureManager.checkFeature(FeatureManager.Feature.CrashReport, new C0472Rg(3));
            int i = 1;
            FeatureManager.checkFeature(FeatureManager.Feature.ErrorReport, new C3580qh(i));
            FeatureManager.checkFeature(FeatureManager.Feature.AnrReport, new Cpackage(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: start$lambda-0, reason: not valid java name */
    public static final void m5455start$lambda0(boolean z) {
        if (z) {
            CrashHandler.Companion.enable();
            FeatureManager featureManager = FeatureManager.INSTANCE;
            if (FeatureManager.isEnabled(FeatureManager.Feature.CrashShield)) {
                ExceptionAnalyzer.enable();
                CrashShieldHandler.enable();
            }
            if (FeatureManager.isEnabled(FeatureManager.Feature.ThreadCheck)) {
                ThreadCheckHandler.enable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: start$lambda-1, reason: not valid java name */
    public static final void m5456start$lambda1(boolean z) {
        if (z) {
            ErrorReportHandler.enable();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: start$lambda-2, reason: not valid java name */
    public static final void m5457start$lambda2(boolean z) {
        if (z) {
            ANRHandler.enable();
        }
    }
}
