package com.android.launcher3;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.Person;
import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ShortcutInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.TransactionTooLargeException;
import android.text.SpannableString;
import android.text.style.TtsSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.graphics.GridOptionsProvider;
import com.android.launcher3.graphics.TintedDrawableSpan;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Predicate;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class Utilities {
    public static final boolean IS_DEBUG_DEVICE;
    public static boolean IS_RUNNING_IN_TEST_HARNESS;
    public static final Pattern sTrimPattern = Pattern.compile("^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$");
    public static final Matrix sMatrix = new Matrix();
    public static final Matrix sInverseMatrix = new Matrix();
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final Person[] EMPTY_PERSON_ARRAY = new Person[0];
    public static final boolean ATLEAST_R = true;
    public static final boolean ATLEAST_Q = true;
    public static final boolean ATLEAST_P = true;
    public static final boolean ATLEAST_OREO = true;

    public class FixedSizeEmptyDrawable extends ColorDrawable {
        public final int mSize;

        public FixedSizeEmptyDrawable(int i) {
            super(0);
            this.mSize = i;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicHeight() {
            return this.mSize;
        }

        @Override // android.graphics.drawable.Drawable
        public int getIntrinsicWidth() {
            return this.mSize;
        }
    }

    static {
        IS_DEBUG_DEVICE = Build.TYPE.toLowerCase(Locale.ROOT).contains("debug") || Build.TYPE.toLowerCase(Locale.ROOT).equals("eng");
        IS_RUNNING_IN_TEST_HARNESS = ActivityManager.isRunningInTestHarness();
    }

    public static /* synthetic */ boolean a(String str, ProviderInfo providerInfo) {
        return providerInfo.name.equals(str) && providerInfo.isEnabled();
    }

    public static boolean areAnimationsEnabled(Context context) {
        return ATLEAST_OREO ? ValueAnimator.areAnimatorsEnabled() : !((PowerManager) context.getSystemService(PowerManager.class)).isPowerSaveMode();
    }

    public static int boundToRange(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    public static int calculateTextHeight(float f) {
        Paint paint = new Paint();
        paint.setTextSize(f);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return (int) Math.ceil(fontMetrics.bottom - fontMetrics.top);
    }

    public static float comp(float f) {
        return 1.0f - f;
    }

    public static String createDbSelectionQuery(String str, IntArray intArray) {
        return String.format(Locale.ENGLISH, "%s IN (%s)", str, intArray.toConcatString());
    }

    public static float dpiFromPx(float f, DisplayMetrics displayMetrics) {
        return f / (displayMetrics.densityDpi / 160.0f);
    }

    public static boolean existsStyleWallpapers(Context context) {
        return context.getPackageManager().resolveActivity(new Intent("android.intent.action.SET_WALLPAPER").setComponent(new ComponentName(context.getString(R.string.wallpaper_picker_package), "com.android.customization.picker.CustomizationPickerActivity")), 0) != null;
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public static Drawable getBadge(Launcher launcher, ItemInfo itemInfo, Object obj) {
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        int i = launcherAppState.mInvariantDeviceProfile.iconBitmapSize;
        int i2 = itemInfo.itemType;
        if (i2 != 6) {
            return i2 == 2 ? ((FolderAdaptiveIcon) obj).mBadge : launcher.getPackageManager().getUserBadgedIcon(new FixedSizeEmptyDrawable(i), itemInfo.user);
        }
        boolean z = (itemInfo instanceof ItemInfoWithIcon) && (((ItemInfoWithIcon) itemInfo).runtimeStatusFlags & 512) > 0;
        if ((itemInfo.id == -1 && !z) || !(obj instanceof ShortcutInfo)) {
            return new FixedSizeEmptyDrawable(i);
        }
        Bitmap bitmap = LauncherAppState.getInstance(launcherAppState.mContext).mIconCache.getShortcutInfoBadge((ShortcutInfo) obj).icon;
        float f = i;
        float badgeSizeForIconSize = (f - BaseIconFactory.getBadgeSizeForIconSize(i)) / f;
        return new InsetDrawable(new FastBitmapDrawable(bitmap, 0, false), badgeSizeForIconSize, badgeSizeForIconSize, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }

    public static float getDescendantCoordRelativeToAncestor(View view, View view2, float[] fArr, boolean z, boolean z2) {
        float f = 1.0f;
        for (View view3 = view; view3 != view2 && view3 != null; view3 = (View) view3.getParent()) {
            if (view3 != view || z) {
                offsetPoints(fArr, -view3.getScrollX(), -view3.getScrollY());
            }
            if (!z2) {
                view3.getMatrix().mapPoints(fArr);
            }
            offsetPoints(fArr, view3.getLeft(), view3.getTop());
            f *= view3.getScaleX();
        }
        return f;
    }

    public static SharedPreferences getDevicePrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences("com.android.launcher3.device.prefs", 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Drawable getFullDrawable(Launcher launcher, ItemInfo itemInfo, int i, int i2, Object[] objArr) {
        FolderAdaptiveIcon createFolderAdaptiveIcon;
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        int i3 = itemInfo.itemType;
        Drawable drawable = null;
        if (i3 == 0) {
            LauncherActivityInfo resolveActivity = ((LauncherApps) launcher.getSystemService(LauncherApps.class)).resolveActivity(itemInfo.getIntent(), itemInfo.user);
            objArr[0] = resolveActivity;
            if (resolveActivity != null) {
                Drawable icon = new IconProvider(launcher).getIcon(resolveActivity, launcher.getDeviceProfile().inv.fillResIconDpi);
                boolean z = icon instanceof BitmapInfo.Extender;
                drawable = icon;
                if (z) {
                    ((BitmapInfo.Extender) icon).prepareToDrawOnUi();
                    drawable = icon;
                }
            }
            return drawable;
        }
        if (i3 != 6) {
            if (i3 != 2 || (createFolderAdaptiveIcon = FolderAdaptiveIcon.createFolderAdaptiveIcon(launcher, itemInfo.id, new Point(i, i2))) == null) {
                return null;
            }
            objArr[0] = createFolderAdaptiveIcon;
            return createFolderAdaptiveIcon;
        }
        if (itemInfo instanceof PendingAddShortcutInfo) {
            ShortcutConfigActivityInfo shortcutConfigActivityInfo = ((PendingAddShortcutInfo) itemInfo).activityInfo;
            objArr[0] = shortcutConfigActivityInfo;
            return shortcutConfigActivityInfo.getFullResIcon(launcherAppState.mIconCache);
        }
        if (itemInfo.getIntent() == null || itemInfo.getIntent().getPackage() == null) {
            return null;
        }
        ShortcutRequest.QueryResult query = ShortcutKey.fromIntent(itemInfo.getIntent(), itemInfo.user).buildRequest(launcher).query(11);
        if (query.isEmpty()) {
            return null;
        }
        objArr[0] = query.get(0);
        return ShortcutCachingLogic.getIcon(launcher, (ShortcutInfo) query.get(0), launcherAppState.mInvariantDeviceProfile.fillResIconDpi);
    }

    public static String getPointString(int i, int i2) {
        return String.format(Locale.ENGLISH, "%d,%d", Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static SharedPreferences getPrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0);
    }

    public static float getProgress(float f, float f2, float f3) {
        return Math.abs(f - f2) / Math.abs(f3 - f2);
    }

    public static boolean isBinderSizeError(Exception exc) {
        return (exc.getCause() instanceof TransactionTooLargeException) || (exc.getCause() instanceof DeadObjectException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0027, code lost:
    
        if (android.text.TextUtils.isEmpty(r1) == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isBootCompleted() {
        /*
            java.lang.String r0 = "1"
            java.lang.String r1 = "sys.boot_completed"
            java.lang.String r2 = "android.os.SystemProperties"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Exception -> L2a
            java.lang.String r3 = "get"
            r4 = 1
            java.lang.Class[] r5 = new java.lang.Class[r4]     // Catch: java.lang.Exception -> L2a
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            r7 = 0
            r5[r7] = r6     // Catch: java.lang.Exception -> L2a
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r5)     // Catch: java.lang.Exception -> L2a
            r3 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L2a
            r4[r7] = r1     // Catch: java.lang.Exception -> L2a
            java.lang.Object r1 = r2.invoke(r3, r4)     // Catch: java.lang.Exception -> L2a
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Exception -> L2a
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L2a
            if (r2 != 0) goto L31
            goto L32
        L2a:
            java.lang.String r1 = "Launcher.Utilities"
            java.lang.String r2 = "Unable to read system properties"
            android.util.Log.d(r1, r2)
        L31:
            r1 = r0
        L32:
            boolean r0 = r0.equals(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Utilities.isBootCompleted():boolean");
    }

    public static boolean isGridOptionsEnabled(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        final String name = GridOptionsProvider.class.getName();
        int componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(packageName, name));
        if (componentEnabledSetting == 1) {
            return true;
        }
        if (componentEnabledSetting != 2) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 520);
                if (packageInfo.providers != null) {
                    return Arrays.stream(packageInfo.providers).anyMatch(new Predicate() { // from class: c.a.a.g0
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return Utilities.a(name, (ProviderInfo) obj);
                        }
                    });
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }

    public static boolean isPropertyEnabled(String str) {
        return Log.isLoggable(str, 2);
    }

    public static boolean isRtl(Resources resources) {
        return resources.getConfiguration().getLayoutDirection() == 1;
    }

    public static boolean isWallpaperAllowed(Context context) {
        return ((WallpaperManager) context.getSystemService(WallpaperManager.class)).isSetWallpaperAllowed();
    }

    public static void mapCoordInSelfToDescendant(View view, View view2, float[] fArr) {
        sMatrix.reset();
        while (view != view2) {
            sMatrix.postTranslate(-view.getScrollX(), -view.getScrollY());
            sMatrix.postConcat(view.getMatrix());
            sMatrix.postTranslate(view.getLeft(), view.getTop());
            view = (View) view.getParent();
        }
        sMatrix.postTranslate(-view.getScrollX(), -view.getScrollY());
        sMatrix.invert(sInverseMatrix);
        sInverseMatrix.mapPoints(fArr);
    }

    public static float mapRange(float f, float f2, float f3) {
        return a.a(f3, f2, f, f2);
    }

    public static float mapToRange(float f, float f2, float f3, float f4, float f5, Interpolator interpolator) {
        if (f2 != f3 && f4 != f5) {
            return mapRange(interpolator.getInterpolation(getProgress(f, f2, f3)), f4, f5);
        }
        Log.e("Launcher.Utilities", "mapToRange: range has 0 length");
        return f4;
    }

    public static void offsetPoints(float[] fArr, float f, float f2) {
        for (int i = 0; i < fArr.length; i += 2) {
            fArr[i] = fArr[i] + f;
            int i2 = i + 1;
            fArr[i2] = fArr[i2] + f2;
        }
    }

    public static boolean pointInView(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) view.getWidth()) + f3 && f2 < ((float) view.getHeight()) + f3;
    }

    public static void postAsyncCallback(Handler handler, Runnable runnable) {
        Message obtain = Message.obtain(handler, runnable);
        obtain.setAsynchronous(true);
        handler.sendMessage(obtain);
    }

    public static CharSequence prefixTextWithIcon(Context context, int i, CharSequence charSequence) {
        SpannableString spannableString = new SpannableString("  " + ((Object) charSequence));
        spannableString.setSpan(new TintedDrawableSpan(context, i), 0, 1, 34);
        return spannableString;
    }

    public static int pxFromSp(float f, DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(2, f, displayMetrics));
    }

    public static void roundArray(float[] fArr, int[] iArr) {
        for (int i = 0; i < fArr.length; i++) {
            iArr[i] = Math.round(fArr[i]);
        }
    }

    public static void scaleRectAboutCenter(Rect rect, float f) {
        if (f != 1.0f) {
            int centerX = rect.centerX();
            int centerY = rect.centerY();
            rect.offset(-centerX, -centerY);
            if (f != 1.0f) {
                rect.left = (int) ((rect.left * f) + 0.5f);
                rect.top = (int) ((rect.top * f) + 0.5f);
                rect.right = (int) ((rect.right * f) + 0.5f);
                rect.bottom = (int) ((rect.bottom * f) + 0.5f);
            }
            rect.offset(centerX, centerY);
        }
    }

    public static void scaleRectFAboutCenter(RectF rectF, float f) {
        if (f != 1.0f) {
            float centerX = rectF.centerX();
            float centerY = rectF.centerY();
            rectF.offset(-centerX, -centerY);
            rectF.left *= f;
            rectF.top *= f;
            rectF.right *= f;
            rectF.bottom *= f;
            rectF.offset(centerX, centerY);
        }
    }

    public static float shrinkRect(Rect rect, float f, float f2) {
        float min = Math.min(Math.min(f, f2), 1.0f);
        if (min < 1.0f) {
            int width = (int) ((f - min) * rect.width() * 0.5f);
            rect.left += width;
            rect.right -= width;
            int height = (int) ((f2 - min) * rect.height() * 0.5f);
            rect.top += height;
            rect.bottom -= height;
        }
        return min;
    }

    public static float squaredHypot(float f, float f2) {
        return (f2 * f2) + (f * f);
    }

    public static float squaredTouchSlop(Context context) {
        float scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        return scaledTouchSlop * scaledTouchSlop;
    }

    public static String trim(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return sTrimPattern.matcher(charSequence).replaceAll("$1");
    }

    public static void unregisterReceiverSafely(Context context, BroadcastReceiver broadcastReceiver) {
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static CharSequence wrapForTts(CharSequence charSequence, String str) {
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TtsSpan.TextBuilder(str).build(), 0, spannableString.length(), 18);
        return spannableString;
    }

    public static float boundToRange(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }
}
