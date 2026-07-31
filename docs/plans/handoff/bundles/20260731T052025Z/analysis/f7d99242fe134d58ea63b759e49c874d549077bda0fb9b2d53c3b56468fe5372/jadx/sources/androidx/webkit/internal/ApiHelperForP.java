package androidx.webkit.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Bitmap;
import android.graphics.Picture;
import android.graphics.drawable.Icon;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.PrecomputedText;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewStructure;
import android.view.textclassifier.TextClassificationContext;
import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.webkit.WebView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.selection.SelectedTextType;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ApiHelperForP {
    public static final DisplayCutout access$getCutoutForDisplay(Display display) {
        try {
            Constructor<?> constructor = Class.forName("android.view.DisplayInfo").getConstructor(null);
            constructor.setAccessible(true);
            Object newInstance = constructor.newInstance(null);
            Method declaredMethod = display.getClass().getDeclaredMethod("getDisplayInfo", newInstance.getClass());
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(display, newInstance);
            Field declaredField = newInstance.getClass().getDeclaredField("displayCutout");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(newInstance);
            if (obj instanceof DisplayCutout) {
                return (DisplayCutout) obj;
            }
            return null;
        } catch (Exception e) {
            if (!(e instanceof ClassNotFoundException) && !(e instanceof NoSuchMethodException) && !(e instanceof NoSuchFieldException) && !(e instanceof IllegalAccessException) && !(e instanceof InvocationTargetException) && !(e instanceof InstantiationException)) {
                throw e;
            }
            Log.w("BoundsHelper", e);
            return null;
        }
    }

    public static Handler createAsync(Looper looper) {
        return Handler.createAsync(looper);
    }

    public static Bitmap createBitmap(Picture picture) {
        return Bitmap.createBitmap(picture);
    }

    public static TextClassifier createTextClassificationSession(Context context, SelectedTextType selectedTextType) {
        String str;
        TextClassificationManager textClassificationManager = (TextClassificationManager) context.getSystemService(TextClassificationManager.class);
        int ordinal = selectedTextType.ordinal();
        if (ordinal == 0) {
            str = "edittext";
        } else {
            if (ordinal != 1) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            str = "textview";
        }
        return textClassificationManager.createTextClassificationSession(new TextClassificationContext.Builder(context.getPackageName(), str).build());
    }

    public static List getBoundingRects(DisplayCutout displayCutout) {
        return displayCutout.getBoundingRects();
    }

    public static String[] getDigitStrings(DecimalFormatSymbols decimalFormatSymbols) {
        return decimalFormatSymbols.getDigitStrings();
    }

    public static long getLongVersionCode(PackageInfo packageInfo) {
        return packageInfo.getLongVersionCode();
    }

    public static Executor getMainExecutor(Context context) {
        return context.getMainExecutor();
    }

    public static void getNetwork(JobParameters jobParameters) {
        jobParameters.getNetwork();
    }

    public static int getResId(Object obj) {
        return ((Icon) obj).getResId();
    }

    public static String getResPackage(Object obj) {
        return ((Icon) obj).getResPackage();
    }

    public static int getSafeInsetBottom(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int getSafeInsetLeft(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int getSafeInsetRight(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int getSafeInsetTop(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static int getScaledHoverSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHoverSlop();
    }

    public static PrecomputedText.Params getTextMetricsParams(AppCompatTextView appCompatTextView) {
        return appCompatTextView.getTextMetricsParams();
    }

    public static int getType(Object obj) {
        return ((Icon) obj).getType();
    }

    public static Uri getUri(Object obj) {
        return ((Icon) obj).getUri();
    }

    public static ClassLoader getWebViewClassLoader() {
        return WebView.getWebViewClassLoader();
    }

    public static boolean postDelayed(Handler handler, CameraX$$ExternalSyntheticLambda3 cameraX$$ExternalSyntheticLambda3, long j) {
        return handler.postDelayed(cameraX$$ExternalSyntheticLambda3, "retry_token", j);
    }

    public static void resetPivot(View view) {
        view.resetPivot();
    }

    public static int safeInsetBottom(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetBottom();
    }

    public static int safeInsetLeft(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetLeft();
    }

    public static int safeInsetRight(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetRight();
    }

    public static int safeInsetTop(DisplayCutout displayCutout) {
        return displayCutout.getSafeInsetTop();
    }

    public static void setFirstBaselineToTopHeight(TextView textView, int i) {
        textView.setFirstBaselineToTopHeight(i);
    }

    public static void setMaxTextLength(ViewStructure viewStructure, int i) {
        viewStructure.setMaxTextLength(i);
    }

    public static void setOutlineAmbientShadowColor(View view, int i) {
        view.setOutlineAmbientShadowColor(i);
    }

    public static void setOutlineSpotShadowColor(View view, int i) {
        view.setOutlineSpotShadowColor(i);
    }

    public static boolean shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration viewConfiguration) {
        return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
    }
}
