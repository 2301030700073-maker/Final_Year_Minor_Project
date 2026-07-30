package defpackage;

import android.content.Context;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.session.client.DefaultSessionClient;

/* renamed from: y0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4012y0 {

    /* renamed from: do, reason: not valid java name */
    public static MobileAnalyticsManager f16658do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f16659do = false;

    /* renamed from: case, reason: not valid java name */
    public static void m8690case(String str, boolean z) {
        MobileAnalyticsManager mobileAnalyticsManager = f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            EventConstraintDecorator m5101for = defaultEventClient.m5101for("WearRootResultsStatus");
            m5101for.mo5062else("StatusOfWearRootInstall", String.valueOf(z));
            defaultEventClient.m5099case(m5101for.f8929do.mo5065new("DetailsOfWearRootInstall", str));
            f16658do.f8800do.m5100else();
        } catch (Exception unused) {
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8691do() {
        DefaultSessionClient defaultSessionClient;
        DefaultEventClient defaultEventClient;
        try {
            MobileAnalyticsManager mobileAnalyticsManager = f16658do;
            if (mobileAnalyticsManager == null || (defaultSessionClient = mobileAnalyticsManager.f8801do) == null || (defaultEventClient = mobileAnalyticsManager.f8800do) == null) {
                return;
            }
            synchronized (defaultSessionClient) {
                defaultSessionClient.f8947do.mo5109for();
            }
            defaultEventClient.m5100else();
        } catch (Exception unused) {
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8692for(String str) {
        if (f16658do == null) {
            return;
        }
        try {
            if (O4.m1610if().isEmpty()) {
                DefaultEventClient defaultEventClient = f16658do.f8800do;
                EventConstraintDecorator m5101for = defaultEventClient.m5101for("ButtonPressed");
                m5101for.mo5062else("ButtonName", str);
                defaultEventClient.m5099case(m5101for.f8929do);
            } else {
                DefaultEventClient defaultEventClient2 = f16658do.f8800do;
                EventConstraintDecorator m5101for2 = defaultEventClient2.m5101for("ButtonPressed");
                m5101for2.mo5062else("ButtonName", str);
                defaultEventClient2.m5099case(m5101for2.f8929do.mo5065new("ABTestName", O4.m1610if()));
            }
            C3772tx.m8329default(str);
        } catch (Exception unused) {
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8693if(Context context, boolean z) {
        try {
            new CognitoCachingCredentialsProvider(context);
        } catch (Exception | LinkageError unused) {
        }
        try {
            f16658do = MobileAnalyticsManager.m5067do(context);
        } catch (Exception | LinkageError unused2) {
        }
        if (z) {
            MobileAnalyticsManager mobileAnalyticsManager = f16658do;
            if (mobileAnalyticsManager != null) {
                try {
                    DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                    EventConstraintDecorator m5101for = defaultEventClient.m5101for("AppRunCounter");
                    m5101for.mo5059break("CountOfAppRuns", Double.valueOf(C3772tx.m8339native()));
                    defaultEventClient.m5099case(m5101for.f8929do);
                } catch (Exception unused3) {
                }
            }
            MobileAnalyticsManager mobileAnalyticsManager2 = f16658do;
            if (mobileAnalyticsManager2 == null) {
                return;
            }
            try {
                DefaultEventClient defaultEventClient2 = mobileAnalyticsManager2.f8800do;
                EventConstraintDecorator m5101for2 = defaultEventClient2.m5101for("AppUUID");
                m5101for2.mo5062else("UUIDofApp", C3772tx.m8336goto(context));
                defaultEventClient2.m5099case(m5101for2.f8929do);
                f16658do.f8800do.m5100else();
            } catch (Exception unused4) {
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8694new(String str) {
        MobileAnalyticsManager mobileAnalyticsManager = f16658do;
        if (mobileAnalyticsManager == null) {
            return;
        }
        try {
            DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
            EventConstraintDecorator m5101for = defaultEventClient.m5101for("NotificationPressed");
            m5101for.mo5062else("NotificationPressedName", str);
            defaultEventClient.m5099case(m5101for.f8929do);
            f16658do.f8800do.m5100else();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0064, code lost:
    
        if (r5 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
    
        r5 = com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0081, code lost:
    
        r1.mo5062else(r4, r5);
        r1 = r1.f8929do;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        r5 = defpackage.C3717t0.m8191for(" MjcKy0Zibgr+vLEBgRyPRg==:DQ5oDiEn0mVspoqEXhel2Ks92rfZTJo5PRbt4kLiTrA=");
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x008f, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x007d, code lost:
    
        if (r5 == null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6  */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8695try(android.app.Activity r8) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4012y0.m8695try(android.app.Activity):void");
    }
}
