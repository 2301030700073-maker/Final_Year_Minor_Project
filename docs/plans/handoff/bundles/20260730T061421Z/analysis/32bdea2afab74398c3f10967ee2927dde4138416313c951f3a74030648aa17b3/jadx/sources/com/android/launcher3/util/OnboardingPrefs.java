package com.android.launcher3.util;

import android.content.SharedPreferences;
import android.util.ArrayMap;
import com.android.launcher3.Launcher;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public class OnboardingPrefs {
    public static final String ALL_APPS_COUNT = "launcher.all_apps_count";
    public static final String HOME_BOUNCE_COUNT = "launcher.home_bounce_count";
    public static final String HOME_BOUNCE_SEEN = "launcher.apps_view_shown";
    public static final String HOTSEAT_DISCOVERY_TIP_COUNT = "launcher.hotseat_discovery_tip_count";
    public static final String HOTSEAT_LONGPRESS_TIP_SEEN = "launcher.hotseat_longpress_tip_seen";
    public static final Map MAX_COUNTS;
    public static final String SHELF_BOUNCE_COUNT = "launcher.shelf_bounce_count";
    public static final String SHELF_BOUNCE_SEEN = "launcher.shelf_bounce_seen";
    public final Launcher mLauncher;
    public final SharedPreferences mSharedPrefs;

    static {
        ArrayMap arrayMap = new ArrayMap(3);
        arrayMap.put(HOME_BOUNCE_COUNT, 3);
        arrayMap.put(SHELF_BOUNCE_COUNT, 3);
        arrayMap.put(ALL_APPS_COUNT, 5);
        arrayMap.put(HOTSEAT_DISCOVERY_TIP_COUNT, 5);
        MAX_COUNTS = Collections.unmodifiableMap(arrayMap);
    }

    public OnboardingPrefs(Launcher launcher, SharedPreferences sharedPreferences) {
        this.mLauncher = launcher;
        this.mSharedPrefs = sharedPreferences;
    }

    public boolean getBoolean(String str) {
        return this.mSharedPrefs.getBoolean(str, false);
    }

    public int getCount(String str) {
        return this.mSharedPrefs.getInt(str, 0);
    }

    public boolean hasReachedMaxCount(String str) {
        return hasReachedMaxCount(getCount(str), str);
    }

    public boolean incrementEventCount(String str) {
        int count = getCount(str);
        if (hasReachedMaxCount(count, str)) {
            return true;
        }
        int i = count + 1;
        this.mSharedPrefs.edit().putInt(str, i).apply();
        return hasReachedMaxCount(i, str);
    }

    public void markChecked(String str) {
        this.mSharedPrefs.edit().putBoolean(str, true).apply();
    }

    private boolean hasReachedMaxCount(int i, String str) {
        return i >= ((Integer) MAX_COUNTS.get(str)).intValue();
    }
}
