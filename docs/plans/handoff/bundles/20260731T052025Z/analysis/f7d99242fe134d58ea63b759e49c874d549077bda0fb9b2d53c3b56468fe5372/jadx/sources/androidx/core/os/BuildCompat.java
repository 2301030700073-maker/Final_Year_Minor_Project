package androidx.core.os;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.compose.ui.graphics.AndroidPath;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BuildCompat {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Api30Impl {
        public static Context createAttributionContext(Context context, String str) {
            return context.createAttributionContext(str);
        }

        public static Icon createWithAdaptiveBitmapContentUri(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }

        public static String getAttributionTag(Context context) {
            return context.getAttributionTag();
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00d5 A[Catch: AssertionError -> 0x0044, TryCatch #0 {AssertionError -> 0x0044, blocks: (B:3:0x0011, B:5:0x0021, B:7:0x0027, B:8:0x0047, B:11:0x004d, B:14:0x007f, B:16:0x0085, B:18:0x00a0, B:21:0x00cf, B:23:0x00d5, B:24:0x00ef, B:26:0x00c1, B:28:0x00e9, B:29:0x0071, B:31:0x009a), top: B:2:0x0011 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final android.util.Range getControlZoomRatioRangeSafely(androidx.camera.camera2.pipe.CameraMetadata r12) {
            /*
                Method dump skipped, instructions count: 367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.os.BuildCompat.Api30Impl.getControlZoomRatioRangeSafely(androidx.camera.camera2.pipe.CameraMetadata):android.util.Range");
        }

        public static void getExtensionVersion(int i) {
            SdkExtensions.getExtensionVersion(i);
        }

        public static CharSequence getStateDescription(AccessibilityNodeInfo accessibilityNodeInfo) {
            return accessibilityNodeInfo.getStateDescription();
        }

        public static Insets getWaterfallInsets(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }

        public static void setDecorFitsSystemWindows(Window window, boolean z) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z ? systemUiVisibility & (-257) : systemUiVisibility | 256);
            window.setDecorFitsSystemWindows(z);
        }

        public static void setImportantForContentCapture(View view) {
            view.setImportantForContentCapture(1);
        }

        public static void setPath(Outline outline, AndroidPath androidPath) {
            if (androidPath instanceof AndroidPath) {
                outline.setPath(androidPath.internalPath);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Unable to obtain android.graphics.Path");
            }
        }

        public static void setStateDescription(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
            accessibilityNodeInfo.setStateDescription(charSequence);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Api30Impl.getExtensionVersion(30);
        }
        if (i >= 30) {
            Api30Impl.getExtensionVersion(31);
        }
        if (i >= 30) {
            Api30Impl.getExtensionVersion(33);
        }
        if (i >= 30) {
            Api30Impl.getExtensionVersion(1000000);
        }
    }
}
