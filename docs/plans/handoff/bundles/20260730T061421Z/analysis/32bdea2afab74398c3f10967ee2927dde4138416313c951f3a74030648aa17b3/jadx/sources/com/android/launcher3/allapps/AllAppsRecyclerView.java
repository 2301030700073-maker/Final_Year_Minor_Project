package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import b.m.b.Q;
import b.m.b.T;
import b.m.b.m0;
import b.m.b.w0;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseRecyclerView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.allapps.AllAppsFastScrollHelper.MyScroller;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogUtils$LogContainerProvider;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.views.RecyclerViewFastScroller;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AllAppsRecyclerView extends BaseRecyclerView implements StatsLogUtils$LogContainerProvider {
    public AlphabeticalAppsList mApps;
    public ArrayList mAutoSizedOverlays;
    public final SparseIntArray mCachedScrollPositions;
    public AllAppsBackgroundDrawable mEmptySearchBackground;
    public int mEmptySearchBackgroundTopOffset;
    public final AllAppsFastScrollHelper mFastScrollHelper;
    public final int mNumAppsPerRow;
    public final SparseIntArray mViewHeights;

    public AllAppsRecyclerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        arrayList.add(LoggerUtils.newContainerTarget(this.mApps.hasFilter() ? 8 : 4));
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        return RecentsState.NO_OFFSET;
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public int getCurrentScrollY() {
        View childAt;
        int childPosition;
        if (this.mApps.mAdapterItems.isEmpty() || this.mNumAppsPerRow == 0 || getChildCount() == 0 || (childPosition = getChildPosition((childAt = getChildAt(0)))) == -1) {
            return -1;
        }
        return getCurrentScrollY(childPosition, getLayoutManager().getDecoratedTop(childAt)) + getPaddingTop();
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public int getScrollBarTop() {
        return getResources().getDimensionPixelOffset(R.dimen.all_apps_header_top_padding);
    }

    @Override // android.view.View
    public int getTopPaddingOffset() {
        return -getPaddingTop();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public boolean isPaddingOffsetRequired() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onDraw(Canvas canvas) {
        AllAppsBackgroundDrawable allAppsBackgroundDrawable = this.mEmptySearchBackground;
        if (allAppsBackgroundDrawable != null && allAppsBackgroundDrawable.mHand.mAlpha > 0) {
            allAppsBackgroundDrawable.draw(canvas);
        }
        super.onDraw(canvas);
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public void onFastScrollCompleted() {
        AllAppsFastScrollHelper allAppsFastScrollHelper = this.mFastScrollHelper;
        allAppsFastScrollHelper.mTargetFastScrollPosition = -1;
        w0 w0Var = allAppsFastScrollHelper.mLastSelectedViewHolder;
        if (w0Var != null) {
            w0Var.itemView.setActivated(false);
            allAppsFastScrollHelper.mLastSelectedViewHolder.setIsRecyclable(true);
        }
        allAppsFastScrollHelper.mLastSelectedViewHolder = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        AllAppsBackgroundDrawable allAppsBackgroundDrawable;
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        if (!onInterceptTouchEvent && motionEvent.getAction() == 0 && (allAppsBackgroundDrawable = this.mEmptySearchBackground) != null && allAppsBackgroundDrawable.mHand.mAlpha > 0) {
            allAppsBackgroundDrawable.setHotspot(motionEvent.getX(), motionEvent.getY());
        }
        return onInterceptTouchEvent;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        updateEmptySearchBackgroundBounds();
        DeviceProfile deviceProfile = BaseActivity.fromContext(getContext()).getDeviceProfile();
        m0 recycledViewPool = getRecycledViewPool();
        int ceil = (int) Math.ceil(deviceProfile.availableHeightPx / deviceProfile.allAppsIconSizePx);
        recycledViewPool.e(4, 1);
        recycledViewPool.e(16, 1);
        recycledViewPool.e(8, 1);
        recycledViewPool.e(2, ceil * this.mNumAppsPerRow);
        this.mViewHeights.clear();
        this.mViewHeights.put(2, deviceProfile.allAppsCellHeightPx);
        for (int i5 = 0; i5 < this.mAutoSizedOverlays.size(); i5++) {
            View view = (View) this.mAutoSizedOverlays.get(i5);
            view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i, 1073741824));
            view.layout(0, 0, i, i2);
        }
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public void onUpdateScrollbar(int i) {
        AlphabeticalAppsList alphabeticalAppsList = this.mApps;
        if (alphabeticalAppsList == null) {
            return;
        }
        if (alphabeticalAppsList.mAdapterItems.isEmpty() || this.mNumAppsPerRow == 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        int currentScrollY = getCurrentScrollY();
        if (currentScrollY < 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        int scrollbarTrackHeight = getScrollbarTrackHeight() - this.mScrollbar.mThumbHeight;
        int paddingBottom = getPaddingBottom() + ((getCurrentScrollY(getAdapter().getItemCount(), 0) + getPaddingTop()) - getHeight());
        if (paddingBottom <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        RecyclerViewFastScroller recyclerViewFastScroller = this.mScrollbar;
        if (!recyclerViewFastScroller.mIsThumbDetached) {
            synchronizeScrollBarThumbOffsetToViewScroll(currentScrollY, paddingBottom);
            return;
        }
        if (recyclerViewFastScroller.mIsDragging) {
            return;
        }
        int i2 = (int) ((currentScrollY / paddingBottom) * scrollbarTrackHeight);
        int i3 = recyclerViewFastScroller.mThumbOffsetY;
        int i4 = i2 - i3;
        if (i4 * i <= RecentsState.NO_OFFSET) {
            recyclerViewFastScroller.setThumbOffsetY(i3);
            return;
        }
        int max = Math.max(0, Math.min(scrollbarTrackHeight, (i < 0 ? Math.max((int) ((i * i3) / i2), i4) : Math.min((int) (((scrollbarTrackHeight - i3) * i) / (scrollbarTrackHeight - i2)), i4)) + i3));
        this.mScrollbar.setThumbOffsetY(max);
        if (i2 == max) {
            this.mScrollbar.mIsThumbDetached = false;
        }
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public String scrollToPositionAtProgress(float f) {
        AlphabeticalAppsList alphabeticalAppsList = this.mApps;
        if (alphabeticalAppsList.mNumAppRowsInAdapter == 0) {
            return "";
        }
        List list = alphabeticalAppsList.mFastScrollerSections;
        AlphabeticalAppsList.FastScrollSectionInfo fastScrollSectionInfo = (AlphabeticalAppsList.FastScrollSectionInfo) list.get(0);
        int i = 1;
        while (i < list.size()) {
            AlphabeticalAppsList.FastScrollSectionInfo fastScrollSectionInfo2 = (AlphabeticalAppsList.FastScrollSectionInfo) list.get(i);
            if (fastScrollSectionInfo2.touchFraction > f) {
                break;
            }
            i++;
            fastScrollSectionInfo = fastScrollSectionInfo2;
        }
        AllAppsFastScrollHelper allAppsFastScrollHelper = this.mFastScrollHelper;
        int i2 = allAppsFastScrollHelper.mTargetFastScrollPosition;
        int i3 = fastScrollSectionInfo.fastScrollToItem.position;
        if (i2 != i3) {
            allAppsFastScrollHelper.mTargetFastScrollPosition = i3;
            allAppsFastScrollHelper.mRv.getLayoutManager().startSmoothScroll(allAppsFastScrollHelper.new MyScroller(allAppsFastScrollHelper.mTargetFastScrollPosition));
        }
        return fastScrollSectionInfo.sectionName;
    }

    public void scrollToTop() {
        RecyclerViewFastScroller recyclerViewFastScroller = this.mScrollbar;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.mIsThumbDetached = false;
        }
        if (getLayoutManager() instanceof AllAppsGridAdapter.AppsGridLayoutManager) {
            AllAppsGridAdapter.AppsGridLayoutManager appsGridLayoutManager = (AllAppsGridAdapter.AppsGridLayoutManager) getLayoutManager();
            View findOneVisibleChild = appsGridLayoutManager.findOneVisibleChild(0, appsGridLayoutManager.getChildCount(), true, false);
            if ((findOneVisibleChild == null ? -1 : appsGridLayoutManager.getPosition(findOneVisibleChild)) == 0) {
                return;
            }
        }
        scrollToPosition(0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(Q q) {
        super.setAdapter(q);
        q.mObservable.registerObserver(new T() { // from class: com.android.launcher3.allapps.AllAppsRecyclerView.1
            @Override // b.m.b.T
            public void onChanged() {
                AllAppsRecyclerView.this.mCachedScrollPositions.clear();
            }
        });
    }

    @Override // com.android.launcher3.BaseRecyclerView
    public boolean supportsFastScrolling() {
        return !this.mApps.hasFilter();
    }

    public final void updateEmptySearchBackgroundBounds() {
        if (this.mEmptySearchBackground == null) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        AllAppsBackgroundDrawable allAppsBackgroundDrawable = this.mEmptySearchBackground;
        int i = allAppsBackgroundDrawable.mWidth;
        int i2 = (measuredWidth - i) / 2;
        int i3 = this.mEmptySearchBackgroundTopOffset;
        allAppsBackgroundDrawable.setBounds(i2, i3, i + i2, allAppsBackgroundDrawable.mHeight + i3);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mEmptySearchBackground || super.verifyDrawable(drawable);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public AllAppsRecyclerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.mViewHeights = new SparseIntArray();
        this.mCachedScrollPositions = new SparseIntArray();
        this.mAutoSizedOverlays = new ArrayList();
        this.mEmptySearchBackgroundTopOffset = getResources().getDimensionPixelSize(R.dimen.all_apps_empty_search_bg_top_offset);
        this.mNumAppsPerRow = LauncherAppState.getIDP(context).numColumns;
        this.mFastScrollHelper = new AllAppsFastScrollHelper(this);
    }

    public int getCurrentScrollY(int i, int i2) {
        ArrayList arrayList = this.mApps.mAdapterItems;
        AlphabeticalAppsList.AdapterItem adapterItem = i < arrayList.size() ? (AlphabeticalAppsList.AdapterItem) arrayList.get(i) : null;
        int i3 = this.mCachedScrollPositions.get(i, -1);
        if (i3 < 0) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                AlphabeticalAppsList.AdapterItem adapterItem2 = (AlphabeticalAppsList.AdapterItem) arrayList.get(i5);
                if (AllAppsGridAdapter.isIconViewType(adapterItem2.viewType)) {
                    if (adapterItem != null && adapterItem.viewType == adapterItem2.viewType && adapterItem.rowIndex == adapterItem2.rowIndex) {
                        break;
                    }
                    if (adapterItem2.rowAppIndex == 0) {
                        i4 += this.mViewHeights.get(adapterItem2.viewType, 0);
                    }
                } else {
                    int i6 = this.mViewHeights.get(adapterItem2.viewType);
                    if (i6 == 0) {
                        w0 findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i5);
                        if (findViewHolderForAdapterPosition == null) {
                            w0 createViewHolder = getAdapter().createViewHolder(this, adapterItem2.viewType);
                            getAdapter().onBindViewHolder(createViewHolder, i5);
                            createViewHolder.itemView.measure(0, 0);
                            i6 = createViewHolder.itemView.getMeasuredHeight();
                            getRecycledViewPool().c(createViewHolder);
                        } else {
                            i6 = findViewHolderForAdapterPosition.itemView.getMeasuredHeight();
                        }
                    }
                    i4 += i6;
                }
            }
            this.mCachedScrollPositions.put(i, i4);
            i3 = i4;
        }
        return i3 - i2;
    }
}
