package org.schabi.newpipe.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.view.WindowInsetsCompat;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FocusAwareCoordinator extends CoordinatorLayout {
    public final Rect childFocus;

    public FocusAwareCoordinator(Context context) {
        super(context);
        this.childFocus = new Rect();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        boolean z = false;
        for (int i = 0; i < getChildCount(); i++) {
            if (getChildAt(i).dispatchApplyWindowInsets(windowInsets).isConsumed()) {
                z = true;
            }
        }
        return z ? WindowInsetsCompat.CONSUMED.toWindowInsets() : windowInsets;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        Insets insets = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this).mImpl.getInsets(519);
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.playbackControlRoot);
        if (viewGroup != null) {
            viewGroup.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode()) {
            return;
        }
        int height = view2.getHeight();
        int height2 = getHeight();
        Rect rect = this.childFocus;
        if (height >= height2) {
            view2.getFocusedRect(rect);
            ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect);
        } else {
            view2.getHitRect(rect);
            ((ViewGroup) view).offsetDescendantRectToMyCoords((View) view2.getParent(), rect);
        }
        requestChildRectangleOnScreen(view, rect, false);
    }

    public FocusAwareCoordinator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.childFocus = new Rect();
    }

    public FocusAwareCoordinator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.childFocus = new Rect();
    }
}
