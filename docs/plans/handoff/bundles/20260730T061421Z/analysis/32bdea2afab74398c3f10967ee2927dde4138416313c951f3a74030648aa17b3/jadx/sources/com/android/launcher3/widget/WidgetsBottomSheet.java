package com.android.launcher3.widget;

import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.util.Pair;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import b.l.W;
import com.android.launcher3.Insettable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.model.WidgetItem;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.List;

/* loaded from: classes.dex */
public class WidgetsBottomSheet extends BaseWidgetSheet implements Insettable {
    public static final IntProperty PADDING_BOTTOM = new IntProperty("paddingBottom") { // from class: com.android.launcher3.widget.WidgetsBottomSheet.1
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((View) obj).getPaddingBottom());
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            View view = (View) obj;
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i);
        }
    };
    public Rect mInsets;
    public ItemInfo mOriginalItemInfo;

    public WidgetsBottomSheet(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void addHintCloseAnim(float f, Interpolator interpolator, PendingAnimation pendingAnimation) {
        pendingAnimation.setInt(this, PADDING_BOTTOM, (int) (f + this.mInsets.bottom), interpolator);
    }

    public WidgetCell addItemCell(ViewGroup viewGroup) {
        WidgetCell widgetCell = (WidgetCell) LayoutInflater.from(getContext()).inflate(R.layout.widget_cell, viewGroup, false);
        widgetCell.setOnClickListener(this);
        widgetCell.setOnLongClickListener(this);
        widgetCell.mAnimatePreview = false;
        viewGroup.addView(widgetCell);
        return widgetCell;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public Pair getAccessibilityTarget() {
        return Pair.create(findViewById(R.id.title), getContext().getString(this.mIsOpen ? R.string.widgets_list : R.string.widgets_list_closed));
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet
    public int getElementsRowCount() {
        return 1;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        handleClose(z, 200L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 4) != 0;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public void onWidgetsBound() {
        List widgetsForPackageUser = this.mLauncher.mPopupDataProvider.getWidgetsForPackageUser(new PackageUserKey(this.mOriginalItemInfo.getTargetComponent().getPackageName(), this.mOriginalItemInfo.user));
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.widgets);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.widgets_cell_list);
        viewGroup2.removeAllViews();
        for (int i = 0; i < widgetsForPackageUser.size(); i++) {
            WidgetCell addItemCell = addItemCell(viewGroup2);
            addItemCell.applyFromCellItem((WidgetItem) widgetsForPackageUser.get(i), LauncherAppState.getInstance(this.mLauncher).mWidgetCache);
            addItemCell.ensurePreview();
            addItemCell.setVisibility(0);
            if (i < widgetsForPackageUser.size() - 1) {
                LayoutInflater.from(getContext()).inflate(R.layout.widget_list_divider, viewGroup2, true);
            }
        }
        if (widgetsForPackageUser.size() == 1) {
            ((LinearLayout.LayoutParams) viewGroup.getLayoutParams()).gravity = 1;
            return;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.widget_list_divider, viewGroup, false);
        inflate.getLayoutParams().width = W.pxFromDp(16.0f, getResources().getDisplayMetrics());
        viewGroup2.addView(inflate, 0);
    }

    public void populateAndShow(ItemInfo itemInfo) {
        this.mOriginalItemInfo = itemInfo;
        ((TextView) findViewById(R.id.title)).setText(getContext().getString(R.string.widgets_bottom_sheet_title, this.mOriginalItemInfo.title));
        onWidgetsBound();
        attachToContainer();
        this.mIsOpen = false;
        if (0 != 0 || this.mOpenCloseAnimator.isRunning()) {
            return;
        }
        this.mIsOpen = true;
        setupNavBarColor();
        this.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) AbstractSlideInView.TRANSLATION_SHIFT, RecentsState.NO_OFFSET));
        this.mOpenCloseAnimator.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
        this.mOpenCloseAnimator.start();
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.mInsets;
        int i2 = i - rect2.left;
        int i3 = rect.right - rect2.right;
        int i4 = rect.bottom - rect2.bottom;
        rect2.set(rect);
        setPadding(i2, getPaddingTop(), i3, i4);
    }

    public WidgetsBottomSheet(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setWillNotDraw(false);
        this.mInsets = new Rect();
        this.mContent = this;
    }
}
