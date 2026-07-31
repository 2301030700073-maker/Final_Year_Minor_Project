package androidx.window.layout.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.PackageManagerWrapperKt;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BoundsHelperApi16Impl implements BoundsHelper, DensityCompatHelper, WindowMetricsCompatHelper {
    public static final BoundsHelperApi16Impl INSTANCE = new BoundsHelperApi16Impl(0);
    public static final BoundsHelperApi16Impl INSTANCE$1 = new BoundsHelperApi16Impl(1);
    public static final BoundsHelperApi16Impl INSTANCE$2 = new BoundsHelperApi16Impl(2);
    public static final BoundsHelperApi16Impl INSTANCE$3 = new BoundsHelperApi16Impl(3);
    public static final BoundsHelperApi16Impl INSTANCE$4 = new BoundsHelperApi16Impl(4);
    public static final BoundsHelperApi16Impl INSTANCE$5 = new BoundsHelperApi16Impl(5);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BoundsHelperApi16Impl(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.window.layout.util.BoundsHelper
    public Rect currentWindowBounds(Activity activity) {
        int i;
        DisplayCutout access$getCutoutForDisplay;
        int i2 = this.$r8$classId;
        activity.getClass();
        switch (i2) {
            case 0:
                Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
                defaultDisplay.getClass();
                Point point = new Point();
                defaultDisplay.getRealSize(point);
                Rect rect = new Rect();
                int i3 = point.x;
                if (i3 == 0 || (i = point.y) == 0) {
                    defaultDisplay.getRectSize(rect);
                } else {
                    rect.right = i3;
                    rect.bottom = i;
                }
                return rect;
            case 1:
                Rect rect2 = new Rect();
                Display defaultDisplay2 = activity.getWindowManager().getDefaultDisplay();
                defaultDisplay2.getRectSize(rect2);
                if (!Utility.isInMultiWindowMode(activity)) {
                    Point point2 = new Point();
                    defaultDisplay2.getRealSize(point2);
                    Resources resources = activity.getResources();
                    int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    int i4 = rect2.bottom + dimensionPixelSize;
                    if (i4 == point2.y) {
                        rect2.bottom = i4;
                    } else {
                        int i5 = rect2.right + dimensionPixelSize;
                        if (i5 == point2.x) {
                            rect2.right = i5;
                        }
                    }
                }
                return rect2;
            case 2:
                Rect rect3 = new Rect();
                Configuration configuration = activity.getResources().getConfiguration();
                try {
                    Field declaredField = Configuration.class.getDeclaredField("windowConfiguration");
                    declaredField.setAccessible(true);
                    Object obj = declaredField.get(configuration);
                    if (Utility.isInMultiWindowMode(activity)) {
                        Object invoke = obj.getClass().getDeclaredMethod("getBounds", null).invoke(obj, null);
                        invoke.getClass();
                        rect3.set((Rect) invoke);
                    } else {
                        Object invoke2 = obj.getClass().getDeclaredMethod("getAppBounds", null).invoke(obj, null);
                        invoke2.getClass();
                        rect3.set((Rect) invoke2);
                    }
                } catch (Exception e) {
                    if (!(e instanceof NoSuchFieldException) && !(e instanceof NoSuchMethodException) && !(e instanceof IllegalAccessException) && !(e instanceof InvocationTargetException)) {
                        throw e;
                    }
                    Log.w("BoundsHelper", e);
                    activity.getWindowManager().getDefaultDisplay().getRectSize(rect3);
                }
                Display defaultDisplay3 = activity.getWindowManager().getDefaultDisplay();
                Point point3 = new Point();
                defaultDisplay3.getRealSize(point3);
                if (!Utility.isInMultiWindowMode(activity)) {
                    Resources resources2 = activity.getResources();
                    int identifier2 = resources2.getIdentifier("navigation_bar_height", "dimen", "android");
                    int dimensionPixelSize2 = identifier2 > 0 ? resources2.getDimensionPixelSize(identifier2) : 0;
                    int i6 = rect3.bottom + dimensionPixelSize2;
                    if (i6 == point3.y) {
                        rect3.bottom = i6;
                    } else {
                        int i7 = rect3.right + dimensionPixelSize2;
                        if (i7 == point3.x) {
                            rect3.right = i7;
                        } else if (rect3.left == dimensionPixelSize2) {
                            rect3.left = 0;
                        }
                    }
                }
                if ((rect3.width() < point3.x || rect3.height() < point3.y) && !Utility.isInMultiWindowMode(activity) && (access$getCutoutForDisplay = PackageManagerWrapperKt.access$getCutoutForDisplay(defaultDisplay3)) != null) {
                    if (rect3.left == PackageManagerWrapperKt.safeInsetLeft(access$getCutoutForDisplay)) {
                        rect3.left = 0;
                    }
                    if (point3.x - rect3.right == PackageManagerWrapperKt.safeInsetRight(access$getCutoutForDisplay)) {
                        rect3.right = PackageManagerWrapperKt.safeInsetRight(access$getCutoutForDisplay) + rect3.right;
                    }
                    if (rect3.top == PackageManagerWrapperKt.safeInsetTop(access$getCutoutForDisplay)) {
                        rect3.top = 0;
                    }
                    if (point3.y - rect3.bottom == PackageManagerWrapperKt.safeInsetBottom(access$getCutoutForDisplay)) {
                        rect3.bottom = PackageManagerWrapperKt.safeInsetBottom(access$getCutoutForDisplay) + rect3.bottom;
                    }
                }
                return rect3;
            default:
                Configuration configuration2 = activity.getResources().getConfiguration();
                try {
                    Field declaredField2 = Configuration.class.getDeclaredField("windowConfiguration");
                    declaredField2.setAccessible(true);
                    Object obj2 = declaredField2.get(configuration2);
                    Object invoke3 = obj2.getClass().getDeclaredMethod("getBounds", null).invoke(obj2, null);
                    invoke3.getClass();
                    return new Rect((Rect) invoke3);
                } catch (Exception e2) {
                    if (!(e2 instanceof NoSuchFieldException) && !(e2 instanceof NoSuchMethodException) && !(e2 instanceof IllegalAccessException) && !(e2 instanceof InvocationTargetException)) {
                        throw e2;
                    }
                    Log.w("BoundsHelper", e2);
                    return INSTANCE$2.currentWindowBounds(activity);
                }
        }
    }

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public WindowMetrics currentWindowMetrics(Context context, DensityCompatHelper densityCompatHelper) {
        context.getClass();
        densityCompatHelper.getClass();
        Context context2 = context;
        while (true) {
            if (!(context2 instanceof ContextWrapper)) {
                context2 = context;
                break;
            }
            if ((context2 instanceof Activity) || (context2 instanceof InputMethodService)) {
                break;
            }
            ContextWrapper contextWrapper = (ContextWrapper) context2;
            if (contextWrapper.getBaseContext() == null) {
                break;
            }
            context2 = contextWrapper.getBaseContext();
            context2.getClass();
        }
        if (context2 instanceof Activity) {
            Activity activity = (Activity) context2;
            activity.getClass();
            densityCompatHelper.getClass();
            int i = Build.VERSION.SDK_INT;
            return new WindowMetrics(new Bounds((i >= 30 ? BoundsHelperApi30Impl.INSTANCE : i >= 29 ? INSTANCE$3 : i >= 28 ? INSTANCE$2 : i >= 24 ? INSTANCE$1 : INSTANCE).currentWindowBounds(activity)), densityCompatHelper.density(activity));
        }
        if (!(context2 instanceof InputMethodService) && !(context2 instanceof Application)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Must provide a UiContext or Application Context");
            return null;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        defaultDisplay.getClass();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new WindowMetrics(new Rect(0, 0, point.x, point.y), densityCompatHelper.density(context));
    }

    @Override // androidx.window.layout.util.DensityCompatHelper
    public float density(Context context) {
        context.getClass();
        return context.getResources().getDisplayMetrics().density;
    }
}
