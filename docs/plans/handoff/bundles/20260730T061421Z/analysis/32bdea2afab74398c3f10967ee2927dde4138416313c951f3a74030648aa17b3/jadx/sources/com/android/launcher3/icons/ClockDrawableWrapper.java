package com.android.launcher3.icons;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.icons.BitmapInfo;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class ClockDrawableWrapper extends AdaptiveIconDrawable implements BitmapInfo.Extender {
    public static final long TICK_MS = TimeUnit.MINUTES.toMillis(1);
    public final AnimationInfo mAnimationInfo;
    public int mTargetSdkVersion;

    public class AnimationInfo {
        public Drawable.ConstantState baseDrawableState;
        public int defaultHour;
        public int defaultMinute;
        public int defaultSecond;
        public int hourLayerIndex;
        public int minuteLayerIndex;
        public int secondLayerIndex;

        public AnimationInfo(AnonymousClass1 anonymousClass1) {
        }

        public boolean applyTime(Calendar calendar, LayerDrawable layerDrawable) {
            boolean z;
            int i;
            int i2;
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i3 = ((12 - this.defaultHour) + calendar.get(10)) % 12;
            int i4 = ((60 - this.defaultMinute) + calendar.get(12)) % 60;
            int i5 = ((60 - this.defaultSecond) + calendar.get(13)) % 60;
            int i6 = this.hourLayerIndex;
            if (i6 != -1) {
                if (layerDrawable.getDrawable(i6).setLevel(calendar.get(12) + (i3 * 60))) {
                    z = true;
                    i = this.minuteLayerIndex;
                    if (i != -1 && layerDrawable.getDrawable(i).setLevel((calendar.get(10) * 60) + i4)) {
                        z = true;
                    }
                    i2 = this.secondLayerIndex;
                    if (i2 == -1 && layerDrawable.getDrawable(i2).setLevel(i5 * 10)) {
                        return true;
                    }
                    return z;
                }
            }
            z = false;
            i = this.minuteLayerIndex;
            if (i != -1) {
                z = true;
            }
            i2 = this.secondLayerIndex;
            if (i2 == -1) {
            }
            return z;
        }
    }

    public class ClockBitmapInfo extends BitmapInfo implements FastBitmapDrawable.Factory {
        public final AnimationInfo animInfo;
        public final Bitmap mFlattenedBackground;
        public final int offset;
        public final float scale;

        public ClockBitmapInfo(Bitmap bitmap, int i, float f, AnimationInfo animationInfo, Bitmap bitmap2) {
            super(bitmap, i);
            this.scale = f;
            this.animInfo = animationInfo;
            this.offset = (int) Math.ceil(bitmap.getWidth() * 0.010416667f);
            this.mFlattenedBackground = bitmap2;
        }

        @Override // com.android.launcher3.FastBitmapDrawable.Factory
        public FastBitmapDrawable newDrawable() {
            return new ClockIconDrawable(this);
        }
    }

    public class ClockIconDrawable extends FastBitmapDrawable implements Runnable {
        public final LayerDrawable mForeground;
        public final AdaptiveIconDrawable mFullDrawable;
        public final ClockBitmapInfo mInfo;
        public final Calendar mTime;

        public ClockIconDrawable(ClockBitmapInfo clockBitmapInfo) {
            super(clockBitmapInfo);
            this.mTime = Calendar.getInstance();
            this.mInfo = clockBitmapInfo;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) clockBitmapInfo.animInfo.baseDrawableState.newDrawable();
            this.mFullDrawable = adaptiveIconDrawable;
            this.mForeground = (LayerDrawable) adaptiveIconDrawable.getForeground();
        }

        @Override // com.android.launcher3.FastBitmapDrawable
        public void drawInternal(Canvas canvas, Rect rect) {
            ClockBitmapInfo clockBitmapInfo = this.mInfo;
            if (clockBitmapInfo == null) {
                canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
                return;
            }
            canvas.drawBitmap(clockBitmapInfo.mFlattenedBackground, (Rect) null, rect, this.mPaint);
            this.mInfo.animInfo.applyTime(this.mTime, this.mForeground);
            float f = this.mInfo.scale;
            canvas.scale(f, f, rect.exactCenterX() + this.mInfo.offset, rect.exactCenterY() + this.mInfo.offset);
            canvas.clipPath(this.mFullDrawable.getIconMask());
            this.mForeground.draw(canvas);
            reschedule();
        }

        @Override // com.android.launcher3.FastBitmapDrawable, android.graphics.drawable.Drawable
        public Drawable.ConstantState getConstantState() {
            return new ClockConstantState(this.mInfo, this.mIsDisabled);
        }

        @Override // android.graphics.drawable.Drawable
        public void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.mFullDrawable.setBounds(rect);
        }

        public final void reschedule() {
            if (isVisible()) {
                unscheduleSelf(this);
                long uptimeMillis = SystemClock.uptimeMillis();
                long j = ClockDrawableWrapper.TICK_MS;
                scheduleSelf(this, (uptimeMillis - (uptimeMillis % j)) + j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mInfo.animInfo.applyTime(this.mTime, this.mForeground)) {
                invalidateSelf();
            } else {
                reschedule();
            }
        }

        @Override // android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            boolean visible = super.setVisible(z, z2);
            if (z) {
                reschedule();
            } else {
                unscheduleSelf(this);
            }
            return visible;
        }

        @Override // com.android.launcher3.FastBitmapDrawable
        public void updateFilter() {
            super.updateFilter();
            this.mFullDrawable.setColorFilter(this.mPaint.getColorFilter());
        }

        public class ClockConstantState extends FastBitmapDrawable.MyConstantState {
            public final ClockBitmapInfo mInfo;

            public ClockConstantState(ClockBitmapInfo clockBitmapInfo, boolean z) {
                super(clockBitmapInfo.icon, clockBitmapInfo.color, z);
                this.mInfo = clockBitmapInfo;
            }

            @Override // com.android.launcher3.FastBitmapDrawable.MyConstantState, android.graphics.drawable.Drawable.ConstantState
            public Drawable newDrawable() {
                ClockIconDrawable clockIconDrawable = new ClockIconDrawable(this.mInfo);
                clockIconDrawable.setIsDisabled(this.mIsDisabled);
                return clockIconDrawable;
            }

            @Override // com.android.launcher3.FastBitmapDrawable.MyConstantState, android.graphics.drawable.Drawable.ConstantState
            public FastBitmapDrawable newDrawable() {
                ClockIconDrawable clockIconDrawable = new ClockIconDrawable(this.mInfo);
                clockIconDrawable.setIsDisabled(this.mIsDisabled);
                return clockIconDrawable;
            }
        }
    }

    public ClockDrawableWrapper(AdaptiveIconDrawable adaptiveIconDrawable) {
        super(adaptiveIconDrawable.getBackground(), adaptiveIconDrawable.getForeground());
        this.mAnimationInfo = new AnimationInfo(null);
    }

    public static ClockDrawableWrapper forPackage(Context context, String str, int i) {
        int i2;
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8320);
            Bundle bundle = applicationInfo.metaData;
            if (bundle == null || (i2 = bundle.getInt("com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND", 0)) == 0) {
                return null;
            }
            Drawable mutate = packageManager.getResourcesForApplication(applicationInfo).getDrawableForDensity(i2, i).mutate();
            if (!(mutate instanceof AdaptiveIconDrawable)) {
                return null;
            }
            ClockDrawableWrapper clockDrawableWrapper = new ClockDrawableWrapper((AdaptiveIconDrawable) mutate);
            clockDrawableWrapper.mTargetSdkVersion = applicationInfo.targetSdkVersion;
            AnimationInfo animationInfo = clockDrawableWrapper.mAnimationInfo;
            animationInfo.baseDrawableState = mutate.getConstantState();
            animationInfo.hourLayerIndex = bundle.getInt("com.android.launcher3.HOUR_LAYER_INDEX", -1);
            animationInfo.minuteLayerIndex = bundle.getInt("com.android.launcher3.MINUTE_LAYER_INDEX", -1);
            animationInfo.secondLayerIndex = bundle.getInt("com.android.launcher3.SECOND_LAYER_INDEX", -1);
            animationInfo.defaultHour = bundle.getInt("com.android.launcher3.DEFAULT_HOUR", 0);
            animationInfo.defaultMinute = bundle.getInt("com.android.launcher3.DEFAULT_MINUTE", 0);
            animationInfo.defaultSecond = bundle.getInt("com.android.launcher3.DEFAULT_SECOND", 0);
            LayerDrawable layerDrawable = (LayerDrawable) clockDrawableWrapper.getForeground();
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            if (animationInfo.hourLayerIndex < 0 || animationInfo.hourLayerIndex >= numberOfLayers) {
                animationInfo.hourLayerIndex = -1;
            }
            if (animationInfo.minuteLayerIndex < 0 || animationInfo.minuteLayerIndex >= numberOfLayers) {
                animationInfo.minuteLayerIndex = -1;
            }
            if (animationInfo.secondLayerIndex >= 0 && animationInfo.secondLayerIndex < numberOfLayers) {
                layerDrawable.setDrawable(animationInfo.secondLayerIndex, null);
                animationInfo.secondLayerIndex = -1;
                return clockDrawableWrapper;
            }
            animationInfo.secondLayerIndex = -1;
            return clockDrawableWrapper;
        } catch (Exception e) {
            Log.d("ClockDrawableWrapper", "Unable to load clock drawable info", e);
            return null;
        }
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public BitmapInfo getExtendedInfo(Bitmap bitmap, int i, BaseIconFactory baseIconFactory) {
        baseIconFactory.mDisableColorExtractor = true;
        float[] fArr = new float[1];
        return new ClockBitmapInfo(bitmap, i, fArr[0], this.mAnimationInfo, baseIconFactory.createBadgedIconBitmap((Drawable) new AdaptiveIconDrawable(getBackground().getConstantState().newDrawable(), null), Process.myUserHandle(), this.mTargetSdkVersion, false, fArr).icon);
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public void prepareToDrawOnUi() {
        this.mAnimationInfo.applyTime(Calendar.getInstance(), (LayerDrawable) getForeground());
    }
}
