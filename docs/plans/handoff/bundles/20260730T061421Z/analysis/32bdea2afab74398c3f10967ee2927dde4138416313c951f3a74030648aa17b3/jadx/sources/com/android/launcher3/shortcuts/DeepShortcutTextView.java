package com.android.launcher3.shortcuts;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DeepShortcutTextView extends BubbleTextView {
    public final Rect mDragHandleBounds;
    public final int mDragHandleWidth;
    public Toast mInstructionToast;
    public final Rect mLoadingStateBounds;
    public Drawable mLoadingStatePlaceholder;
    public boolean mShowInstructionToast;
    public boolean mShowLoadingState;

    public DeepShortcutTextView(Context context) {
        this(context, null, 0);
    }

    @Override // com.android.launcher3.BubbleTextView
    public void applyCompoundDrawables(Drawable drawable) {
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mShowLoadingState) {
            this.mLoadingStatePlaceholder.draw(canvas);
        } else {
            super.onDraw(canvas);
        }
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mDragHandleBounds.set(0, 0, this.mDragHandleWidth, getMeasuredHeight());
        if (!Utilities.isRtl(getResources())) {
            this.mDragHandleBounds.offset(getMeasuredWidth() - this.mDragHandleBounds.width(), 0);
        }
        setLoadingBounds();
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mShowInstructionToast = this.mDragHandleBounds.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        if (!this.mShowInstructionToast) {
            return super.performClick();
        }
        Toast toast = this.mInstructionToast;
        if (toast != null) {
            toast.cancel();
        }
        Toast makeText = Toast.makeText(getContext(), Utilities.wrapForTts(getContext().getText(R.string.long_press_shortcut_to_add), getContext().getString(R.string.long_accessible_way_to_add_shortcut)), 0);
        this.mInstructionToast = makeText;
        makeText.show();
        return true;
    }

    public final void setLoadingBounds() {
        if (this.mLoadingStatePlaceholder == null) {
            return;
        }
        this.mLoadingStateBounds.set(0, 0, (getMeasuredWidth() - this.mDragHandleWidth) - getPaddingStart(), this.mLoadingStatePlaceholder.getIntrinsicHeight());
        this.mLoadingStateBounds.offset(Utilities.isRtl(getResources()) ? this.mDragHandleWidth : getPaddingStart(), (int) ((getMeasuredHeight() - this.mLoadingStatePlaceholder.getIntrinsicHeight()) / 2.0f));
        this.mLoadingStatePlaceholder.setBounds(this.mLoadingStateBounds);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        showLoadingState(false);
    }

    public final void showLoadingState(boolean z) {
        if (z == this.mShowLoadingState) {
            return;
        }
        this.mShowLoadingState = z;
        if (z) {
            this.mLoadingStatePlaceholder = getContext().getDrawable(R.drawable.deep_shortcuts_text_placeholder);
            setLoadingBounds();
        } else {
            this.mLoadingStatePlaceholder = null;
        }
        invalidate();
    }

    public DeepShortcutTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeepShortcutTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDragHandleBounds = new Rect();
        this.mShowInstructionToast = false;
        this.mLoadingStateBounds = new Rect();
        Resources resources = getResources();
        this.mDragHandleWidth = (resources.getDimensionPixelSize(R.dimen.deep_shortcut_drawable_padding) / 2) + resources.getDimensionPixelSize(R.dimen.deep_shortcut_drag_handle_size) + resources.getDimensionPixelSize(R.dimen.popup_padding_end);
        showLoadingState(true);
    }
}
