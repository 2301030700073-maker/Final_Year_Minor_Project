package com.android.launcher3.config;

import android.content.Context;
import android.provider.Settings;
import com.android.launcher3.Utilities;
import com.android.launcher3.uioverrides.DeviceFlag;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class FeatureFlags {
    public static final BooleanFlag ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS;
    public static final BooleanFlag ASSISTANT_GIVES_LAUNCHER_FOCUS;
    public static final BooleanFlag ENABLE_ALL_APPS_EDU;
    public static final BooleanFlag ENABLE_DATABASE_RESTORE;
    public static final BooleanFlag ENABLE_DEEP_SHORTCUT_ICON_CACHE;
    public static final BooleanFlag ENABLE_HYBRID_HOTSEAT;
    public static final BooleanFlag ENABLE_LAUNCHER_PREVIEW_IN_GRID_PICKER;
    public static final BooleanFlag ENABLE_LSQ_VELOCITY_PROVIDER;
    public static final BooleanFlag ENABLE_OVERVIEW_ACTIONS;
    public static final BooleanFlag ENABLE_OVERVIEW_SELECTIONS;
    public static final BooleanFlag ENABLE_OVERVIEW_SHARE;
    public static final BooleanFlag ENABLE_UNIVERSAL_SMARTSPACE;
    public static final BooleanFlag FORCE_LOCAL_OVERSCROLL_PLUGIN;
    public static final BooleanFlag HOTSEAT_MIGRATE_TO_FOLDER;
    public static final BooleanFlag MULTI_DB_GRID_MIRATION_ALGO;
    public static final BooleanFlag SEPARATE_RECENTS_ACTIVITY;
    public static final BooleanFlag USER_EVENT_DISPATCHER;
    public static final List sDebugFlags = new ArrayList();
    public static final BooleanFlag PROMISE_APPS_IN_ALL_APPS = getDebugFlag("PROMISE_APPS_IN_ALL_APPS", false, "Add promise icon in all-apps");
    public static final BooleanFlag PROMISE_APPS_NEW_INSTALLS = getDebugFlag("PROMISE_APPS_NEW_INSTALLS", true, "Adds a promise icon to the home screen for new install sessions.");
    public static final BooleanFlag APPLY_CONFIG_AT_RUNTIME = getDebugFlag("APPLY_CONFIG_AT_RUNTIME", true, "Apply display changes dynamically");
    public static final BooleanFlag QUICKSTEP_SPRINGS = getDebugFlag("QUICKSTEP_SPRINGS", true, "Enable springs for quickstep animations");
    public static final BooleanFlag UNSTABLE_SPRINGS = getDebugFlag("UNSTABLE_SPRINGS", false, "Enable unstable springs for quickstep animations");
    public static final BooleanFlag KEYGUARD_ANIMATION = getDebugFlag("KEYGUARD_ANIMATION", false, "Enable animation for keyguard going away on wallpaper");
    public static final BooleanFlag ADAPTIVE_ICON_WINDOW_ANIM = getDebugFlag("ADAPTIVE_ICON_WINDOW_ANIM", true, "Use adaptive icons for window animations.");
    public static final BooleanFlag ENABLE_QUICKSTEP_LIVE_TILE = getDebugFlag("ENABLE_QUICKSTEP_LIVE_TILE", false, "Enable live tile in Quickstep overview");
    public static final BooleanFlag ENABLE_SUGGESTED_ACTIONS_OVERVIEW = new DeviceFlag("ENABLE_SUGGESTED_ACTIONS_OVERVIEW", false, "Show chip hints on the overview screen");
    public static final BooleanFlag FOLDER_NAME_SUGGEST = new DeviceFlag("FOLDER_NAME_SUGGEST", true, "Suggests folder names instead of blank text.");
    public static final BooleanFlag FOLDER_NAME_MAJORITY_RANKING = getDebugFlag("FOLDER_NAME_MAJORITY_RANKING", true, "Suggests folder names based on majority based ranking.");
    public static final BooleanFlag APP_SEARCH_IMPROVEMENTS = new DeviceFlag("APP_SEARCH_IMPROVEMENTS", true, "Adds localized title and keyword search and ranking");
    public static final BooleanFlag ENABLE_PREDICTION_DISMISS = getDebugFlag("ENABLE_PREDICTION_DISMISS", true, "Allow option to dimiss apps from predicted list");
    public static final BooleanFlag ENABLE_QUICK_CAPTURE_GESTURE = getDebugFlag("ENABLE_QUICK_CAPTURE_GESTURE", true, "Swipe from right to left to quick capture");

    public class BooleanFlag {
        public boolean defaultValue;
        public final String key;

        public BooleanFlag(String str, boolean z) {
            this.key = str;
            this.defaultValue = z;
        }

        public void addChangeListener(Context context, Runnable runnable) {
        }

        public StringBuilder appendProps(StringBuilder sb) {
            sb.append(this.key);
            sb.append(", defaultValue=");
            sb.append(this.defaultValue);
            return sb;
        }

        public boolean get() {
            return this.defaultValue;
        }

        public String toString() {
            return appendProps(new StringBuilder()).toString();
        }
    }

    public class DebugFlag extends BooleanFlag {
        public final String description;
        public boolean mCurrentValue;

        public DebugFlag(String str, boolean z, String str2) {
            super(str, z);
            this.description = str2;
            this.mCurrentValue = this.defaultValue;
            synchronized (FeatureFlags.sDebugFlags) {
                FeatureFlags.sDebugFlags.add(this);
            }
        }

        @Override // com.android.launcher3.config.FeatureFlags.BooleanFlag
        public StringBuilder appendProps(StringBuilder sb) {
            sb.append(this.key);
            sb.append(", defaultValue=");
            sb.append(this.defaultValue);
            sb.append(", mCurrentValue=");
            sb.append(this.mCurrentValue);
            return sb;
        }

        @Override // com.android.launcher3.config.FeatureFlags.BooleanFlag
        public boolean get() {
            return this.mCurrentValue;
        }

        public void initialize(Context context) {
            this.mCurrentValue = context.getSharedPreferences("featureFlags", 0).getBoolean(this.key, this.defaultValue);
        }
    }

    static {
        getDebugFlag("ENABLE_QUICK_CAPTURE_WINDOW", false, "Use window to host quick capture");
        FORCE_LOCAL_OVERSCROLL_PLUGIN = getDebugFlag("FORCE_LOCAL_OVERSCROLL_PLUGIN", false, "Use a launcher-provided OverscrollPlugin if available");
        ASSISTANT_GIVES_LAUNCHER_FOCUS = getDebugFlag("ASSISTANT_GIVES_LAUNCHER_FOCUS", false, "Allow Launcher to handle nav bar gestures while Assistant is running over it");
        ENABLE_HYBRID_HOTSEAT = getDebugFlag("ENABLE_HYBRID_HOTSEAT", true, "Fill gaps in hotseat with predicted apps");
        HOTSEAT_MIGRATE_TO_FOLDER = getDebugFlag("HOTSEAT_MIGRATE_TO_FOLDER", false, "Should move hotseat items into a folder");
        ENABLE_DEEP_SHORTCUT_ICON_CACHE = getDebugFlag("ENABLE_DEEP_SHORTCUT_ICON_CACHE", true, "R/W deep shortcut in IconCache");
        MULTI_DB_GRID_MIRATION_ALGO = getDebugFlag("MULTI_DB_GRID_MIRATION_ALGO", true, "Use the multi-db grid migration algorithm");
        ENABLE_LAUNCHER_PREVIEW_IN_GRID_PICKER = getDebugFlag("ENABLE_LAUNCHER_PREVIEW_IN_GRID_PICKER", true, "Show launcher preview in grid picker");
        ENABLE_OVERVIEW_ACTIONS = getDebugFlag("ENABLE_OVERVIEW_ACTIONS", true, "Show app actions instead of the shelf in Overview. As part of this decoupling, also distinguish swipe up from nav bar vs above it.");
        ENABLE_OVERVIEW_SELECTIONS = new DeviceFlag("ENABLE_OVERVIEW_SELECTIONS", true, "Show Select Mode button in Overview Actions");
        ENABLE_OVERVIEW_SHARE = getDebugFlag("ENABLE_OVERVIEW_SHARE", false, "Show Share button in Overview Actions");
        ENABLE_DATABASE_RESTORE = getDebugFlag("ENABLE_DATABASE_RESTORE", true, "Enable database restore when new restore session is created");
        ENABLE_UNIVERSAL_SMARTSPACE = getDebugFlag("ENABLE_UNIVERSAL_SMARTSPACE", false, "Replace Smartspace with a version rendered by System UI.");
        ENABLE_LSQ_VELOCITY_PROVIDER = getDebugFlag("ENABLE_LSQ_VELOCITY_PROVIDER", true, "Use Least Square algorithm for motion pause detection.");
        ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS = getDebugFlag("ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS", false, "Always use hardware optimization for folder animations.");
        ENABLE_ALL_APPS_EDU = getDebugFlag("ENABLE_ALL_APPS_EDU", true, "Shows user a tutorial on how to get to All Apps after X amount of attempts.");
        SEPARATE_RECENTS_ACTIVITY = getDebugFlag("SEPARATE_RECENTS_ACTIVITY", false, "Uses a separate recents activity instead of using the integrated recents+Launcher UI");
        USER_EVENT_DISPATCHER = new DeviceFlag("USER_EVENT_DISPATCHER", true, "User event dispatcher collects logs.");
    }

    public static void dump(PrintWriter printWriter) {
        printWriter.println("DeviceFlags:");
        synchronized (sDebugFlags) {
            for (DebugFlag debugFlag : sDebugFlags) {
                if (debugFlag instanceof DeviceFlag) {
                    printWriter.println("  " + debugFlag.toString());
                }
            }
        }
        printWriter.println("DebugFlags:");
        synchronized (sDebugFlags) {
            for (DebugFlag debugFlag2 : sDebugFlags) {
                if (!(debugFlag2 instanceof DeviceFlag)) {
                    printWriter.println("  " + debugFlag2.toString());
                }
            }
        }
    }

    public static BooleanFlag getDebugFlag(String str, boolean z, String str2) {
        return Utilities.IS_DEBUG_DEVICE ? new DebugFlag(str, z, str2) : new BooleanFlag(str, z);
    }

    public static List getDebugFlags() {
        ArrayList arrayList;
        synchronized (sDebugFlags) {
            arrayList = new ArrayList(sDebugFlags);
        }
        return arrayList;
    }

    public static boolean showFlagTogglerUi(Context context) {
        if (Utilities.IS_DEBUG_DEVICE) {
            if (Settings.Global.getInt(context.getApplicationContext().getContentResolver(), "development_settings_enabled", 0) != 0) {
                return true;
            }
        }
        return false;
    }
}
