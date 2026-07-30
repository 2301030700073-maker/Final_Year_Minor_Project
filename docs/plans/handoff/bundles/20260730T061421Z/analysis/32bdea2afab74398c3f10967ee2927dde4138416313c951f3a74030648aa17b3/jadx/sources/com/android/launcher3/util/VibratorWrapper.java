package com.android.launcher3.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.VibratorWrapper;
import java.util.Objects;

@TargetApi(29)
/* loaded from: classes.dex */
public class VibratorWrapper {
    public static final VibrationEffect EFFECT_CLICK;
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.a1.x
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new VibratorWrapper(context);
        }
    });
    public static final VibrationEffect OVERVIEW_HAPTIC;
    public final boolean mHasVibrator;
    public boolean mIsHapticFeedbackEnabled;
    public final Vibrator mVibrator;

    static {
        VibrationEffect createPredefined = VibrationEffect.createPredefined(0);
        EFFECT_CLICK = createPredefined;
        OVERVIEW_HAPTIC = createPredefined;
    }

    public VibratorWrapper(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService(Vibrator.class);
        this.mVibrator = vibrator;
        boolean hasVibrator = vibrator.hasVibrator();
        this.mHasVibrator = hasVibrator;
        if (!hasVibrator) {
            this.mIsHapticFeedbackEnabled = false;
            return;
        }
        final ContentResolver contentResolver = context.getContentResolver();
        this.mIsHapticFeedbackEnabled = Settings.System.getInt(contentResolver, "haptic_feedback_enabled", 0) == 1;
        contentResolver.registerContentObserver(Settings.System.getUriFor("haptic_feedback_enabled"), false, new ContentObserver(Executors.MAIN_EXECUTOR.mHandler) { // from class: com.android.launcher3.util.VibratorWrapper.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z) {
                VibratorWrapper vibratorWrapper = VibratorWrapper.this;
                ContentResolver contentResolver2 = contentResolver;
                Objects.requireNonNull(vibratorWrapper);
                vibratorWrapper.mIsHapticFeedbackEnabled = Settings.System.getInt(contentResolver2, "haptic_feedback_enabled", 0) == 1;
            }
        });
    }

    public void vibrate(final VibrationEffect vibrationEffect) {
        if (this.mHasVibrator && this.mIsHapticFeedbackEnabled) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: c.a.a.a1.u
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorWrapper vibratorWrapper = VibratorWrapper.this;
                    vibratorWrapper.mVibrator.vibrate(vibrationEffect);
                }
            });
        }
    }
}
