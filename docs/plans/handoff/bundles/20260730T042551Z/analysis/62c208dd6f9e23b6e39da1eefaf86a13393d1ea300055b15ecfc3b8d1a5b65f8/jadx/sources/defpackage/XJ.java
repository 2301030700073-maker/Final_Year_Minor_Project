package defpackage;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import com.joeykrim.rootcheckp.MainActivity;

/* loaded from: classes3.dex */
public final class XJ {
    /* renamed from: do, reason: not valid java name */
    public static void m2825do(Activity activity) {
        ProgressWheelv2 progressWheelv2 = FK.f1014do;
        progressWheelv2.f12267for = (int) m2827if(88.0f, activity.getApplicationContext());
        if (!progressWheelv2.f12276new) {
            progressWheelv2.invalidate();
        }
        ProgressWheelv2 progressWheelv22 = FK.f1014do;
        progressWheelv22.f12275new = (int) m2827if(3.0f, activity.getApplicationContext());
        if (!progressWheelv22.f12276new) {
            progressWheelv22.invalidate();
        }
        ProgressWheelv2 progressWheelv23 = FK.f1014do;
        progressWheelv23.f12258case = -13854764;
        progressWheelv23.m6387if();
        if (!progressWheelv23.f12276new) {
            progressWheelv23.invalidate();
        }
        ProgressWheelv2 progressWheelv24 = FK.f1014do;
        progressWheelv24.onSizeChanged(progressWheelv24.getWidth(), FK.f1014do.getHeight(), 0, 0);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2826for() {
        if (Build.VERSION.RELEASE.startsWith("1.5")) {
            return 3;
        }
        try {
            return Build.VERSION.SDK_INT;
        } catch (VerifyError e) {
            C0766bi.m4854do().m4855for(e);
            return 3;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static float m2827if(float f, Context context) {
        return (context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m2828new() {
        boolean z = MainActivity.f12316case;
        return FK.f1014do != null && m2826for() >= 9;
    }
}
