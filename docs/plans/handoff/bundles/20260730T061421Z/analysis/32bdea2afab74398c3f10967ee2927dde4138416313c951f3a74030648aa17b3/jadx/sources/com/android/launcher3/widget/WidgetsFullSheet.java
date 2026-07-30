package com.android.launcher3.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import b.l.W;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.launcher3.views.SpringRelativeLayout;
import com.android.launcher3.views.TopRoundedCornerView;
import com.android.launcher3.widget.WidgetsFullSheet;
import com.android.launcher3.widget.WidgetsListAdapter;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class WidgetsFullSheet extends BaseWidgetSheet implements Insettable, LauncherAppWidgetHost.ProviderChangedListener {
    public final WidgetsListAdapter mAdapter;
    public final Rect mInsets;
    public WidgetsRecyclerView mRecyclerView;

    public WidgetsFullSheet(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInsets = new Rect();
        LauncherAppState launcherAppState = LauncherAppState.getInstance(context);
        this.mAdapter = new WidgetsListAdapter(context, LayoutInflater.from(context), launcherAppState.mWidgetCache, launcherAppState.mIconCache, this, this);
    }

    public static WidgetsRecyclerView getWidgetsView(Launcher launcher) {
        return (WidgetsRecyclerView) launcher.findViewById(R.id.widgets_list_view);
    }

    public static WidgetsFullSheet show(Launcher launcher, boolean z) {
        final WidgetsFullSheet widgetsFullSheet = (WidgetsFullSheet) launcher.getLayoutInflater().inflate(R.layout.widgets_full_sheet, (ViewGroup) launcher.mDragLayer, false);
        widgetsFullSheet.attachToContainer();
        widgetsFullSheet.mIsOpen = true;
        if (z) {
            if (widgetsFullSheet.mLauncher.mDragLayer.getInsets().bottom > 0) {
                widgetsFullSheet.mContent.setAlpha(RecentsState.NO_OFFSET);
                widgetsFullSheet.setTranslationShift(0.3f);
            }
            widgetsFullSheet.mOpenCloseAnimator.setValues(PropertyValuesHolder.ofFloat((Property<?, Float>) AbstractSlideInView.TRANSLATION_SHIFT, RecentsState.NO_OFFSET));
            widgetsFullSheet.mOpenCloseAnimator.setDuration(267L).setInterpolator(AnimationUtils.loadInterpolator(widgetsFullSheet.getContext(), android.R.interpolator.linear_out_slow_in));
            widgetsFullSheet.mRecyclerView.setLayoutFrozen(true);
            widgetsFullSheet.mOpenCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.widget.WidgetsFullSheet.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    WidgetsFullSheet.this.mRecyclerView.setLayoutFrozen(false);
                    WidgetsFullSheet widgetsFullSheet2 = WidgetsFullSheet.this;
                    widgetsFullSheet2.mAdapter.setApplyBitmapDeferred(false, widgetsFullSheet2.mRecyclerView);
                    WidgetsFullSheet.this.mOpenCloseAnimator.removeListener(this);
                }
            });
            widgetsFullSheet.post(new Runnable() { // from class: c.a.a.c1.e
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetsFullSheet.this.b();
                }
            });
        } else {
            widgetsFullSheet.setTranslationShift(RecentsState.NO_OFFSET);
            widgetsFullSheet.mAdapter.setApplyBitmapDeferred(false, widgetsFullSheet.mRecyclerView);
            widgetsFullSheet.post(new Runnable() { // from class: c.a.a.c1.f
                @Override // java.lang.Runnable
                public final void run() {
                    WidgetsFullSheet.this.announceAccessibilityChanges();
                }
            });
        }
        return widgetsFullSheet;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void addHintCloseAnim(float f, Interpolator interpolator, PendingAnimation pendingAnimation) {
        pendingAnimation.setFloat(this.mRecyclerView, LauncherAnimUtils.VIEW_TRANSLATE_Y, -f, interpolator);
        pendingAnimation.setViewAlpha(this.mRecyclerView, 0.5f, interpolator);
    }

    public /* synthetic */ void b() {
        this.mOpenCloseAnimator.start();
        this.mContent.animate().alpha(1.0f).setDuration(150L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public Pair getAccessibilityTarget() {
        return Pair.create(this.mRecyclerView, getContext().getString(this.mIsOpen ? R.string.widgets_list : R.string.widgets_list_closed));
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet
    public int getElementsRowCount() {
        return this.mAdapter.getItemCount();
    }

    public WidgetsRecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        handleClose(z, 267L);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 16) != 0;
    }

    @Override // com.android.launcher3.LauncherAppWidgetHost.ProviderChangedListener
    public void notifyWidgetProvidersChanged() {
        LauncherModel launcherModel = this.mLauncher.mModel;
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass6(launcherModel, null));
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLauncher.mAppWidgetHost.mProviderChangeListeners.add(this);
        LauncherModel launcherModel = this.mLauncher.mModel;
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass6(launcherModel, null));
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, com.android.launcher3.views.AbstractSlideInView
    public void onCloseComplete() {
        super.onCloseComplete();
        W.sendStateEventToTest(getContext(), 0);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = false;
            RecyclerViewFastScroller recyclerViewFastScroller = this.mRecyclerView.mScrollbar;
            if (recyclerViewFastScroller.mThumbOffsetY >= 0 && this.mLauncher.mDragLayer.isEventOverView(recyclerViewFastScroller, motionEvent)) {
                this.mNoIntercept = true;
            } else if (this.mLauncher.mDragLayer.isEventOverView(this.mContent, motionEvent)) {
                this.mNoIntercept = !this.mRecyclerView.shouldContainerScroll(motionEvent, this.mLauncher.mDragLayer);
            }
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mLauncher.mAppWidgetHost.mProviderChangeListeners.remove(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = findViewById(R.id.container);
        WidgetsRecyclerView widgetsRecyclerView = (WidgetsRecyclerView) findViewById(R.id.widgets_list_view);
        this.mRecyclerView = widgetsRecyclerView;
        widgetsRecyclerView.setAdapter(this.mAdapter);
        this.mAdapter.setApplyBitmapDeferred(true, this.mRecyclerView);
        TopRoundedCornerView topRoundedCornerView = (TopRoundedCornerView) this.mContent;
        topRoundedCornerView.addSpringView(R.id.widgets_list_view);
        this.mRecyclerView.setEdgeEffectFactory(new SpringRelativeLayout.SpringEdgeEffectFactory(null));
        onWidgetsBound();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i4 - i2;
        int measuredWidth = this.mContent.getMeasuredWidth();
        int i6 = (i3 - i) - measuredWidth;
        Rect rect = this.mInsets;
        int i7 = rect.left;
        int i8 = (((i6 - i7) - rect.right) / 2) + i7;
        View view = this.mContent;
        view.layout(i8, i5 - view.getMeasuredHeight(), measuredWidth + i8, i5);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int max;
        Rect rect = this.mInsets;
        if (rect.bottom > 0) {
            max = rect.left + rect.right;
        } else {
            Rect rect2 = this.mLauncher.getDeviceProfile().workspacePadding;
            int i3 = rect2.left + rect2.right;
            Rect rect3 = this.mInsets;
            max = Math.max(i3, (rect3.left + rect3.right) * 2);
        }
        measureChildWithMargins(this.mContent, i, max, i2, this.mInsets.top + this.mLauncher.getDeviceProfile().edgeMarginPx);
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public void onWidgetsBound() {
        WidgetsListAdapter widgetsListAdapter = this.mAdapter;
        ArrayList arrayList = this.mLauncher.mPopupDataProvider.mAllWidgets;
        Objects.requireNonNull(widgetsListAdapter);
        WidgetsListAdapter.WidgetListRowEntryComparator widgetListRowEntryComparator = new WidgetsListAdapter.WidgetListRowEntryComparator();
        Collections.sort(arrayList, widgetListRowEntryComparator);
        WidgetsDiffReporter widgetsDiffReporter = widgetsListAdapter.mDiffReporter;
        ArrayList arrayList2 = widgetsListAdapter.mEntries;
        Objects.requireNonNull(widgetsDiffReporter);
        if (arrayList2.isEmpty() || arrayList.isEmpty()) {
            if (arrayList2.size() != arrayList.size()) {
                arrayList2.clear();
                arrayList2.addAll(arrayList);
                widgetsDiffReporter.mListener.mObservable.b();
                return;
            }
            return;
        }
        Iterator it = ((ArrayList) arrayList2.clone()).iterator();
        Iterator it2 = arrayList.iterator();
        WidgetListRowEntry widgetListRowEntry = (WidgetListRowEntry) it.next();
        WidgetListRowEntry widgetListRowEntry2 = (WidgetListRowEntry) it2.next();
        while (true) {
            if (widgetListRowEntry == null && widgetListRowEntry2 == null) {
                throw new IllegalStateException("Cannot compare PackageItemInfo if both rows are null.");
            }
            int compare = (widgetListRowEntry != null || widgetListRowEntry2 == null) ? (widgetListRowEntry == null || widgetListRowEntry2 != null) ? widgetListRowEntryComparator.compare(widgetListRowEntry, widgetListRowEntry2) : -1 : 1;
            if (compare < 0) {
                int indexOf = arrayList2.indexOf(widgetListRowEntry);
                widgetsDiffReporter.mListener.mObservable.e(indexOf, 1);
                arrayList2.remove(indexOf);
                widgetListRowEntry = it.hasNext() ? (WidgetListRowEntry) it.next() : null;
            } else {
                if (compare > 0) {
                    int indexOf2 = widgetListRowEntry != null ? arrayList2.indexOf(widgetListRowEntry) : arrayList2.size();
                    arrayList2.add(indexOf2, widgetListRowEntry2);
                    r8 = it2.hasNext() ? (WidgetListRowEntry) it2.next() : null;
                    widgetsDiffReporter.mListener.mObservable.d(indexOf2, 1);
                } else {
                    PackageItemInfo packageItemInfo = widgetListRowEntry.pkgItem;
                    if (!(packageItemInfo.bitmap.icon.equals(widgetListRowEntry2.pkgItem.bitmap.icon) && !widgetsDiffReporter.mIconCache.isDefaultIcon(packageItemInfo.bitmap, packageItemInfo.user)) || !widgetListRowEntry.widgets.equals(widgetListRowEntry2.widgets)) {
                        int indexOf3 = arrayList2.indexOf(widgetListRowEntry);
                        arrayList2.set(indexOf3, widgetListRowEntry2);
                        widgetsDiffReporter.mListener.mObservable.c(indexOf3, 1, null);
                    }
                    widgetListRowEntry = it.hasNext() ? (WidgetListRowEntry) it.next() : null;
                    if (it2.hasNext()) {
                        r8 = (WidgetListRowEntry) it2.next();
                    }
                }
                widgetListRowEntry2 = r8;
            }
            if (widgetListRowEntry == null && widgetListRowEntry2 == null) {
                return;
            }
        }
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        WidgetsRecyclerView widgetsRecyclerView = this.mRecyclerView;
        widgetsRecyclerView.setPadding(widgetsRecyclerView.getPaddingLeft(), this.mRecyclerView.getPaddingTop(), this.mRecyclerView.getPaddingRight(), rect.bottom);
        if (rect.bottom > 0) {
            setupNavBarColor();
        } else {
            getSystemUiController().updateUiState(2, 0);
        }
        TopRoundedCornerView topRoundedCornerView = (TopRoundedCornerView) this.mContent;
        int i = this.mInsets.bottom;
        if (topRoundedCornerView.mNavBarScrimHeight != i) {
            topRoundedCornerView.mNavBarScrimHeight = i;
            topRoundedCornerView.invalidate();
        }
        requestLayout();
    }

    public WidgetsFullSheet(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
