package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Toast;
import c.a.a.C0233c;
import c.a.a.I0.v;
import c.a.a.I0.w;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.accessibility.WorkspaceAccessibilityHelper;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.dragndrop.SpringLoadedDragController;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.graphics.DragPreviewProvider.OutlineGeneratorCallback;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.WorkspacePageIndicator;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.WorkspaceTouchListener;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.WallpaperOffsetInterpolator;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.shared.LauncherOverlayManager;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class Workspace extends PagedView implements DropTarget, DragSource, View.OnTouchListener, DragController.DragListener, Insettable, StateManager.StateHandler, WorkspaceLayoutManager {
    public boolean mAddToExistingFolderOnDrop;
    public boolean mChildrenLayersEnabled;
    public boolean mCreateUserFolderOnDrop;
    public float mCurrentScale;
    public boolean mDeferRemoveExtraEmptyScreen;
    public DragController mDragController;
    public CellLayout.CellInfo mDragInfo;
    public int mDragMode;
    public FolderIcon mDragOverFolderIcon;
    public int mDragOverX;
    public int mDragOverY;
    public CellLayout mDragOverlappingLayout;
    public ShortcutAndWidgetContainer mDragSourceInternal;
    public CellLayout mDragTargetLayout;
    public float[] mDragViewVisualCenter;
    public CellLayout mDropToLayout;
    public PreviewBackground mFolderCreateBg;
    public boolean mForceDrawAdjacentPages;
    public boolean mIsSwitchingState;
    public float mLastOverlayScroll;
    public int mLastReorderX;
    public int mLastReorderY;
    public final Launcher mLauncher;
    public LauncherOverlayManager.LauncherOverlay mLauncherOverlay;
    public LayoutTransition mLayoutTransition;
    public float mMaxDistanceForFolderCreation;
    public Runnable mOnOverlayHiddenCallback;
    public DragPreviewProvider mOutlineProvider;
    public boolean mOverlayShown;
    public float mOverlayTranslation;
    public final Alarm mReorderAlarm;
    public final IntArray mRestoredPages;
    public SparseArray mSavedStates;
    public final IntArray mScreenOrder;
    public boolean mScrollInteractionBegan;
    public SpringLoadedDragController mSpringLoadedDragController;
    public boolean mStartedSendingScrollEvents;
    public final WorkspaceStateTransitionAnimation mStateTransitionAnimation;
    public final StatsLogManager mStatsLogManager;
    public boolean mStripScreensOnPageStopMoving;
    public int[] mTargetCell;
    public final float[] mTempFXY;
    public final float[] mTempTouchCoordinates;
    public final int[] mTempXY;
    public float mTransitionProgress;
    public boolean mUnlockWallpaperFromDefaultPageOnLayout;
    public final WallpaperManager mWallpaperManager;
    public final WallpaperOffsetInterpolator mWallpaperOffset;
    public boolean mWorkspaceFadeInAdjacentScreens;
    public final IntSparseArrayMap mWorkspaceScreens;
    public float mXDown;
    public float mYDown;

    /* renamed from: com.android.launcher3.Workspace$6, reason: invalid class name */
    public class AnonymousClass6 implements ItemOperator {
        public AnonymousClass6(Workspace workspace) {
        }

        @Override // com.android.launcher3.Workspace.ItemOperator
        public boolean evaluate(ItemInfo itemInfo, View view) {
            if (!(view instanceof FolderIcon)) {
                return false;
            }
            FolderIcon folderIcon = (FolderIcon) view;
            folderIcon.mInfo.mListeners.remove(folderIcon);
            FolderInfo folderInfo = folderIcon.mInfo;
            folderInfo.mListeners.remove(folderIcon.mFolder);
            return false;
        }
    }

    /* renamed from: com.android.launcher3.Workspace$7, reason: invalid class name */
    public class AnonymousClass7 implements ItemOperator {
        public final /* synthetic */ ItemOperator val$operator;
        public final /* synthetic */ View[] val$value;

        public AnonymousClass7(Workspace workspace, ItemOperator itemOperator, View[] viewArr) {
            this.val$operator = itemOperator;
            this.val$value = viewArr;
        }

        @Override // com.android.launcher3.Workspace.ItemOperator
        public boolean evaluate(ItemInfo itemInfo, View view) {
            if (!this.val$operator.evaluate(itemInfo, view)) {
                return false;
            }
            this.val$value[0] = view;
            return true;
        }
    }

    public class DeferredWidgetRefresh implements Runnable, LauncherAppWidgetHost.ProviderChangedListener {
        public final Handler mHandler;
        public final LauncherAppWidgetHost mHost;
        public final ArrayList mInfos;
        public boolean mRefreshPending = true;

        public DeferredWidgetRefresh(ArrayList arrayList, LauncherAppWidgetHost launcherAppWidgetHost) {
            this.mInfos = arrayList;
            this.mHost = launcherAppWidgetHost;
            this.mHandler = Workspace.this.mLauncher.mHandler;
            launcherAppWidgetHost.mProviderChangeListeners.add(this);
            Message obtain = Message.obtain(this.mHandler, this);
            obtain.obj = DeferredWidgetRefresh.class;
            this.mHandler.sendMessageDelayed(obtain, 10000L);
        }

        @Override // com.android.launcher3.LauncherAppWidgetHost.ProviderChangedListener
        public void notifyWidgetProvidersChanged() {
            run();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mHost.mProviderChangeListeners.remove(this);
            this.mHandler.removeCallbacks(this);
            if (this.mRefreshPending) {
                this.mRefreshPending = false;
                final ArrayList arrayList = new ArrayList(this.mInfos.size());
                Workspace.this.mapOverItems(new ItemOperator() { // from class: c.a.a.l0
                    @Override // com.android.launcher3.Workspace.ItemOperator
                    public final boolean evaluate(ItemInfo itemInfo, View view) {
                        Workspace.DeferredWidgetRefresh deferredWidgetRefresh = Workspace.DeferredWidgetRefresh.this;
                        ArrayList arrayList2 = arrayList;
                        Objects.requireNonNull(deferredWidgetRefresh);
                        if (!(view instanceof PendingAppWidgetHostView) || !deferredWidgetRefresh.mInfos.contains(itemInfo)) {
                            return false;
                        }
                        arrayList2.add((PendingAppWidgetHostView) view);
                        return false;
                    }
                });
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((PendingAppWidgetHostView) it.next()).reInflate();
                }
            }
        }
    }

    public interface ItemOperator {
        boolean evaluate(ItemInfo itemInfo, View view);
    }

    public class ReorderAlarmListener implements OnAlarmListener {
        public final View child;
        public final DropTarget.DragObject dragObject;
        public final int minSpanX;
        public final int minSpanY;
        public final int spanX;
        public final int spanY;

        public ReorderAlarmListener(float[] fArr, int i, int i2, int i3, int i4, DropTarget.DragObject dragObject, View view) {
            this.minSpanX = i;
            this.minSpanY = i2;
            this.spanX = i3;
            this.spanY = i4;
            this.child = view;
            this.dragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            int[] iArr = new int[2];
            Workspace workspace = Workspace.this;
            float[] fArr = workspace.mDragViewVisualCenter;
            workspace.mTargetCell = workspace.findNearestArea((int) fArr[0], (int) fArr[1], this.minSpanX, this.minSpanY, workspace.mDragTargetLayout, workspace.mTargetCell);
            Workspace workspace2 = Workspace.this;
            int[] iArr2 = workspace2.mTargetCell;
            workspace2.mLastReorderX = iArr2[0];
            workspace2.mLastReorderY = iArr2[1];
            CellLayout cellLayout = workspace2.mDragTargetLayout;
            float[] fArr2 = workspace2.mDragViewVisualCenter;
            workspace2.mTargetCell = cellLayout.performReorder((int) fArr2[0], (int) fArr2[1], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, iArr2, iArr, 1);
            Workspace workspace3 = Workspace.this;
            int[] iArr3 = workspace3.mTargetCell;
            if (iArr3[0] < 0 || iArr3[1] < 0) {
                Workspace.this.mDragTargetLayout.revertTempState();
            } else {
                workspace3.setDragMode(3);
            }
            boolean z = (iArr[0] == this.spanX && iArr[1] == this.spanY) ? false : true;
            Workspace workspace4 = Workspace.this;
            CellLayout cellLayout2 = workspace4.mDragTargetLayout;
            DropTarget.DragObject dragObject = this.dragObject;
            DraggableView draggableView = dragObject.originalView;
            DragPreviewProvider dragPreviewProvider = workspace4.mOutlineProvider;
            int[] iArr4 = workspace4.mTargetCell;
            cellLayout2.visualizeDropLocation(draggableView, dragPreviewProvider, iArr4[0], iArr4[1], iArr[0], iArr[1], z, dragObject);
        }
    }

    public class StateTransitionListener extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        public final LauncherState mToState;

        public StateTransitionListener(LauncherState launcherState) {
            this.mToState = launcherState;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Workspace.this.onEndStateTransition();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Workspace workspace = Workspace.this;
            LauncherState launcherState = this.mToState;
            workspace.onStartStateTransition();
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            Workspace.this.mTransitionProgress = valueAnimator.getAnimatedFraction();
        }
    }

    public Workspace(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static /* synthetic */ boolean b(ItemOperator[] itemOperatorArr, View[] viewArr, ItemInfo itemInfo, View view) {
        for (int i = 0; i < itemOperatorArr.length; i++) {
            if (viewArr[i] == null && itemOperatorArr[i].evaluate(itemInfo, view)) {
                viewArr[i] = view;
                if (i == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ boolean c(String str, UserHandle userHandle, ItemInfo itemInfo, View view) {
        return itemInfo != null && itemInfo.getTargetComponent() != null && TextUtils.equals(itemInfo.getTargetComponent().getPackageName(), str) && itemInfo.user.equals(userHandle);
    }

    public static /* synthetic */ boolean d(ItemOperator itemOperator, ItemInfo itemInfo, View view) {
        return itemOperator.evaluate(itemInfo, view) && itemInfo.itemType == 0;
    }

    public static /* synthetic */ boolean e(ItemOperator itemOperator, ItemInfo itemInfo, View view) {
        if (!(itemInfo instanceof FolderInfo)) {
            return false;
        }
        Iterator it = ((FolderInfo) itemInfo).contents.iterator();
        while (it.hasNext()) {
            if (itemOperator.evaluate((WorkspaceItemInfo) it.next(), view)) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean f(int i, ItemInfo itemInfo, View view) {
        return itemInfo != null && itemInfo.id == i;
    }

    public static /* synthetic */ boolean g(int i, ItemInfo itemInfo, View view) {
        return (itemInfo instanceof LauncherAppWidgetInfo) && ((LauncherAppWidgetInfo) itemInfo).appWidgetId == i;
    }

    public static /* synthetic */ void k(Runnable runnable, Runnable runnable2) {
        runnable.run();
        runnable2.run();
    }

    public static /* synthetic */ boolean l(PackageUserKey packageUserKey, Predicate predicate, ItemInfo itemInfo) {
        return !packageUserKey.updateFromItemInfo(itemInfo) || predicate.test(packageUserKey);
    }

    public static /* synthetic */ boolean n(HashSet hashSet, ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
            ((BubbleTextView) view).applyPromiseState(false);
        } else if ((view instanceof PendingAppWidgetHostView) && (itemInfo instanceof LauncherAppWidgetInfo) && hashSet.contains(itemInfo)) {
            ((PendingAppWidgetHostView) view).applyState();
        } else if ((view instanceof FolderIcon) && (itemInfo instanceof FolderInfo)) {
            Objects.requireNonNull(hashSet);
            ((FolderIcon) view).updatePreviewItems(new C0233c(hashSet));
        }
        return false;
    }

    public static boolean o(HashSet hashSet, ItemInfo itemInfo, View view) {
        if ((view instanceof BubbleTextView) && hashSet.contains(itemInfo)) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            Drawable drawable = bubbleTextView.mIcon;
            boolean z = workspaceItemInfo.isPromise() != ((drawable instanceof PreloadIconDrawable) && (((PreloadIconDrawable) drawable).mRanFinishAnimation ^ true));
            bubbleTextView.applyIconAndLabel(workspaceItemInfo);
            bubbleTextView.setTag(workspaceItemInfo);
            if (z || workspaceItemInfo.hasPromiseIconUi()) {
                bubbleTextView.applyPromiseState(z);
            }
            bubbleTextView.applyDotState(workspaceItemInfo, false);
        } else if ((itemInfo instanceof FolderInfo) && (view instanceof FolderIcon)) {
            Objects.requireNonNull(hashSet);
            ((FolderIcon) view).updatePreviewItems(new C0233c(hashSet));
        }
        return false;
    }

    @Override // com.android.launcher3.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        CellLayout cellLayout;
        int i;
        int i2;
        int i3;
        int i4;
        CellLayout cellLayout2 = this.mDropToLayout;
        if (dragObject.dragSource == this) {
            cellLayout = cellLayout2;
        } else {
            if (cellLayout2 == null || !transitionStateShouldAllowDrop()) {
                return false;
            }
            float[] visualCenter = dragObject.getVisualCenter(this.mDragViewVisualCenter);
            this.mDragViewVisualCenter = visualCenter;
            mapPointFromDropLayout(cellLayout2, visualCenter);
            CellLayout.CellInfo cellInfo = this.mDragInfo;
            if (cellInfo != null) {
                i = cellInfo.spanX;
                i2 = cellInfo.spanY;
            } else {
                ItemInfo itemInfo = dragObject.dragInfo;
                i = itemInfo.spanX;
                i2 = itemInfo.spanY;
            }
            int i5 = i2;
            int i6 = i;
            ItemInfo itemInfo2 = dragObject.dragInfo;
            if (itemInfo2 instanceof PendingAddWidgetInfo) {
                int i7 = ((PendingAddWidgetInfo) itemInfo2).minSpanX;
                i4 = ((PendingAddWidgetInfo) itemInfo2).minSpanY;
                i3 = i7;
            } else {
                i3 = i6;
                i4 = i5;
            }
            float[] fArr = this.mDragViewVisualCenter;
            int[] findNearestArea = findNearestArea((int) fArr[0], (int) fArr[1], i3, i4, cellLayout2, this.mTargetCell);
            this.mTargetCell = findNearestArea;
            float[] fArr2 = this.mDragViewVisualCenter;
            float distanceFromCell = cellLayout2.getDistanceFromCell(fArr2[0], fArr2[1], findNearestArea);
            if (this.mCreateUserFolderOnDrop && willCreateUserFolder(dragObject.dragInfo, cellLayout2, this.mTargetCell, distanceFromCell, true)) {
                return true;
            }
            if (this.mAddToExistingFolderOnDrop && willAddToExistingUserFolder(dragObject.dragInfo, cellLayout2, this.mTargetCell, distanceFromCell)) {
                return true;
            }
            float[] fArr3 = this.mDragViewVisualCenter;
            cellLayout = cellLayout2;
            int[] performReorder = cellLayout2.performReorder((int) fArr3[0], (int) fArr3[1], i3, i4, i6, i5, null, this.mTargetCell, new int[2], 4);
            this.mTargetCell = performReorder;
            if (!(performReorder[0] >= 0 && performReorder[1] >= 0)) {
                onNoCellFound(cellLayout);
                return false;
            }
        }
        if (getIdForScreen(cellLayout) == -201) {
            commitExtraEmptyScreen();
        }
        return true;
    }

    public boolean addExtraEmptyScreen() {
        if (this.mWorkspaceScreens.containsKey(-201)) {
            return false;
        }
        insertNewWorkspaceScreen(-201, getChildCount());
        return true;
    }

    public boolean addToExistingFolderIfNecessary(CellLayout cellLayout, int[] iArr, float f, DropTarget.DragObject dragObject, boolean z) {
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        if (!this.mAddToExistingFolderOnDrop) {
            return false;
        }
        this.mAddToExistingFolderOnDrop = false;
        if (childAt instanceof FolderIcon) {
            FolderIcon folderIcon = (FolderIcon) childAt;
            if (!folderIcon.mFolder.mDestroyed && folderIcon.willAcceptItem(dragObject.dragInfo)) {
                this.mStatsLogManager.logger().withItemInfo(folderIcon.mInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
                folderIcon.onDrop(dragObject, false);
                if (!z) {
                    getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void animateWidgetDrop(com.android.launcher3.model.data.ItemInfo r22, com.android.launcher3.CellLayout r23, final com.android.launcher3.dragndrop.DragView r24, final java.lang.Runnable r25, int r26, android.view.View r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.animateWidgetDrop(com.android.launcher3.model.data.ItemInfo, com.android.launcher3.CellLayout, com.android.launcher3.dragndrop.DragView, java.lang.Runnable, int, android.view.View, boolean):void");
    }

    @Override // android.view.View
    public void announceForAccessibility(CharSequence charSequence) {
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            return;
        }
        super.announceForAccessibility(charSequence);
    }

    public void beginDragShared(View view, DragSource dragSource, DragOptions dragOptions) {
        Object tag = view.getTag();
        if (tag instanceof ItemInfo) {
            beginDragShared(view, null, dragSource, (ItemInfo) tag, new DragPreviewProvider(view), dragOptions);
            return;
        }
        throw new IllegalStateException("Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: " + view + "  tag: " + view.getTag());
    }

    public void bindAndInitFirstWorkspaceScreen(View view) {
        CellLayout insertNewWorkspaceScreen = insertNewWorkspaceScreen(0, 0);
        if (view == null) {
            view = LayoutInflater.from(getContext()).inflate(R.layout.search_container_workspace, (ViewGroup) insertNewWorkspaceScreen, false);
        }
        CellLayout.LayoutParams layoutParams = new CellLayout.LayoutParams(0, 0, insertNewWorkspaceScreen.mCountX, 1);
        layoutParams.canReorder = false;
        if (insertNewWorkspaceScreen.addViewToCellLayout(view, 0, R.id.search_container_workspace, layoutParams, true)) {
            return;
        }
        Log.e("Launcher.Workspace", "Failed to add to item at (0, 0) to CellLayout");
    }

    @Override // com.android.launcher3.PagedView
    public boolean canAnnouncePageDescription() {
        return Float.compare(this.mOverlayTranslation, RecentsState.NO_OFFSET) == 0;
    }

    public final void cleanupAddToFolder() {
        FolderIcon folderIcon = this.mDragOverFolderIcon;
        if (folderIcon != null) {
            PreviewBackground previewBackground = folderIcon.mBackground;
            previewBackground.animateScale(1.0f, 1.0f, new w(previewBackground, previewBackground.mDrawingDelegate, previewBackground.mDelegateCellX, previewBackground.mDelegateCellY), new v(previewBackground));
            folderIcon.mOpenAlarm.mAlarmPending = false;
            this.mDragOverFolderIcon = null;
        }
    }

    public final void cleanupFolderCreation() {
        PreviewBackground previewBackground = this.mFolderCreateBg;
        if (previewBackground != null) {
            previewBackground.animateScale(1.0f, 1.0f, new w(previewBackground, previewBackground.mDrawingDelegate, previewBackground.mDelegateCellX, previewBackground.mDelegateCellY), new v(previewBackground));
        }
    }

    public final void cleanupReorder(boolean z) {
        if (z) {
            this.mReorderAlarm.mAlarmPending = false;
        }
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
    }

    public int commitExtraEmptyScreen() {
        if (this.mLauncher.mWorkspaceLoading) {
            return -1;
        }
        CellLayout cellLayout = (CellLayout) this.mWorkspaceScreens.get(-201);
        this.mWorkspaceScreens.remove(-201);
        this.mScreenOrder.removeValue(-201);
        int i = LauncherSettings$Settings.call(getContext().getContentResolver(), "generate_new_screen_id").getInt("value");
        this.mWorkspaceScreens.put(i, cellLayout);
        IntArray intArray = this.mScreenOrder;
        intArray.add(intArray.mSize, i);
        return i;
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void computeScroll() {
        super.computeScroll();
        this.mWallpaperOffset.syncWithScroll();
    }

    @Override // android.view.View
    public AccessibilityNodeInfo createAccessibilityNodeInfo() {
        if (getImportantForAccessibility() == 4) {
            return null;
        }
        return super.createAccessibilityNodeInfo();
    }

    public boolean createUserFolderIfNecessary(View view, int i, CellLayout cellLayout, int[] iArr, float f, boolean z, DropTarget.DragObject dragObject) {
        boolean z2;
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null) {
            CellLayout parentCellLayoutForView = getParentCellLayoutForView(cellInfo.cell);
            CellLayout.CellInfo cellInfo2 = this.mDragInfo;
            if (cellInfo2.cellX == iArr[0] && cellInfo2.cellY == iArr[1] && parentCellLayoutForView == cellLayout) {
                z2 = true;
                if (childAt != null || z2 || !this.mCreateUserFolderOnDrop) {
                    return false;
                }
                this.mCreateUserFolderOnDrop = false;
                int idForScreen = getIdForScreen(cellLayout);
                boolean z3 = childAt.getTag() instanceof WorkspaceItemInfo;
                boolean z4 = view.getTag() instanceof WorkspaceItemInfo;
                if (!z3 || !z4) {
                    return false;
                }
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) view.getTag();
                WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) childAt.getTag();
                if (!z) {
                    getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
                }
                Rect rect = new Rect();
                float descendantRectRelativeToSelf = this.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(childAt, rect);
                cellLayout.removeView(childAt);
                this.mStatsLogManager.logger().withItemInfo(workspaceItemInfo2).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_FOLDER_CREATED);
                Launcher launcher = this.mLauncher;
                int i2 = iArr[0];
                int i3 = iArr[1];
                Objects.requireNonNull(launcher);
                FolderInfo folderInfo = new FolderInfo();
                launcher.mModelWriter.addItemToDatabase(folderInfo, i, idForScreen, i2, i3);
                FolderIcon inflateFolderAndIcon = FolderIcon.inflateFolderAndIcon(R.layout.folder_icon, launcher, cellLayout, folderInfo);
                launcher.mWorkspace.addInScreen(inflateFolderAndIcon, folderInfo);
                launcher.mWorkspace.getParentCellLayoutForView(inflateFolderAndIcon).mShortcutsAndWidgets.measureChild(inflateFolderAndIcon);
                workspaceItemInfo2.cellX = -1;
                workspaceItemInfo2.cellY = -1;
                workspaceItemInfo.cellX = -1;
                workspaceItemInfo.cellY = -1;
                PreviewBackground previewBackground = this.mFolderCreateBg;
                inflateFolderAndIcon.mBackground = previewBackground;
                previewBackground.mInvalidateDelegate = inflateFolderAndIcon;
                previewBackground.invalidate();
                this.mFolderCreateBg = new PreviewBackground();
                inflateFolderAndIcon.prepareCreateAnimation(childAt);
                FolderInfo folderInfo2 = inflateFolderAndIcon.mInfo;
                folderInfo2.add(workspaceItemInfo2, folderInfo2.contents.size(), true);
                inflateFolderAndIcon.mPreviewItemManager.createFirstItemAnimation(false, null).mAnimator.start();
                inflateFolderAndIcon.onDrop(workspaceItemInfo, dragObject, rect, descendantRectRelativeToSelf, 1, false);
                this.mLauncher.folderCreatedFromItem(inflateFolderAndIcon.mFolder, workspaceItemInfo2);
                return true;
            }
        }
        z2 = false;
        if (childAt != null) {
        }
        return false;
    }

    @Override // com.android.launcher3.PagedView
    public void determineScrollingStart(MotionEvent motionEvent, float f) {
        if (this.mIsSwitchingState) {
            return;
        }
        super.determineScrollingStart(motionEvent, f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.mSavedStates = sparseArray;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (workspaceInModalState() || !isFinishedSwitchingState()) {
            return false;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    public final void enableHwLayersOnVisiblePages() {
        if (this.mChildrenLayersEnabled) {
            int childCount = getChildCount();
            int[] visibleChildrenRange = getVisibleChildrenRange();
            int i = visibleChildrenRange[0];
            int i2 = visibleChildrenRange[1];
            if (this.mForceDrawAdjacentPages) {
                i = Utilities.boundToRange(getCurrentPage() - 1, 0, i2);
                i2 = Utilities.boundToRange(getCurrentPage() + 1, i, getPageCount() - 1);
            }
            if (i == i2) {
                if (i2 < childCount - 1) {
                    i2++;
                } else if (i > 0) {
                    i--;
                }
            }
            int i3 = 0;
            while (i3 < childCount) {
                ((CellLayout) getPageAt(i3)).enableHardwareLayer(i <= i3 && i3 <= i2);
                i3++;
            }
        }
    }

    public int[] estimateItemSize(ItemInfo itemInfo) {
        int[] iArr = new int[2];
        if (getChildCount() <= 0) {
            iArr[0] = Integer.MAX_VALUE;
            iArr[1] = Integer.MAX_VALUE;
            return iArr;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(0);
        boolean z = itemInfo.itemType == 4;
        int i = itemInfo.spanX;
        int i2 = itemInfo.spanY;
        Rect rect = new Rect();
        cellLayout.cellToRect(0, 0, i, i2, rect);
        float f = 1.0f;
        if (z) {
            PointF pointF = this.mLauncher.getDeviceProfile().appWidgetScale;
            f = Utilities.shrinkRect(rect, pointF.x, pointF.y);
        }
        iArr[0] = rect.width();
        iArr[1] = rect.height();
        if (z) {
            iArr[0] = (int) (iArr[0] / f);
            iArr[1] = (int) (iArr[1] / f);
        }
        return iArr;
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        int i = itemInfo.container;
        if (i == -101 || i == -103) {
            this.mLauncher.mHotseat.fillInLogContainerData(itemInfo, launcherLogProto$Target, arrayList);
            return;
        }
        if (i >= 0) {
            ((FolderIcon) getHomescreenIconByItemId(i)).mFolder.fillInLogContainerData(itemInfo, launcherLogProto$Target, arrayList);
            return;
        }
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        launcherLogProto$Target.pageIndex = getCurrentPage();
        arrayList.add(LoggerUtils.newContainerTarget(1));
    }

    public int[] findNearestArea(int i, int i2, int i3, int i4, CellLayout cellLayout, int[] iArr) {
        return cellLayout.findNearestArea(i, i2, i3, i4, iArr);
    }

    @Override // com.android.launcher3.PagedView
    public String getCurrentPageDescription() {
        int i = this.mNextPage;
        if (i == -1) {
            i = this.mCurrentPage;
        }
        int childCount = getChildCount();
        int indexOf = this.mScreenOrder.indexOf(-201);
        if (indexOf >= 0 && childCount > 1) {
            if (i == indexOf) {
                return getContext().getString(R.string.workspace_new_page);
            }
            childCount--;
        }
        return childCount == 0 ? getContext().getString(R.string.all_apps_home_button_label) : getContext().getString(R.string.workspace_scroll_format, Integer.valueOf(i + 1), Integer.valueOf(childCount));
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (workspaceInModalState()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    @Override // com.android.launcher3.PagedView
    public int getExpectedHeight() {
        return (getMeasuredHeight() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().heightPx : getMeasuredHeight();
    }

    @Override // com.android.launcher3.PagedView
    public int getExpectedWidth() {
        return (getMeasuredWidth() <= 0 || !this.mIsLayoutValid) ? this.mLauncher.getDeviceProfile().widthPx : getMeasuredWidth();
    }

    public final View getFirstMatch(CellLayout[] cellLayoutArr, final ItemOperator... itemOperatorArr) {
        int length = itemOperatorArr.length;
        final View[] viewArr = new View[length];
        for (CellLayout cellLayout : cellLayoutArr) {
            mapOverCellLayout(cellLayout, new ItemOperator() { // from class: c.a.a.r0
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view) {
                    return Workspace.b(itemOperatorArr, viewArr, itemInfo, view);
                }
            });
            if (viewArr[0] != null) {
                break;
            }
        }
        for (int i = 0; i < length; i++) {
            View view = viewArr[i];
            if (view != null) {
                return view;
            }
        }
        return null;
    }

    @Override // com.android.launcher3.DropTarget
    public void getHitRectRelativeToDragLayer(Rect rect) {
        this.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(this, rect);
    }

    public View getHomescreenIconByItemId(final int i) {
        ItemOperator itemOperator = new ItemOperator() { // from class: c.a.a.s0
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Workspace.f(i, itemInfo, view);
            }
        };
        View[] viewArr = new View[1];
        mapOverItems(new AnonymousClass7(this, itemOperator, viewArr));
        return viewArr[0];
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public Hotseat getHotseat() {
        return this.mLauncher.mHotseat;
    }

    public int getIdForScreen(CellLayout cellLayout) {
        int indexOfValue = this.mWorkspaceScreens.indexOfValue(cellLayout);
        if (indexOfValue != -1) {
            return this.mWorkspaceScreens.keyAt(indexOfValue);
        }
        return -1;
    }

    public int getPageIndexForScreenId(int i) {
        return indexOfChild((View) this.mWorkspaceScreens.get(i));
    }

    public CellLayout getParentCellLayoutForView(View view) {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout.mShortcutsAndWidgets.indexOfChild(view) > -1) {
                return cellLayout;
            }
        }
        return null;
    }

    public int getScreenIdForPageIndex(int i) {
        IntArray intArray;
        int i2;
        if (i < 0 || i >= (i2 = (intArray = this.mScreenOrder).mSize)) {
            return -1;
        }
        IntArray.checkBounds(i2, i);
        return intArray.mValues[i];
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public CellLayout getScreenWithId(int i) {
        return (CellLayout) this.mWorkspaceScreens.get(i);
    }

    public final CellLayout[] getWorkspaceAndHotseatCellLayouts() {
        CellLayout[] cellLayoutArr;
        int childCount = getChildCount();
        Hotseat hotseat = this.mLauncher.mHotseat;
        if (hotseat != null) {
            cellLayoutArr = new CellLayout[childCount + 1];
            cellLayoutArr[childCount] = hotseat;
        } else {
            cellLayoutArr = new CellLayout[childCount];
        }
        for (int i = 0; i < childCount; i++) {
            cellLayoutArr[i] = (CellLayout) getChildAt(i);
        }
        return cellLayoutArr;
    }

    public /* synthetic */ void h(LauncherAppWidgetHostView launcherAppWidgetHostView, CellLayout cellLayout) {
        if (isPageInTransition()) {
            return;
        }
        AppWidgetResizeFrame.showForWidget(launcherAppWidgetHostView, cellLayout);
    }

    public boolean hasExtraEmptyScreen() {
        return this.mWorkspaceScreens.containsKey(-201) && getChildCount() > 1;
    }

    public /* synthetic */ void i(boolean z, Runnable runnable) {
        removeExtraEmptyScreenDelayed(0, z, runnable);
    }

    public CellLayout insertNewWorkspaceScreen(int i, int i2) {
        if (this.mWorkspaceScreens.indexOfKey(i) >= 0) {
            throw new RuntimeException("Screen id " + i + " already exists!");
        }
        CellLayout cellLayout = (CellLayout) LayoutInflater.from(getContext()).inflate(R.layout.workspace_screen, (ViewGroup) this, false);
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int i3 = deviceProfile.cellLayoutPaddingLeftRightPx;
        cellLayout.setPadding(i3, 0, i3, deviceProfile.cellLayoutBottomPaddingPx);
        this.mWorkspaceScreens.put(i, cellLayout);
        this.mScreenOrder.add(i2, i);
        addView(cellLayout, i2);
        WorkspaceStateTransitionAnimation workspaceStateTransitionAnimation = this.mStateTransitionAnimation;
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
        workspaceStateTransitionAnimation.applyChildState(launcherState, cellLayout, i2, launcherState.getWorkspacePageAlphaProvider(workspaceStateTransitionAnimation.mLauncher), PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
        return cellLayout;
    }

    @Override // com.android.launcher3.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    public boolean isFinishedSwitchingState() {
        return !this.mIsSwitchingState || this.mTransitionProgress > 0.5f;
    }

    public /* synthetic */ boolean j(int i, ItemInfo itemInfo, View view) {
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            if (launcherAppWidgetInfo.appWidgetId == i) {
                this.mLauncher.removeItem(view, launcherAppWidgetInfo, true);
                return true;
            }
        }
        return false;
    }

    public boolean m(Predicate predicate, ItemInfo itemInfo, View view) {
        if ((itemInfo instanceof WorkspaceItemInfo) && (view instanceof BubbleTextView)) {
            if (!predicate.test(itemInfo)) {
                return false;
            }
            ((BubbleTextView) view).applyDotState(itemInfo, true);
            return false;
        }
        if (!(itemInfo instanceof FolderInfo) || !(view instanceof FolderIcon)) {
            return false;
        }
        FolderInfo folderInfo = (FolderInfo) itemInfo;
        if (!folderInfo.contents.stream().anyMatch(predicate)) {
            return false;
        }
        FolderDotInfo folderDotInfo = new FolderDotInfo();
        Iterator it = folderInfo.contents.iterator();
        while (it.hasNext()) {
            folderDotInfo.addDotInfo(this.mLauncher.getDotInfoForItem((WorkspaceItemInfo) it.next()));
        }
        FolderIcon folderIcon = (FolderIcon) view;
        folderIcon.updateDotScale(folderIcon.mDotInfo.hasDot(), folderDotInfo.hasDot());
        folderIcon.mDotInfo = folderDotInfo;
        return false;
    }

    public final boolean mapOverCellLayout(CellLayout cellLayout, ItemOperator itemOperator) {
        if (cellLayout == null) {
            return false;
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
        int childCount = shortcutAndWidgetContainer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = shortcutAndWidgetContainer.getChildAt(i);
            if (itemOperator.evaluate((ItemInfo) childAt.getTag(), childAt)) {
                return true;
            }
        }
        return false;
    }

    public void mapOverItems(ItemOperator itemOperator) {
        CellLayout[] workspaceAndHotseatCellLayouts = getWorkspaceAndHotseatCellLayouts();
        int length = workspaceAndHotseatCellLayouts.length;
        for (int i = 0; i < length && !mapOverCellLayout(workspaceAndHotseatCellLayouts[i], itemOperator); i++) {
        }
    }

    public final void mapPointFromDropLayout(CellLayout cellLayout, float[] fArr) {
        Hotseat hotseat = this.mLauncher.mHotseat;
        if (!(hotseat != null && cellLayout == hotseat)) {
            mapPointFromSelfToChild(cellLayout, fArr);
        } else {
            this.mLauncher.mDragLayer.getDescendantCoordRelativeToSelf(this, fArr, true);
            this.mLauncher.mDragLayer.mapCoordInSelfToDescendant(cellLayout, fArr);
        }
    }

    public final void mapPointFromSelfToChild(View view, float[] fArr) {
        fArr[0] = fArr[0] - view.getLeft();
        fArr[1] = fArr[1] - view.getTop();
    }

    public void moveToDefaultScreen() {
        if (!workspaceInModalState() && getNextPage() != 0) {
            snapToPage(0);
        }
        View childAt = getChildAt(0);
        if (childAt != null) {
            childAt.requestFocus();
        }
    }

    @Override // com.android.launcher3.PagedView
    public void notifyPageSwitchListener(int i) {
        super.notifyPageSwitchListener(i);
        int i2 = this.mCurrentPage;
        if (i != i2) {
            int i3 = i < i2 ? 4 : 3;
            StatsLogManager.LauncherEvent launcherEvent = i < this.mCurrentPage ? StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT : StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT;
            this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, i3, 1, i);
            StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(2);
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex(i);
            newBuilder.copyOnWrite();
            LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
            withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(launcherEvent);
        }
    }

    @Override // com.android.launcher3.WorkspaceLayoutManager
    public void onAddDropTarget(DropTarget dropTarget) {
        this.mDragController.mDropTargets.add(dropTarget);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWallpaperOffset.setWindowToken(getWindowToken());
        computeScroll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWallpaperOffset.setWindowToken(null);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (!this.mDeferRemoveExtraEmptyScreen) {
            removeExtraEmptyScreenDelayed(0, this.mDragSourceInternal != null, null);
        }
        updateChildrenLayersEnabled();
        this.mDragInfo = null;
        this.mOutlineProvider = null;
        this.mDragSourceInternal = null;
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        float[] visualCenter = dragObject.getVisualCenter(this.mDragViewVisualCenter);
        this.mDragViewVisualCenter = visualCenter;
        float f = visualCenter[0];
        float f2 = visualCenter[1];
        setDropLayoutForDragObject(dragObject, f);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        this.mDropToLayout = this.mDragTargetLayout;
        int i = this.mDragMode;
        if (i == 1) {
            this.mCreateUserFolderOnDrop = true;
        } else if (i == 2) {
            this.mAddToExistingFolderOnDrop = true;
        }
        setCurrentDropLayout(null);
        setCurrentDragOverlappingLayout(null);
        this.mSpringLoadedDragController.mAlarm.mAlarmPending = false;
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
        ItemInfo itemInfo;
        int i;
        int i2;
        int i3;
        char c2;
        int i4;
        int i5;
        int i6;
        CellLayout cellLayout;
        int i7;
        if (transitionStateShouldAllowDrop() && (itemInfo = dragObject.dragInfo) != null) {
            if (itemInfo.spanX < 0 || itemInfo.spanY < 0) {
                throw new RuntimeException("Improper spans found");
            }
            this.mDragViewVisualCenter = dragObject.getVisualCenter(this.mDragViewVisualCenter);
            CellLayout.CellInfo cellInfo = this.mDragInfo;
            View view = cellInfo == null ? null : cellInfo.cell;
            float[] fArr = this.mDragViewVisualCenter;
            float f = fArr[0];
            float f2 = fArr[1];
            if (setDropLayoutForDragObject(dragObject, f)) {
                if (this.mLauncher.isHotseatLayout(this.mDragTargetLayout)) {
                    this.mSpringLoadedDragController.mAlarm.mAlarmPending = false;
                } else {
                    SpringLoadedDragController springLoadedDragController = this.mSpringLoadedDragController;
                    CellLayout cellLayout2 = this.mDragTargetLayout;
                    Alarm alarm = springLoadedDragController.mAlarm;
                    alarm.mAlarmPending = false;
                    alarm.setAlarm(cellLayout2 == null ? 950L : 500L);
                    springLoadedDragController.mScreen = cellLayout2;
                }
            }
            CellLayout cellLayout3 = this.mDragTargetLayout;
            if (cellLayout3 != null) {
                mapPointFromDropLayout(cellLayout3, this.mDragViewVisualCenter);
                int i8 = itemInfo.spanX;
                int i9 = itemInfo.spanY;
                int i10 = itemInfo.minSpanX;
                if (i10 <= 0 || (i7 = itemInfo.minSpanY) <= 0) {
                    i = i8;
                    i2 = i9;
                } else {
                    i = i10;
                    i2 = i7;
                }
                float[] fArr2 = this.mDragViewVisualCenter;
                int[] findNearestArea = findNearestArea((int) fArr2[0], (int) fArr2[1], i, i2, this.mDragTargetLayout, this.mTargetCell);
                this.mTargetCell = findNearestArea;
                int i11 = findNearestArea[0];
                int i12 = findNearestArea[1];
                int i13 = findNearestArea[0];
                int i14 = findNearestArea[1];
                if (i13 != this.mDragOverX || i14 != this.mDragOverY) {
                    this.mDragOverX = i13;
                    this.mDragOverY = i14;
                    setDragMode(0);
                }
                CellLayout cellLayout4 = this.mDragTargetLayout;
                float[] fArr3 = this.mDragViewVisualCenter;
                int i15 = 2;
                if (cellLayout4.getDistanceFromCell(fArr3[0], fArr3[1], this.mTargetCell) > this.mMaxDistanceForFolderCreation) {
                    int i16 = this.mDragMode;
                    if (i16 == 2 || i16 == 1) {
                        setDragMode(0);
                    }
                    c2 = 1;
                    i3 = 0;
                } else {
                    CellLayout cellLayout5 = this.mDragTargetLayout;
                    int[] iArr = this.mTargetCell;
                    View childAt = cellLayout5.getChildAt(iArr[0], iArr[1]);
                    ItemInfo itemInfo2 = dragObject.dragInfo;
                    boolean willCreateUserFolder = willCreateUserFolder(itemInfo2, childAt, false);
                    if (this.mDragMode == 0 && willCreateUserFolder) {
                        PreviewBackground previewBackground = new PreviewBackground();
                        this.mFolderCreateBg = previewBackground;
                        Launcher launcher = this.mLauncher;
                        previewBackground.setup(launcher, launcher, null, childAt.getMeasuredWidth(), childAt.getPaddingTop());
                        final PreviewBackground previewBackground2 = this.mFolderCreateBg;
                        previewBackground2.isClipping = false;
                        final CellLayout cellLayout6 = this.mDragTargetLayout;
                        int[] iArr2 = this.mTargetCell;
                        final int i17 = iArr2[0];
                        final int i18 = iArr2[1];
                        previewBackground2.animateScale(1.2f, 1.5f, new Runnable() { // from class: c.a.a.I0.u
                            @Override // java.lang.Runnable
                            public final void run() {
                                PreviewBackground previewBackground3 = PreviewBackground.this;
                                CellLayout cellLayout7 = cellLayout6;
                                int i19 = i17;
                                int i20 = i18;
                                if (previewBackground3.mDrawingDelegate != cellLayout7) {
                                    cellLayout7.mDelegatedCellDrawings.add(previewBackground3);
                                }
                                previewBackground3.mDrawingDelegate = cellLayout7;
                                previewBackground3.mDelegateCellX = i19;
                                previewBackground3.mDelegateCellY = i20;
                                previewBackground3.invalidate();
                            }
                        }, null);
                        this.mDragTargetLayout.clearDragOutlines();
                        setDragMode(1);
                        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
                        if (dragViewStateAnnouncer != null) {
                            dragViewStateAnnouncer.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(childAt, getContext()));
                        }
                        c2 = 1;
                        i3 = 0;
                    } else {
                        boolean willAddToExistingUserFolder = willAddToExistingUserFolder(itemInfo2, childAt);
                        if (willAddToExistingUserFolder && this.mDragMode == 0) {
                            FolderIcon folderIcon = (FolderIcon) childAt;
                            this.mDragOverFolderIcon = folderIcon;
                            if (!folderIcon.mFolder.mDestroyed && folderIcon.willAcceptItem(itemInfo2)) {
                                CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) folderIcon.getLayoutParams();
                                final CellLayout cellLayout7 = (CellLayout) folderIcon.getParent().getParent();
                                final PreviewBackground previewBackground3 = folderIcon.mBackground;
                                final int i19 = layoutParams.cellX;
                                final int i20 = layoutParams.cellY;
                                previewBackground3.animateScale(1.2f, 1.5f, new Runnable() { // from class: c.a.a.I0.u
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        PreviewBackground previewBackground32 = PreviewBackground.this;
                                        CellLayout cellLayout72 = cellLayout7;
                                        int i192 = i19;
                                        int i202 = i20;
                                        if (previewBackground32.mDrawingDelegate != cellLayout72) {
                                            cellLayout72.mDelegatedCellDrawings.add(previewBackground32);
                                        }
                                        previewBackground32.mDrawingDelegate = cellLayout72;
                                        previewBackground32.mDelegateCellX = i192;
                                        previewBackground32.mDelegateCellY = i202;
                                        previewBackground32.invalidate();
                                    }
                                }, null);
                                folderIcon.mOpenAlarm.mAlarmListener = folderIcon.mOnOpenListener;
                                if ((itemInfo2 instanceof AppInfo) || (itemInfo2 instanceof WorkspaceItemInfo) || (itemInfo2 instanceof PendingAddShortcutInfo)) {
                                    folderIcon.mOpenAlarm.setAlarm(800L);
                                }
                            }
                            CellLayout cellLayout8 = this.mDragTargetLayout;
                            if (cellLayout8 != null) {
                                cellLayout8.clearDragOutlines();
                            }
                            setDragMode(2);
                            DragViewStateAnnouncer dragViewStateAnnouncer2 = dragObject.stateAnnouncer;
                            if (dragViewStateAnnouncer2 != null) {
                                dragViewStateAnnouncer2.announce(WorkspaceAccessibilityHelper.getDescriptionForDropOver(childAt, getContext()));
                            }
                            i3 = 0;
                            c2 = 1;
                            i15 = 2;
                        } else {
                            i15 = 2;
                            if (this.mDragMode != 2 || willAddToExistingUserFolder) {
                                i3 = 0;
                            } else {
                                i3 = 0;
                                setDragMode(0);
                            }
                            c2 = 1;
                            if (this.mDragMode == 1 && !willCreateUserFolder) {
                                setDragMode(i3);
                            }
                        }
                    }
                }
                CellLayout cellLayout9 = this.mDragTargetLayout;
                float[] fArr4 = this.mDragViewVisualCenter;
                int i21 = (int) fArr4[i3];
                int i22 = (int) fArr4[c2];
                int i23 = itemInfo.spanX;
                int i24 = itemInfo.spanY;
                int[] findNearestArea2 = cellLayout9.findNearestArea(i21, i22, i23, i24, this.mTargetCell);
                cellLayout9.getViewsIntersectingRegion(findNearestArea2[0], findNearestArea2[1], i23, i24, view, null, cellLayout9.mIntersectingViews);
                boolean z = !cellLayout9.mIntersectingViews.isEmpty();
                if (z) {
                    i4 = i15;
                    int i25 = this.mDragMode;
                    if ((i25 == 0 || i25 == 3) && !this.mReorderAlarm.mAlarmPending && (this.mLastReorderX != i11 || this.mLastReorderY != i12)) {
                        CellLayout cellLayout10 = this.mDragTargetLayout;
                        float[] fArr5 = this.mDragViewVisualCenter;
                        cellLayout10.performReorder((int) fArr5[0], (int) fArr5[1], i, i2, itemInfo.spanX, itemInfo.spanY, view, this.mTargetCell, new int[i4], 0);
                        i5 = i4;
                        ReorderAlarmListener reorderAlarmListener = new ReorderAlarmListener(this.mDragViewVisualCenter, i, i2, itemInfo.spanX, itemInfo.spanY, dragObject, view);
                        Alarm alarm2 = this.mReorderAlarm;
                        alarm2.mAlarmListener = reorderAlarmListener;
                        alarm2.setAlarm(650L);
                        i6 = this.mDragMode;
                        if ((i6 == 1 && i6 != i5 && z) || (cellLayout = this.mDragTargetLayout) == null) {
                            return;
                        }
                        cellLayout.revertTempState();
                    }
                } else {
                    CellLayout cellLayout11 = this.mDragTargetLayout;
                    DraggableView draggableView = dragObject.originalView;
                    DragPreviewProvider dragPreviewProvider = this.mOutlineProvider;
                    int[] iArr3 = this.mTargetCell;
                    i4 = i15;
                    cellLayout11.visualizeDropLocation(draggableView, dragPreviewProvider, iArr3[0], iArr3[1], itemInfo.spanX, itemInfo.spanY, false, dragObject);
                }
                i5 = i4;
                i6 = this.mDragMode;
                if (i6 == 1) {
                }
                cellLayout.revertTempState();
            }
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        boolean z;
        boolean z2;
        boolean z3;
        DragView dragView;
        View view;
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null && (view = cellInfo.cell) != null) {
            ((CellLayout) view.getParent().getParent()).markCellsAsUnoccupiedForView(this.mDragInfo.cell);
        }
        DragPreviewProvider dragPreviewProvider = this.mOutlineProvider;
        if (dragPreviewProvider != null && (dragView = dragObject.dragView) != null) {
            Bitmap bitmap = dragView.mBitmap;
            Objects.requireNonNull(dragPreviewProvider);
            DragPreviewProvider.OutlineGeneratorCallback outlineGeneratorCallback = dragPreviewProvider.new OutlineGeneratorCallback(bitmap);
            dragPreviewProvider.mOutlineGeneratorCallback = outlineGeneratorCallback;
            Executors.UI_HELPER_EXECUTOR.mHandler.post(outlineGeneratorCallback);
        }
        updateChildrenLayersEnabled();
        int i = 0;
        char c2 = 1;
        if (!dragOptions.isAccessibleDrag || dragObject.dragSource == this) {
            this.mDeferRemoveExtraEmptyScreen = false;
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mDragSourceInternal;
            if (shortcutAndWidgetContainer != null) {
                z = shortcutAndWidgetContainer.getChildCount() == 1;
                z2 = indexOfChild((CellLayout) this.mDragSourceInternal.getParent()) == getChildCount() - 1;
            } else {
                z = false;
                z2 = false;
            }
            if ((!z || !z2) && !this.mWorkspaceScreens.containsKey(-201)) {
                insertNewWorkspaceScreen(-201, getChildCount());
            }
            if (dragObject.dragInfo.itemType == 4 && dragObject.dragSource != this) {
                int pageNearestToCenterOfScreen = getPageNearestToCenterOfScreen();
                while (true) {
                    if (pageNearestToCenterOfScreen >= getPageCount()) {
                        break;
                    }
                    CellLayout cellLayout = (CellLayout) getPageAt(pageNearestToCenterOfScreen);
                    ItemInfo itemInfo = dragObject.dragInfo;
                    int[] iArr = new int[2];
                    int i2 = i;
                    while (true) {
                        if (i2 >= cellLayout.mCountX) {
                            z3 = false;
                            break;
                        }
                        int i3 = i;
                        while (i3 < cellLayout.mCountY) {
                            cellLayout.cellToPoint(i2, i3, iArr);
                            int i4 = i3;
                            int i5 = i2;
                            int[] iArr2 = iArr;
                            ItemInfo itemInfo2 = itemInfo;
                            if (cellLayout.findReorderSolution(iArr[i], iArr[c2], itemInfo.minSpanX, itemInfo.minSpanY, itemInfo.spanX, itemInfo.spanY, cellLayout.mDirectionVector, null, true, new CellLayout.ItemConfiguration(null)).isSolution) {
                                z3 = true;
                                break;
                            }
                            i3 = i4 + 1;
                            iArr = iArr2;
                            i2 = i5;
                            itemInfo = itemInfo2;
                            i = 0;
                            c2 = 1;
                        }
                        i2++;
                        i = 0;
                        c2 = 1;
                    }
                    if (z3) {
                        setCurrentPage(pageNearestToCenterOfScreen);
                        break;
                    } else {
                        pageNearestToCenterOfScreen++;
                        i = 0;
                        c2 = 1;
                    }
                }
            }
        }
        this.mLauncher.getStateManager().goToState(LauncherState.SPRING_LOADED);
        this.mStatsLogManager.logger().withItemInfo(dragObject.dragInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DRAG_STARTED);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x05d4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x053a  */
    /* JADX WARN: Type inference failed for: r33v0, types: [android.view.View, com.android.launcher3.PagedView, com.android.launcher3.Workspace, com.android.launcher3.WorkspaceLayoutManager] */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    @Override // com.android.launcher3.DropTarget
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDrop(final com.android.launcher3.DropTarget.DragObject r34, com.android.launcher3.dragndrop.DragOptions r35) {
        /*
            Method dump skipped, instructions count: 1501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.onDrop(com.android.launcher3.DropTarget$DragObject, com.android.launcher3.dragndrop.DragOptions):void");
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
        CellLayout cellLayout;
        CellLayout.CellInfo cellInfo;
        if (!z) {
            CellLayout.CellInfo cellInfo2 = this.mDragInfo;
            if (cellInfo2 != null && (cellLayout = this.mLauncher.getCellLayout(cellInfo2.container, cellInfo2.screenId)) != null) {
                cellLayout.onDropChild(this.mDragInfo.cell);
            }
        } else if (view != this && (cellInfo = this.mDragInfo) != null) {
            removeWorkspaceItem(cellInfo.cell);
        }
        View homescreenIconByItemId = getHomescreenIconByItemId(dragObject.originalDragInfo.id);
        if (dragObject.cancelled && homescreenIconByItemId != null) {
            homescreenIconByItemId.setVisibility(0);
        }
        this.mDragInfo = null;
    }

    public final void onEndStateTransition() {
        this.mIsSwitchingState = false;
        this.mForceDrawAdjacentPages = false;
        this.mTransitionProgress = 1.0f;
        updateChildrenLayersEnabled();
        int i = ((LauncherState) this.mLauncher.getStateManager().mState).hasFlag(LauncherState.FLAG_WORKSPACE_INACCESSIBLE) ? 4 : 0;
        if (this.mLauncher.mAccessibilityDelegate.isInAccessibleDrag()) {
            return;
        }
        int pageCount = getPageCount();
        for (int i2 = 0; i2 < pageCount; i2++) {
            CellLayout cellLayout = (CellLayout) getPageAt(i2);
            cellLayout.setImportantForAccessibility(2);
            cellLayout.mShortcutsAndWidgets.setImportantForAccessibility(i);
            cellLayout.setContentDescription(null);
            cellLayout.setAccessibilityDelegate(null);
        }
        setImportantForAccessibility(i);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.mXDown = motionEvent.getX();
            this.mYDown = motionEvent.getY();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (this.mUnlockWallpaperFromDefaultPageOnLayout) {
            this.mWallpaperOffset.mLockedToDefaultPage = false;
            this.mUnlockWallpaperFromDefaultPageOnLayout = false;
        }
        if (this.mFirstLayout && (i5 = this.mCurrentPage) >= 0 && i5 < getChildCount()) {
            this.mWallpaperOffset.syncWithScroll();
            WallpaperOffsetInterpolator wallpaperOffsetInterpolator = this.mWallpaperOffset;
            Message.obtain(wallpaperOffsetInterpolator.mHandler, 5, wallpaperOffsetInterpolator.mWindowToken).sendToTarget();
        }
        super.onLayout(z, i, i2, i3, i4);
        updatePageAlphaValues();
    }

    public void onNoCellFound(View view) {
        Hotseat hotseat = this.mLauncher.mHotseat;
        int i = hotseat != null && view == hotseat ? R.string.hotseat_out_of_space : R.string.out_of_space;
        Launcher launcher = this.mLauncher;
        Toast.makeText(launcher, launcher.getString(i), 0).show();
    }

    public void onOverlayScrollChanged(float f) {
        if (Float.compare(f, 1.0f) == 0) {
            if (!this.mOverlayShown) {
                this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, 3, 1, 0);
                StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(2);
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
                newBuilder2.setPageIndex(0);
                newBuilder.copyOnWrite();
                LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
                withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_SWIPELEFT);
            }
            this.mOverlayShown = true;
        } else if (Float.compare(f, RecentsState.NO_OFFSET) == 0) {
            if (this.mOverlayShown) {
                if (!this.mLauncher.getUserEventDispatcher().isPreviousHomeGesture()) {
                    this.mLauncher.getUserEventDispatcher().logActionOnContainer(3, 4, 1, -1);
                    StatsLogManager.StatsLogger withDstState2 = this.mLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(2);
                    LauncherAtom$ContainerInfo.Builder newBuilder3 = LauncherAtom$ContainerInfo.newBuilder();
                    LauncherAtom$WorkspaceContainer.Builder newBuilder4 = LauncherAtom$WorkspaceContainer.newBuilder();
                    newBuilder4.setPageIndex(-1);
                    newBuilder3.copyOnWrite();
                    LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder3.instance, newBuilder4);
                    withDstState2.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder3.build()).log(StatsLogManager.LauncherEvent.LAUNCHER_SWIPERIGHT);
                }
            } else if (Float.compare(this.mOverlayTranslation, RecentsState.NO_OFFSET) != 0) {
                announcePageForAccessibility();
            }
            this.mOverlayShown = false;
            tryRunOverlayCallback();
        }
        float min = Math.min(1.0f, Math.max(f - RecentsState.NO_OFFSET, RecentsState.NO_OFFSET) / 1.0f);
        float interpolation = 1.0f - Interpolators.DEACCEL_3.getInterpolation(min);
        float measuredWidth = this.mLauncher.mDragLayer.getMeasuredWidth() * min;
        if (this.mIsRtl) {
            measuredWidth = -measuredWidth;
        }
        this.mOverlayTranslation = measuredWidth;
        this.mLauncher.mDragLayer.setTranslationX(measuredWidth);
        this.mLauncher.mDragLayer.getAlphaProperty(0).setValue(interpolation);
    }

    @Override // com.android.launcher3.PagedView
    public boolean onOverscroll(int i) {
        if (i > 0 && !this.mIsRtl) {
            return false;
        }
        if (i >= 0 || !this.mIsRtl) {
            return super.onOverscroll(i);
        }
        return false;
    }

    @Override // com.android.launcher3.PagedView
    public void onPageBeginTransition() {
        super.onPageBeginTransition();
        updateChildrenLayersEnabled();
    }

    @Override // com.android.launcher3.PagedView
    public void onPageEndTransition() {
        super.onPageEndTransition();
        updateChildrenLayersEnabled();
        if (this.mDragController.isDragging() && workspaceInModalState()) {
            this.mDragController.forceTouchMove();
        }
        if (this.mStripScreensOnPageStopMoving) {
            stripEmptyScreens();
            this.mStripScreensOnPageStopMoving = false;
        }
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (!(this.mIsSwitchingState || (getLayoutTransition() != null && getLayoutTransition().isRunning()))) {
            showPageIndicatorAtCurrentScroll();
        }
        updatePageAlphaValues();
        enableHwLayersOnVisiblePages();
    }

    @Override // com.android.launcher3.PagedView
    public void onScrollInteractionBegin() {
        super.onScrollInteractionBegin();
        this.mScrollInteractionBegan = true;
    }

    @Override // com.android.launcher3.PagedView
    public void onScrollInteractionEnd() {
        super.onScrollInteractionEnd();
        this.mScrollInteractionBegan = false;
        if (this.mStartedSendingScrollEvents) {
            this.mStartedSendingScrollEvents = false;
            this.mLauncherOverlay.onScrollInteractionEnd();
        }
    }

    public final void onStartStateTransition() {
        this.mIsSwitchingState = true;
        this.mTransitionProgress = RecentsState.NO_OFFSET;
        updateChildrenLayersEnabled();
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return (((LauncherState) this.mLauncher.getStateManager().mState).hasFlag(LauncherState.FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED) && (workspaceInModalState() || indexOfChild(view) == this.mCurrentPage)) ? false : true;
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewAdded(View view) {
        if (!(view instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        CellLayout cellLayout = (CellLayout) view;
        cellLayout.mInterceptTouchListener = this;
        cellLayout.setImportantForAccessibility(2);
        super.onViewAdded(view);
    }

    @Override // com.android.launcher3.PagedView
    public void overScroll(int i) {
        boolean z = false;
        boolean z2 = (this.mLauncherOverlay == null || this.mScroller.isSpringing() || ((i > 0 || this.mIsRtl) && (i < 0 || !this.mIsRtl))) ? false : true;
        if (this.mLauncherOverlay != null && this.mLastOverlayScroll != RecentsState.NO_OFFSET && ((i >= 0 && !this.mIsRtl) || (i <= 0 && this.mIsRtl))) {
            z = true;
        }
        if (z2) {
            if (!this.mStartedSendingScrollEvents && this.mScrollInteractionBegan) {
                this.mStartedSendingScrollEvents = true;
                this.mLauncherOverlay.onScrollInteractionBegin();
            }
            float abs = Math.abs(i / getMeasuredWidth());
            this.mLastOverlayScroll = abs;
            this.mLauncherOverlay.onScrollChange(abs, this.mIsRtl);
        } else {
            dampedOverScroll(i);
        }
        if (z) {
            this.mLauncherOverlay.onScrollChange(RecentsState.NO_OFFSET, this.mIsRtl);
        }
    }

    @Override // com.android.launcher3.DropTarget
    public void prepareAccessibilityDrop() {
    }

    public void removeExtraEmptyScreenDelayed(int i, final boolean z, final Runnable runnable) {
        IntArray intArray;
        int i2;
        boolean z2 = this.mLauncher.mWorkspaceLoading;
        if (z2) {
            return;
        }
        if (i > 0) {
            postDelayed(new Runnable() { // from class: c.a.a.q0
                @Override // java.lang.Runnable
                public final void run() {
                    Workspace.this.i(z, runnable);
                }
            }, i);
            return;
        }
        if (!z2 && !hasExtraEmptyScreen() && (i2 = (intArray = this.mScreenOrder).mSize) != 0) {
            int i3 = intArray.get(i2 - 1);
            CellLayout cellLayout = (CellLayout) this.mWorkspaceScreens.get(i3);
            if (cellLayout.mShortcutsAndWidgets.getChildCount() == 0 && !cellLayout.mDropPending) {
                this.mWorkspaceScreens.remove(i3);
                this.mScreenOrder.removeValue(i3);
                this.mWorkspaceScreens.put(-201, cellLayout);
                IntArray intArray2 = this.mScreenOrder;
                intArray2.add(intArray2.mSize, -201);
            }
        }
        if (hasExtraEmptyScreen()) {
            removeView((View) this.mWorkspaceScreens.get(-201));
            this.mWorkspaceScreens.remove(-201);
            this.mScreenOrder.removeValue(-201);
            showPageIndicatorAtCurrentScroll();
        }
        if (z) {
            stripEmptyScreens();
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeItemsByMatcher(ItemInfoMatcher itemInfoMatcher) {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            IntSparseArrayMap intSparseArrayMap = new IntSparseArrayMap();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < shortcutAndWidgetContainer.getChildCount(); i++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i);
                if (childAt.getTag() instanceof ItemInfo) {
                    ItemInfo itemInfo = (ItemInfo) childAt.getTag();
                    arrayList.add(itemInfo);
                    intSparseArrayMap.put(itemInfo.id, childAt);
                }
            }
            Iterator it = itemInfoMatcher.filterItemInfos(arrayList).iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo2 = (ItemInfo) it.next();
                View view = (View) intSparseArrayMap.get(itemInfo2.id);
                if (view != 0) {
                    cellLayout.removeViewInLayout(view);
                    if (view instanceof DropTarget) {
                        this.mDragController.mDropTargets.remove((DropTarget) view);
                    }
                } else {
                    int i2 = itemInfo2.container;
                    if (i2 >= 0) {
                        View view2 = (View) intSparseArrayMap.get(i2);
                        if (view2 instanceof FolderIcon) {
                            ((FolderInfo) view2.getTag()).remove((WorkspaceItemInfo) itemInfo2, false);
                            FolderIcon folderIcon = (FolderIcon) view2;
                            if (folderIcon.mFolder.isOpen()) {
                                folderIcon.mFolder.close(false);
                            }
                        }
                    }
                }
            }
        }
        stripEmptyScreens();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeWorkspaceItem(View view) {
        CellLayout parentCellLayoutForView = getParentCellLayoutForView(view);
        if (parentCellLayoutForView != null) {
            parentCellLayoutForView.removeView(view);
        }
        if (view instanceof DropTarget) {
            this.mDragController.mDropTargets.remove((DropTarget) view);
        }
    }

    public void resetTransitionTransform() {
        if (this.mIsSwitchingState) {
            setScaleX(this.mCurrentScale);
            setScaleY(this.mCurrentScale);
        }
    }

    public void restoreInstanceStateForChild(int i) {
        if (this.mSavedStates != null) {
            IntArray intArray = this.mRestoredPages;
            intArray.add(intArray.mSize, i);
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            if (cellLayout != null) {
                try {
                    cellLayout.dispatchRestoreInstanceState(this.mSavedStates);
                } catch (IllegalArgumentException e) {
                    Log.e("CellLayout", "Ignoring an error while restoring a view instance state", e);
                }
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollLeft() {
        boolean scrollLeft = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollLeft();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return scrollLeft;
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollRight() {
        boolean scrollRight = (this.mIsSwitchingState || !workspaceInScrollableState()) ? false : super.scrollRight();
        Folder open = Folder.getOpen(this.mLauncher);
        if (open != null) {
            open.completeDragExit();
        }
        return scrollRight;
    }

    public void setCurrentDragOverlappingLayout(CellLayout cellLayout) {
        CellLayout cellLayout2 = this.mDragOverlappingLayout;
        if (cellLayout2 != null) {
            cellLayout2.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = cellLayout;
        if (cellLayout != null) {
            cellLayout.setIsDragOverlapping(true);
        }
        this.mLauncher.mDragLayer.mWorkspaceScrim.mRoot.invalidate();
    }

    public void setCurrentDropLayout(CellLayout cellLayout) {
        CellLayout cellLayout2 = this.mDragTargetLayout;
        if (cellLayout2 != null) {
            cellLayout2.revertTempState();
            CellLayout cellLayout3 = this.mDragTargetLayout;
            if (cellLayout3.mDragging) {
                cellLayout3.mDragging = false;
            }
            int[] iArr = cellLayout3.mDragCell;
            iArr[1] = -1;
            iArr[0] = -1;
            cellLayout3.mDragOutlineAnims[cellLayout3.mDragOutlineCurrent].animate(2);
            cellLayout3.mDragOutlineCurrent = (cellLayout3.mDragOutlineCurrent + 1) % cellLayout3.mDragOutlineAnims.length;
            cellLayout3.revertTempState();
            cellLayout3.setIsDragOverlapping(false);
        }
        this.mDragTargetLayout = cellLayout;
        if (cellLayout != null) {
            cellLayout.mDragging = true;
        }
        cleanupReorder(true);
        cleanupFolderCreation();
        if (-1 == this.mDragOverX && -1 == this.mDragOverY) {
            return;
        }
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        setDragMode(0);
    }

    public void setDragMode(int i) {
        if (i != this.mDragMode) {
            if (i == 0) {
                cleanupAddToFolder();
                cleanupReorder(false);
                cleanupFolderCreation();
            } else if (i == 2) {
                cleanupReorder(true);
                cleanupFolderCreation();
            } else if (i == 1) {
                cleanupAddToFolder();
                cleanupReorder(true);
            } else if (i == 3) {
                cleanupAddToFolder();
                cleanupFolderCreation();
            }
            this.mDragMode = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00de A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean setDropLayoutForDragObject(com.android.launcher3.DropTarget.DragObject r7, float r8) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.setDropLayoutForDragObject(com.android.launcher3.DropTarget$DragObject, float):boolean");
    }

    public void setFinalTransitionTransform() {
        if (this.mIsSwitchingState) {
            this.mCurrentScale = getScaleX();
            setScaleX(this.mStateTransitionAnimation.mNewScale);
            setScaleY(this.mStateTransitionAnimation.mNewScale);
        }
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mMaxDistanceForFolderCreation = deviceProfile.iconSizePx * (deviceProfile.isTablet ? 0.75f : 0.55f);
        this.mWorkspaceFadeInAdjacentScreens = deviceProfile.isVerticalBarLayout() || deviceProfile.isLargeTablet;
        Rect rect2 = deviceProfile.workspacePadding;
        setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        this.mInsets.set(rect);
        if (this.mWorkspaceFadeInAdjacentScreens) {
            setPageSpacing(deviceProfile.edgeMarginPx);
        } else {
            setPageSpacing(Math.max(deviceProfile.edgeMarginPx, rect2.left + 1));
        }
        int i = deviceProfile.cellLayoutPaddingLeftRightPx;
        int i2 = deviceProfile.cellLayoutBottomPaddingPx;
        for (int size = this.mWorkspaceScreens.size() - 1; size >= 0; size--) {
            ((CellLayout) this.mWorkspaceScreens.valueAt(size)).setPadding(i, 0, i, i2);
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(Object obj) {
        onStartStateTransition();
        this.mStateTransitionAnimation.setWorkspaceProperty((LauncherState) obj, PropertySetter.NO_ANIM_PROPERTY_SETTER, new StateAnimationConfig());
        onEndStateTransition();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        StateTransitionListener stateTransitionListener = new StateTransitionListener(launcherState);
        this.mStateTransitionAnimation.setWorkspaceProperty(launcherState, pendingAnimation, stateAnimationConfig);
        if (launcherState.hasFlag(LauncherState.FLAG_MULTI_PAGE)) {
            this.mForceDrawAdjacentPages = true;
        }
        invalidate();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(RecentsState.NO_OFFSET, 1.0f);
        ofFloat.addUpdateListener(stateTransitionListener);
        ofFloat.addListener(stateTransitionListener);
        pendingAnimation.add(ofFloat);
    }

    @Override // com.android.launcher3.PagedView
    public boolean shouldFlingForVelocity(int i) {
        return Float.compare(Math.abs(this.mOverlayTranslation), RecentsState.NO_OFFSET) == 0 && super.shouldFlingForVelocity(i);
    }

    public void showPageIndicatorAtCurrentScroll() {
        View view = this.mPageIndicator;
        if (view != null) {
            WorkspacePageIndicator workspacePageIndicator = (WorkspacePageIndicator) view;
            int scrollX = getScrollX();
            int computeMaxScroll = computeMaxScroll();
            if (workspacePageIndicator.getAlpha() == RecentsState.NO_OFFSET) {
                return;
            }
            workspacePageIndicator.animateLineToAlpha(workspacePageIndicator.mActiveAlpha);
            workspacePageIndicator.mCurrentScroll = scrollX;
            int i = workspacePageIndicator.mTotalScroll;
            if (i == 0) {
                workspacePageIndicator.mTotalScroll = computeMaxScroll;
            } else if (i != computeMaxScroll) {
                workspacePageIndicator.setupAndRunAnimation(ObjectAnimator.ofInt(workspacePageIndicator, (Property<WorkspacePageIndicator, Integer>) WorkspacePageIndicator.TOTAL_SCROLL, computeMaxScroll), 2);
            } else {
                workspacePageIndicator.invalidate();
            }
            if (workspacePageIndicator.mShouldAutoHide) {
                workspacePageIndicator.mDelayedLineFadeHandler.removeCallbacksAndMessages(null);
                workspacePageIndicator.mDelayedLineFadeHandler.postDelayed(workspacePageIndicator.mHideLineRunnable, WorkspacePageIndicator.LINE_FADE_DELAY);
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    public void snapToDestination() {
        if (!(this.mLauncherOverlay != null && ((this.mIsRtl && getUnboundedScroll() > this.mMaxScroll) || (!this.mIsRtl && getUnboundedScroll() < this.mMinScroll)))) {
            super.snapToDestination();
        } else {
            this.mWasInOverscroll = false;
            snapToPageImmediately(0);
        }
    }

    public void stripEmptyScreens() {
        if (this.mLauncher.mWorkspaceLoading) {
            return;
        }
        if (isPageInTransition()) {
            this.mStripScreensOnPageStopMoving = true;
            return;
        }
        int nextPage = getNextPage();
        int[] iArr = new int[10];
        int size = this.mWorkspaceScreens.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = this.mWorkspaceScreens.keyAt(i2);
            CellLayout cellLayout = (CellLayout) this.mWorkspaceScreens.valueAt(i2);
            if (keyAt > 0 && cellLayout.mShortcutsAndWidgets.getChildCount() == 0) {
                int i3 = 1 + i;
                if (i3 >= iArr.length) {
                    int i4 = (i < 6 ? 12 : i >> 1) + i;
                    if (i4 > i3) {
                        i3 = i4;
                    }
                    int[] iArr2 = new int[i3];
                    System.arraycopy(iArr, 0, iArr2, 0, i);
                    iArr = iArr2;
                }
                int i5 = i - i;
                int i6 = i + 1;
                IntArray.checkBounds(i6, i);
                if (i5 != 0) {
                    System.arraycopy(iArr, i, iArr, i + 1, i5);
                }
                iArr[i] = keyAt;
                i = i6;
            }
        }
        int i7 = 0;
        for (int i8 = 0; i8 < i; i8++) {
            IntArray.checkBounds(i, i8);
            int i9 = iArr[i8];
            CellLayout cellLayout2 = (CellLayout) this.mWorkspaceScreens.get(i9);
            this.mWorkspaceScreens.remove(i9);
            this.mScreenOrder.removeValue(i9);
            if (getChildCount() > 1) {
                if (indexOfChild(cellLayout2) < nextPage) {
                    i7++;
                }
                removeView(cellLayout2);
            } else {
                this.mWorkspaceScreens.put(-201, cellLayout2);
                IntArray intArray = this.mScreenOrder;
                intArray.add(intArray.mSize, -201);
            }
        }
        if (i7 >= 0) {
            setCurrentPage(nextPage - i7);
        }
    }

    public final boolean transitionStateShouldAllowDrop() {
        return (!this.mIsSwitchingState || this.mTransitionProgress > 0.25f) && ((LauncherState) this.mLauncher.getStateManager().mState).hasFlag(LauncherState.FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED);
    }

    public final boolean tryRunOverlayCallback() {
        if (this.mOnOverlayHiddenCallback == null) {
            return true;
        }
        if (this.mOverlayShown || !hasWindowFocus()) {
            return false;
        }
        this.mOnOverlayHiddenCallback.run();
        this.mOnOverlayHiddenCallback = null;
        return true;
    }

    public final void updateChildrenLayersEnabled() {
        boolean z = this.mIsSwitchingState || isPageInTransition();
        if (z != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = z;
            if (z) {
                enableHwLayersOnVisiblePages();
                return;
            }
            for (int i = 0; i < getPageCount(); i++) {
                ((CellLayout) getChildAt(i)).enableHardwareLayer(false);
            }
        }
    }

    public final void updatePageAlphaValues() {
        if (workspaceInModalState() || this.mIsSwitchingState || this.mDragController.isDragging()) {
            return;
        }
        int measuredWidth = (getMeasuredWidth() / 2) + getScrollX();
        for (int i = 0; i < getChildCount(); i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            if (cellLayout != null) {
                float abs = 1.0f - Math.abs(getScrollProgress(measuredWidth, cellLayout, i));
                if (this.mWorkspaceFadeInAdjacentScreens) {
                    cellLayout.mShortcutsAndWidgets.setAlpha(abs);
                } else {
                    cellLayout.mShortcutsAndWidgets.setImportantForAccessibility(abs > RecentsState.NO_OFFSET ? 0 : 4);
                }
            }
        }
    }

    public final CellLayout verifyInsidePage(int i, float[] fArr) {
        if (i < 0 || i >= getPageCount()) {
            return null;
        }
        CellLayout cellLayout = (CellLayout) getChildAt(i);
        mapPointFromSelfToChild(cellLayout, fArr);
        if (fArr[0] < RecentsState.NO_OFFSET || fArr[0] > cellLayout.getWidth() || fArr[1] < RecentsState.NO_OFFSET || fArr[1] > cellLayout.getHeight()) {
            return null;
        }
        return cellLayout;
    }

    public boolean willAddToExistingUserFolder(ItemInfo itemInfo, CellLayout cellLayout, int[] iArr, float f) {
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        return willAddToExistingUserFolder(itemInfo, cellLayout.getChildAt(iArr[0], iArr[1]));
    }

    public boolean willCreateUserFolder(ItemInfo itemInfo, CellLayout cellLayout, int[] iArr, float f, boolean z) {
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        return willCreateUserFolder(itemInfo, cellLayout.getChildAt(iArr[0], iArr[1]), z);
    }

    public final boolean workspaceInModalState() {
        return !this.mLauncher.isInState(LauncherState.NORMAL);
    }

    public final boolean workspaceInScrollableState() {
        return this.mLauncher.isInState(LauncherState.SPRING_LOADED) || !workspaceInModalState();
    }

    public Workspace(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mWorkspaceScreens = new IntSparseArrayMap();
        this.mScreenOrder = new IntArray(10);
        this.mDeferRemoveExtraEmptyScreen = false;
        this.mTargetCell = new int[2];
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        new Rect();
        this.mTempXY = new int[2];
        this.mTempFXY = new float[2];
        this.mDragViewVisualCenter = new float[2];
        this.mTempTouchCoordinates = new float[2];
        this.mIsSwitchingState = false;
        this.mChildrenLayersEnabled = true;
        this.mStripScreensOnPageStopMoving = false;
        this.mOutlineProvider = null;
        this.mReorderAlarm = new Alarm();
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDragMode = 0;
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
        this.mRestoredPages = new IntArray(10);
        this.mLastOverlayScroll = RecentsState.NO_OFFSET;
        this.mOverlayShown = false;
        this.mForceDrawAdjacentPages = false;
        Launcher launcher = Launcher.getLauncher(context);
        this.mLauncher = launcher;
        this.mStateTransitionAnimation = new WorkspaceStateTransitionAnimation(launcher, this);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mWallpaperOffset = new WallpaperOffsetInterpolator(this);
        setHapticFeedbackEnabled(false);
        this.mCurrentPage = 0;
        setClipToPadding(false);
        LayoutTransition layoutTransition = new LayoutTransition();
        this.mLayoutTransition = layoutTransition;
        layoutTransition.enableTransitionType(3);
        this.mLayoutTransition.enableTransitionType(1);
        this.mLayoutTransition.setInterpolator(3, Interpolators.clampToProgress(Interpolators.ACCEL_DEACCEL, RecentsState.NO_OFFSET, 0.5f));
        this.mLayoutTransition.setInterpolator(1, Interpolators.clampToProgress(Interpolators.ACCEL_DEACCEL, 0.5f, 1.0f));
        this.mLayoutTransition.disableTransitionType(2);
        this.mLayoutTransition.disableTransitionType(0);
        setLayoutTransition(this.mLayoutTransition);
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.Workspace.2
            @Override // java.lang.Runnable
            public void run() {
                Point point = LauncherAppState.getIDP(Workspace.this.getContext()).defaultWallpaperSize;
                if (point.x == Workspace.this.mWallpaperManager.getDesiredMinimumWidth() && point.y == Workspace.this.mWallpaperManager.getDesiredMinimumHeight()) {
                    return;
                }
                Workspace.this.mWallpaperManager.suggestDesiredDimensions(point.x, point.y);
            }
        });
        setMotionEventSplittingEnabled(true);
        setOnTouchListener(new WorkspaceTouchListener(this.mLauncher, this));
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }

    @Override // com.android.launcher3.PagedView
    public void determineScrollingStart(MotionEvent motionEvent) {
        if (isFinishedSwitchingState()) {
            float abs = Math.abs(motionEvent.getX() - this.mXDown);
            float abs2 = Math.abs(motionEvent.getY() - this.mYDown);
            if (Float.compare(abs, RecentsState.NO_OFFSET) == 0) {
                return;
            }
            float atan = (float) Math.atan(abs2 / abs);
            float f = this.mTouchSlop;
            if (abs > f || abs2 > f) {
                cancelCurrentPageLongPress();
            }
            if (atan > 1.0471976f) {
                return;
            }
            if (atan > 0.5235988f) {
                super.determineScrollingStart(motionEvent, (((float) Math.sqrt((atan - 0.5235988f) / 0.5235988f)) * 4.0f) + 1.0f);
            } else {
                super.determineScrollingStart(motionEvent);
            }
        }
    }

    public boolean willAddToExistingUserFolder(ItemInfo itemInfo, View view) {
        if (view != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
            if (layoutParams.useTmpCoords && (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY)) {
                return false;
            }
        }
        if (view instanceof FolderIcon) {
            FolderIcon folderIcon = (FolderIcon) view;
            if (!folderIcon.mFolder.mDestroyed && folderIcon.willAcceptItem(itemInfo)) {
                return true;
            }
        }
        return false;
    }

    public boolean willCreateUserFolder(ItemInfo itemInfo, View view, boolean z) {
        if (view != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
            if (layoutParams.useTmpCoords && (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY)) {
                return false;
            }
        }
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        boolean z2 = cellInfo != null && view == cellInfo.cell;
        if (view == null || z2) {
            return false;
        }
        if (z && !this.mCreateUserFolderOnDrop) {
            return false;
        }
        boolean z3 = (view.getTag() instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) view.getTag()).container != -103;
        int i = itemInfo.itemType;
        return z3 && (i == 0 || i == 1 || i == 6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.launcher3.dragndrop.DragView beginDragShared(android.view.View r15, com.android.launcher3.dragndrop.DraggableView r16, com.android.launcher3.DragSource r17, com.android.launcher3.model.data.ItemInfo r18, com.android.launcher3.graphics.DragPreviewProvider r19, com.android.launcher3.dragndrop.DragOptions r20) {
        /*
            r14 = this;
            r0 = r14
            r1 = r15
            r2 = r19
            r12 = r20
            boolean r3 = r1 instanceof com.android.launcher3.BubbleTextView
            if (r3 == 0) goto L1d
            r3 = r1
            com.android.launcher3.BubbleTextView r3 = (com.android.launcher3.BubbleTextView) r3
            android.graphics.drawable.Drawable r3 = r3.mIcon
            boolean r4 = r3 instanceof com.android.launcher3.FastBitmapDrawable
            if (r4 == 0) goto L1d
            com.android.launcher3.FastBitmapDrawable r3 = (com.android.launcher3.FastBitmapDrawable) r3
            android.animation.ObjectAnimator r4 = r3.mScaleAnimation
            if (r4 != 0) goto L1a
            goto L1d
        L1a:
            float r3 = r3.mScale
            goto L1f
        L1d:
            r3 = 1065353216(0x3f800000, float:1.0)
        L1f:
            r15.clearFocus()
            r4 = 0
            r15.setPressed(r4)
            boolean r5 = r1 instanceof com.android.launcher3.BubbleTextView
            if (r5 == 0) goto L35
            r6 = r1
            com.android.launcher3.BubbleTextView r6 = (com.android.launcher3.BubbleTextView) r6
            r6.setPressed(r4)
            r6.mStayPressed = r4
            r6.refreshDrawableState()
        L35:
            r0.mOutlineProvider = r2
            if (r16 != 0) goto L41
            boolean r6 = r1 instanceof com.android.launcher3.dragndrop.DraggableView
            if (r6 == 0) goto L41
            r6 = r1
            com.android.launcher3.dragndrop.DraggableView r6 = (com.android.launcher3.dragndrop.DraggableView) r6
            goto L43
        L41:
            r6 = r16
        L43:
            android.graphics.Bitmap r7 = r19.createDragBitmap()
            int r8 = r2.previewPadding
            int r8 = r8 / 2
            int[] r9 = r0.mTempXY
            float r10 = r2.getScaleAndPosition(r7, r9)
            int[] r2 = r0.mTempXY
            r4 = r2[r4]
            r9 = 1
            r2 = r2[r9]
            r9 = 0
            android.graphics.Rect r11 = new android.graphics.Rect
            r11.<init>()
            if (r6 == 0) goto L6c
            r6.getSourceVisualDragBounds(r11)
            int r9 = r11.top
            int r2 = r2 + r9
            android.graphics.Point r9 = new android.graphics.Point
            int r13 = -r8
            r9.<init>(r13, r8)
        L6c:
            r8 = r2
            android.view.ViewParent r2 = r15.getParent()
            boolean r2 = r2 instanceof com.android.launcher3.ShortcutAndWidgetContainer
            if (r2 == 0) goto L7d
            android.view.ViewParent r2 = r15.getParent()
            com.android.launcher3.ShortcutAndWidgetContainer r2 = (com.android.launcher3.ShortcutAndWidgetContainer) r2
            r0.mDragSourceInternal = r2
        L7d:
            if (r5 == 0) goto L9d
            boolean r2 = r12.isAccessibleDrag
            if (r2 != 0) goto L9d
            com.android.launcher3.BubbleTextView r1 = (com.android.launcher3.BubbleTextView) r1
            com.android.launcher3.popup.PopupContainerWithArrow r1 = com.android.launcher3.popup.PopupContainerWithArrow.showForIcon(r1)
            if (r1 == 0) goto L9d
            com.android.launcher3.popup.PopupContainerWithArrow$1 r2 = new com.android.launcher3.popup.PopupContainerWithArrow$1
            r2.<init>()
            r12.preDragCondition = r2
            com.android.launcher3.Launcher r1 = r0.mLauncher
            com.android.launcher3.logging.UserEventDispatcher r1 = r1.getUserEventDispatcher()
            java.lang.String r2 = "dragging started"
            r1.resetElapsedContainerMillis(r2)
        L9d:
            com.android.launcher3.dragndrop.DragController r0 = r0.mDragController
            float r13 = r10 * r3
            r1 = r7
            r2 = r6
            r3 = r4
            r4 = r8
            r5 = r17
            r6 = r18
            r7 = r9
            r8 = r11
            r9 = r13
            r11 = r20
            com.android.launcher3.dragndrop.DragView r0 = r0.startDrag(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            float r1 = r12.intrinsicIconScaleFactor
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.Workspace.beginDragShared(android.view.View, com.android.launcher3.dragndrop.DraggableView, com.android.launcher3.DragSource, com.android.launcher3.model.data.ItemInfo, com.android.launcher3.graphics.DragPreviewProvider, com.android.launcher3.dragndrop.DragOptions):com.android.launcher3.dragndrop.DragView");
    }
}
