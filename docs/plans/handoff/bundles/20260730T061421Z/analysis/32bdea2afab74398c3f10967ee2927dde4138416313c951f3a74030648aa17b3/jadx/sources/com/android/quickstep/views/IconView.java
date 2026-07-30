package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.FastBitmapDrawable;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class IconView extends View {
    public Drawable mDrawable;
    public ArrayList mScaleListeners;

    public interface OnScaleUpdateListener {
        void onScaleUpdate(float f);
    }

    public IconView(Context context) {
        super(context);
    }

    public void addUpdateScaleListener(OnScaleUpdateListener onScaleUpdateListener) {
        if (this.mScaleListeners == null) {
            this.mScaleListeners = new ArrayList();
        }
        this.mScaleListeners.add(onScaleUpdateListener);
        Drawable drawable = this.mDrawable;
        if (drawable instanceof FastBitmapDrawable) {
            onScaleUpdateListener.onScaleUpdate(((FastBitmapDrawable) drawable).mScale);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mDrawable;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        ArrayList arrayList;
        super.invalidateDrawable(drawable);
        if (!(drawable instanceof FastBitmapDrawable) || (arrayList = this.mScaleListeners) == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((OnScaleUpdateListener) it.next()).onScaleUpdate(((FastBitmapDrawable) drawable).mScale);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void removeUpdateScaleListener(OnScaleUpdateListener onScaleUpdateListener) {
        ArrayList arrayList = this.mScaleListeners;
        if (arrayList != null) {
            arrayList.remove(onScaleUpdateListener);
        }
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        if (f > RecentsState.NO_OFFSET) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    public void setDrawable(Drawable drawable) {
        Drawable drawable2 = this.mDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            this.mDrawable.setBounds(0, 0, getWidth(), getHeight());
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mDrawable;
    }

    public IconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public IconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
