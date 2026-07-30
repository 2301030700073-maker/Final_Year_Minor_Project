package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.appwidget.AppWidgetHostView;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.text.Selection;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.util.Property;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.inputmethod.CompletionInfo;
import android.widget.TextView;
import b.l.W;
import c.a.a.I0.A;
import c.a.a.I0.j;
import c.a.a.I0.s;
import c.a.a.I0.t;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Alarm;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.AccessibleDragListenerAdapter;
import com.android.launcher3.accessibility.DragViewStateAnnouncer;
import com.android.launcher3.accessibility.FolderAccessibilityHelper;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderNameEditText;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.ModelWriter.UpdateItemsRunnable;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.launcher3.userevent.LauncherLogProto$Action;
import com.android.launcher3.userevent.LauncherLogProto$ContainerType;
import com.android.launcher3.userevent.LauncherLogProto$ItemType;
import com.android.launcher3.userevent.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.LauncherLogProto$Target;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ClipPathView;
import com.android.launcher3.views.IconLabelDotView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class Folder extends AbstractFloatingView implements ClipPathView, DragSource, View.OnLongClickListener, DropTarget, FolderInfo.FolderListener, TextView.OnEditorActionListener, View.OnFocusChangeListener, DragController.DragListener, ExtendedEditText.OnBackKeyListener {
    public Path mClipPath;
    public FolderPagedView mContent;
    public AnimatorSet mCurrentAnimator;
    public View mCurrentDragView;
    public int mCurrentScrollDir;
    public boolean mDeleteFolderOnDropCompleted;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mDestroyed;
    public DragController mDragController;
    public boolean mDragInProgress;
    public int mEmptyCellRank;
    public FolderIcon mFolderIcon;
    public FolderNameEditText mFolderName;
    public View mFooter;
    public int mFooterHeight;
    public LauncherAtom$FromState mFromLabelState;
    public CharSequence mFromTitle;
    public FolderInfo mInfo;
    public boolean mIsAnimatingClosed;
    public boolean mIsEditingName;
    public boolean mIsExternalDrag;
    public boolean mItemAddedBackToSelfViaIcon;
    public final ArrayList mItemsInReadingOrder;
    public boolean mItemsInvalidated;
    public final Launcher mLauncher;
    public final Alarm mOnExitAlarm;
    public OnAlarmListener mOnExitAlarmListener;
    public final Alarm mOnScrollHintAlarm;
    public PageIndicatorDots mPageIndicator;
    public int mPrevTargetRank;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mRearrangeOnClose;
    public final Alarm mReorderAlarm;
    public OnAlarmListener mReorderAlarmListener;
    public int mScrollAreaOffset;
    public int mScrollHintDir;
    public final Alarm mScrollPauseAlarm;

    @ViewDebug.ExportedProperty(category = "launcher", mapping = {@ViewDebug.IntToString(from = -1, to = "STATE_NONE"), @ViewDebug.IntToString(from = 0, to = "STATE_SMALL"), @ViewDebug.IntToString(from = 1, to = "STATE_ANIMATING"), @ViewDebug.IntToString(from = 2, to = "STATE_OPEN")})
    public int mState;
    public StatsLogManager mStatsLogManager;
    public boolean mSuppressFolderDeletion;
    public int mTargetRank;
    public static final CharSequence FOLDER_LABEL_DELIMITER = "~";
    public static final Rect sTempRect = new Rect();
    public static final Comparator ITEM_POS_COMPARATOR = new Comparator() { // from class: com.android.launcher3.folder.Folder.10
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            ItemInfo itemInfo = (ItemInfo) obj;
            ItemInfo itemInfo2 = (ItemInfo) obj2;
            int i = itemInfo.rank;
            int i2 = itemInfo2.rank;
            return (i == i2 && (i = itemInfo.cellY) == (i2 = itemInfo2.cellY)) ? itemInfo.cellX - itemInfo2.cellX : i - i2;
        }
    };

    public class OnScrollFinishedListener implements OnAlarmListener {
        public final DropTarget.DragObject mDragObject;

        public OnScrollFinishedListener(DropTarget.DragObject dragObject) {
            this.mDragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            Folder.this.onDragOver(this.mDragObject);
        }
    }

    public class OnScrollHintListener implements OnAlarmListener {
        public final DropTarget.DragObject mDragObject;

        public OnScrollHintListener(DropTarget.DragObject dragObject) {
            this.mDragObject = dragObject;
        }

        @Override // com.android.launcher3.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            Folder folder = Folder.this;
            int i = folder.mCurrentScrollDir;
            if (i == 0) {
                folder.mContent.scrollLeft();
                Folder.this.mScrollHintDir = -1;
            } else {
                if (i != 1) {
                    return;
                }
                folder.mContent.scrollRight();
                Folder.this.mScrollHintDir = -1;
            }
            Folder folder2 = Folder.this;
            folder2.mCurrentScrollDir = -1;
            folder2.mScrollPauseAlarm.mAlarmListener = folder2.new OnScrollFinishedListener(this.mDragObject);
            Folder.this.mScrollPauseAlarm.setAlarm(900L);
        }
    }

    public Folder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mReorderAlarm = new Alarm();
        this.mOnExitAlarm = new Alarm();
        this.mOnScrollHintAlarm = new Alarm();
        this.mScrollPauseAlarm = new Alarm();
        this.mItemsInReadingOrder = new ArrayList();
        this.mIsAnimatingClosed = false;
        this.mState = -1;
        this.mRearrangeOnClose = false;
        this.mItemsInvalidated = false;
        this.mDragInProgress = false;
        this.mDeleteFolderOnDropCompleted = false;
        this.mSuppressFolderDeletion = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mIsEditingName = false;
        this.mScrollHintDir = -1;
        this.mCurrentScrollDir = -1;
        this.mReorderAlarmListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.Folder.6
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                int i;
                int i2;
                Folder folder = Folder.this;
                final FolderPagedView folderPagedView = folder.mContent;
                final int i3 = folder.mEmptyCellRank;
                int i4 = folder.mTargetRank;
                folderPagedView.completePendingPageChanges();
                int nextPage = folderPagedView.getNextPage();
                int i5 = folderPagedView.mOrganizer.mMaxItemsPerPage;
                int i6 = i4 % i5;
                if (i4 / i5 != nextPage) {
                    Log.e("FolderPagedView", "Cannot animate when the target cell is invisible");
                }
                int i7 = i3 % i5;
                int i8 = i3 / i5;
                if (i4 != i3) {
                    boolean z = true;
                    int i9 = -1;
                    if (i4 > i3) {
                        if (i8 < nextPage) {
                            i9 = nextPage * i5;
                            i7 = 0;
                        } else {
                            i3 = -1;
                        }
                        i2 = 1;
                    } else {
                        if (i8 > nextPage) {
                            i = ((nextPage + 1) * i5) - 1;
                            i7 = i5 - 1;
                        } else {
                            i = -1;
                            i3 = -1;
                        }
                        i9 = i;
                        i2 = -1;
                    }
                    while (i3 != i9) {
                        int i10 = i3 + i2;
                        int i11 = i10 / i5;
                        int i12 = i10 % i5;
                        int i13 = folderPagedView.mGridCountX;
                        int i14 = i12 % i13;
                        int i15 = i12 / i13;
                        CellLayout pageAt = folderPagedView.getPageAt(i11);
                        final View childAt = pageAt.getChildAt(i14, i15);
                        if (childAt != null) {
                            if (nextPage != i11) {
                                pageAt.removeView(childAt);
                                folderPagedView.addViewForRank(childAt, (WorkspaceItemInfo) childAt.getTag(), i3);
                            } else {
                                final float translationX = childAt.getTranslationX();
                                Runnable anonymousClass1 = new Runnable() { // from class: com.android.launcher3.folder.FolderPagedView.1
                                    public final /* synthetic */ int val$newRank;
                                    public final /* synthetic */ float val$oldTranslateX;
                                    public final /* synthetic */ View val$v;

                                    public AnonymousClass1(final View childAt2, final float translationX2, final int i32) {
                                        r2 = childAt2;
                                        r3 = translationX2;
                                        r4 = i32;
                                    }

                                    @Override // java.lang.Runnable
                                    public void run() {
                                        FolderPagedView.this.mPendingAnimations.remove(r2);
                                        r2.setTranslationX(r3);
                                        ((CellLayout) r2.getParent().getParent()).removeView(r2);
                                        FolderPagedView folderPagedView2 = FolderPagedView.this;
                                        View view = r2;
                                        folderPagedView2.addViewForRank(view, (WorkspaceItemInfo) view.getTag(), r4);
                                    }
                                };
                                childAt2.animate().translationXBy((i2 > 0 ? z : false) ^ folderPagedView.mIsRtl ? -childAt2.getWidth() : childAt2.getWidth()).setDuration(230L).setStartDelay(0L).withEndAction(anonymousClass1);
                                folderPagedView.mPendingAnimations.put(childAt2, anonymousClass1);
                            }
                        }
                        i32 = i10;
                        z = true;
                    }
                    if ((i6 - i7) * i2 > 0) {
                        CellLayout pageAt2 = folderPagedView.getPageAt(nextPage);
                        float f = 30.0f;
                        int i16 = 0;
                        while (i7 != i6) {
                            int i17 = i7 + i2;
                            int i18 = folderPagedView.mGridCountX;
                            View childAt2 = pageAt2.getChildAt(i17 % i18, i17 / i18);
                            int i19 = folderPagedView.mGridCountX;
                            if (pageAt2.animateChildToPosition(childAt2, i7 % i19, i7 / i19, 230, i16, true, true)) {
                                i16 = (int) (i16 + f);
                                f *= 0.9f;
                            }
                            i7 = i17;
                        }
                    }
                }
                Folder folder2 = Folder.this;
                folder2.mEmptyCellRank = folder2.mTargetRank;
            }
        };
        this.mOnExitAlarmListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.Folder.7
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder.this.completeDragExit();
            }
        };
        setAlwaysDrawnWithCacheEnabled(false);
        this.mLauncher = Launcher.getLauncher(context);
        this.mStatsLogManager = StatsLogManager.newInstance(context);
        setFocusableInTouchMode(true);
    }

    public static /* synthetic */ boolean d(WorkspaceItemInfo workspaceItemInfo, ItemInfo itemInfo, View view) {
        return itemInfo == workspaceItemInfo;
    }

    public static /* synthetic */ boolean e(String str) {
        return !str.isEmpty();
    }

    @SuppressLint({"InflateParams"})
    public static Folder fromXml(Launcher launcher) {
        return (Folder) launcher.getLayoutInflater().inflate(R.layout.user_folder_icon_normalized, (ViewGroup) null);
    }

    public static Folder getOpen(Launcher launcher) {
        return (Folder) AbstractFloatingView.getOpenView(launcher, 1);
    }

    public /* synthetic */ void a() {
        if (getItemCount() <= 1) {
            replaceFolderWithFinalItem();
        }
    }

    @Override // com.android.launcher3.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        int i = dragObject.dragInfo.itemType;
        return i == 0 || i == 1 || i == 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0271  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void animateOpen(java.util.List r17, int r18) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.Folder.animateOpen(java.util.List, int):void");
    }

    public /* synthetic */ boolean c(ItemInfo itemInfo, View view) {
        return !this.mItemsInReadingOrder.add(view);
    }

    public final void closeComplete(boolean z) {
        DragLayer dragLayer = (DragLayer) getParent();
        if (dragLayer != null) {
            dragLayer.removeView(this);
        }
        this.mDragController.mDropTargets.remove(this);
        clearFocus();
        FolderIcon folderIcon = this.mFolderIcon;
        if (folderIcon != null) {
            folderIcon.setVisibility(0);
            FolderIcon folderIcon2 = this.mFolderIcon;
            folderIcon2.mBackgroundIsVisible = true;
            folderIcon2.invalidate();
            this.mFolderIcon.mFolderName.setTextVisibility(true);
            if (z) {
                FolderIcon folderIcon3 = this.mFolderIcon;
                final PreviewBackground previewBackground = folderIcon3.mBackground;
                ObjectAnimator objectAnimator = previewBackground.mShadowAnimator;
                if (objectAnimator != null) {
                    objectAnimator.cancel();
                }
                ObjectAnimator duration = ObjectAnimator.ofInt(previewBackground, (Property<PreviewBackground, Integer>) PreviewBackground.SHADOW_ALPHA, 0, 255).setDuration(100L);
                previewBackground.mShadowAnimator = duration;
                duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewBackground.3
                    public AnonymousClass3() {
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PreviewBackground.this.mShadowAnimator = null;
                    }
                });
                previewBackground.mShadowAnimator.start();
                final PreviewBackground previewBackground2 = folderIcon3.mBackground;
                ObjectAnimator objectAnimator2 = previewBackground2.mStrokeAlphaAnimator;
                if (objectAnimator2 != null) {
                    objectAnimator2.cancel();
                }
                ObjectAnimator duration2 = ObjectAnimator.ofInt(previewBackground2, (Property<PreviewBackground, Integer>) PreviewBackground.STROKE_ALPHA, 112, 225).setDuration(100L);
                previewBackground2.mStrokeAlphaAnimator = duration2;
                duration2.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewBackground.4
                    public AnonymousClass4() {
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        PreviewBackground.this.mStrokeAlphaAnimator = null;
                    }
                });
                previewBackground2.mStrokeAlphaAnimator.start();
                FolderIcon folderIcon4 = this.mFolderIcon;
                int currentPage = this.mContent.getCurrentPage();
                final PreviewItemManager previewItemManager = folderIcon4.mPreviewItemManager;
                boolean z2 = currentPage != 0;
                previewItemManager.mShouldSlideInFirstPage = z2;
                if (z2) {
                    previewItemManager.mCurrentPageItemsTransX = RecentsState.NO_OFFSET;
                    previewItemManager.buildParamsForPage(currentPage, previewItemManager.mCurrentPageParams, false);
                    previewItemManager.mIcon.invalidate();
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(previewItemManager, PreviewItemManager.CURRENT_PAGE_ITEMS_TRANS_X, RecentsState.NO_OFFSET, 200.0f);
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewItemManager.2
                        public AnonymousClass2() {
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            PreviewItemManager.this.mCurrentPageParams.clear();
                        }
                    });
                    ofFloat.setStartDelay(100L);
                    ofFloat.setDuration(300L);
                    ofFloat.start();
                }
                FolderDotInfo folderDotInfo = this.mFolderIcon.mDotInfo;
                if (folderDotInfo != null && folderDotInfo.hasDot()) {
                    this.mFolderIcon.animateDotScale(RecentsState.NO_OFFSET, 1.0f);
                }
                this.mFolderIcon.requestFocus();
            }
        }
        if (this.mRearrangeOnClose) {
            rearrangeChildren();
            this.mRearrangeOnClose = false;
        }
        if (getItemCount() <= 1) {
            if (!this.mDragInProgress && !this.mSuppressFolderDeletion) {
                replaceFolderWithFinalItem();
            } else if (this.mDragInProgress) {
                this.mDeleteFolderOnDropCompleted = true;
            }
        } else if (!this.mDragInProgress) {
            this.mContent.unbindItems();
        }
        this.mSuppressFolderDeletion = false;
        this.mCurrentDragView = null;
        this.mIsExternalDrag = false;
        this.mState = 0;
        this.mContent.setCurrentPage(0);
    }

    public void completeDragExit() {
        if (this.mIsOpen) {
            close(true);
            this.mRearrangeOnClose = true;
        } else {
            if (this.mState == 1) {
                this.mRearrangeOnClose = true;
                return;
            }
            rearrangeChildren();
            this.mCurrentDragView = null;
            this.mIsExternalDrag = false;
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mClipPath == null) {
            super.draw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.mClipPath);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    public /* synthetic */ boolean f(String str) {
        return !str.equalsIgnoreCase(this.mFolderName.getText().toString());
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        launcherLogProto$Target.gridX = itemInfo.cellX;
        launcherLogProto$Target.gridY = itemInfo.cellY;
        launcherLogProto$Target.pageIndex = this.mContent.getCurrentPage();
        LauncherLogProto$Target newContainerTarget = LoggerUtils.newContainerTarget(3);
        FolderInfo folderInfo = this.mInfo;
        newContainerTarget.pageIndex = folderInfo.screenId;
        newContainerTarget.gridX = folderInfo.cellX;
        newContainerTarget.gridY = folderInfo.cellY;
        arrayList.add(newContainerTarget);
        FolderInfo folderInfo2 = this.mInfo;
        if (folderInfo2.container == -101) {
            this.mLauncher.mHotseat.fillInLogContainerData(folderInfo2, newContainerTarget, arrayList);
        } else {
            this.mLauncher.mWorkspace.fillInLogContainerData(folderInfo2, newContainerTarget, arrayList);
        }
    }

    @Override // android.view.View
    public View focusSearch(int i) {
        return FocusFinder.getInstance().findNextFocus(this, null, i);
    }

    public void g() {
        FolderNameInfos folderNameInfos;
        if (FeatureFlags.FOLDER_NAME_SUGGEST.get() && (folderNameInfos = this.mInfo.suggestedFolderNames) != null && folderNameInfos.hasSuggestions()) {
            if (TextUtils.isEmpty(this.mFolderName.getText()) && this.mInfo.suggestedFolderNames.hasPrimary()) {
                this.mFolderName.setHint("");
                this.mFolderName.setText(this.mInfo.suggestedFolderNames.mLabels[0]);
                this.mFolderName.selectAll();
            }
            this.mFolderName.showKeyboard();
            final FolderNameEditText folderNameEditText = this.mFolderName;
            List list = (List) Stream.of((Object[]) this.mInfo.suggestedFolderNames.mLabels).filter(A.f1348a).map(new Function() { // from class: c.a.a.I0.y
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((CharSequence) obj).toString();
                }
            }).filter(new Predicate() { // from class: c.a.a.I0.e
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Folder.e((String) obj);
                }
            }).filter(new Predicate() { // from class: c.a.a.I0.c
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Folder.this.f((String) obj);
                }
            }).collect(Collectors.toList());
            Objects.requireNonNull(folderNameEditText);
            int min = Math.min(list.size(), 4);
            final CompletionInfo[] completionInfoArr = new CompletionInfo[min];
            for (int i = 0; i < min; i++) {
                completionInfoArr[i] = new CompletionInfo(i, i, (CharSequence) list.get(i));
            }
            folderNameEditText.postDelayed(new Runnable() { // from class: c.a.a.I0.m
                @Override // java.lang.Runnable
                public final void run() {
                    FolderNameEditText.this.b(completionInfoArr);
                }
            }, 40L);
        }
        this.mFolderName.setHint("");
        this.mIsEditingName = true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public View getAccessibilityInitialFocusView() {
        return this.mContent.getViewInCurrentPage(t.f1377a);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public Pair getAccessibilityTarget() {
        FolderPagedView folderPagedView = this.mContent;
        return Pair.create(folderPagedView, this.mIsOpen ? folderPagedView.getContext().getString(R.string.folder_opened, Integer.valueOf(folderPagedView.mGridCountX), Integer.valueOf(folderPagedView.mGridCountY)) : getContext().getString(R.string.folder_closed));
    }

    public int getContentAreaHeight() {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int i = (deviceProfile.availableHeightPx - deviceProfile.getTotalWorkspacePadding().y) - this.mFooterHeight;
        FolderPagedView folderPagedView = this.mContent;
        int i2 = 0;
        if (folderPagedView.getPageCount() > 0) {
            CellLayout pageAt = folderPagedView.getPageAt(0);
            i2 = folderPagedView.getPaddingBottom() + folderPagedView.getPaddingTop() + (pageAt.mCountY * pageAt.mCellHeight) + pageAt.getPaddingBottom() + pageAt.getPaddingTop();
        }
        return Math.max(Math.min(i, i2), 5);
    }

    @Override // com.android.launcher3.DropTarget
    public void getHitRectRelativeToDragLayer(Rect rect) {
        getHitRect(rect);
        int i = rect.left;
        int i2 = this.mScrollAreaOffset;
        rect.left = i - i2;
        rect.right += i2;
    }

    public ArrayList getIconsInReadingOrder() {
        if (this.mItemsInvalidated) {
            this.mItemsInReadingOrder.clear();
            this.mContent.iterateOverItems(new Workspace.ItemOperator() { // from class: c.a.a.I0.h
                @Override // com.android.launcher3.Workspace.ItemOperator
                public final boolean evaluate(ItemInfo itemInfo, View view) {
                    return Folder.this.c(itemInfo, view);
                }
            });
            this.mItemsInvalidated = false;
        }
        return this.mItemsInReadingOrder;
    }

    public int getItemCount() {
        return this.mInfo.contents.size();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 3;
    }

    public final int getTargetRank(DropTarget.DragObject dragObject, float[] fArr) {
        float[] visualCenter = dragObject.getVisualCenter(fArr);
        FolderPagedView folderPagedView = this.mContent;
        int paddingLeft = ((int) visualCenter[0]) - getPaddingLeft();
        int paddingTop = ((int) visualCenter[1]) - getPaddingTop();
        int[] iArr = FolderPagedView.sTmpArray;
        int nextPage = folderPagedView.getNextPage();
        CellLayout pageAt = folderPagedView.getPageAt(nextPage);
        pageAt.findNearestArea(paddingLeft, paddingTop, 1, 1, iArr);
        if (folderPagedView.mFolder.isLayoutRtl()) {
            iArr[0] = (pageAt.mCountX - iArr[0]) - 1;
        }
        return Math.min(folderPagedView.mAllocatedContentSize - 1, (iArr[1] * folderPagedView.mGridCountX) + (nextPage * folderPagedView.mOrganizer.mMaxItemsPerPage) + iArr[0]);
    }

    public /* synthetic */ void h() {
        FolderNameInfos folderNameInfos = new FolderNameInfos();
        FolderNameProvider.newInstance(getContext()).getSuggestedFolderName(getContext(), this.mInfo.contents, folderNameInfos);
        this.mInfo.suggestedFolderNames = folderNameInfos;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        AnimatorSet animatorSet;
        this.mIsOpen = false;
        if (!z && (animatorSet = this.mCurrentAnimator) != null && animatorSet.isRunning()) {
            this.mCurrentAnimator.cancel();
        }
        if (this.mIsEditingName) {
            this.mFolderName.dispatchBackKey();
        }
        FolderIcon folderIcon = this.mFolderIcon;
        if (folderIcon != null) {
            ((CellLayout.LayoutParams) folderIcon.getLayoutParams()).canReorder = true;
            if (folderIcon.mInfo.container == -101) {
                CellLayout cellLayout = (CellLayout) folderIcon.getParent().getParent();
                PreviewBackground previewBackground = cellLayout.mFolderLeaveBehind;
                previewBackground.mDelegateCellX = -1;
                previewBackground.mDelegateCellY = -1;
                cellLayout.invalidate();
            }
        }
        if (!z) {
            closeComplete(false);
            post(new Runnable() { // from class: c.a.a.I0.g
                @Override // java.lang.Runnable
                public final void run() {
                    Folder.this.announceAccessibilityChanges();
                }
            });
        } else if (!this.mIsAnimatingClosed) {
            AnimatorSet animatorSet2 = this.mCurrentAnimator;
            if (animatorSet2 != null && animatorSet2.isRunning()) {
                this.mCurrentAnimator.cancel();
            }
            AnimatorSet animator = new FolderAnimationManager(this, false).getAnimator();
            animator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.Folder.5
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    Folder.this.closeComplete(true);
                    Folder.this.announceAccessibilityChanges();
                    Folder.this.mIsAnimatingClosed = false;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Folder.this.mIsAnimatingClosed = true;
                }
            });
            startAnimation(animator);
        }
        this.mLauncher.mDragLayer.sendAccessibilityEvent(32);
    }

    @Override // com.android.launcher3.DropTarget
    public boolean isDropEnabled() {
        return this.mState != 1;
    }

    public boolean isLayoutRtl() {
        return getLayoutDirection() == 1;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 1) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
        this.mLauncher.getUserEventDispatcher().logActionCommand(i, this.mFolderIcon, getLogContainerType());
    }

    @Deprecated
    public void logFolderLabelState(LauncherAtom$FromState launcherAtom$FromState, LauncherAtom$ToState launcherAtom$ToState) {
        LauncherLogProto$Target.ToFolderLabelState toFolderLabelState;
        UserEventDispatcher userEventDispatcher = this.mLauncher.getUserEventDispatcher();
        FolderInfo folderInfo = this.mInfo;
        Objects.requireNonNull(folderInfo);
        LauncherLogProto$Target.Type type = LauncherLogProto$Target.Type.CONTAINER;
        LauncherLogProto$LauncherEvent.Builder builder = (LauncherLogProto$LauncherEvent.Builder) LauncherLogProto$LauncherEvent.DEFAULT_INSTANCE.createBuilder();
        LauncherLogProto$Action.Builder builder2 = (LauncherLogProto$Action.Builder) LauncherLogProto$Action.DEFAULT_INSTANCE.createBuilder();
        LauncherLogProto$Action.Type type2 = LauncherLogProto$Action.Type.SOFT_KEYBOARD;
        builder2.copyOnWrite();
        LauncherLogProto$Action.access$4700((LauncherLogProto$Action) builder2.instance, type2);
        builder.copyOnWrite();
        LauncherLogProto$LauncherEvent.access$6200((LauncherLogProto$LauncherEvent) builder.instance, builder2);
        LauncherLogProto$Target.Builder newBuilder = com.android.launcher3.userevent.LauncherLogProto$Target.newBuilder();
        LauncherLogProto$Target.Type type3 = LauncherLogProto$Target.Type.ITEM;
        newBuilder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder.instance, type3);
        LauncherLogProto$ItemType launcherLogProto$ItemType = LauncherLogProto$ItemType.EDITTEXT;
        newBuilder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$1700((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder.instance, launcherLogProto$ItemType);
        int ordinal = launcherAtom$FromState.ordinal();
        LauncherLogProto$Target.FromFolderLabelState fromFolderLabelState = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? LauncherLogProto$Target.FromFolderLabelState.FROM_FOLDER_LABEL_STATE_UNSPECIFIED : LauncherLogProto$Target.FromFolderLabelState.FROM_SUGGESTED : LauncherLogProto$Target.FromFolderLabelState.FROM_CUSTOM : LauncherLogProto$Target.FromFolderLabelState.FROM_EMPTY;
        newBuilder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$4100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder.instance, fromFolderLabelState);
        switch (launcherAtom$ToState.ordinal()) {
            case 1:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.UNCHANGED;
                break;
            case 2:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION0_WITH_VALID_PRIMARY;
                break;
            case 3:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION1_WITH_VALID_PRIMARY;
                break;
            case 4:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
                break;
            case 5:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION2_WITH_VALID_PRIMARY;
                break;
            case 6:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
                break;
            case 7:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION3_WITH_VALID_PRIMARY;
                break;
            case 8:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
                break;
            case 9:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_EMPTY_WITH_VALID_PRIMARY;
                break;
            case 10:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
                break;
            case 11:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
                break;
            case 12:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
                break;
            case 13:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_CUSTOM_WITH_VALID_PRIMARY;
                break;
            case 14:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
                break;
            case 15:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
                break;
            case 16:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
                break;
            default:
                toFolderLabelState = LauncherLogProto$Target.ToFolderLabelState.TO_FOLDER_LABEL_STATE_UNSPECIFIED;
                break;
        }
        newBuilder.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$4300((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder.instance, toFolderLabelState);
        builder.addSrcTarget(newBuilder);
        LauncherLogProto$Target.Builder newBuilder2 = com.android.launcher3.userevent.LauncherLogProto$Target.newBuilder();
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance, type);
        LauncherLogProto$ContainerType launcherLogProto$ContainerType = LauncherLogProto$ContainerType.FOLDER;
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$1100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance, launcherLogProto$ContainerType);
        int i = folderInfo.screenId;
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target launcherLogProto$Target = (com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance;
        launcherLogProto$Target.bitField0_ |= 2;
        launcherLogProto$Target.pageIndex_ = i;
        int i2 = folderInfo.cellX;
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target launcherLogProto$Target2 = (com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance;
        launcherLogProto$Target2.bitField0_ |= 8;
        launcherLogProto$Target2.gridX_ = i2;
        int i3 = folderInfo.cellY;
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target launcherLogProto$Target3 = (com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance;
        launcherLogProto$Target3.bitField0_ |= 16;
        launcherLogProto$Target3.gridY_ = i3;
        int size = folderInfo.contents.size();
        newBuilder2.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target launcherLogProto$Target4 = (com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder2.instance;
        launcherLogProto$Target4.bitField0_ |= 64;
        launcherLogProto$Target4.cardinality_ = size;
        builder.addSrcTarget(newBuilder2);
        LauncherLogProto$Target.Builder newBuilder3 = com.android.launcher3.userevent.LauncherLogProto$Target.newBuilder();
        newBuilder3.copyOnWrite();
        com.android.launcher3.userevent.LauncherLogProto$Target.access$100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder3.instance, type);
        int i4 = folderInfo.container;
        if (i4 == -101) {
            LauncherLogProto$ContainerType launcherLogProto$ContainerType2 = LauncherLogProto$ContainerType.HOTSEAT;
            newBuilder3.copyOnWrite();
            com.android.launcher3.userevent.LauncherLogProto$Target.access$1100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder3.instance, launcherLogProto$ContainerType2);
        } else {
            if (i4 != -100) {
                throw new AssertionError(String.format("Expected container to be either %s or %s but found %s.", -101, -100, Integer.valueOf(folderInfo.container)));
            }
            LauncherLogProto$ContainerType launcherLogProto$ContainerType3 = LauncherLogProto$ContainerType.WORKSPACE;
            newBuilder3.copyOnWrite();
            com.android.launcher3.userevent.LauncherLogProto$Target.access$1100((com.android.launcher3.userevent.LauncherLogProto$Target) newBuilder3.instance, launcherLogProto$ContainerType3);
        }
        builder.addSrcTarget(newBuilder3);
        userEventDispatcher.logLauncherEvent((LauncherLogProto$LauncherEvent) builder.build());
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onAdd(WorkspaceItemInfo workspaceItemInfo, int i) {
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(this.mLauncher.getDeviceProfile().inv);
        folderGridOrganizer.setFolderInfo(this.mInfo);
        folderGridOrganizer.updateRankAndPos(workspaceItemInfo, i);
        this.mLauncher.mModelWriter.addOrMoveItemInDatabase(workspaceItemInfo, this.mInfo.id, 0, workspaceItemInfo.cellX, workspaceItemInfo.cellY);
        updateItemLocationsInDatabaseBatch(false);
        FolderPagedView folderPagedView = this.mContent;
        if (folderPagedView.mViewsBound) {
            folderPagedView.createAndAddViewForRank(workspaceItemInfo, i);
        }
        this.mItemsInvalidated = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        requestFocus();
        super.onAttachedToWindow();
    }

    @Override // com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public boolean onBackKey() {
        String obj = this.mFolderName.getText().toString();
        this.mInfo.setTitle(obj, this.mLauncher.mModelWriter);
        FolderIcon folderIcon = this.mFolderIcon;
        folderIcon.mFolderName.setText(obj);
        folderIcon.setContentDescription(folderIcon.getAccessiblityTitle(obj));
        if (TextUtils.isEmpty(this.mInfo.title)) {
            this.mFolderName.setHint(R.string.folder_hint_text);
            this.mFolderName.setText("");
        } else {
            this.mFolderName.setHint((CharSequence) null);
        }
        W.sendCustomAccessibilityEvent(this, 32, getContext().getString(R.string.folder_renamed, obj));
        this.mFolderName.clearFocus();
        Selection.setSelection(this.mFolderName.getText(), 0, 0);
        this.mIsEditingName = false;
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean onBackPressed() {
        if (this.mIsEditingName) {
            this.mFolderName.dispatchBackKey();
            return true;
        }
        super.onBackPressed();
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            DragLayer dragLayer = this.mLauncher.mDragLayer;
            if (this.mIsEditingName) {
                if (dragLayer.isEventOverView(this.mFolderName, motionEvent)) {
                    return false;
                }
                this.mFolderName.dispatchBackKey();
                return true;
            }
            if (!dragLayer.isEventOverView(this, motionEvent)) {
                if (!this.mLauncher.mAccessibilityDelegate.isInAccessibleDrag()) {
                    this.mLauncher.getUserEventDispatcher().logActionTapOutside(LoggerUtils.newContainerTarget(3));
                    close(true);
                    return true;
                }
                if (!dragLayer.isEventOverView(this.mLauncher.mDropTargetBar, motionEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (this.mIsExternalDrag && this.mDragInProgress) {
            completeDragExit();
        }
        this.mDragInProgress = false;
        this.mDragController.mListeners.remove(this);
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        this.mPrevTargetRank = -1;
        this.mOnExitAlarm.mAlarmPending = false;
        this.mScrollAreaOffset = (dragObject.dragView.mDragRegion.width() / 2) - dragObject.xOffset;
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        if (!dragObject.dragComplete) {
            Alarm alarm = this.mOnExitAlarm;
            alarm.mAlarmListener = this.mOnExitAlarmListener;
            alarm.setAlarm(400L);
        }
        this.mReorderAlarm.mAlarmPending = false;
        this.mOnScrollHintAlarm.mAlarmPending = false;
        this.mScrollPauseAlarm.mAlarmPending = false;
        if (this.mScrollHintDir != -1) {
            this.mContent.clearScrollHint();
            this.mScrollHintDir = -1;
        }
    }

    @Override // com.android.launcher3.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
        if (this.mScrollPauseAlarm.mAlarmPending) {
            return;
        }
        float[] fArr = new float[2];
        int targetRank = getTargetRank(dragObject, fArr);
        this.mTargetRank = targetRank;
        if (targetRank != this.mPrevTargetRank) {
            Alarm alarm = this.mReorderAlarm;
            alarm.mAlarmPending = false;
            alarm.mAlarmListener = this.mReorderAlarmListener;
            alarm.setAlarm(250L);
            this.mPrevTargetRank = this.mTargetRank;
            DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
            if (dragViewStateAnnouncer != null) {
                dragViewStateAnnouncer.announce(getContext().getString(R.string.move_to_position, Integer.valueOf(this.mTargetRank + 1)));
            }
        }
        float f = fArr[0];
        int nextPage = this.mContent.getNextPage();
        float f2 = this.mContent.getCurrentCellLayout().mCellWidth * 0.45f;
        boolean z = f < f2;
        boolean z2 = f > ((float) getWidth()) - f2;
        if (nextPage > 0 && (!this.mContent.mIsRtl ? !z : !z2)) {
            showScrollHint(0, dragObject);
            return;
        }
        if (nextPage < this.mContent.getPageCount() - 1 && (!this.mContent.mIsRtl ? !z2 : !z)) {
            showScrollHint(1, dragObject);
            return;
        }
        this.mOnScrollHintAlarm.mAlarmPending = false;
        if (this.mScrollHintDir != -1) {
            this.mContent.clearScrollHint();
            this.mScrollHintDir = -1;
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        if (dragObject.dragSource != this) {
            return;
        }
        FolderPagedView folderPagedView = this.mContent;
        View view = this.mCurrentDragView;
        int childCount = folderPagedView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            } else {
                folderPagedView.getPageAt(childCount).removeView(view);
            }
        }
        if (dragObject.dragInfo instanceof WorkspaceItemInfo) {
            this.mItemsInvalidated = true;
            this.mInfo.mListeners.remove(this);
            try {
                this.mInfo.remove((WorkspaceItemInfo) dragObject.dragInfo, true);
                this.mInfo.mListeners.add(this);
                updateTextViewFocus();
            } catch (Throwable th) {
                try {
                    this.mInfo.mListeners.add(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        this.mDragInProgress = true;
        this.mItemAddedBackToSelfViaIcon = false;
    }

    @Override // com.android.launcher3.DropTarget
    public void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        View view;
        FolderPagedView folderPagedView = this.mContent;
        if (!(this.mEmptyCellRank / folderPagedView.mOrganizer.mMaxItemsPerPage == folderPagedView.getNextPage())) {
            this.mTargetRank = getTargetRank(dragObject, null);
            this.mReorderAlarmListener.onAlarm(this.mReorderAlarm);
            this.mOnScrollHintAlarm.mAlarmPending = false;
            this.mScrollPauseAlarm.mAlarmPending = false;
        }
        this.mContent.completePendingPageChanges();
        ItemInfo itemInfo = dragObject.dragInfo;
        PendingAddShortcutInfo pendingAddShortcutInfo = itemInfo instanceof PendingAddShortcutInfo ? (PendingAddShortcutInfo) itemInfo : null;
        WorkspaceItemInfo createWorkspaceItemInfo = pendingAddShortcutInfo != null ? pendingAddShortcutInfo.activityInfo.createWorkspaceItemInfo() : null;
        if (pendingAddShortcutInfo == null || createWorkspaceItemInfo != null) {
            if (createWorkspaceItemInfo == null) {
                ItemInfo itemInfo2 = dragObject.dragInfo;
                createWorkspaceItemInfo = itemInfo2 instanceof AppInfo ? ((AppInfo) itemInfo2).makeWorkspaceItem() : (WorkspaceItemInfo) itemInfo2;
            }
            if (this.mIsExternalDrag) {
                view = this.mContent.createAndAddViewForRank(createWorkspaceItemInfo, this.mEmptyCellRank);
                this.mLauncher.mModelWriter.addOrMoveItemInDatabase(createWorkspaceItemInfo, this.mInfo.id, 0, createWorkspaceItemInfo.cellX, createWorkspaceItemInfo.cellY);
                this.mIsExternalDrag = false;
            } else {
                view = this.mCurrentDragView;
                this.mContent.addViewForRank(view, createWorkspaceItemInfo, this.mEmptyCellRank);
            }
            if (dragObject.dragView.mHasDrawn) {
                float scaleX = getScaleX();
                float scaleY = getScaleY();
                setScaleX(1.0f);
                setScaleY(1.0f);
                this.mLauncher.mDragLayer.animateViewIntoPosition(dragObject.dragView, view, -1, null);
                setScaleX(scaleX);
                setScaleY(scaleY);
            } else {
                dragObject.deferDragViewCleanupPostAnimation = false;
                view.setVisibility(0);
            }
            this.mItemsInvalidated = true;
            rearrangeChildren();
            this.mInfo.mListeners.remove(this);
            try {
                this.mInfo.add(createWorkspaceItemInfo, this.mEmptyCellRank, false);
                this.mInfo.mListeners.add(this);
                updateTextViewFocus();
                if (dragObject.dragSource != this) {
                    updateItemLocationsInDatabaseBatch(false);
                }
            } catch (Throwable th) {
                try {
                    this.mInfo.mListeners.add(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else {
            int i = this.mInfo.id;
            pendingAddShortcutInfo.container = i;
            pendingAddShortcutInfo.rank = this.mEmptyCellRank;
            this.mLauncher.addPendingItem(pendingAddShortcutInfo, i, pendingAddShortcutInfo.screenId, null, pendingAddShortcutInfo.spanX, pendingAddShortcutInfo.spanY);
            dragObject.deferDragViewCleanupPostAnimation = false;
            this.mRearrangeOnClose = true;
        }
        this.mDragInProgress = false;
        if (this.mContent.getPageCount() > 1) {
            this.mInfo.setOption(4, true, this.mLauncher.mModelWriter);
        }
        this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, 500L);
        DragViewStateAnnouncer dragViewStateAnnouncer = dragObject.stateAnnouncer;
        if (dragViewStateAnnouncer != null) {
            dragViewStateAnnouncer.completeAction(R.string.item_moved);
        }
        this.mStatsLogManager.logger().withItemInfo(dragObject.dragInfo).withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROP_COMPLETED);
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
        if (!z) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) dragObject.dragInfo;
            View view2 = this.mCurrentDragView;
            View createNewView = (view2 == null || view2.getTag() != workspaceItemInfo) ? this.mContent.createNewView(workspaceItemInfo) : this.mCurrentDragView;
            ArrayList iconsInReadingOrder = getIconsInReadingOrder();
            int boundToRange = Utilities.boundToRange(workspaceItemInfo.rank, 0, iconsInReadingOrder.size());
            workspaceItemInfo.rank = boundToRange;
            iconsInReadingOrder.add(boundToRange, createNewView);
            this.mContent.arrangeChildren(iconsInReadingOrder);
            this.mItemsInvalidated = true;
            this.mInfo.mListeners.remove(this);
            try {
                this.mFolderIcon.onDrop(dragObject, true);
                this.mInfo.mListeners.add(this);
                updateTextViewFocus();
            } catch (Throwable th) {
                try {
                    this.mInfo.mListeners.add(this);
                    updateTextViewFocus();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else if (this.mDeleteFolderOnDropCompleted && !this.mItemAddedBackToSelfViaIcon && view != this) {
            replaceFolderWithFinalItem();
        }
        if (view != this) {
            Alarm alarm = this.mOnExitAlarm;
            if (alarm.mAlarmPending) {
                alarm.mAlarmPending = false;
                if (!z) {
                    this.mSuppressFolderDeletion = true;
                }
                this.mScrollPauseAlarm.mAlarmPending = false;
                completeDragExit();
            }
        }
        this.mDeleteFolderOnDropCompleted = false;
        this.mDragInProgress = false;
        this.mItemAddedBackToSelfViaIcon = false;
        this.mCurrentDragView = null;
        updateItemLocationsInDatabaseBatch(false);
        if (getItemCount() <= this.mContent.mOrganizer.mMaxItemsPerPage) {
            this.mInfo.setOption(4, false, this.mLauncher.mModelWriter);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        this.mFolderName.dispatchBackKey();
        return true;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        FolderPagedView folderPagedView = (FolderPagedView) findViewById(R.id.folder_content);
        this.mContent = folderPagedView;
        folderPagedView.mFolder = this;
        folderPagedView.mPageIndicator = findViewById(R.id.folder_page_indicator);
        folderPagedView.initParentViews(this);
        this.mPageIndicator = (PageIndicatorDots) findViewById(R.id.folder_page_indicator);
        FolderNameEditText folderNameEditText = (FolderNameEditText) findViewById(R.id.folder_name);
        this.mFolderName = folderNameEditText;
        folderNameEditText.mBackKeyListener = this;
        folderNameEditText.setOnFocusChangeListener(this);
        this.mFolderName.setOnEditorActionListener(this);
        this.mFolderName.setSelectAllOnFocus(true);
        FolderNameEditText folderNameEditText2 = this.mFolderName;
        folderNameEditText2.setInputType((folderNameEditText2.getInputType() & (-32769) & (-524289)) | QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED);
        this.mFolderName.mForceDisableSuggestions = true ^ FeatureFlags.FOLDER_NAME_SUGGEST.get();
        View findViewById = findViewById(R.id.folder_footer);
        this.mFooter = findViewById;
        findViewById.measure(0, 0);
        this.mFooterHeight = this.mFooter.getMeasuredHeight();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    @Override // android.view.View.OnFocusChangeListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFocusChange(android.view.View r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.Folder.onFocusChange(android.view.View, boolean):void");
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onItemsChanged(boolean z) {
        updateTextViewFocus();
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (!(!this.mLauncher.mWorkspaceLoading)) {
            return true;
        }
        startDrag(view, new DragOptions());
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int max = Math.max(this.mContent.getDesiredWidth(), 5);
        int contentAreaHeight = getContentAreaHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(contentAreaHeight, 1073741824);
        FolderPagedView folderPagedView = this.mContent;
        int paddingRight = max - (folderPagedView.getPaddingRight() + folderPagedView.getPaddingLeft());
        int paddingBottom = contentAreaHeight - (folderPagedView.getPaddingBottom() + folderPagedView.getPaddingTop());
        int childCount = folderPagedView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            CellLayout cellLayout = (CellLayout) folderPagedView.getChildAt(childCount);
            cellLayout.mFixedWidth = paddingRight;
            cellLayout.mFixedHeight = paddingBottom;
        }
        this.mContent.measure(makeMeasureSpec, makeMeasureSpec2);
        if (this.mContent.getChildCount() > 0) {
            int i3 = (this.mContent.getPageAt(0).mCellWidth - this.mLauncher.getDeviceProfile().iconSizePx) / 2;
            this.mFooter.setPadding(this.mContent.getPaddingLeft() + i3, this.mFooter.getPaddingTop(), this.mContent.getPaddingRight() + i3, this.mFooter.getPaddingBottom());
        }
        this.mFooter.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(this.mFooterHeight, 1073741824));
        setMeasuredDimension(getPaddingRight() + getPaddingLeft() + max, getPaddingBottom() + getPaddingTop() + contentAreaHeight + this.mFooterHeight);
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onRemove(WorkspaceItemInfo workspaceItemInfo) {
        this.mItemsInvalidated = true;
        View iterateOverItems = this.mContent.iterateOverItems(new j(workspaceItemInfo));
        FolderPagedView folderPagedView = this.mContent;
        int childCount = folderPagedView.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            } else {
                folderPagedView.getPageAt(childCount).removeView(iterateOverItems);
            }
        }
        if (this.mState == 1) {
            this.mRearrangeOnClose = true;
        } else {
            rearrangeChildren();
        }
        if (getItemCount() <= 1) {
            if (this.mIsOpen) {
                close(true);
            } else {
                replaceFolderWithFinalItem();
            }
        }
    }

    @Override // com.android.launcher3.DropTarget
    public void prepareAccessibilityDrop() {
        Alarm alarm = this.mReorderAlarm;
        if (alarm.mAlarmPending) {
            alarm.mAlarmPending = false;
            this.mReorderAlarmListener.onAlarm(alarm);
        }
    }

    public void rearrangeChildren() {
        this.mContent.arrangeChildren(getIconsInReadingOrder());
        this.mItemsInvalidated = true;
    }

    public void replaceFolderWithFinalItem() {
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.folder.Folder.8
            @Override // java.lang.Runnable
            public void run() {
                WorkspaceItemInfo workspaceItemInfo;
                int itemCount = Folder.this.getItemCount();
                if (itemCount <= 1) {
                    View view = null;
                    if (itemCount == 1) {
                        Folder folder = Folder.this;
                        Launcher launcher = folder.mLauncher;
                        FolderInfo folderInfo = folder.mInfo;
                        CellLayout cellLayout = launcher.getCellLayout(folderInfo.container, folderInfo.screenId);
                        WorkspaceItemInfo workspaceItemInfo2 = (WorkspaceItemInfo) Folder.this.mInfo.contents.remove(0);
                        View createShortcut = Folder.this.mLauncher.createShortcut(cellLayout, workspaceItemInfo2);
                        Folder folder2 = Folder.this;
                        ModelWriter modelWriter = folder2.mLauncher.mModelWriter;
                        FolderInfo folderInfo2 = folder2.mInfo;
                        modelWriter.addOrMoveItemInDatabase(workspaceItemInfo2, folderInfo2.container, folderInfo2.screenId, folderInfo2.cellX, folderInfo2.cellY);
                        view = createShortcut;
                        workspaceItemInfo = workspaceItemInfo2;
                    } else {
                        workspaceItemInfo = null;
                    }
                    Folder folder3 = Folder.this;
                    folder3.mLauncher.removeItem(folder3.mFolderIcon, folder3.mInfo, true);
                    Folder folder4 = Folder.this;
                    IconLabelDotView iconLabelDotView = folder4.mFolderIcon;
                    if (iconLabelDotView instanceof DropTarget) {
                        folder4.mDragController.mDropTargets.remove((DropTarget) iconLabelDotView);
                    }
                    if (view != null) {
                        Folder folder5 = Folder.this;
                        folder5.mLauncher.mWorkspace.addInScreenFromBind(view, folder5.mInfo);
                        view.requestFocus();
                    }
                    if (workspaceItemInfo != null) {
                        Folder folder6 = Folder.this;
                        folder6.mLauncher.folderConvertedToItem(folder6.mFolderIcon.mFolder, workspaceItemInfo);
                    }
                }
            }
        };
        if (this.mContent.getViewInCurrentPage(s.f1376a) != null) {
            this.mFolderIcon.mPreviewItemManager.createFirstItemAnimation(true, runnable).mAnimator.start();
        } else {
            runnable.run();
        }
        this.mDestroyed = true;
    }

    @Override // com.android.launcher3.views.ClipPathView
    public void setClipPath(Path path) {
        this.mClipPath = path;
        invalidate();
    }

    public final void showScrollHint(int i, DropTarget.DragObject dragObject) {
        if (this.mScrollHintDir != i) {
            FolderPagedView folderPagedView = this.mContent;
            int scrollForPage = (folderPagedView.getScrollForPage(folderPagedView.getNextPage()) + ((int) (((i == 0) ^ folderPagedView.mIsRtl ? -0.07f : 0.07f) * folderPagedView.getWidth()))) - folderPagedView.getScrollX();
            if (scrollForPage != 0) {
                folderPagedView.mScroller.setInterpolator(Interpolators.DEACCEL);
                folderPagedView.mScroller.startScroll(folderPagedView.getScrollX(), scrollForPage, 500);
                folderPagedView.invalidate();
            }
            this.mScrollHintDir = i;
        }
        if (this.mOnScrollHintAlarm.mAlarmPending && this.mCurrentScrollDir == i) {
            return;
        }
        this.mCurrentScrollDir = i;
        Alarm alarm = this.mOnScrollHintAlarm;
        alarm.mAlarmPending = false;
        alarm.mAlarmListener = new OnScrollHintListener(dragObject);
        this.mOnScrollHintAlarm.setAlarm(500L);
        this.mReorderAlarm.mAlarmPending = false;
        this.mTargetRank = this.mEmptyCellRank;
    }

    public final void startAnimation(final AnimatorSet animatorSet) {
        final boolean z;
        Workspace workspace = this.mLauncher.mWorkspace;
        final CellLayout cellLayout = (CellLayout) workspace.getChildAt(workspace.getCurrentPage());
        if (FeatureFlags.ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS.get()) {
            z = true;
        } else {
            ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
            int childCount = shortcutAndWidgetContainer.getChildCount() - 1;
            int i = 0;
            while (true) {
                if (childCount >= 0) {
                    View childAt = shortcutAndWidgetContainer.getChildAt(childCount);
                    if (childAt instanceof AppWidgetHostView) {
                        z = false;
                        break;
                    } else {
                        if (childAt instanceof FolderIcon) {
                            i++;
                        }
                        childCount--;
                    }
                } else {
                    z = i >= 10;
                }
            }
        }
        final boolean z2 = cellLayout.mShortcutsAndWidgets.getLayerType() == 2;
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.Folder.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (z) {
                    cellLayout.enableHardwareLayer(z2);
                }
                Folder.this.mCurrentAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (z) {
                    cellLayout.enableHardwareLayer(true);
                }
                Folder folder = Folder.this;
                folder.mState = 1;
                folder.mCurrentAnimator = animatorSet;
            }
        });
        animatorSet.start();
    }

    public boolean startDrag(View view, DragOptions dragOptions) {
        Object tag = view.getTag();
        if (!(tag instanceof WorkspaceItemInfo)) {
            return true;
        }
        this.mEmptyCellRank = ((WorkspaceItemInfo) tag).rank;
        this.mCurrentDragView = view;
        this.mDragController.mListeners.add(this);
        if (dragOptions.isAccessibleDrag) {
            DragController dragController = this.mDragController;
            dragController.mListeners.add(new AccessibleDragListenerAdapter(this.mContent, new Function() { // from class: c.a.a.I0.b
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new FolderAccessibilityHelper((CellLayout) obj);
                }
            }) { // from class: com.android.launcher3.folder.Folder.1
                @Override // com.android.launcher3.accessibility.AccessibleDragListenerAdapter
                public void enableAccessibleDrag(boolean z) {
                    super.enableAccessibleDrag(z);
                    Folder.this.mFooter.setImportantForAccessibility(z ? 4 : 0);
                }
            });
        }
        this.mLauncher.mWorkspace.beginDragShared(view, this, dragOptions);
        return true;
    }

    public final void updateItemLocationsInDatabaseBatch(boolean z) {
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(this.mLauncher.getDeviceProfile().inv);
        folderGridOrganizer.setFolderInfo(this.mInfo);
        ArrayList arrayList = new ArrayList();
        int size = this.mInfo.contents.size();
        for (int i = 0; i < size; i++) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) this.mInfo.contents.get(i);
            if (folderGridOrganizer.updateRankAndPos(workspaceItemInfo, i)) {
                arrayList.add(workspaceItemInfo);
            }
        }
        if (!arrayList.isEmpty()) {
            ModelWriter modelWriter = this.mLauncher.mModelWriter;
            int i2 = this.mInfo.id;
            Objects.requireNonNull(modelWriter);
            ArrayList arrayList2 = new ArrayList();
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i3);
                modelWriter.updateItemInfoProps(itemInfo, i2, 0, itemInfo.cellX, itemInfo.cellY);
                ContentValues contentValues = new ContentValues();
                contentValues.put("container", Integer.valueOf(itemInfo.container));
                contentValues.put("cellX", Integer.valueOf(itemInfo.cellX));
                contentValues.put("cellY", Integer.valueOf(itemInfo.cellY));
                contentValues.put("rank", Integer.valueOf(itemInfo.rank));
                contentValues.put("screen", Integer.valueOf(itemInfo.screenId));
                arrayList2.add(contentValues);
            }
            modelWriter.enqueueDeleteRunnable(modelWriter.new UpdateItemsRunnable(arrayList, arrayList2));
        }
        if (!FeatureFlags.FOLDER_NAME_SUGGEST.get() || z || size <= 1) {
            return;
        }
        Executors.MODEL_EXECUTOR.mHandler.post(new Runnable() { // from class: c.a.a.I0.i
            @Override // java.lang.Runnable
            public final void run() {
                Folder.this.h();
            }
        });
    }

    public void updateTextViewFocus() {
        View viewInCurrentPage = this.mContent.getViewInCurrentPage(t.f1377a);
        final View viewInCurrentPage2 = this.mContent.getViewInCurrentPage(s.f1376a);
        if (viewInCurrentPage == null || viewInCurrentPage2 == null) {
            setOnKeyListener(null);
            return;
        }
        this.mFolderName.setNextFocusDownId(viewInCurrentPage2.getId());
        this.mFolderName.setNextFocusRightId(viewInCurrentPage2.getId());
        this.mFolderName.setNextFocusLeftId(viewInCurrentPage2.getId());
        this.mFolderName.setNextFocusUpId(viewInCurrentPage2.getId());
        this.mFolderName.setNextFocusForwardId(viewInCurrentPage.getId());
        setNextFocusDownId(viewInCurrentPage.getId());
        setNextFocusRightId(viewInCurrentPage.getId());
        setNextFocusLeftId(viewInCurrentPage.getId());
        setNextFocusUpId(viewInCurrentPage.getId());
        setOnKeyListener(new View.OnKeyListener() { // from class: com.android.launcher3.folder.Folder.9
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if ((i == 61 && keyEvent.hasModifiers(1)) && Folder.this.isFocused()) {
                    return viewInCurrentPage2.requestFocus();
                }
                return false;
            }
        });
    }
}
