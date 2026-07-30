package com.android.quickstep.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import c.a.c.a.a;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.Executors;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.systemui.shared.system.ConfigurationCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public final class RecentsOrientedState implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final boolean DEBUG = true;
    public static final int FLAG_HOME_ROTATION_ALLOWED_IN_PREFS = 4;
    public static final int FLAG_HOME_ROTATION_FORCE_ENABLED_FOR_TESTING = 128;
    public static final int FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_ACTIVITY = 1;
    public static final int FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_DENSITY = 2;
    public static final int FLAG_MULTIWINDOW_ROTATION_ALLOWED = 16;
    public static final int FLAG_ROTATION_WATCHER_ENABLED = 64;
    public static final int FLAG_ROTATION_WATCHER_SUPPORTED = 32;
    public static final int FLAG_SWIPE_UP_NOT_RUNNING = 256;
    public static final int FLAG_SYSTEM_ROTATION_ALLOWED = 8;
    public static final int MASK_MULTIPLE_ORIENTATION_SUPPORTED_BY_DEVICE = 3;
    public static final String TAG = "RecentsOrientedState";
    public static final int VALUE_ROTATION_WATCHER_ENABLED = 363;
    public Configuration mActivityConfiguration;
    public final ContentResolver mContentResolver;
    public final Context mContext;
    public int mFlags;
    public final OrientationEventListener mOrientationListener;
    public final SharedPreferences mSharedPrefs;
    public ContentObserver mSystemAutoRotateObserver = new ContentObserver(new Handler()) { // from class: com.android.quickstep.util.RecentsOrientedState.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            RecentsOrientedState.this.updateAutoRotateSetting();
        }
    };
    public PagedOrientationHandler mOrientationHandler = PagedOrientationHandler.PORTRAIT;
    public int mTouchRotation = 0;
    public int mDisplayRotation = 0;
    public int mRecentsActivityRotation = 0;
    public final Matrix mTmpMatrix = new Matrix();
    public int mPreviousRotation = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface SurfaceRotation {
    }

    public RecentsOrientedState(Context context, BaseActivityInterface baseActivityInterface, final IntConsumer intConsumer) {
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mSharedPrefs = Utilities.getPrefs(context);
        this.mOrientationListener = new OrientationEventListener(context) { // from class: com.android.quickstep.util.RecentsOrientedState.2
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int i) {
                int rotationForUserDegreesRotated = RecentsOrientedState.getRotationForUserDegreesRotated(i, RecentsOrientedState.this.mPreviousRotation);
                if (rotationForUserDegreesRotated != RecentsOrientedState.this.mPreviousRotation) {
                    RecentsOrientedState.this.mPreviousRotation = rotationForUserDegreesRotated;
                    intConsumer.accept(rotationForUserDegreesRotated);
                }
            }
        };
        this.mFlags = baseActivityInterface.rotationSupportedByActivity ? 1 : 0;
        Resources resources = context.getResources();
        if ((resources.getConfiguration().smallestScreenWidthDp * resources.getDisplayMetrics().densityDpi) / DisplayMetrics.DENSITY_DEVICE_STABLE < 600) {
            this.mFlags |= 2;
        }
        this.mFlags |= 256;
        initFlags();
    }

    public static int getRotationForUserDegreesRotated(float f, int i) {
        if (f == -1.0f) {
            return i;
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (f < 20 || (f > 340 && f < 360.0f)) {
                            return 0;
                        }
                        if (f > 160 && f < 180.0f) {
                            return 2;
                        }
                        if (f > 250 && f < 360.0f) {
                            return 1;
                        }
                    }
                } else {
                    if (f < 110) {
                        return 3;
                    }
                    if (f > 250) {
                        return 1;
                    }
                }
            } else {
                if (f < 200 && f > 90.0f) {
                    return 2;
                }
                if ((f > 340 && f < 360.0f) || (f >= RecentsState.NO_OFFSET && f < 70)) {
                    return 0;
                }
                if (f > 70 && f < 180.0f) {
                    return 3;
                }
            }
        } else {
            if (f > 180.0f && f < 290) {
                return 1;
            }
            if (f < 180.0f && f > 70) {
                return 3;
            }
        }
        return i;
    }

    private int inferRecentsActivityRotation(int i) {
        if (!isRecentsActivityRotationAllowed()) {
            return 0;
        }
        Configuration configuration = this.mActivityConfiguration;
        return configuration == null ? i : ConfigurationCompat.getWindowConfigurationRotation(configuration);
    }

    private void initFlags() {
        setFlag(32, this.mOrientationListener.canDetectOrientation() && SysUINavigationMode.getMode(this.mContext) != SysUINavigationMode.Mode.TWO_BUTTONS);
        updateAutoRotateSetting();
        updateHomeRotationSetting();
    }

    public static void postDisplayRotation(int i, float f, float f2, Matrix matrix) {
        if (i == 1) {
            matrix.postRotate(270.0f);
            matrix.postTranslate(RecentsState.NO_OFFSET, f);
        } else if (i == 2) {
            matrix.postRotate(180.0f);
            matrix.postTranslate(f2, f);
        } else {
            if (i != 3) {
                return;
            }
            matrix.postRotate(90.0f);
            matrix.postTranslate(f2, RecentsState.NO_OFFSET);
        }
    }

    private void setFlag(int i, boolean z) {
        boolean z2 = (TestProtocol.sDisableSensorRotation || (this.mFlags & VALUE_ROTATION_WATCHER_ENABLED) != 363 || canRecentsActivityRotate()) ? false : true;
        if (z) {
            this.mFlags = i | this.mFlags;
        } else {
            this.mFlags = (~i) & this.mFlags;
        }
        final boolean z3 = (TestProtocol.sDisableSensorRotation || (this.mFlags & VALUE_ROTATION_WATCHER_ENABLED) != 363 || canRecentsActivityRotate()) ? false : true;
        if (z2 != z3) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.b.c2.f
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsOrientedState recentsOrientedState = RecentsOrientedState.this;
                    if (z3) {
                        recentsOrientedState.mOrientationListener.enable();
                    } else {
                        recentsOrientedState.mOrientationListener.disable();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAutoRotateSetting() {
        setFlag(8, Settings.System.getInt(this.mContentResolver, "accelerometer_rotation", 1) == 1);
    }

    private void updateHomeRotationSetting() {
        setFlag(4, this.mSharedPrefs.getBoolean("pref_allowRotation", false));
    }

    public boolean canRecentsActivityRotate() {
        return (this.mFlags & 8) != 0 && isRecentsActivityRotationAllowed();
    }

    public void destroyListeners() {
        if (isMultipleOrientationSupportedByDevice()) {
            this.mSharedPrefs.unregisterOnSharedPreferenceChangeListener(this);
            this.mContentResolver.unregisterContentObserver(this.mSystemAutoRotateObserver);
        }
        setRotationWatcherEnabled(false);
    }

    public void flipVertical(MotionEvent motionEvent) {
        this.mTmpMatrix.setScale(1.0f, -1.0f);
        motionEvent.transform(this.mTmpMatrix);
    }

    public void forceAllowRotationForTesting(boolean z) {
        setFlag(128, z);
    }

    public int getDisplayRotation() {
        return this.mDisplayRotation;
    }

    public float getFullScreenScaleAndPivot(Rect rect, DeviceProfile deviceProfile, PointF pointF) {
        Rect rect2 = deviceProfile.mInsets;
        float f = (deviceProfile.widthPx - rect2.left) - rect2.right;
        float f2 = (deviceProfile.heightPx - rect2.top) - rect2.bottom;
        if (deviceProfile.isMultiWindowMode) {
            Point point = SplitScreenBounds.INSTANCE.getSecondaryWindowBounds(this.mContext).availableSize;
            pointF.set(point.x, point.y);
        } else {
            pointF.set(f, f2);
        }
        float min = Math.min(pointF.x / rect.width(), pointF.y / rect.height());
        if (f > RecentsState.NO_OFFSET) {
            min = (min * deviceProfile.widthPx) / f;
        }
        if (min == 1.0f) {
            pointF.set(f / 2.0f, f2 / 2.0f);
        } else if (deviceProfile.isMultiWindowMode) {
            float f3 = 1.0f / (min - 1.0f);
            pointF.set(((rect.right * min) - f) * f3, ((rect.bottom * min) - f2) * f3);
        } else {
            float f4 = min / (min - 1.0f);
            pointF.set(rect.left * f4, rect.top * f4);
        }
        return min;
    }

    public DeviceProfile getLauncherDeviceProfile() {
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.b(this.mContext);
        int i = this.mRecentsActivityRotation;
        return (i == 1 || i == 3) ? invariantDeviceProfile.landscapeProfile : invariantDeviceProfile.portraitProfile;
    }

    public PagedOrientationHandler getOrientationHandler() {
        return this.mOrientationHandler;
    }

    public int getRecentsActivityRotation() {
        return this.mRecentsActivityRotation;
    }

    public int getTouchRotation() {
        return this.mTouchRotation;
    }

    public void initListeners() {
        if (isMultipleOrientationSupportedByDevice()) {
            this.mSharedPrefs.registerOnSharedPreferenceChangeListener(this);
            this.mContentResolver.registerContentObserver(Settings.System.getUriFor("accelerometer_rotation"), false, this.mSystemAutoRotateObserver);
        }
        initFlags();
    }

    public boolean isDisplayPhoneNatural() {
        int i = this.mDisplayRotation;
        return i == 0 || i == 2;
    }

    public boolean isMultipleOrientationSupportedByDevice() {
        return (this.mFlags & 3) == 3;
    }

    public boolean isRecentsActivityRotationAllowed() {
        int i = this.mFlags;
        return ((i & 3) == 3 && (i & 148) == 0) ? false : true;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("pref_allowRotation".equals(str)) {
            updateHomeRotationSetting();
        }
    }

    public boolean setActivityConfiguration(Configuration configuration) {
        this.mActivityConfiguration = configuration;
        return update(this.mTouchRotation, this.mDisplayRotation);
    }

    public boolean setGestureActive(boolean z) {
        setFlag(256, !z);
        return update(this.mTouchRotation, this.mDisplayRotation);
    }

    public void setMultiWindowMode(boolean z) {
        setFlag(16, z);
    }

    public void setRotationWatcherEnabled(boolean z) {
        setFlag(64, z);
    }

    public String toString() {
        boolean z = (this.mFlags & 8) != 0;
        StringBuilder f = a.f("[this=");
        f.append(LoggerUtils.extractObjectNameAndAddress(super.toString()));
        f.append(" mOrientationHandler=");
        f.append(LoggerUtils.extractObjectNameAndAddress(this.mOrientationHandler.toString()));
        f.append(" mDisplayRotation=");
        f.append(this.mDisplayRotation);
        f.append(" mTouchRotation=");
        f.append(this.mTouchRotation);
        f.append(" mRecentsActivityRotation=");
        f.append(this.mRecentsActivityRotation);
        f.append(" isRecentsActivityRotationAllowed=");
        f.append(isRecentsActivityRotationAllowed());
        f.append(" mSystemRotation=");
        f.append(z);
        f.append(" mFlags=");
        f.append(this.mFlags);
        f.append("]");
        return f.toString();
    }

    public void transformEvent(float f, MotionEvent motionEvent, boolean z) {
        Matrix matrix = this.mTmpMatrix;
        if (z) {
            f = -f;
        }
        matrix.setRotate(f);
        motionEvent.transform(this.mTmpMatrix);
    }

    public boolean update(int i, int i2) {
        int inferRecentsActivityRotation = inferRecentsActivityRotation(i2);
        this.mRecentsActivityRotation = inferRecentsActivityRotation;
        this.mDisplayRotation = i2;
        this.mTouchRotation = i;
        this.mPreviousRotation = i;
        PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
        if (inferRecentsActivityRotation == i || (canRecentsActivityRotate() && (this.mFlags & 256) != 0)) {
            this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
            Log.d(TAG, "current RecentsOrientedState: " + this);
        } else {
            int i3 = this.mTouchRotation;
            if (i3 == 1) {
                this.mOrientationHandler = PagedOrientationHandler.LANDSCAPE;
            } else if (i3 == 3) {
                this.mOrientationHandler = PagedOrientationHandler.SEASCAPE;
            } else {
                this.mOrientationHandler = PagedOrientationHandler.PORTRAIT;
            }
        }
        Log.d(TAG, "current RecentsOrientedState: " + this);
        return pagedOrientationHandler != this.mOrientationHandler;
    }
}
