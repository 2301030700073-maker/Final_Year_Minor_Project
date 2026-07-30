package com.android.launcher3.util;

import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.animation.Interpolator;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.Interpolators;

/* loaded from: classes.dex */
public class WallpaperOffsetInterpolator extends BroadcastReceiver {
    public static final int[] sTempInt = new int[2];
    public final Handler mHandler;
    public final boolean mIsRtl;
    public boolean mLockedToDefaultPage;
    public int mNumScreens;
    public boolean mRegistered = false;
    public boolean mWallpaperIsLiveWallpaper;
    public IBinder mWindowToken;
    public final Workspace mWorkspace;

    public class OffsetHandler extends Handler {
        public boolean mAnimating;
        public float mAnimationStartOffset;
        public long mAnimationStartTime;
        public float mCurrentOffset;
        public float mFinalOffset;
        public final Interpolator mInterpolator;
        public float mOffsetX;
        public final WallpaperManager mWM;

        public OffsetHandler(Context context) {
            super(Executors.UI_HELPER_EXECUTOR.getLooper());
            this.mCurrentOffset = 0.5f;
            this.mInterpolator = Interpolators.DEACCEL_1_5;
            this.mWM = WallpaperManager.getInstance(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x007e  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r11) {
            /*
                r10 = this;
                java.lang.Object r0 = r11.obj
                android.os.IBinder r0 = (android.os.IBinder) r0
                if (r0 != 0) goto L7
                return
            L7:
                int r1 = r11.what
                r2 = 0
                r3 = 3
                r4 = 1065353216(0x3f800000, float:1.0)
                r5 = 1
                if (r1 == r5) goto L3e
                r6 = 2
                if (r1 == r6) goto L4a
                if (r1 == r3) goto L53
                r3 = 4
                if (r1 == r3) goto L30
                r11 = 5
                if (r1 == r11) goto L1c
                return
            L1c:
                float r11 = r10.mCurrentOffset
                float r1 = r10.mFinalOffset
                int r11 = java.lang.Float.compare(r11, r1)
                if (r11 == 0) goto L2d
                float r11 = r10.mFinalOffset
                r10.mCurrentOffset = r11
                r10.setOffsetSafely(r0)
            L2d:
                r10.mAnimating = r2
                return
            L30:
                int r11 = r11.arg1
                int r11 = r11 - r5
                float r11 = (float) r11
                float r11 = r4 / r11
                r10.mOffsetX = r11
                android.app.WallpaperManager r10 = r10.mWM
                r10.setWallpaperOffsetSteps(r11, r4)
                return
            L3e:
                r10.mAnimating = r5
                float r1 = r10.mCurrentOffset
                r10.mAnimationStartOffset = r1
                long r6 = r11.getWhen()
                r10.mAnimationStartTime = r6
            L4a:
                int r1 = r11.arg1
                float r1 = (float) r1
                int r11 = r11.arg2
                float r11 = (float) r11
                float r1 = r1 / r11
                r10.mFinalOffset = r1
            L53:
                float r11 = r10.mCurrentOffset
                boolean r1 = r10.mAnimating
                if (r1 == 0) goto L7e
                long r6 = android.os.SystemClock.uptimeMillis()
                long r8 = r10.mAnimationStartTime
                long r6 = r6 - r8
                float r1 = (float) r6
                r8 = 1132068864(0x437a0000, float:250.0)
                float r1 = r1 / r8
                android.view.animation.Interpolator r8 = r10.mInterpolator
                float r1 = r8.getInterpolation(r1)
                float r8 = r10.mAnimationStartOffset
                float r9 = r10.mFinalOffset
                float r1 = c.a.c.a.a.a(r9, r8, r1, r8)
                r10.mCurrentOffset = r1
                r8 = 250(0xfa, double:1.235E-321)
                int r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r1 >= 0) goto L7b
                r2 = r5
            L7b:
                r10.mAnimating = r2
                goto L82
            L7e:
                float r1 = r10.mFinalOffset
                r10.mCurrentOffset = r1
            L82:
                float r1 = r10.mCurrentOffset
                int r11 = java.lang.Float.compare(r1, r11)
                if (r11 == 0) goto L94
                r10.setOffsetSafely(r0)
                android.app.WallpaperManager r11 = r10.mWM
                float r1 = r10.mOffsetX
                r11.setWallpaperOffsetSteps(r1, r4)
            L94:
                boolean r11 = r10.mAnimating
                if (r11 == 0) goto L9f
                android.os.Message r10 = android.os.Message.obtain(r10, r3, r0)
                r10.sendToTarget()
            L9f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.WallpaperOffsetInterpolator.OffsetHandler.handleMessage(android.os.Message):void");
        }

        public final void setOffsetSafely(IBinder iBinder) {
            try {
                this.mWM.setWallpaperOffsets(iBinder, this.mCurrentOffset, 0.5f);
            } catch (IllegalArgumentException e) {
                Log.e("WPOffsetInterpolator", "Error updating wallpaper offset: " + e);
            }
        }
    }

    public WallpaperOffsetInterpolator(Workspace workspace) {
        this.mWorkspace = workspace;
        this.mIsRtl = Utilities.isRtl(workspace.getResources());
        this.mHandler = new OffsetHandler(workspace.getContext());
    }

    public final int getNumScreensExcludingEmpty() {
        int childCount = this.mWorkspace.getChildCount();
        return (childCount < 4 || !this.mWorkspace.hasExtraEmptyScreen()) ? childCount : childCount - 1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.mWallpaperIsLiveWallpaper = WallpaperManager.getInstance(this.mWorkspace.getContext()).getWallpaperInfo() != null;
        updateOffset();
    }

    public void setWindowToken(IBinder iBinder) {
        this.mWindowToken = iBinder;
        if (iBinder == null && this.mRegistered) {
            this.mWorkspace.getContext().unregisterReceiver(this);
            this.mRegistered = false;
        } else {
            if (this.mWindowToken == null || this.mRegistered) {
                return;
            }
            this.mWorkspace.getContext().registerReceiver(this, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
            onReceive(this.mWorkspace.getContext(), null);
            this.mRegistered = true;
        }
    }

    public void syncWithScroll() {
        int[] iArr = sTempInt;
        int numScreensExcludingEmpty = getNumScreensExcludingEmpty();
        wallpaperOffsetForScroll(this.mWorkspace.getScrollX(), numScreensExcludingEmpty, iArr);
        Message obtain = Message.obtain(this.mHandler, 2, iArr[0], iArr[1], this.mWindowToken);
        int i = this.mNumScreens;
        if (numScreensExcludingEmpty != i) {
            if (i > 0) {
                obtain.what = 1;
            }
            this.mNumScreens = numScreensExcludingEmpty;
            updateOffset();
        }
        obtain.sendToTarget();
    }

    public final void updateOffset() {
        Message.obtain(this.mHandler, 4, this.mWallpaperIsLiveWallpaper ? this.mNumScreens : Math.max(4, this.mNumScreens), 0, this.mWindowToken).sendToTarget();
    }

    public final void wallpaperOffsetForScroll(int i, int i2, int[] iArr) {
        int i3;
        int i4;
        iArr[1] = 1;
        if (this.mLockedToDefaultPage || i2 <= 1) {
            iArr[0] = this.mIsRtl ? 1 : 0;
            return;
        }
        int max = this.mWallpaperIsLiveWallpaper ? i2 : Math.max(4, i2);
        if (this.mIsRtl) {
            i4 = (i2 + 0) - 1;
            i3 = 0;
        } else {
            i3 = (i2 + 0) - 1;
            i4 = 0;
        }
        int scrollForPage = this.mWorkspace.getScrollForPage(i4);
        int scrollForPage2 = this.mWorkspace.getScrollForPage(i3) - scrollForPage;
        if (scrollForPage2 <= 0) {
            iArr[0] = 0;
            return;
        }
        int boundToRange = Utilities.boundToRange((i - scrollForPage) - this.mWorkspace.getLayoutTransitionOffsetForPage(0), 0, scrollForPage2);
        iArr[1] = (max - 1) * scrollForPage2;
        iArr[0] = ((i2 - 1) * boundToRange) + (this.mIsRtl ? iArr[1] - ((i2 - 1) * scrollForPage2) : 0);
    }
}
