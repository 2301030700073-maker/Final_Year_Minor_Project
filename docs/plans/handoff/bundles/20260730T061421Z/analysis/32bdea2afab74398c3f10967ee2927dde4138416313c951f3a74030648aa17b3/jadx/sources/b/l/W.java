package b.l;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import b.m.b.AbstractC0176f0;
import b.m.b.t0;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TonalCompat;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;
import java.util.function.Predicate;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public final class W {
    public static int a(t0 t0Var, b.m.b.J j, View view, View view2, AbstractC0176f0 abstractC0176f0, boolean z) {
        if (abstractC0176f0.getChildCount() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC0176f0.getPosition(view) - abstractC0176f0.getPosition(view2)) + 1;
        }
        return Math.min(j.l(), j.b(view2) - j.e(view));
    }

    public static int b(t0 t0Var, b.m.b.J j, View view, View view2, AbstractC0176f0 abstractC0176f0, boolean z, boolean z2) {
        if (abstractC0176f0.getChildCount() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (t0Var.b() - Math.max(abstractC0176f0.getPosition(view), abstractC0176f0.getPosition(view2))) - 1) : Math.max(0, Math.min(abstractC0176f0.getPosition(view), abstractC0176f0.getPosition(view2)));
        if (z) {
            return Math.round((max * (Math.abs(j.b(view2) - j.e(view)) / (Math.abs(abstractC0176f0.getPosition(view) - abstractC0176f0.getPosition(view2)) + 1))) + (j.k() - j.e(view)));
        }
        return max;
    }

    public static int c(t0 t0Var, b.m.b.J j, View view, View view2, AbstractC0176f0 abstractC0176f0, boolean z) {
        if (abstractC0176f0.getChildCount() == 0 || t0Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return t0Var.b();
        }
        return (int) (((j.b(view2) - j.e(view)) / (Math.abs(abstractC0176f0.getPosition(view) - abstractC0176f0.getPosition(view2)) + 1)) * t0Var.b());
    }

    public static void closeSilently(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[QuickStepContract.SYSUI_STATE_TRACING_ENABLED];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    public static void copyTable(SQLiteDatabase sQLiteDatabase, String str, SQLiteDatabase sQLiteDatabase2, String str2, Context context) {
        long serialNumberForUser = ((UserCache) UserCache.INSTANCE.b(context)).getSerialNumberForUser(Process.myUserHandle());
        dropTable(sQLiteDatabase2, str2);
        LauncherSettings$Favorites.addTableToDb(sQLiteDatabase2, serialNumberForUser, false, str2);
        if (sQLiteDatabase == sQLiteDatabase2) {
            sQLiteDatabase2.execSQL("INSERT INTO " + str2 + " SELECT * FROM " + str);
            return;
        }
        StringBuilder f = c.a.c.a.a.f("ATTACH DATABASE '");
        f.append(sQLiteDatabase.getPath());
        f.append("' AS from_db");
        sQLiteDatabase2.execSQL(f.toString());
        sQLiteDatabase2.execSQL("INSERT INTO " + str2 + " SELECT * FROM from_db." + str);
        sQLiteDatabase2.execSQL("DETACH DATABASE 'from_db'");
    }

    public static SparseArray createValueMap(Context context, AttributeSet attributeSet, IntArray intArray) {
        int attributeCount = attributeSet.getAttributeCount();
        IntArray intArray2 = new IntArray(attributeCount);
        for (int i = 0; i < attributeCount; i++) {
            intArray2.add(intArray2.mSize, attributeSet.getAttributeNameResource(i));
        }
        for (int i2 = 0; i2 < intArray.mSize; i2++) {
            intArray2.removeValue(intArray.mValues[i2]);
        }
        int[] array = intArray2.toArray();
        SparseArray sparseArray = new SparseArray(array.length);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, array);
        for (int i3 = 0; i3 < array.length; i3++) {
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(i3, typedValue);
            sparseArray.put(array[i3], typedValue);
        }
        return sparseArray;
    }

    @TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
    public static WorkspaceItemInfo createWorkspaceItemFromPinItemRequest(Context context, final LauncherApps.PinItemRequest pinItemRequest, final long j) {
        BitmapInfo bitmapInfo;
        if (pinItemRequest == null || pinItemRequest.getRequestType() != 1 || !pinItemRequest.isValid()) {
            return null;
        }
        if (j > 0) {
            Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.pm.PinRequestHelper$1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Thread.sleep(j);
                    } catch (InterruptedException unused) {
                    }
                    if (pinItemRequest.isValid()) {
                        pinItemRequest.accept();
                    }
                }
            });
        } else if (!pinItemRequest.accept()) {
            return null;
        }
        ShortcutInfo shortcutInfo = pinItemRequest.getShortcutInfo();
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo, context);
        LauncherIcons obtain = LauncherIcons.obtain(context);
        try {
            Drawable icon = ShortcutCachingLogic.getIcon(context, shortcutInfo, LauncherAppState.getIDP(context).fillResIconDpi);
            if (icon == null) {
                bitmapInfo = BitmapInfo.LOW_RES_INFO;
                obtain.recycle();
            } else {
                BitmapInfo bitmapInfo2 = new BitmapInfo(obtain.createScaledBitmapWithoutShadow(icon, 0), getColorAccent(context));
                obtain.recycle();
                bitmapInfo = bitmapInfo2;
            }
            workspaceItemInfo.bitmap = bitmapInfo;
            LauncherAppState.getInstance(context).mModel.updateAndBindWorkspaceItem(workspaceItemInfo, shortcutInfo);
            return workspaceItemInfo;
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static ComponentKey d(Uri uri) {
        if (uri != null && uri.getQueryParameter("component") != null) {
            try {
                return new ComponentKey(ComponentName.unflattenFromString(uri.getQueryParameter("component")), UserHandle.of(Integer.parseInt(uri.getQueryParameter("user"))));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public static int dampedScroll(float f, int i) {
        if (Float.compare(f, RecentsState.NO_OFFSET) == 0) {
            return 0;
        }
        float f2 = i;
        float f3 = f / f2;
        float abs = f3 / Math.abs(f3);
        float abs2 = Math.abs(f3) - 1.0f;
        float f4 = abs * ((abs2 * abs2 * abs2) + 1.0f);
        if (Math.abs(f4) >= 1.0f) {
            f4 /= Math.abs(f4);
        }
        return Math.round(f4 * 0.07f * f2);
    }

    public static void dropTable(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    public static void filterCurrentWorkspaceItems(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((ItemInfo) it.next()) == null) {
                it.remove();
            }
        }
        IntArray intArray = new IntArray(10);
        Collections.sort(arrayList, new Comparator() { // from class: c.a.a.N0.B
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((ItemInfo) obj).container, ((ItemInfo) obj2).container);
            }
        });
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ItemInfo itemInfo = (ItemInfo) it2.next();
            int i2 = itemInfo.container;
            if (i2 == -100) {
                if (itemInfo.screenId == i) {
                    arrayList2.add(itemInfo);
                    int i3 = itemInfo.id;
                    if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i3) < 0) {
                        intArray.add((-r2) - 1, i3);
                    }
                } else {
                    arrayList3.add(itemInfo);
                }
            } else if (i2 == -101) {
                arrayList2.add(itemInfo);
                int i4 = itemInfo.id;
                if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i4) < 0) {
                    intArray.add((-r2) - 1, i4);
                }
            } else {
                if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i2) >= 0) {
                    arrayList2.add(itemInfo);
                    int i5 = itemInfo.id;
                    if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i5) < 0) {
                        intArray.add((-r2) - 1, i5);
                    }
                } else {
                    arrayList3.add(itemInfo);
                }
            }
        }
    }

    public static AccessibilityManager getAccessibilityManagerForTest(Context context) {
        if (!Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            return null;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            return accessibilityManager;
        }
        return null;
    }

    public static int getActivityThemeRes(Context context) {
        WallpaperColorInfo wallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(context);
        if (Utilities.ATLEAST_Q ? (context.getResources().getConfiguration().uiMode & 48) == 32 : wallpaperColorInfo.mExtractionInfo.supportsDarkTheme) {
            TonalCompat.ExtractionInfo extractionInfo = wallpaperColorInfo.mExtractionInfo;
            if (extractionInfo.supportsDarkText) {
                return R.style.AppTheme_Dark_DarkText;
            }
            return extractionInfo.mainColor == -14671580 ? R.style.AppTheme_Dark_DarkMainColor : R.style.AppTheme_Dark;
        }
        TonalCompat.ExtractionInfo extractionInfo2 = wallpaperColorInfo.mExtractionInfo;
        if (extractionInfo2.supportsDarkText) {
            return R.style.AppTheme_DarkText;
        }
        return extractionInfo2.mainColor == -14671580 ? R.style.AppTheme_DarkMainColor : R.style.AppTheme;
    }

    public static boolean getAttrBoolean(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    public static int getAttrColor(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static int getColorAccent(Context context) {
        return getAttrColor(context, android.R.attr.colorAccent);
    }

    public static float getDialogCornerRadius(Context context) {
        float dimension = context.getResources().getDimension(R.dimen.default_dialog_corner_radius);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.dialogCornerRadius});
        float dimension2 = obtainStyledAttributes.getDimension(0, dimension);
        obtainStyledAttributes.recycle();
        return dimension2;
    }

    public static int getDimenByName(String str, Resources resources, int i) {
        int identifier = resources.getIdentifier(str, "dimen", "android");
        return identifier != 0 ? resources.getDimensionPixelSize(identifier) : pxFromDp(i, resources.getDisplayMetrics());
    }

    public static AccessibilityManager getManager(Context context) {
        return (AccessibilityManager) context.getSystemService("accessibility");
    }

    public static IntArray getMissingHotseatRanks(List list, int i) {
        final IntSet intSet = new IntSet();
        list.stream().filter(new Predicate() { // from class: c.a.a.N0.C
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ItemInfo) obj).container == -101;
            }
        }).forEach(new Consumer() { // from class: c.a.a.N0.F
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IntSet.this.add(((ItemInfo) obj).screenId);
            }
        });
        final IntArray intArray = new IntArray(i);
        IntStream.range(0, i).filter(new IntPredicate() { // from class: c.a.a.N0.D
            @Override // java.util.function.IntPredicate
            public final boolean test(int i2) {
                return !IntSet.this.contains(i2);
            }
        }).forEach(new IntConsumer() { // from class: c.a.a.N0.P
            @Override // java.util.function.IntConsumer
            public final void accept(int i2) {
                IntArray intArray2 = IntArray.this;
                intArray2.add(intArray2.mSize, i2);
            }
        });
        return intArray;
    }

    public static int getNavbarSize(String str, Resources resources) {
        return getDimenByName(str, resources, 48);
    }

    public static ResourceBasedOverride getObject(Class cls, Context context, int i) {
        String string = context.getString(i);
        if (!TextUtils.isEmpty(string)) {
            try {
                return (ResourceBasedOverride) Class.forName(string).getDeclaredConstructor(Context.class).newInstance(context);
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                Log.e("Overrides", "Bad overriden class", e);
            }
        }
        try {
            return (ResourceBasedOverride) cls.newInstance();
        } catch (IllegalAccessException | InstantiationException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static boolean isAccessibilityEnabled(Context context) {
        return ((AccessibilityManager) context.getSystemService("accessibility")).isEnabled();
    }

    public static boolean isActive(ItemInfo itemInfo) {
        return (((itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasPromiseIconUi()) || itemInfo.isDisabled()) ? false : true;
    }

    public static boolean isPinnedShortcut(ItemInfo itemInfo) {
        return itemInfo.itemType == 6 && itemInfo.container != -1 && (itemInfo instanceof WorkspaceItemInfo);
    }

    public static int pxFromDp(float f, DisplayMetrics displayMetrics) {
        return Math.round(TypedValue.applyDimension(1, f, displayMetrics));
    }

    public static IntArray queryIntArray(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4, String str5) {
        IntArray intArray = new IntArray(10);
        Cursor query = sQLiteDatabase.query(str, new String[]{str2}, str3, null, str4, null, str5);
        while (query.moveToNext()) {
            try {
                intArray.add(intArray.mSize, query.getInt(0));
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        query.close();
        return intArray;
    }

    public static void recordEvent(String str, String str2) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            recordEventSlow(str, str2);
        }
    }

    public static void recordEventSlow(String str, String str2) {
        Log.d("TaplEvents", str + " / " + str2);
    }

    public static void recordMotionEvent(String str, String str2, MotionEvent motionEvent) {
        if (!Utilities.IS_RUNNING_IN_TEST_HARNESS || motionEvent.getAction() == 2) {
            return;
        }
        recordEventSlow(str, str2 + ": " + motionEvent);
    }

    public static int resolveContrastColor(Context context, int i, int i2) {
        int color = i == 0 ? context.getColor(R.color.notification_icon_default_color) : i;
        if (b.e.d.a.c(color, i2) >= 4.5d) {
            return color;
        }
        double[] dArr = new double[3];
        b.e.d.a.e(i2, dArr);
        double d2 = dArr[0];
        b.e.d.a.e(color, dArr);
        double d3 = dArr[0];
        boolean z = d2 < 50.0d;
        double d4 = z ? d3 : 0.0d;
        if (z) {
            d3 = 100.0d;
        }
        double d5 = dArr[1];
        double d6 = dArr[2];
        for (int i3 = 0; i3 < 15 && d3 - d4 > 1.0E-5d; i3++) {
            double d7 = (d4 + d3) / 2.0d;
            if (b.e.d.a.c(b.e.d.a.a(d7, d5, d6), i2) <= 4.5d ? !z : z) {
                d3 = d7;
            } else {
                d4 = d7;
            }
        }
        return b.e.d.a.a(d4, d5, d6);
    }

    public static void sendCustomAccessibilityEvent(View view, int i, String str) {
        if (view == null || !((AccessibilityManager) view.getContext().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i);
        view.onInitializeAccessibilityEvent(obtain);
        if (!TextUtils.isEmpty(str)) {
            obtain.getText().add(str);
        }
        getManager(view.getContext()).sendAccessibilityEvent(obtain);
    }

    public static void sendEventToTest(AccessibilityManager accessibilityManager, String str, Bundle bundle) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(QuickStepContract.SYSUI_STATE_BUBBLES_EXPANDED);
        obtain.setClassName(str);
        obtain.setParcelableData(bundle);
        accessibilityManager.sendAccessibilityEvent(obtain);
    }

    public static void sendStateEventToTest(Context context, int i) {
        AccessibilityManager accessibilityManagerForTest = getAccessibilityManagerForTest(context);
        if (accessibilityManagerForTest == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("state", i);
        sendEventToTest(accessibilityManagerForTest, "TAPL_SWITCHED_TO_STATE", bundle);
        Log.d("TaplTarget", "sendStateEventToTest: " + i);
    }

    public static void setColorChangeOnMatrix(int i, int i2, ColorMatrix colorMatrix) {
        colorMatrix.reset();
        colorMatrix.getArray()[4] = Color.red(i2) - Color.red(i);
        colorMatrix.getArray()[9] = Color.green(i2) - Color.green(i);
        colorMatrix.getArray()[14] = Color.blue(i2) - Color.blue(i);
        colorMatrix.getArray()[19] = Color.alpha(i2) - Color.alpha(i);
    }

    public static void sortWorkspaceItemsSpatially(InvariantDeviceProfile invariantDeviceProfile, ArrayList arrayList) {
        int i = invariantDeviceProfile.numColumns;
        Collections.sort(arrayList, new c.a.a.N0.E(invariantDeviceProfile.numRows * i, i));
    }

    public static boolean supportsShortcuts(ItemInfo itemInfo) {
        if (isActive(itemInfo)) {
            if ((itemInfo.itemType == 0) || isPinnedShortcut(itemInfo)) {
                return true;
            }
        }
        return false;
    }

    public static boolean tableExists(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query = sQLiteDatabase.query(true, "sqlite_master", new String[]{"tbl_name"}, "tbl_name = ?", new String[]{str}, null, null, null, null, null);
        try {
            boolean z = query.getCount() > 0;
            query.close();
            return z;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static byte[] toByteArray(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            copy(fileInputStream, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            fileInputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void recordEvent(String str, String str2, Object obj) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            recordEventSlow(str, str2 + ": " + obj);
        }
    }
}
