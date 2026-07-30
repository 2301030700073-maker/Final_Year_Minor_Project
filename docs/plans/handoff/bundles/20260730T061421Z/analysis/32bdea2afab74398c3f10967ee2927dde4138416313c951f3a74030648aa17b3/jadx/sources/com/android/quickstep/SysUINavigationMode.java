package com.android.quickstep;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.Log;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.quickstep.SysUINavigationMode;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class SysUINavigationMode {
    public static final String ACTION_OVERLAY_CHANGED = "android.intent.action.OVERLAY_CHANGED";
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.b.S1
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new SysUINavigationMode(context);
        }
    });
    public static final String NAV_BAR_INTERACTION_MODE_RES_NAME = "config_navBarInteractionMode";
    public static final String TAG = "SysUINavigationMode";
    public final List mChangeListeners = new ArrayList();
    public final Context mContext;
    public Mode mMode;

    public enum Mode {
        THREE_BUTTONS(false, 0),
        TWO_BUTTONS(true, 1),
        NO_BUTTON(true, 2);

        public final boolean hasGestures;
        public final int resValue;

        Mode(boolean z, int i) {
            this.hasGestures = z;
            this.resValue = i;
        }
    }

    public interface NavigationModeChangeListener {
        void onNavigationModeChanged(Mode mode);
    }

    public SysUINavigationMode(Context context) {
        this.mContext = context;
        initializeMode();
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.quickstep.SysUINavigationMode.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                SysUINavigationMode.this.updateMode();
            }
        }, PackageManagerHelper.getPackageFilter("android", ACTION_OVERLAY_CHANGED));
    }

    private void dispatchModeChange() {
        Iterator it = this.mChangeListeners.iterator();
        while (it.hasNext()) {
            ((NavigationModeChangeListener) it.next()).onNavigationModeChanged(this.mMode);
        }
    }

    public static Mode getMode(Context context) {
        return ((SysUINavigationMode) INSTANCE.b(context)).getMode();
    }

    public static int getSystemIntegerRes(Context context, String str) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(str, "integer", "android");
        if (identifier != 0) {
            return resources.getInteger(identifier);
        }
        Log.e(TAG, "Failed to get system resource ID. Incompatible framework version?");
        return -1;
    }

    public static boolean hideShelfInTwoButtonLandscape(Context context, PagedOrientationHandler pagedOrientationHandler) {
        return getMode(context) == Mode.TWO_BUTTONS && !pagedOrientationHandler.isLayoutNaturalToLauncher();
    }

    private void initializeMode() {
        int systemIntegerRes = getSystemIntegerRes(this.mContext, NAV_BAR_INTERACTION_MODE_RES_NAME);
        for (Mode mode : Mode.values()) {
            if (mode.resValue == systemIntegerRes) {
                this.mMode = mode;
            }
        }
    }

    public static boolean removeShelfFromOverview(Context context) {
        return getMode(context) != Mode.TWO_BUTTONS;
    }

    public Mode addModeChangeListener(NavigationModeChangeListener navigationModeChangeListener) {
        this.mChangeListeners.add(navigationModeChangeListener);
        return this.mMode;
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("SysUINavigationMode:");
        printWriter.println("  mode=" + this.mMode.name());
    }

    public void removeModeChangeListener(NavigationModeChangeListener navigationModeChangeListener) {
        this.mChangeListeners.remove(navigationModeChangeListener);
    }

    public void updateMode() {
        Mode mode = this.mMode;
        initializeMode();
        if (this.mMode != mode) {
            dispatchModeChange();
        }
    }

    public Mode getMode() {
        return this.mMode;
    }
}
