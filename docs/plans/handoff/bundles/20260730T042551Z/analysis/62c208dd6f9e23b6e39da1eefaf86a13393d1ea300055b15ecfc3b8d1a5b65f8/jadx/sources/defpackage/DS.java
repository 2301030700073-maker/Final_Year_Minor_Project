package defpackage;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* loaded from: classes3.dex */
public final class DS {

    /* renamed from: do, reason: not valid java name */
    public final TS f617do;

    public DS(ZU zu) {
        this.f617do = zu.f4833do;
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m369do() {
        TS ts = this.f617do;
        try {
            PackageManagerWrapper packageManager = Wrappers.packageManager(ts.f3688do);
            if (packageManager != null) {
                return packageManager.getPackageInfo("com.android.vending", 128).versionCode >= 80837300;
            }
            C3156jS c3156jS = ts.f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13723this.m7369if("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e) {
            C3156jS c3156jS2 = ts.f3695do;
            TS.m2247this(c3156jS2);
            c3156jS2.f13723this.m7368for("Failed to retrieve Play Store version for Install Referrer", e);
            return false;
        }
    }
}
