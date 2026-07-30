package com.android.quickstep.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;
import b.l.W;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.config.FeatureFlags;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class MotionPauseDetector {
    public static final long FORCE_PAUSE_TIMEOUT = 300;
    public static final long HARDER_TRIGGER_TIMEOUT = 400;
    public static final float RAPID_DECELERATION_FACTOR = 0.6f;
    public final Context mContext;
    public boolean mDisallowPause;
    public final Alarm mForcePauseTimeout;
    public boolean mHasEverBeenPaused;
    public boolean mIsPaused;
    public final boolean mMakePauseHarderToTrigger;
    public OnMotionPauseListener mOnMotionPauseListener;
    public Float mPreviousVelocity;
    public long mSlowStartTime;
    public final float mSpeedFast;
    public final float mSpeedSlow;
    public final float mSpeedSomewhatFast;
    public final float mSpeedVerySlow;
    public final VelocityProvider mVelocityProvider;

    public class LSqVelocityProvider implements VelocityProvider {
        public static final int HISTORY_SIZE = 20;
        public static final long HORIZON_MS = 100;
        public final int mAxis;
        public final float[] mHistoricTimes = new float[20];
        public final float[] mHistoricPos = new float[20];
        public int mHistoryCount = 0;
        public int mHistoryStart = 0;

        public LSqVelocityProvider(int i) {
            this.mAxis = i;
        }

        private void addPositionAndTime(float f, float f2) {
            float[] fArr = this.mHistoricTimes;
            int i = this.mHistoryStart;
            fArr[i] = f;
            this.mHistoricPos[i] = f2;
            int i2 = i + 1;
            this.mHistoryStart = i2;
            if (i2 >= 20) {
                this.mHistoryStart = 0;
            }
            this.mHistoryCount = Math.min(20, this.mHistoryCount + 1);
        }

        private Float solveUnweightedLeastSquaresDeg2(int i) {
            float f = this.mHistoricTimes[i];
            int i2 = 0;
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            float f5 = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            for (int i3 = 0; i3 < this.mHistoryCount; i3++) {
                int i4 = i - i3;
                if (i4 < 0) {
                    i4 += 20;
                }
                float f9 = f - this.mHistoricTimes[i4];
                if (f9 > 100.0f) {
                    break;
                }
                i2++;
                float f10 = -f9;
                float f11 = this.mHistoricPos[i4];
                float f12 = f10 * f10;
                float f13 = f12 * f10;
                f2 += f10;
                f3 += f12;
                f4 += f10 * f11;
                f5 += f12 * f11;
                f6 += f11;
                f7 += f13;
                f8 += f13 * f10;
            }
            if (i2 < 3) {
                if (i2 == 2) {
                    int i5 = i - 1;
                    if (i5 < 0) {
                        i5 += 20;
                    }
                    float f14 = f - this.mHistoricTimes[i5];
                    if (f14 != RecentsState.NO_OFFSET) {
                        return Float.valueOf((f - this.mHistoricPos[i5]) / f14);
                    }
                }
                return null;
            }
            float f15 = i2;
            float f16 = f4 - ((f2 * f6) / f15);
            float f17 = f7 - ((f2 * f3) / f15);
            float f18 = f5 - ((f6 * f3) / f15);
            float f19 = f8 - ((f3 * f3) / f15);
            float f20 = ((f3 - ((f2 * f2) / f15)) * f19) - (f17 * f17);
            if (f20 == RecentsState.NO_OFFSET) {
                return null;
            }
            return Float.valueOf(((f16 * f19) - (f18 * f17)) / f20);
        }

        @Override // com.android.quickstep.util.MotionPauseDetector.VelocityProvider
        public Float addMotionEvent(MotionEvent motionEvent, int i) {
            int historySize = motionEvent.getHistorySize();
            for (int i2 = 0; i2 < historySize; i2++) {
                addPositionAndTime(motionEvent.getHistoricalEventTime(i2), motionEvent.getHistoricalAxisValue(this.mAxis, i, i2));
            }
            int i3 = this.mHistoryStart;
            addPositionAndTime(motionEvent.getEventTime(), motionEvent.getAxisValue(this.mAxis, i));
            return solveUnweightedLeastSquaresDeg2(i3);
        }

        @Override // com.android.quickstep.util.MotionPauseDetector.VelocityProvider
        public void clear() {
            this.mHistoryStart = 0;
            this.mHistoryCount = 0;
        }
    }

    public class LinearVelocityProvider implements VelocityProvider {
        public final int mAxis;
        public Long mPreviousTime = null;
        public Float mPreviousPosition = null;

        public LinearVelocityProvider(int i) {
            this.mAxis = i;
        }

        @Override // com.android.quickstep.util.MotionPauseDetector.VelocityProvider
        public Float addMotionEvent(MotionEvent motionEvent, int i) {
            Float f;
            long eventTime = motionEvent.getEventTime();
            float axisValue = motionEvent.getAxisValue(this.mAxis, i);
            if (this.mPreviousTime == null || this.mPreviousPosition == null) {
                f = null;
            } else {
                f = Float.valueOf((axisValue - this.mPreviousPosition.floatValue()) / Math.max(1L, eventTime - r8.longValue()));
            }
            this.mPreviousTime = Long.valueOf(eventTime);
            this.mPreviousPosition = Float.valueOf(axisValue);
            return f;
        }

        @Override // com.android.quickstep.util.MotionPauseDetector.VelocityProvider
        public void clear() {
            this.mPreviousTime = null;
            this.mPreviousPosition = null;
        }
    }

    public interface OnMotionPauseListener {
        void onMotionPauseChanged(boolean z);
    }

    public interface VelocityProvider {
        Float addMotionEvent(MotionEvent motionEvent, int i);

        void clear();
    }

    public MotionPauseDetector(Context context) {
        this(context, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0073, code lost:
    
        if ((r8 - r5.mSlowStartTime) >= 400) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r1 >= r6) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        r3 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void checkMotionPaused(float r6, float r7, long r8) {
        /*
            r5 = this;
            float r0 = java.lang.Math.abs(r6)
            float r1 = java.lang.Math.abs(r7)
            boolean r2 = r5.mIsPaused
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L1d
            float r6 = r5.mSpeedFast
            int r7 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r7 < 0) goto L1a
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 >= 0) goto L19
            goto L1a
        L19:
            r3 = r4
        L1a:
            r4 = r3
            goto L7a
        L1d:
            r2 = 0
            int r6 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r6 >= 0) goto L24
            r6 = r3
            goto L25
        L24:
            r6 = r4
        L25:
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 >= 0) goto L2b
            r7 = r3
            goto L2c
        L2b:
            r7 = r4
        L2c:
            if (r6 == r7) goto L2f
            goto L7a
        L2f:
            float r6 = r5.mSpeedVerySlow
            int r7 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r7 >= 0) goto L3b
            int r6 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r6 >= 0) goto L3b
            r6 = r3
            goto L3c
        L3b:
            r6 = r4
        L3c:
            if (r6 != 0) goto L58
            boolean r7 = r5.mHasEverBeenPaused
            if (r7 != 0) goto L58
            r6 = 1058642330(0x3f19999a, float:0.6)
            float r1 = r1 * r6
            int r6 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r6 >= 0) goto L4c
            r6 = r3
            goto L4d
        L4c:
            r6 = r4
        L4d:
            if (r6 == 0) goto L57
            float r6 = r5.mSpeedSomewhatFast
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 >= 0) goto L57
            r6 = r3
            goto L58
        L57:
            r6 = r4
        L58:
            boolean r7 = r5.mMakePauseHarderToTrigger
            if (r7 == 0) goto L79
            float r6 = r5.mSpeedSlow
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            r0 = 0
            if (r6 >= 0) goto L76
            long r6 = r5.mSlowStartTime
            int r6 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r6 != 0) goto L6c
            r5.mSlowStartTime = r8
        L6c:
            long r6 = r5.mSlowStartTime
            long r8 = r8 - r6
            r6 = 400(0x190, double:1.976E-321)
            int r6 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r6 < 0) goto L19
            goto L1a
        L76:
            r5.mSlowStartTime = r0
            goto L7a
        L79:
            r4 = r6
        L7a:
            r5.updatePaused(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.util.MotionPauseDetector.checkMotionPaused(float, float, long):void");
    }

    private void updatePaused(boolean z) {
        if (this.mDisallowPause) {
            z = false;
        }
        if (this.mIsPaused != z) {
            this.mIsPaused = z;
            if (z) {
                AccessibilityManager accessibilityManagerForTest = W.getAccessibilityManagerForTest(this.mContext);
                if (accessibilityManagerForTest != null) {
                    W.sendEventToTest(accessibilityManagerForTest, "TAPL_PAUSE_DETECTED", null);
                }
                this.mHasEverBeenPaused = true;
            }
            OnMotionPauseListener onMotionPauseListener = this.mOnMotionPauseListener;
            if (onMotionPauseListener != null) {
                onMotionPauseListener.onMotionPauseChanged(this.mIsPaused);
            }
        }
    }

    public /* synthetic */ void a(Alarm alarm) {
        updatePaused(true);
    }

    public void addPosition(MotionEvent motionEvent) {
        addPosition(motionEvent, 0);
    }

    public void clear() {
        this.mVelocityProvider.clear();
        this.mPreviousVelocity = null;
        setOnMotionPauseListener(null);
        this.mHasEverBeenPaused = false;
        this.mIsPaused = false;
        this.mSlowStartTime = 0L;
        this.mForcePauseTimeout.mAlarmPending = false;
    }

    public boolean isPaused() {
        return this.mIsPaused;
    }

    public void setDisallowPause(boolean z) {
        this.mDisallowPause = z;
        updatePaused(this.mIsPaused);
    }

    public void setOnMotionPauseListener(OnMotionPauseListener onMotionPauseListener) {
        this.mOnMotionPauseListener = onMotionPauseListener;
    }

    public MotionPauseDetector(Context context, boolean z) {
        this(context, z, 1);
    }

    public void addPosition(MotionEvent motionEvent, int i) {
        this.mForcePauseTimeout.setAlarm(this.mMakePauseHarderToTrigger ? 400L : 300L);
        Float addMotionEvent = this.mVelocityProvider.addMotionEvent(motionEvent, i);
        if (addMotionEvent != null && this.mPreviousVelocity != null) {
            checkMotionPaused(addMotionEvent.floatValue(), this.mPreviousVelocity.floatValue(), motionEvent.getEventTime());
        }
        this.mPreviousVelocity = addMotionEvent;
    }

    public MotionPauseDetector(Context context, boolean z, int i) {
        this.mPreviousVelocity = null;
        this.mContext = context;
        Resources resources = context.getResources();
        this.mSpeedVerySlow = resources.getDimension(R.dimen.motion_pause_detector_speed_very_slow);
        this.mSpeedSlow = resources.getDimension(R.dimen.motion_pause_detector_speed_slow);
        this.mSpeedSomewhatFast = resources.getDimension(R.dimen.motion_pause_detector_speed_somewhat_fast);
        this.mSpeedFast = resources.getDimension(R.dimen.motion_pause_detector_speed_fast);
        Alarm alarm = new Alarm();
        this.mForcePauseTimeout = alarm;
        alarm.mAlarmListener = new OnAlarmListener() { // from class: c.a.b.c2.e
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm2) {
                MotionPauseDetector.this.a(alarm2);
            }
        };
        this.mMakePauseHarderToTrigger = z;
        this.mVelocityProvider = FeatureFlags.ENABLE_LSQ_VELOCITY_PROVIDER.get() ? new LSqVelocityProvider(i) : new LinearVelocityProvider(i);
    }
}
