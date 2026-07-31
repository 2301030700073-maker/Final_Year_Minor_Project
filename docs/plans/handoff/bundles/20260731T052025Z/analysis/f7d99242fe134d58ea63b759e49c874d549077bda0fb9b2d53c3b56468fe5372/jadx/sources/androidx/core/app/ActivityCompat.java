package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.tracing.TraceApi29Impl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.HashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ActivityCompat extends TraceApi29Impl {
    public static void recreate(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Preview$$ExternalSyntheticLambda0(25, activity));
        }
    }

    public static void requestPermissions(Activity activity, String[] strArr, int i) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (TextUtils.isEmpty(strArr[i2])) {
                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
                return;
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
        activity.requestPermissions(strArr, i);
    }
}
