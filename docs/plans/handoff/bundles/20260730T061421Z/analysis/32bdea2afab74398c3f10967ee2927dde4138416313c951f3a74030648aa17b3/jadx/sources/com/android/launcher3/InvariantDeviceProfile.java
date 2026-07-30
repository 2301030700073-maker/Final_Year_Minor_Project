package com.android.launcher3;

import android.annotation.TargetApi;
import android.appwidget.AppWidgetHostView;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Process;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.Display;
import b.l.W;
import c.a.a.C0256z;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.util.ConfigMonitor;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class InvariantDeviceProfile {
    public float allAppsIconSize;
    public float allAppsIconTextSize;
    public String dbFile;
    public int defaultLayoutId;
    public Point defaultWallpaperSize;
    public Rect defaultWidgetPadding;
    public int demoModeLayoutId;
    public int fillResIconDpi;
    public int iconBitmapSize;
    public String iconShapePath;
    public float iconSize;
    public float iconTextSize;
    public float landscapeIconSize;
    public DeviceProfile landscapeProfile;
    public final ArrayList mChangeListeners = new ArrayList();
    public ConfigMonitor mConfigMonitor;
    public SparseArray mExtraAttrs;
    public OverlayMonitor mOverlayMonitor;
    public int numAllAppsColumns;
    public int numColumns;
    public int numFolderColumns;
    public int numFolderRows;
    public int numHotseatIcons;
    public int numRows;
    public DeviceProfile portraitProfile;
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.v
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new InvariantDeviceProfile(context);
        }
    });
    public static final int CONFIG_ICON_MASK_RES_ID = Resources.getSystem().getIdentifier("config_icon_mask", "string", "android");

    public final class GridOption {
        public final String dbFile;
        public final int defaultLayoutId;
        public final int demoModeLayoutId;
        public final SparseArray extraAttrs;
        public final String name;
        public final int numAllAppsColumns;
        public final int numColumns;
        public final int numFolderColumns;
        public final int numFolderRows;
        public final int numHotseatIcons;
        public final int numRows;

        public GridOption(Context context, AttributeSet attributeSet) {
            int[] iArr = R$styleable.GridDisplayOption;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
            this.name = obtainStyledAttributes.getString(3);
            this.numRows = obtainStyledAttributes.getInt(9, 0);
            this.numColumns = obtainStyledAttributes.getInt(5, 0);
            this.dbFile = obtainStyledAttributes.getString(0);
            int resourceId = obtainStyledAttributes.getResourceId(1, 0);
            this.defaultLayoutId = resourceId;
            this.demoModeLayoutId = obtainStyledAttributes.getResourceId(2, resourceId);
            this.numHotseatIcons = obtainStyledAttributes.getInt(8, this.numColumns);
            this.numFolderRows = obtainStyledAttributes.getInt(7, this.numRows);
            this.numFolderColumns = obtainStyledAttributes.getInt(6, this.numColumns);
            this.numAllAppsColumns = obtainStyledAttributes.getInt(4, this.numColumns);
            obtainStyledAttributes.recycle();
            this.extraAttrs = W.createValueMap(context, attributeSet, IntArray.wrap(iArr));
        }
    }

    public interface OnIDPChangeListener {
        void onIdpChanged(int i, InvariantDeviceProfile invariantDeviceProfile);
    }

    public class OverlayMonitor extends BroadcastReceiver {
        public OverlayMonitor(Context context) {
            context.registerReceiver(this, PackageManagerHelper.getPackageFilter("android", SysUINavigationMode.ACTION_OVERLAY_CHANGED));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            InvariantDeviceProfile.this.d(context);
        }
    }

    public InvariantDeviceProfile() {
    }

    public static void a(InvariantDeviceProfile invariantDeviceProfile, Context context) {
        Objects.requireNonNull(invariantDeviceProfile);
        Log.e("ConfigMonitor", "restarting launcher");
        Process.killProcess(Process.myPid());
    }

    public static float dist(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    public static String getCurrentGridName(Context context) {
        if (Utilities.isGridOptionsEnabled(context)) {
            return context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0).getString("idp_grid_name", null);
        }
        return null;
    }

    public static String getIconShapePath(Context context) {
        if (CONFIG_ICON_MASK_RES_ID != 0) {
            return context.getResources().getString(CONFIG_ICON_MASK_RES_ID);
        }
        Log.e("IDP", "Icon mask res identifier failed to retrieve.");
        return "";
    }

    public static ArrayList getPredefinedDeviceProfiles(Context context, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.device_profiles);
            try {
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if ((next != 3 || xml.getDepth() > depth) && next != 1) {
                        if (next == 2 && "grid-option".equals(xml.getName())) {
                            GridOption gridOption = new GridOption(context, Xml.asAttributeSet(xml));
                            int depth2 = xml.getDepth();
                            while (true) {
                                int next2 = xml.next();
                                if ((next2 != 3 || xml.getDepth() > depth2) && next2 != 1) {
                                    if (next2 == 2 && "display-option".equals(xml.getName())) {
                                        arrayList.add(new DisplayOption(gridOption, context, Xml.asAttributeSet(xml)));
                                    }
                                }
                            }
                        }
                    }
                }
                xml.close();
                ArrayList arrayList2 = new ArrayList();
                if (!TextUtils.isEmpty(str)) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        DisplayOption displayOption = (DisplayOption) it.next();
                        if (str.equals(displayOption.grid.name)) {
                            arrayList2.add(displayOption);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        DisplayOption displayOption2 = (DisplayOption) it2.next();
                        if (displayOption2.canBeDefault) {
                            arrayList2.add(displayOption2);
                        }
                    }
                }
                if (arrayList2.isEmpty()) {
                    throw new RuntimeException("No display option with canBeDefault=true");
                }
                return arrayList2;
            } catch (Throwable th) {
                if (xml != null) {
                    try {
                        xml.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException | XmlPullParserException e) {
            throw new RuntimeException(e);
        }
    }

    public static DisplayOption invDistWeightedInterpolate(DefaultDisplay.Info info, ArrayList arrayList) {
        Point point = new Point(info.smallestSize);
        Point point2 = new Point(info.largestSize);
        final float dpiFromPx = Utilities.dpiFromPx(Math.min(point.x, point.y), info.metrics);
        final float dpiFromPx2 = Utilities.dpiFromPx(Math.min(point2.x, point2.y), info.metrics);
        Collections.sort(arrayList, new Comparator() { // from class: c.a.a.x
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int compare;
                compare = Float.compare(InvariantDeviceProfile.dist(r0, r1, r2.minWidthDps, ((InvariantDeviceProfile.DisplayOption) obj).minHeightDps), InvariantDeviceProfile.dist(dpiFromPx, dpiFromPx2, r3.minWidthDps, ((InvariantDeviceProfile.DisplayOption) obj2).minHeightDps));
                return compare;
            }
        });
        GridOption gridOption = ((DisplayOption) arrayList.get(0)).grid;
        DisplayOption displayOption = (DisplayOption) arrayList.get(0);
        if (dist(dpiFromPx, dpiFromPx2, displayOption.minWidthDps, displayOption.minHeightDps) == RecentsState.NO_OFFSET) {
            return displayOption;
        }
        DisplayOption displayOption2 = new DisplayOption(gridOption);
        float f = 0.0f;
        for (int i = 0; i < arrayList.size() && i < 3.0f; i++) {
            DisplayOption displayOption3 = (DisplayOption) arrayList.get(i);
            float weight = weight(dpiFromPx, dpiFromPx2, displayOption3.minWidthDps, displayOption3.minHeightDps, 5.0f);
            f += weight;
            float f2 = displayOption3.iconSize + RecentsState.NO_OFFSET;
            float f3 = displayOption3.landscapeIconSize + RecentsState.NO_OFFSET;
            float f4 = displayOption3.allAppsIconSize + RecentsState.NO_OFFSET;
            float f5 = (displayOption3.iconTextSize + RecentsState.NO_OFFSET) * weight;
            float f6 = (displayOption3.allAppsIconTextSize + RecentsState.NO_OFFSET) * weight;
            displayOption2.iconSize += f2 * weight;
            displayOption2.landscapeIconSize += f3 * weight;
            displayOption2.allAppsIconSize += f4 * weight;
            displayOption2.iconTextSize += f5;
            displayOption2.allAppsIconTextSize += f6;
        }
        DisplayOption.access$1800(displayOption2, 1.0f / f);
        return displayOption2;
    }

    public static float weight(float f, float f2, float f3, float f4, float f5) {
        float dist = dist(f, f2, f3, f4);
        if (Float.compare(dist, RecentsState.NO_OFFSET) == 0) {
            return Float.POSITIVE_INFINITY;
        }
        return (float) (100000.0d / Math.pow(dist, f5));
    }

    public final void apply(Context context, int i) {
        ConfigMonitor configMonitor = this.mConfigMonitor;
        Objects.requireNonNull(configMonitor);
        try {
            configMonitor.mContext.unregisterReceiver(configMonitor);
            MainThreadInitializedObject mainThreadInitializedObject = DefaultDisplay.INSTANCE;
            ((DefaultDisplay) DefaultDisplay.INSTANCE.b(configMonitor.mContext)).mListeners.remove(configMonitor);
        } catch (Exception e) {
            Log.e("ConfigMonitor", "Failed to unregister config monitor", e);
        }
        this.mConfigMonitor = new ConfigMonitor(context, new C0256z(this));
        Iterator it = this.mChangeListeners.iterator();
        while (it.hasNext()) {
            ((OnIDPChangeListener) it.next()).onIdpChanged(i, this);
        }
    }

    public TypedValue getAttrValue(int i) {
        SparseArray sparseArray = this.mExtraAttrs;
        if (sparseArray == null) {
            return null;
        }
        return (TypedValue) sparseArray.get(i);
    }

    public DeviceProfile getDeviceProfile(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? this.landscapeProfile : this.portraitProfile;
    }

    public final String initGrid(Context context, String str) {
        DefaultDisplay.Info info = ((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo;
        DisplayOption invDistWeightedInterpolate = invDistWeightedInterpolate(info, getPredefinedDeviceProfiles(context, str));
        initGrid(context, info, invDistWeightedInterpolate);
        return invDistWeightedInterpolate.grid.name;
    }

    /* renamed from: onConfigChanged, reason: merged with bridge method [inline-methods] */
    public final void d(Context context) {
        InvariantDeviceProfile invariantDeviceProfile = new InvariantDeviceProfile(this);
        initGrid(context, getCurrentGridName(context));
        int i = (this.numRows == invariantDeviceProfile.numRows && this.numColumns == invariantDeviceProfile.numColumns && this.numFolderColumns == invariantDeviceProfile.numFolderColumns && this.numFolderRows == invariantDeviceProfile.numFolderRows && this.numHotseatIcons == invariantDeviceProfile.numHotseatIcons) ? 0 : 1;
        if (this.iconSize != invariantDeviceProfile.iconSize || this.iconBitmapSize != invariantDeviceProfile.iconBitmapSize || !this.iconShapePath.equals(invariantDeviceProfile.iconShapePath)) {
            i |= 2;
        }
        if (!this.iconShapePath.equals(invariantDeviceProfile.iconShapePath)) {
            IconShape.init(context);
        }
        apply(context, i);
    }

    public InvariantDeviceProfile(InvariantDeviceProfile invariantDeviceProfile) {
        this.numRows = invariantDeviceProfile.numRows;
        this.numColumns = invariantDeviceProfile.numColumns;
        this.numFolderRows = invariantDeviceProfile.numFolderRows;
        this.numFolderColumns = invariantDeviceProfile.numFolderColumns;
        this.iconSize = invariantDeviceProfile.iconSize;
        this.iconShapePath = invariantDeviceProfile.iconShapePath;
        this.landscapeIconSize = invariantDeviceProfile.landscapeIconSize;
        this.iconBitmapSize = invariantDeviceProfile.iconBitmapSize;
        this.iconTextSize = invariantDeviceProfile.iconTextSize;
        this.numHotseatIcons = invariantDeviceProfile.numHotseatIcons;
        this.numAllAppsColumns = invariantDeviceProfile.numAllAppsColumns;
        this.dbFile = invariantDeviceProfile.dbFile;
        this.allAppsIconSize = invariantDeviceProfile.allAppsIconSize;
        this.allAppsIconTextSize = invariantDeviceProfile.allAppsIconTextSize;
        this.defaultLayoutId = invariantDeviceProfile.defaultLayoutId;
        this.demoModeLayoutId = invariantDeviceProfile.demoModeLayoutId;
        this.mExtraAttrs = invariantDeviceProfile.mExtraAttrs;
        this.mOverlayMonitor = invariantDeviceProfile.mOverlayMonitor;
    }

    public final void initGrid(Context context, DefaultDisplay.Info info, DisplayOption displayOption) {
        GridOption gridOption = displayOption.grid;
        this.numRows = gridOption.numRows;
        this.numColumns = gridOption.numColumns;
        this.numHotseatIcons = gridOption.numHotseatIcons;
        this.dbFile = gridOption.dbFile;
        this.defaultLayoutId = gridOption.defaultLayoutId;
        this.demoModeLayoutId = gridOption.demoModeLayoutId;
        this.numFolderRows = gridOption.numFolderRows;
        this.numFolderColumns = gridOption.numFolderColumns;
        this.numAllAppsColumns = gridOption.numAllAppsColumns;
        this.mExtraAttrs = gridOption.extraAttrs;
        this.iconSize = displayOption.iconSize;
        this.iconShapePath = getIconShapePath(context);
        this.landscapeIconSize = displayOption.landscapeIconSize;
        int pxFromDp = W.pxFromDp(this.iconSize, info.metrics);
        this.iconBitmapSize = pxFromDp;
        this.iconTextSize = displayOption.iconTextSize;
        int[] iArr = {120, 160, 213, 240, 320, 480, 640};
        int i = 640;
        for (int i2 = 6; i2 >= 0; i2--) {
            if ((iArr[i2] * 48.0f) / 160.0f >= pxFromDp) {
                i = iArr[i2];
            }
        }
        this.fillResIconDpi = i;
        if (Utilities.isGridOptionsEnabled(context)) {
            this.allAppsIconSize = displayOption.allAppsIconSize;
            this.allAppsIconTextSize = displayOption.allAppsIconTextSize;
        } else {
            this.allAppsIconSize = this.iconSize;
            this.allAppsIconTextSize = this.iconTextSize;
        }
        DisplayMetrics displayMetrics = info.metrics;
        Partner partner = Partner.get(context.getPackageManager());
        if (partner != null) {
            try {
                int identifier = partner.mResources.getIdentifier("grid_num_rows", "integer", partner.mPackageName);
                int integer = identifier > 0 ? partner.mResources.getInteger(identifier) : -1;
                int identifier2 = partner.mResources.getIdentifier("grid_num_columns", "integer", partner.mPackageName);
                int integer2 = identifier2 > 0 ? partner.mResources.getInteger(identifier2) : -1;
                float dpiFromPx = partner.mResources.getIdentifier("grid_icon_size_dp", "dimen", partner.mPackageName) > 0 ? Utilities.dpiFromPx(partner.mResources.getDimensionPixelSize(r2), displayMetrics) : -1.0f;
                if (integer > 0 && integer2 > 0) {
                    this.numRows = integer;
                    this.numColumns = integer2;
                }
                if (dpiFromPx > RecentsState.NO_OFFSET) {
                    this.iconSize = dpiFromPx;
                }
            } catch (Resources.NotFoundException e) {
                Log.e("Launcher.Partner", "Invalid Partner grid resource!", e);
            }
        }
        Point point = new Point(info.realSize);
        int min = Math.min(point.x, point.y);
        int max = Math.max(point.x, point.y);
        Point point2 = new Point();
        boolean z = context.getResources().getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        Point point3 = new Point(info.smallestSize);
        Point point4 = new Point(info.largestSize);
        this.landscapeProfile = new DeviceProfile(context, this, info, point3, point4, max, min, max > min, false, z, point2);
        this.portraitProfile = new DeviceProfile(context, this, info, point3, point4, min, max, min > max, false, z, point2);
        if (context.getResources().getConfiguration().smallestScreenWidthDp >= 720) {
            float f = max;
            this.defaultWallpaperSize = new Point((int) (f * (((f / min) * 0.30769226f) + 1.0076923f)), max);
        } else {
            this.defaultWallpaperSize = new Point(Math.max(min * 2, max), max);
        }
        this.defaultWidgetPadding = AppWidgetHostView.getDefaultPaddingForWidget(context, new ComponentName(context.getPackageName(), InvariantDeviceProfile.class.getName()), null);
    }

    public final class DisplayOption {
        public float allAppsIconSize;
        public float allAppsIconTextSize;
        public final boolean canBeDefault;
        public final GridOption grid;
        public float iconSize;
        public float iconTextSize;
        public float landscapeIconSize;
        public final float minHeightDps;
        public final float minWidthDps;

        public DisplayOption(GridOption gridOption, Context context, AttributeSet attributeSet) {
            this.grid = gridOption;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ProfileDisplayOption);
            this.minWidthDps = obtainStyledAttributes.getFloat(7, RecentsState.NO_OFFSET);
            this.minHeightDps = obtainStyledAttributes.getFloat(6, RecentsState.NO_OFFSET);
            this.canBeDefault = obtainStyledAttributes.getBoolean(2, false);
            float f = obtainStyledAttributes.getFloat(3, RecentsState.NO_OFFSET);
            this.iconSize = f;
            this.landscapeIconSize = obtainStyledAttributes.getFloat(5, f);
            this.iconTextSize = obtainStyledAttributes.getFloat(4, RecentsState.NO_OFFSET);
            this.allAppsIconSize = obtainStyledAttributes.getFloat(0, this.iconSize);
            this.allAppsIconTextSize = obtainStyledAttributes.getFloat(1, this.iconTextSize);
            obtainStyledAttributes.recycle();
        }

        public static DisplayOption access$100(DisplayOption displayOption, DisplayOption displayOption2) {
            displayOption.iconSize += displayOption2.iconSize;
            displayOption.landscapeIconSize += displayOption2.landscapeIconSize;
            displayOption.allAppsIconSize += displayOption2.allAppsIconSize;
            displayOption.iconTextSize += displayOption2.iconTextSize;
            displayOption.allAppsIconTextSize += displayOption2.allAppsIconTextSize;
            return displayOption;
        }

        public static DisplayOption access$1800(DisplayOption displayOption, float f) {
            displayOption.iconSize *= f;
            displayOption.landscapeIconSize *= f;
            displayOption.allAppsIconSize *= f;
            displayOption.iconTextSize *= f;
            displayOption.allAppsIconTextSize *= f;
            return displayOption;
        }

        public DisplayOption() {
            this(null);
        }

        public DisplayOption(GridOption gridOption) {
            this.grid = gridOption;
            this.minWidthDps = RecentsState.NO_OFFSET;
            this.minHeightDps = RecentsState.NO_OFFSET;
            this.canBeDefault = false;
        }
    }

    @TargetApi(23)
    public InvariantDeviceProfile(Context context) {
        String currentGridName = getCurrentGridName(context);
        String initGrid = initGrid(context, currentGridName);
        if (!initGrid.equals(currentGridName)) {
            context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0).edit().putString("idp_grid_name", initGrid).apply();
        }
        context.getApplicationContext().getSharedPreferences("com.android.launcher3.prefs", 0).edit().putInt("migration_src_hotseat_count", this.numHotseatIcons).putString("migration_src_workspace_size", Utilities.getPointString(this.numColumns, this.numRows)).apply();
        this.mConfigMonitor = new ConfigMonitor(context, FeatureFlags.APPLY_CONFIG_AT_RUNTIME.get() ? new C0256z(this) : new Consumer() { // from class: c.a.a.y
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                InvariantDeviceProfile.a(InvariantDeviceProfile.this, (Context) obj);
            }
        });
        this.mOverlayMonitor = new OverlayMonitor(context);
    }

    public static DisplayOption invDistWeightedInterpolate(float f, float f2, ArrayList arrayList) {
        DisplayOption displayOption = (DisplayOption) arrayList.get(0);
        if (dist(f, f2, displayOption.minWidthDps, displayOption.minHeightDps) == RecentsState.NO_OFFSET) {
            return displayOption;
        }
        DisplayOption displayOption2 = new DisplayOption(null);
        float f3 = 0.0f;
        for (int i = 0; i < arrayList.size() && i < 3.0f; i++) {
            DisplayOption displayOption3 = (DisplayOption) arrayList.get(i);
            float weight = weight(f, f2, displayOption3.minWidthDps, displayOption3.minHeightDps, 5.0f);
            f3 += weight;
            float f4 = displayOption3.iconSize + RecentsState.NO_OFFSET;
            float f5 = displayOption3.landscapeIconSize + RecentsState.NO_OFFSET;
            float f6 = displayOption3.allAppsIconSize + RecentsState.NO_OFFSET;
            float f7 = (displayOption3.iconTextSize + RecentsState.NO_OFFSET) * weight;
            float f8 = (displayOption3.allAppsIconTextSize + RecentsState.NO_OFFSET) * weight;
            displayOption2.iconSize += f4 * weight;
            displayOption2.landscapeIconSize += f5 * weight;
            displayOption2.allAppsIconSize += f6 * weight;
            displayOption2.iconTextSize += f7;
            displayOption2.allAppsIconTextSize += f8;
        }
        DisplayOption.access$1800(displayOption2, 1.0f / f3);
        return displayOption2;
    }

    public InvariantDeviceProfile(Context context, String str) {
        String initGrid = initGrid(context, str);
        if (initGrid == null || !initGrid.equals(str)) {
            throw new IllegalArgumentException("Unknown grid name");
        }
    }

    public InvariantDeviceProfile(Context context, Display display) {
        String currentGridName = getCurrentGridName(context);
        DisplayOption invDistWeightedInterpolate = invDistWeightedInterpolate(((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo, getPredefinedDeviceProfiles(context, currentGridName));
        DefaultDisplay.Info info = new DefaultDisplay.Info(context, display);
        DisplayOption invDistWeightedInterpolate2 = invDistWeightedInterpolate(info, getPredefinedDeviceProfiles(context, currentGridName));
        DisplayOption displayOption = new DisplayOption(invDistWeightedInterpolate.grid);
        DisplayOption.access$100(displayOption, invDistWeightedInterpolate2);
        displayOption.iconSize = invDistWeightedInterpolate.iconSize;
        displayOption.landscapeIconSize = invDistWeightedInterpolate.landscapeIconSize;
        displayOption.allAppsIconSize = Math.min(invDistWeightedInterpolate.allAppsIconSize, invDistWeightedInterpolate2.allAppsIconSize);
        initGrid(context, info, displayOption);
    }
}
