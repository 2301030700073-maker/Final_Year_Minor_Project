package defpackage;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.activity.ComponentActivity;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class K extends C0466Ra {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f1736do = 0;

    /* renamed from: K$do, reason: invalid class name */
    public static class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static void m1093do(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m1094for(Activity activity, String str) {
            boolean shouldShowRequestPermissionRationale;
            shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
            return shouldShowRequestPermissionRationale;
        }

        /* renamed from: if, reason: not valid java name */
        public static void m1095if(Activity activity, String[] strArr, int i) {
            activity.requestPermissions(strArr, i);
        }
    }

    /* renamed from: K$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: do, reason: not valid java name */
        public static boolean m1096do(Activity activity, String str) {
            boolean shouldShowRequestPermissionRationale;
            shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
            return shouldShowRequestPermissionRationale;
        }
    }

    /* renamed from: K$if, reason: invalid class name */
    public static class Cif {
        /* renamed from: do, reason: not valid java name */
        public static boolean m1097do(Activity activity) {
            boolean isLaunchedFromBubble;
            isLaunchedFromBubble = activity.isLaunchedFromBubble();
            return isLaunchedFromBubble;
        }

        @SuppressLint({"BanUncheckedReflection"})
        /* renamed from: if, reason: not valid java name */
        public static boolean m1098if(Activity activity, String str) {
            boolean shouldShowRequestPermissionRationale;
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                shouldShowRequestPermissionRationale = activity.shouldShowRequestPermissionRationale(str);
                return shouldShowRequestPermissionRationale;
            }
        }
    }

    /* renamed from: K$new, reason: invalid class name */
    public interface Cnew {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: K$try, reason: invalid class name */
    public interface Ctry {
        /* renamed from: try, reason: not valid java name */
        void mo1099try();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public static void m1092do(ComponentActivity componentActivity, String[] strArr, int i) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (TextUtils.isEmpty(strArr[i2])) {
                throw new IllegalArgumentException(Creturn.m7984try(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i2));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (!hashSet.contains(Integer.valueOf(i4))) {
                    strArr2[i3] = strArr[i4];
                    i3++;
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (componentActivity instanceof Ctry) {
                ((Ctry) componentActivity).mo1099try();
            }
            Cdo.m1095if(componentActivity, strArr, i);
        } else if (componentActivity instanceof Cnew) {
            new Handler(Looper.getMainLooper()).post(new J(componentActivity, strArr2, i));
        }
    }
}
