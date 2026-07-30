package com.android.launcher3.states;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class RotationHelper implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final Activity mActivity;
    public final ContentResolver mContentResolver;
    public boolean mDestroyed;
    public boolean mHomeRotationEnabled;
    public boolean mIgnoreAutoRotateSettings;
    public boolean mInitialized;
    public final SharedPreferences mSharedPrefs;
    public boolean mSystemAutoRotateEnabled;
    public ContentObserver mSystemAutoRotateObserver = new ContentObserver(new Handler()) { // from class: com.android.launcher3.states.RotationHelper.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            RotationHelper.this.updateAutoRotateSetting();
        }
    };
    public int mStateHandlerRequest = 0;
    public int mCurrentTransitionRequest = 0;
    public int mCurrentStateRequest = 0;
    public int mLastActivityFlags = -1;

    public RotationHelper(Activity activity) {
        this.mActivity = activity;
        boolean z = activity.getResources().getBoolean(R.bool.allow_rotation);
        this.mIgnoreAutoRotateSettings = z;
        if (z) {
            this.mSharedPrefs = null;
        } else {
            SharedPreferences prefs = Utilities.getPrefs(this.mActivity);
            this.mSharedPrefs = prefs;
            prefs.registerOnSharedPreferenceChangeListener(this);
            this.mHomeRotationEnabled = this.mSharedPrefs.getBoolean("pref_allowRotation", getAllowRotationDefaultValue());
        }
        this.mContentResolver = activity.getContentResolver();
    }

    public static boolean getAllowRotationDefaultValue() {
        Resources system = Resources.getSystem();
        return (system.getConfiguration().smallestScreenWidthDp * system.getDisplayMetrics().densityDpi) / DisplayMetrics.DENSITY_DEVICE_STABLE >= 600;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0018, code lost:
    
        if (r0 == 2) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        if (r0 == 2) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void notifyChange() {
        /*
            r4 = this;
            boolean r0 = r4.mInitialized
            if (r0 == 0) goto L47
            boolean r0 = r4.mDestroyed
            if (r0 == 0) goto L9
            goto L47
        L9:
            int r0 = r4.mStateHandlerRequest
            r1 = 14
            r2 = -1
            r3 = 2
            if (r0 == 0) goto L14
            if (r0 != r3) goto L2e
            goto L2f
        L14:
            int r0 = r4.mCurrentTransitionRequest
            if (r0 == 0) goto L1b
            if (r0 != r3) goto L2e
            goto L2f
        L1b:
            int r0 = r4.mCurrentStateRequest
            if (r0 != r3) goto L20
            goto L2f
        L20:
            boolean r1 = r4.mIgnoreAutoRotateSettings
            if (r1 != 0) goto L2e
            r1 = 1
            if (r0 == r1) goto L2e
            boolean r0 = r4.mHomeRotationEnabled
            if (r0 == 0) goto L2c
            goto L2e
        L2c:
            r1 = 5
            goto L2f
        L2e:
            r1 = r2
        L2f:
            int r0 = r4.mLastActivityFlags
            if (r1 == r0) goto L47
            r4.mLastActivityFlags = r1
            android.app.Activity r4 = r4.mActivity
            com.android.launcher3.util.MainThreadInitializedObject r0 = com.android.launcher3.util.UiThreadHelper.HANDLER
            java.lang.Object r0 = r0.b(r4)
            android.os.Handler r0 = (android.os.Handler) r0
            r2 = 0
            android.os.Message r4 = android.os.Message.obtain(r0, r3, r1, r2, r4)
            r4.sendToTarget()
        L47:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.states.RotationHelper.notifyChange():void");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z = this.mHomeRotationEnabled;
        boolean z2 = this.mSharedPrefs.getBoolean("pref_allowRotation", getAllowRotationDefaultValue());
        this.mHomeRotationEnabled = z2;
        if (z2 != z) {
            notifyChange();
            updateAutoRotateSetting();
        }
    }

    public String toString() {
        return String.format("[mStateHandlerRequest=%d, mCurrentStateRequest=%d, mLastActivityFlags=%d, mIgnoreAutoRotateSettings=%b, mHomeRotationEnabled=%b, mSystemAutoRotateEnabled=%b]", Integer.valueOf(this.mStateHandlerRequest), Integer.valueOf(this.mCurrentStateRequest), Integer.valueOf(this.mLastActivityFlags), Boolean.valueOf(this.mIgnoreAutoRotateSettings), Boolean.valueOf(this.mHomeRotationEnabled), Boolean.valueOf(this.mSystemAutoRotateEnabled));
    }

    public final void updateAutoRotateSetting() {
        int i;
        try {
            i = Settings.System.getInt(this.mContentResolver, "accelerometer_rotation");
        } catch (Settings.SettingNotFoundException e) {
            Log.e("RotationHelper", "autorotate setting not found", e);
            i = 0;
        }
        this.mSystemAutoRotateEnabled = i == 1;
    }
}
