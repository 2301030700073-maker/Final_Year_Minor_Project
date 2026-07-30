package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.Reorderable;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class NavigableAppWidgetHostView extends AppWidgetHostView implements DraggableView, Reorderable {

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mChildrenFocused;
    public float mScaleForReorderBounce;
    public float mScaleToFit;
    public final PointF mTranslationForCentering;
    public final PointF mTranslationForReorderBounce;
    public final PointF mTranslationForReorderPreview;

    public NavigableAppWidgetHostView(Context context) {
        super(context);
        this.mScaleToFit = 1.0f;
        this.mTranslationForCentering = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mTranslationForReorderBounce = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mTranslationForReorderPreview = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mScaleForReorderBounce = 1.0f;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void clearChildFocus(View view) {
        super.clearChildFocus(view);
        setSelected(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.mChildrenFocused || keyEvent.getKeyCode() != 111 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        this.mChildrenFocused = false;
        requestFocus();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return this.mChildrenFocused;
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        return this.mChildrenFocused ? 131072 : 393216;
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderBounceOffset(PointF pointF) {
        pointF.set(this.mTranslationForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderPreviewOffset(PointF pointF) {
        pointF.set(this.mTranslationForReorderPreview);
    }

    @Override // com.android.launcher3.Reorderable
    public View getView() {
        return this;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public int getViewType() {
        return 1;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getWorkspaceVisualDragBounds(Rect rect) {
        rect.set(0, 0, (int) (getMeasuredWidth() * this.mScaleToFit), (int) (getMeasuredHeight() * this.mScaleToFit));
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            this.mChildrenFocused = false;
            setSelected(false);
        }
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.mChildrenFocused || i != 66) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (keyEvent.isTracking() && !this.mChildrenFocused && i == 66) {
            this.mChildrenFocused = true;
            ArrayList focusables = getFocusables(2);
            focusables.remove(this);
            int size = focusables.size();
            if (size != 0) {
                if (size != 1 || !shouldAllowDirectClick()) {
                    ((View) focusables.get(0)).requestFocus();
                    return true;
                }
                ((View) focusables.get(0)).performClick();
                this.mChildrenFocused = false;
                return true;
            }
            this.mChildrenFocused = false;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        setSelected(this.mChildrenFocused && view2 != null);
        if (view2 != null) {
            view2.setFocusableInTouchMode(false);
        }
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceOffset(float f, float f2) {
        this.mTranslationForReorderBounce.set(f, f2);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceScale(float f) {
        this.mScaleForReorderBounce = f;
        super.setScaleX(this.mScaleToFit * f);
        super.setScaleY(this.mScaleToFit * this.mScaleForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderPreviewOffset(float f, float f2) {
        this.mTranslationForReorderPreview.set(f, f2);
        updateTranslation();
    }

    public void setScaleToFit(float f) {
        this.mScaleToFit = f;
        super.setScaleX(f * this.mScaleForReorderBounce);
        super.setScaleY(this.mScaleToFit * this.mScaleForReorderBounce);
    }

    public abstract boolean shouldAllowDirectClick();

    public final void updateTranslation() {
        super.setTranslationX(this.mTranslationForReorderBounce.x + this.mTranslationForReorderPreview.x + this.mTranslationForCentering.x);
        super.setTranslationY(this.mTranslationForReorderBounce.y + this.mTranslationForReorderPreview.y + this.mTranslationForCentering.y);
    }
}
