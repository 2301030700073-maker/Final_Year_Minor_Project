package com.android.launcher3.graphics;

import android.animation.ObjectAnimator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.FloatProperty;
import android.view.View;
import b.e.d.a;
import b.l.W;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.Workspace;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WorkspaceAndHotseatScrim extends Scrim {
    public boolean mAnimateScrimOnNextDraw;
    public final Bitmap mBottomMask;
    public final Paint mBottomMaskPaint;
    public boolean mDrawBottomScrim;
    public boolean mDrawTopScrim;
    public final RectF mFinalMaskRect;
    public boolean mHideSysUiScrim;
    public final Rect mHighlightRect;
    public final int mMaskHeight;
    public final BroadcastReceiver mReceiver;
    public float mSysUiAnimMultiplier;
    public float mSysUiProgress;
    public final Drawable mTopScrim;
    public Workspace mWorkspace;
    public static final FloatProperty SYSUI_PROGRESS = new FloatProperty("sysUiProgress") { // from class: com.android.launcher3.graphics.WorkspaceAndHotseatScrim.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((WorkspaceAndHotseatScrim) obj).mSysUiProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            WorkspaceAndHotseatScrim workspaceAndHotseatScrim = (WorkspaceAndHotseatScrim) obj;
            if (f != workspaceAndHotseatScrim.mSysUiProgress) {
                workspaceAndHotseatScrim.mSysUiProgress = f;
                workspaceAndHotseatScrim.reapplySysUiAlpha();
            }
        }
    };
    public static final FloatProperty SYSUI_ANIM_MULTIPLIER = new FloatProperty("sysUiAnimMultiplier") { // from class: com.android.launcher3.graphics.WorkspaceAndHotseatScrim.2
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((WorkspaceAndHotseatScrim) obj).mSysUiAnimMultiplier);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            WorkspaceAndHotseatScrim workspaceAndHotseatScrim = (WorkspaceAndHotseatScrim) obj;
            workspaceAndHotseatScrim.mSysUiAnimMultiplier = f;
            workspaceAndHotseatScrim.reapplySysUiAlpha();
        }
    };

    public WorkspaceAndHotseatScrim(View view) {
        super(view);
        Bitmap bitmap;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.graphics.WorkspaceAndHotseatScrim.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    WorkspaceAndHotseatScrim.this.mAnimateScrimOnNextDraw = true;
                } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                    WorkspaceAndHotseatScrim.this.mAnimateScrimOnNextDraw = false;
                }
            }
        };
        this.mHighlightRect = new Rect();
        this.mFinalMaskRect = new RectF();
        this.mBottomMaskPaint = new Paint(2);
        this.mSysUiProgress = 1.0f;
        this.mAnimateScrimOnNextDraw = false;
        this.mSysUiAnimMultiplier = 1.0f;
        this.mMaskHeight = W.pxFromDp(200.0f, view.getResources().getDisplayMetrics());
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(new int[]{R.attr.workspaceStatusBarScrim});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        this.mTopScrim = drawable;
        if (drawable == null) {
            bitmap = null;
        } else {
            DisplayMetrics displayMetrics = this.mLauncher.getResources().getDisplayMetrics();
            int pxFromDp = W.pxFromDp(2.0f, displayMetrics);
            int pxFromDp2 = W.pxFromDp(500.0f, displayMetrics);
            Bitmap createBitmap = Bitmap.createBitmap(pxFromDp, this.mMaskHeight, Bitmap.Config.ALPHA_8);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint(4);
            float f = pxFromDp2;
            paint.setShader(new LinearGradient(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, f, new int[]{16777215, GraphicsUtils.setColorAlphaBound(-1, 242), -1}, new float[]{RecentsState.NO_OFFSET, 0.8f, 1.0f}, Shader.TileMode.CLAMP));
            canvas.drawRect(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, pxFromDp, f, paint);
            bitmap = createBitmap;
        }
        this.mBottomMask = bitmap;
        this.mHideSysUiScrim = this.mTopScrim == null;
        onExtractedColorsChanged(this.mWallpaperColorInfo);
    }

    public ObjectAnimator createSysuiMultiplierAnim(float... fArr) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, SYSUI_ANIM_MULTIPLIER, fArr);
        ofFloat.setAutoCancel(true);
        return ofFloat;
    }

    public void draw(Canvas canvas) {
        if (this.mScrimAlpha > 0) {
            this.mWorkspace.computeScrollHelper(false);
            CellLayout cellLayout = this.mWorkspace.mDragOverlappingLayout;
            canvas.save();
            if (cellLayout != null) {
                Launcher launcher = this.mLauncher;
                if (cellLayout != launcher.mHotseat) {
                    launcher.mDragLayer.getDescendantRectRelativeToSelf(cellLayout, this.mHighlightRect);
                    canvas.clipRect(this.mHighlightRect, Region.Op.DIFFERENCE);
                }
            }
            canvas.drawColor(GraphicsUtils.setColorAlphaBound(this.mScrimColor, this.mScrimAlpha));
            canvas.restore();
        }
        if (this.mHideSysUiScrim) {
            return;
        }
        if (this.mSysUiProgress <= RecentsState.NO_OFFSET) {
            this.mAnimateScrimOnNextDraw = false;
            return;
        }
        if (this.mAnimateScrimOnNextDraw) {
            this.mSysUiAnimMultiplier = RecentsState.NO_OFFSET;
            reapplySysUiAlphaNoInvalidate();
            ObjectAnimator createSysuiMultiplierAnim = createSysuiMultiplierAnim(1.0f);
            createSysuiMultiplierAnim.setDuration(600L);
            createSysuiMultiplierAnim.setStartDelay(this.mLauncher.getWindow().getTransitionBackgroundFadeDuration());
            createSysuiMultiplierAnim.start();
            this.mAnimateScrimOnNextDraw = false;
        }
        if (this.mDrawTopScrim) {
            this.mTopScrim.draw(canvas);
        }
        if (this.mDrawBottomScrim) {
            canvas.drawBitmap(this.mBottomMask, (Rect) null, this.mFinalMaskRect, this.mBottomMaskPaint);
        }
    }

    @Override // com.android.launcher3.graphics.Scrim, com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        this.mBottomMaskPaint.setColor(a.f(1426063360, wallpaperColorInfo.mExtractionInfo.mainColor));
        reapplySysUiAlpha();
        super.onExtractedColorsChanged(wallpaperColorInfo);
    }

    @Override // com.android.launcher3.graphics.Scrim, android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.mWallpaperColorInfo.mListeners.add(this);
        onExtractedColorsChanged(this.mWallpaperColorInfo);
        if (FeatureFlags.KEYGUARD_ANIMATION.get() || this.mTopScrim == null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.mRoot.getContext().registerReceiver(this.mReceiver, intentFilter);
    }

    @Override // com.android.launcher3.graphics.Scrim, android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.mWallpaperColorInfo.mListeners.remove(this);
        if (FeatureFlags.KEYGUARD_ANIMATION.get() || this.mTopScrim == null) {
            return;
        }
        this.mRoot.getContext().unregisterReceiver(this.mReceiver);
    }

    public final void reapplySysUiAlpha() {
        reapplySysUiAlphaNoInvalidate();
        if (this.mHideSysUiScrim) {
            return;
        }
        this.mRoot.invalidate();
    }

    public final void reapplySysUiAlphaNoInvalidate() {
        float f = this.mSysUiProgress * this.mSysUiAnimMultiplier;
        this.mBottomMaskPaint.setAlpha(Math.round(100.0f * f));
        Drawable drawable = this.mTopScrim;
        if (drawable != null) {
            drawable.setAlpha(Math.round(f * 255.0f));
        }
    }
}
