package com.android.launcher3;

import android.animation.AnimatorSet;
import android.animation.FloatArrayEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import b.l.W;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class ButtonDropTarget extends TextView implements DropTarget, DragController.DragListener, View.OnClickListener {
    public static final Property TEXT_COLOR = new Property(Integer.TYPE, "textColor") { // from class: com.android.launcher3.ButtonDropTarget.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Integer.valueOf(((ButtonDropTarget) obj).getTextColors().getDefaultColor());
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((ButtonDropTarget) obj).setTextColor(((Integer) obj2).intValue());
        }
    };
    public static final int[] sTempCords = new int[2];
    public boolean mAccessibleDrag;
    public boolean mActive;
    public int mBottomDragPadding;
    public AnimatorSet mCurrentColorAnim;
    public ColorMatrix mCurrentFilter;
    public final int mDragDistanceThreshold;
    public Drawable mDrawable;
    public DropTargetBar mDropTargetBar;
    public ColorMatrix mDstFilter;
    public int mHoverColor;
    public final Launcher mLauncher;
    public ColorStateList mOriginalTextColor;
    public ColorMatrix mSrcFilter;
    public CharSequence mText;
    public boolean mTextVisible;
    public PopupWindow mToolTip;
    public int mToolTipLocation;

    public ButtonDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void hideTooltip() {
        PopupWindow popupWindow = this.mToolTip;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.mToolTip = null;
        }
    }

    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.mDrawable.setColorFilter(new ColorMatrixColorFilter(this.mCurrentFilter));
        invalidate();
    }

    @Override // com.android.launcher3.DropTarget
    public final boolean acceptDrop(DropTarget.DragObject dragObject) {
        return supportsDrop(dragObject.dragInfo);
    }

    public final void animateTextColor(int i) {
        AnimatorSet animatorSet = this.mCurrentColorAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mCurrentColorAnim = animatorSet2;
        animatorSet2.setDuration(120L);
        if (this.mSrcFilter == null) {
            this.mSrcFilter = new ColorMatrix();
            this.mDstFilter = new ColorMatrix();
            this.mCurrentFilter = new ColorMatrix();
        }
        int defaultColor = this.mOriginalTextColor.getDefaultColor();
        W.setColorChangeOnMatrix(defaultColor, getTextColors().getDefaultColor(), this.mSrcFilter);
        W.setColorChangeOnMatrix(defaultColor, i, this.mDstFilter);
        ValueAnimator ofObject = ValueAnimator.ofObject(new FloatArrayEvaluator(this.mCurrentFilter.getArray()), this.mSrcFilter.getArray(), this.mDstFilter.getArray());
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ButtonDropTarget.this.a(valueAnimator);
            }
        });
        this.mCurrentColorAnim.play(ofObject);
        this.mCurrentColorAnim.play(ObjectAnimator.ofArgb(this, (Property<ButtonDropTarget, Integer>) TEXT_COLOR, i));
        this.mCurrentColorAnim.start();
    }

    public /* synthetic */ void b(DropTarget.DragObject dragObject) {
        completeDrop(dragObject);
        this.mDropTargetBar.onDragEnd();
        this.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
    }

    public abstract void completeDrop(DropTarget.DragObject dragObject);

    public abstract int getAccessibilityAction();

    public abstract LauncherLogProto$Target getDropTargetForLogging();

    @Override // com.android.launcher3.DropTarget
    public void getHitRectRelativeToDragLayer(Rect rect) {
        super.getHitRect(rect);
        rect.bottom += this.mBottomDragPadding;
        int[] iArr = sTempCords;
        iArr[1] = 0;
        iArr[0] = 0;
        this.mLauncher.mDragLayer.getDescendantCoordRelativeToSelf((View) this, iArr);
        int[] iArr2 = sTempCords;
        rect.offsetTo(iArr2[0], iArr2[1]);
    }

    public Rect getIconRect(DropTarget.DragObject dragObject) {
        int paddingLeft;
        int i;
        int measuredWidth = dragObject.dragView.getMeasuredWidth();
        int measuredHeight = dragObject.dragView.getMeasuredHeight();
        int intrinsicWidth = this.mDrawable.getIntrinsicWidth();
        int intrinsicHeight = this.mDrawable.getIntrinsicHeight();
        DragLayer dragLayer = this.mLauncher.mDragLayer;
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(this, rect);
        if (Utilities.isRtl(getResources())) {
            i = rect.right - getPaddingRight();
            paddingLeft = i - intrinsicWidth;
        } else {
            paddingLeft = getPaddingLeft() + rect.left;
            i = paddingLeft + intrinsicWidth;
        }
        int measuredHeight2 = ((getMeasuredHeight() - intrinsicHeight) / 2) + rect.top;
        rect.set(paddingLeft, measuredHeight2, i, measuredHeight2 + intrinsicHeight);
        rect.offset((-(measuredWidth - intrinsicWidth)) / 2, (-(measuredHeight - intrinsicHeight)) / 2);
        return rect;
    }

    @Override // com.android.launcher3.DropTarget
    public boolean isDropEnabled() {
        return this.mActive && (this.mAccessibleDrag || ((float) this.mLauncher.mDragController.mDistanceSinceScroll) >= ((float) this.mDragDistanceThreshold));
    }

    public abstract void onAccessibilityDrop(View view, ItemInfo itemInfo);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.mLauncher.mAccessibilityDelegate.handleAccessibleDrop(this, null, null);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mActive = false;
        setOnClickListener(null);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragEnter(DropTarget.DragObject dragObject) {
        int i;
        if (!this.mAccessibleDrag && !this.mTextVisible) {
            hideTooltip();
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.drop_target_tool_tip, (ViewGroup) null);
            textView.setText(this.mText);
            this.mToolTip = new PopupWindow(textView, -2, -2);
            int i2 = 0;
            if (this.mToolTipLocation != 0) {
                i = -getMeasuredHeight();
                textView.measure(0, 0);
                i2 = this.mToolTipLocation == 1 ? (-getMeasuredWidth()) - (textView.getMeasuredWidth() / 2) : (getMeasuredWidth() / 2) + (textView.getMeasuredWidth() / 2);
            } else {
                i = 0;
            }
            this.mToolTip.showAsDropDown(this, i2, i);
        }
        dragObject.dragView.setColor(this.mHoverColor);
        animateTextColor(this.mHoverColor);
        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
        if (dragViewStateAnnouncer != null) {
            dragViewStateAnnouncer.mTargetView.removeCallbacks(dragViewStateAnnouncer);
        }
        sendAccessibilityEvent(4);
    }

    @Override // com.android.launcher3.DropTarget
    public final void onDragExit(DropTarget.DragObject dragObject) {
        hideTooltip();
        if (dragObject.dragComplete) {
            dragObject.dragView.setColor(this.mHoverColor);
        } else {
            dragObject.dragView.setColor(0);
            animateTextColor(this.mOriginalTextColor.getDefaultColor());
        }
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.mActive = supportsDrop(dragObject.dragInfo);
        this.mDrawable.setColorFilter(null);
        AnimatorSet animatorSet = this.mCurrentColorAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mCurrentColorAnim = null;
        }
        setTextColor(this.mOriginalTextColor);
        setVisibility(this.mActive ? 0 : 8);
        boolean z = dragOptions.isAccessibleDrag;
        this.mAccessibleDrag = z;
        setOnClickListener(z ? this : null);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDrop(final DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragOptions.isFlingToDelete) {
            return;
        }
        DragLayer dragLayer = this.mLauncher.mDragLayer;
        Rect rect = new Rect();
        dragLayer.getViewRectRelativeToSelf(dragObject.dragView, rect);
        this.mDropTargetBar.mDeferOnDragEnd = true;
        dragLayer.animateView(dragObject.dragView, rect, getIconRect(dragObject), r6.width() / rect.width(), 1.0f, 1.0f, 0.1f, 0.1f, 285, Interpolators.DEACCEL_2, Interpolators.LINEAR, new Runnable() { // from class: c.a.a.k
            @Override // java.lang.Runnable
            public final void run() {
                ButtonDropTarget.this.b(dragObject);
            }
        }, 0, null);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mText = getText();
        this.mOriginalTextColor = getTextColors();
        setContentDescription(this.mText);
    }

    @Override // com.android.launcher3.DropTarget
    public void prepareAccessibilityDrop() {
    }

    public void setDrawable(int i) {
        if (this.mTextVisible) {
            setCompoundDrawablesRelativeWithIntrinsicBounds(i, 0, 0, 0);
            this.mDrawable = getCompoundDrawablesRelative()[0];
        } else {
            setCompoundDrawablesRelativeWithIntrinsicBounds(0, i, 0, 0);
            this.mDrawable = getCompoundDrawablesRelative()[1];
        }
    }

    public void setTextVisible(boolean z) {
        String str = z ? this.mText : "";
        if (this.mTextVisible == z && TextUtils.equals(str, getText())) {
            return;
        }
        this.mTextVisible = z;
        setText(str);
        if (this.mTextVisible) {
            setCompoundDrawablesRelativeWithIntrinsicBounds(this.mDrawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, this.mDrawable, (Drawable) null, (Drawable) null);
        }
    }

    public void setToolTipLocation(int i) {
        this.mToolTipLocation = i;
        hideTooltip();
    }

    public abstract boolean supportsAccessibilityDrop(ItemInfo itemInfo, View view);

    public abstract boolean supportsDrop(ItemInfo itemInfo);

    public void updateText(int i) {
        setText(i);
        CharSequence text = getText();
        this.mText = text;
        setContentDescription(text);
    }

    public ButtonDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHoverColor = 0;
        this.mTextVisible = true;
        this.mLauncher = Launcher.getLauncher(context);
        Resources resources = getResources();
        this.mBottomDragPadding = resources.getDimensionPixelSize(R.dimen.drop_target_drag_padding);
        this.mDragDistanceThreshold = resources.getDimensionPixelSize(R.dimen.drag_distanceThreshold);
    }
}
