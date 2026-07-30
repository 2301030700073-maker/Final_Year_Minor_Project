package com.android.launcher3.views;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import b.h.a.C;
import b.h.a.D;
import b.h.a.E;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;

@TargetApi(29)
/* loaded from: classes.dex */
public class ClipIconView extends View implements ClipPathView {
    public Drawable mBackground;
    public final int mBlurSizeOutline;
    public Path mClipPath;
    public final Rect mEndRevealRect;
    public final D mFgSpringX;
    public final D mFgSpringY;
    public float mFgTransX;
    public float mFgTransY;
    public final Rect mFinalDrawableBounds;
    public Drawable mForeground;
    public boolean mIsAdaptiveIcon;
    public final boolean mIsRtl;
    public final Launcher mLauncher;
    public final Rect mOutline;
    public ValueAnimator mRevealAnimator;
    public final Rect mStartRevealRect;
    public float mTaskCornerRadius;
    public static final Rect sTmpRect = new Rect();
    public static final C mFgTransYProperty = new C("ClipIconViewFgTransY") { // from class: com.android.launcher3.views.ClipIconView.1
        @Override // b.h.a.C
        public float getValue(Object obj) {
            return ((ClipIconView) obj).mFgTransY;
        }

        @Override // b.h.a.C
        public void setValue(Object obj, float f) {
            ClipIconView clipIconView = (ClipIconView) obj;
            clipIconView.mFgTransY = f;
            clipIconView.invalidate();
        }
    };
    public static final C mFgTransXProperty = new C("ClipIconViewFgTransX") { // from class: com.android.launcher3.views.ClipIconView.2
        @Override // b.h.a.C
        public float getValue(Object obj) {
            return ((ClipIconView) obj).mFgTransX;
        }

        @Override // b.h.a.C
        public void setValue(Object obj, float f) {
            ClipIconView clipIconView = (ClipIconView) obj;
            clipIconView.mFgTransX = f;
            clipIconView.invalidate();
        }
    };

    public ClipIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mIsAdaptiveIcon = false;
        this.mStartRevealRect = new Rect();
        this.mEndRevealRect = new Rect();
        this.mOutline = new Rect();
        this.mFinalDrawableBounds = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mBlurSizeOutline = getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.mIsRtl = Utilities.isRtl(getResources());
        D d2 = new D(this, mFgTransXProperty);
        E e = new E();
        e.a(0.75f);
        e.b(200.0f);
        d2.s = e;
        this.mFgSpringX = d2;
        D d3 = new D(this, mFgTransYProperty);
        E e2 = new E();
        e2.a(0.75f);
        e2.b(200.0f);
        d3.s = e2;
        this.mFgSpringY = d3;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int save = canvas.save();
        Path path = this.mClipPath;
        if (path != null) {
            canvas.clipPath(path);
        }
        super.draw(canvas);
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        if (this.mForeground != null) {
            int save2 = canvas.save();
            canvas.translate(this.mFgTransX, this.mFgTransY);
            this.mForeground.draw(canvas);
            canvas.restoreToCount(save2);
        }
        canvas.restoreToCount(save);
    }

    public final void setBackgroundDrawableBounds(float f, boolean z) {
        sTmpRect.set(this.mFinalDrawableBounds);
        Utilities.scaleRectAboutCenter(sTmpRect, f);
        if (z) {
            Rect rect = sTmpRect;
            rect.offsetTo((int) (this.mFinalDrawableBounds.left * f), rect.top);
        } else {
            Rect rect2 = sTmpRect;
            rect2.offsetTo(rect2.left, (int) (this.mFinalDrawableBounds.top * f));
        }
        this.mBackground.setBounds(sTmpRect);
    }

    @Override // com.android.launcher3.views.ClipPathView
    public void setClipPath(Path path) {
        this.mClipPath = path;
        invalidate();
    }
}
