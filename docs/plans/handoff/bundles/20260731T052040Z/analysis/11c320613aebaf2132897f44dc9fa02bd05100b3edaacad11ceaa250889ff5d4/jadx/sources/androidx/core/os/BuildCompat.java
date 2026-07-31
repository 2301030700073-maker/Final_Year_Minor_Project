package androidx.core.os;

import android.content.res.ColorStateList;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.compose.ui.graphics.AndroidPath;
import com.google.android.exoplayer2.PlaybackException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BuildCompat {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Api30Impl {
        public static Icon createWithAdaptiveBitmapContentUri(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }

        public static ColorStateList getColorStateListOrNull(Drawable drawable) {
            if (drawable instanceof ColorDrawable) {
                return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
            }
            if (Build.VERSION.SDK_INT < 29 || !(drawable instanceof ColorStateListDrawable)) {
                return null;
            }
            return ((ColorStateListDrawable) drawable).getColorStateList();
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

        public static void setOutlineToPath(Outline outline, Path path) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                outline.setPath(path);
                return;
            }
            if (i >= 29) {
                try {
                    outline.setConvexPath(path);
                } catch (IllegalArgumentException unused) {
                }
            } else if (path.isConvex()) {
                outline.setConvexPath(path);
            }
        }

        public static void setPath(Outline outline, AndroidPath androidPath) {
            if (androidPath instanceof AndroidPath) {
                outline.setPath(androidPath.internalPath);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m("Unable to obtain android.graphics.Path");
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
            Api30Impl.getExtensionVersion(PlaybackException.CUSTOM_ERROR_CODE_BASE);
        }
    }
}
