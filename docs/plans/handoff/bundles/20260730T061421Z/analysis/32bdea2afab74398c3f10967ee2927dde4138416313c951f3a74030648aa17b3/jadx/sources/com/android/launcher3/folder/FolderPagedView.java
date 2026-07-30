package com.android.launcher3.folder;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PagedView;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.keyboard.ViewGroupFocusHelper;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.ViewCache;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.ToIntFunction;

/* loaded from: classes.dex */
public class FolderPagedView extends PagedView {
    public static final int[] sTmpArray = new int[2];
    public int mAllocatedContentSize;
    public final ViewGroupFocusHelper mFocusIndicatorHelper;
    public Folder mFolder;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mGridCountX;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mGridCountY;
    public final boolean mIsRtl;
    public final FolderGridOrganizer mOrganizer;
    public final ArrayMap mPendingAnimations;
    public final ViewCache mViewCache;
    public boolean mViewsBound;

    public FolderPagedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPendingAnimations = new ArrayMap();
        this.mViewsBound = false;
        this.mOrganizer = new FolderGridOrganizer(LauncherAppState.getIDP(context));
        this.mIsRtl = Utilities.isRtl(getResources());
        setImportantForAccessibility(1);
        this.mFocusIndicatorHelper = new ViewGroupFocusHelper(this);
        this.mViewCache = BaseActivity.fromContext(context).getViewCache();
    }

    public static /* synthetic */ int b(ShortcutAndWidgetContainer shortcutAndWidgetContainer) {
        return 0;
    }

    public static /* synthetic */ int c(ShortcutAndWidgetContainer shortcutAndWidgetContainer) {
        return shortcutAndWidgetContainer.getChildCount() - 1;
    }

    public void addViewForRank(View view, WorkspaceItemInfo workspaceItemInfo, int i) {
        int i2 = i / this.mOrganizer.mMaxItemsPerPage;
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        Point posForRank = this.mOrganizer.getPosForRank(i);
        Objects.requireNonNull(layoutParams);
        layoutParams.cellX = posForRank.x;
        layoutParams.cellY = posForRank.y;
        getPageAt(i2).addViewToCellLayout(view, -1, workspaceItemInfo.getViewId(), layoutParams, true);
    }

    @SuppressLint({"RtlHardcoded"})
    public void arrangeChildren(List list) {
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            cellLayout.removeAllViews();
            arrayList.add(cellLayout);
        }
        this.mOrganizer.setFolderInfo(this.mFolder.mInfo);
        this.mAllocatedContentSize = size;
        this.mOrganizer.setContentSize(size);
        FolderGridOrganizer folderGridOrganizer = this.mOrganizer;
        this.mGridCountX = folderGridOrganizer.mCountX;
        this.mGridCountY = folderGridOrganizer.mCountY;
        int pageCount = getPageCount();
        while (true) {
            pageCount--;
            if (pageCount < 0) {
                break;
            } else {
                getPageAt(pageCount).setGridSize(this.mGridCountX, this.mGridCountY);
            }
        }
        Iterator it = arrayList.iterator();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        CellLayout cellLayout2 = null;
        while (true) {
            if (i2 >= size) {
                break;
            }
            View view = list.size() > i2 ? (View) list.get(i2) : null;
            if (cellLayout2 == null || i3 >= this.mOrganizer.mMaxItemsPerPage) {
                cellLayout2 = it.hasNext() ? (CellLayout) it.next() : createAndAddNewPage();
                i3 = 0;
            }
            if (view != null) {
                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
                ItemInfo itemInfo = (ItemInfo) view.getTag();
                Point posForRank = this.mOrganizer.getPosForRank(i4);
                Objects.requireNonNull(layoutParams);
                layoutParams.cellX = posForRank.x;
                layoutParams.cellY = posForRank.y;
                cellLayout2.addViewToCellLayout(view, -1, itemInfo.getViewId(), layoutParams, true);
                if (this.mOrganizer.isItemInPreview(i4) && (view instanceof BubbleTextView)) {
                    ((BubbleTextView) view).verifyHighRes();
                }
            }
            i4++;
            i3++;
            i2++;
        }
        boolean z = false;
        while (it.hasNext()) {
            removeView((View) it.next());
            z = true;
        }
        if (z) {
            setCurrentPage(0);
        }
        setEnableOverscroll(getPageCount() > 1);
        ((PageIndicatorDots) this.mPageIndicator).setVisibility(getPageCount() <= 1 ? 8 : 0);
        this.mFolder.mFolderName.setGravity(getPageCount() > 1 ? this.mIsRtl ? 5 : 3 : 1);
    }

    @Override // com.android.launcher3.PagedView
    public boolean canScroll(float f, float f2) {
        return AbstractFloatingView.getTopOpenViewWithType(this.mFolder.mLauncher, 4094) == null;
    }

    public void clearScrollHint() {
        if (getScrollX() != getScrollForPage(getNextPage())) {
            snapToPage(getNextPage());
        }
    }

    public void completePendingPageChanges() {
        if (this.mPendingAnimations.isEmpty()) {
            return;
        }
        for (Map.Entry entry : new ArrayMap(this.mPendingAnimations).entrySet()) {
            ((View) entry.getKey()).animate().cancel();
            ((Runnable) entry.getValue()).run();
        }
    }

    public final CellLayout createAndAddNewPage() {
        DeviceProfile deviceProfile = Launcher.getLauncher(getContext()).getDeviceProfile();
        CellLayout cellLayout = (CellLayout) this.mViewCache.getView(R.layout.folder_page, getContext(), this);
        int i = deviceProfile.folderCellWidthPx;
        int i2 = deviceProfile.folderCellHeightPx;
        cellLayout.mCellWidth = i;
        cellLayout.mFixedCellWidth = i;
        cellLayout.mCellHeight = i2;
        cellLayout.mFixedCellHeight = i2;
        cellLayout.mShortcutsAndWidgets.setCellDimensions(i, i2, cellLayout.mCountX);
        cellLayout.mShortcutsAndWidgets.setMotionEventSplittingEnabled(false);
        cellLayout.mShortcutsAndWidgets.mInvertIfRtl = true;
        cellLayout.setGridSize(this.mGridCountX, this.mGridCountY);
        addView(cellLayout, -1, generateDefaultLayoutParams());
        return cellLayout;
    }

    public View createAndAddViewForRank(WorkspaceItemInfo workspaceItemInfo, int i) {
        View createNewView = createNewView(workspaceItemInfo);
        if (!this.mViewsBound) {
            return createNewView;
        }
        ArrayList arrayList = new ArrayList(this.mFolder.getIconsInReadingOrder());
        arrayList.add(i, createNewView);
        arrangeChildren(arrayList);
        return createNewView;
    }

    @SuppressLint({"InflateParams"})
    public View createNewView(WorkspaceItemInfo workspaceItemInfo) {
        if (workspaceItemInfo == null) {
            return null;
        }
        BubbleTextView bubbleTextView = (BubbleTextView) this.mViewCache.getView(R.layout.folder_application, getContext(), null);
        bubbleTextView.applyFromWorkspaceItem(workspaceItemInfo);
        bubbleTextView.setOnClickListener(ItemClickHandler.INSTANCE);
        bubbleTextView.setOnLongClickListener(this.mFolder);
        bubbleTextView.setOnFocusChangeListener(this.mFocusIndicatorHelper);
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) bubbleTextView.getLayoutParams();
        if (layoutParams == null) {
            bubbleTextView.setLayoutParams(new CellLayout.LayoutParams(workspaceItemInfo.cellX, workspaceItemInfo.cellY, workspaceItemInfo.spanX, workspaceItemInfo.spanY));
        } else {
            layoutParams.cellX = workspaceItemInfo.cellX;
            layoutParams.cellY = workspaceItemInfo.cellY;
            layoutParams.cellVSpan = 1;
            layoutParams.cellHSpan = 1;
        }
        return bubbleTextView;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        this.mFocusIndicatorHelper.draw(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // com.android.launcher3.PagedView
    public int getChildGap() {
        return getPaddingRight() + getPaddingLeft();
    }

    public CellLayout getCurrentCellLayout() {
        return getPageAt(getNextPage());
    }

    public int getDesiredWidth() {
        if (getPageCount() <= 0) {
            return 0;
        }
        CellLayout pageAt = getPageAt(0);
        return getPaddingRight() + getPaddingLeft() + (pageAt.mCountX * pageAt.mCellWidth) + pageAt.getPaddingRight() + pageAt.getPaddingLeft();
    }

    @Override // com.android.launcher3.PagedView
    public View getPageAt(int i) {
        return (CellLayout) getChildAt(i);
    }

    public final View getViewInCurrentPage(ToIntFunction toIntFunction) {
        if (getChildCount() < 1) {
            return null;
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = getCurrentCellLayout().mShortcutsAndWidgets;
        int applyAsInt = toIntFunction.applyAsInt(shortcutAndWidgetContainer);
        int i = this.mGridCountX;
        return i > 0 ? shortcutAndWidgetContainer.getChildAt(applyAsInt % i, applyAsInt / i) : shortcutAndWidgetContainer.getChildAt(applyAsInt);
    }

    public View iterateOverItems(Workspace.ItemOperator itemOperator) {
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout pageAt = getPageAt(i);
            for (int i2 = 0; i2 < pageAt.mCountY; i2++) {
                for (int i3 = 0; i3 < pageAt.mCountX; i3++) {
                    View childAt = pageAt.getChildAt(i3, i2);
                    if (childAt != null && itemOperator.evaluate((ItemInfo) childAt.getTag(), childAt)) {
                        return childAt;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.android.launcher3.PagedView
    public void notifyPageSwitchListener(int i) {
        super.notifyPageSwitchListener(i);
        Folder folder = this.mFolder;
        if (folder != null) {
            folder.updateTextViewFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    public void onPageBeginTransition() {
        super.onPageBeginTransition();
        verifyVisibleHighResIcons(getCurrentPage() - 1);
        verifyVisibleHighResIcons(getCurrentPage() + 1);
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        int i5 = this.mMaxScroll;
        if (i5 > 0) {
            PageIndicatorDots pageIndicatorDots = (PageIndicatorDots) this.mPageIndicator;
            if (pageIndicatorDots.mNumPages > 1) {
                if (pageIndicatorDots.mIsRtl) {
                    i = i5 - i;
                }
                int i6 = i5 / (pageIndicatorDots.mNumPages - 1);
                int i7 = i / i6;
                int i8 = i7 * i6;
                int i9 = i8 + i6;
                float f = i6 * 0.1f;
                float f2 = i;
                if (f2 < i8 + f) {
                    pageIndicatorDots.animateToPosition(i7);
                } else if (f2 > i9 - f) {
                    pageIndicatorDots.animateToPosition(i7 + 1);
                } else {
                    pageIndicatorDots.animateToPosition(i7 + 0.5f);
                }
            }
        }
    }

    public void unbindItems() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                removeAllViews();
                this.mViewsBound = false;
                return;
            }
            CellLayout cellLayout = (CellLayout) getChildAt(childCount);
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            for (int childCount2 = shortcutAndWidgetContainer.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                shortcutAndWidgetContainer.getChildAt(childCount2).setVisibility(0);
                this.mViewCache.recycleView(R.layout.folder_application, shortcutAndWidgetContainer.getChildAt(childCount2));
            }
            cellLayout.removeAllViews();
            this.mViewCache.recycleView(R.layout.folder_page, cellLayout);
        }
    }

    public void verifyVisibleHighResIcons(int i) {
        CellLayout cellLayout = (CellLayout) getChildAt(i);
        if (cellLayout != null) {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            for (int childCount = shortcutAndWidgetContainer.getChildCount() - 1; childCount >= 0; childCount--) {
                BubbleTextView bubbleTextView = (BubbleTextView) shortcutAndWidgetContainer.getChildAt(childCount);
                bubbleTextView.verifyHighRes();
                Drawable drawable = bubbleTextView.getCompoundDrawables()[1];
                if (drawable != null) {
                    drawable.setCallback(bubbleTextView);
                }
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    public CellLayout getPageAt(int i) {
        return (CellLayout) getChildAt(i);
    }
}
