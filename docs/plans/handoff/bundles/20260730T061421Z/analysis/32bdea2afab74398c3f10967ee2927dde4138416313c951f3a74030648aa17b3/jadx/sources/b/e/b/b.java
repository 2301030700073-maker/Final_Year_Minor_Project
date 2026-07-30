package b.e.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f665a = new Object();

    public static int a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    public static void b(Activity activity) {
        activity.finishAfterTransition();
    }

    public static int c(Context context, int i) {
        return context.getColor(i);
    }

    public static ColorStateList d(Context context, int i) {
        return b.e.c.c.g.a(context.getResources(), i, context.getTheme());
    }

    public static Drawable e(Context context, int i) {
        return context.getDrawable(i);
    }

    public static File[] f(Context context) {
        return context.getExternalCacheDirs();
    }

    public static File[] g(Context context, String str) {
        return context.getExternalFilesDirs(null);
    }

    public static void h(Activity activity) {
        activity.postponeEnterTransition();
    }

    public static void i(Activity activity) {
        activity.recreate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void j(Activity activity, String[] strArr, int i) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                StringBuilder f = c.a.c.a.a.f("Permission request for permissions ");
                f.append(Arrays.toString(strArr));
                f.append(" must not contain null or empty values");
                throw new IllegalArgumentException(f.toString());
            }
        }
        if (activity instanceof a) {
            ((a) activity).validateRequestPermissionsRequestCode(i);
        }
        activity.requestPermissions(strArr, i);
    }

    public static void k(Activity activity) {
        activity.setEnterSharedElementCallback(null);
    }

    public static void l(Activity activity) {
        activity.setExitSharedElementCallback(null);
    }

    public static boolean m(Activity activity, String str) {
        return activity.shouldShowRequestPermissionRationale(str);
    }

    public static boolean n(Context context, Intent[] intentArr, Bundle bundle) {
        context.startActivities(intentArr, bundle);
        return true;
    }

    public static void o(Context context, Intent intent, Bundle bundle) {
        context.startActivity(intent, bundle);
    }

    public static void p(Activity activity, Intent intent, int i, Bundle bundle) {
        activity.startActivityForResult(intent, i, bundle);
    }

    public static void q(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public static void r(Activity activity) {
        activity.startPostponedEnterTransition();
    }
}
