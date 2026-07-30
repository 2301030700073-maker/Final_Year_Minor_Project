package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import c.a.a.I0.j;
import com.android.launcher3.Alarm;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Reorderable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dot.FolderDotInfo;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.logger.LauncherAtom$FromState;
import com.android.launcher3.logger.LauncherAtom$ToState;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.IconLabelDotView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class FolderIcon extends FrameLayout implements FolderInfo.FolderListener, IconLabelDotView, DraggableView, Reorderable {
    public static final Property DOT_SCALE_PROPERTY = new Property(Float.TYPE, "dotScale") { // from class: com.android.launcher3.folder.FolderIcon.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((FolderIcon) obj).mDotScale);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            FolderIcon folderIcon = (FolderIcon) obj;
            folderIcon.mDotScale = ((Float) obj2).floatValue();
            folderIcon.invalidate();
        }
    };
    public ActivityContext mActivity;
    public boolean mAnimating;
    public PreviewBackground mBackground;
    public boolean mBackgroundIsVisible;
    public List mCurrentPreviewItems;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    public FolderDotInfo mDotInfo;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    public DotRenderer.DrawParams mDotParams;
    public DotRenderer mDotRenderer;
    public float mDotScale;
    public Animator mDotScaleAnim;
    public Folder mFolder;
    public BubbleTextView mFolderName;
    public boolean mForceHideDot;
    public FolderInfo mInfo;
    public CheckLongPressHelper mLongPressHelper;
    public OnAlarmListener mOnOpenListener;
    public Alarm mOpenAlarm;
    public PreviewItemManager mPreviewItemManager;
    public ClippedFolderIconLayoutRule mPreviewLayoutRule;
    public FolderGridOrganizer mPreviewVerifier;
    public float mScaleForReorderBounce;
    public PreviewItemDrawingParams mTmpParams;
    public final PointF mTranslationForReorderBounce;
    public final PointF mTranslationForReorderPreview;

    public FolderIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mCurrentPreviewItems = new ArrayList();
        this.mAnimating = false;
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTranslationForReorderBounce = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mTranslationForReorderPreview = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder folder = FolderIcon.this.mFolder;
                folder.mIsExternalDrag = true;
                folder.mDragInProgress = true;
                folder.mDragController.mListeners.add(folder);
                ArrayList arrayList = new ArrayList(folder.mInfo.contents);
                folder.mEmptyCellRank = arrayList.size();
                arrayList.add(null);
                folder.animateOpen(arrayList, folder.mEmptyCellRank / folder.mContent.mOrganizer.mMaxItemsPerPage);
            }
        };
        init();
    }

    public static FolderIcon inflateFolderAndIcon(int i, Launcher launcher, ViewGroup viewGroup, FolderInfo folderInfo) {
        final Folder fromXml = Folder.fromXml(launcher);
        fromXml.mDragController = launcher.mDragController;
        FolderIcon inflateIcon = inflateIcon(i, launcher, viewGroup, folderInfo);
        fromXml.mFolderIcon = inflateIcon;
        fromXml.mInfo = folderInfo;
        fromXml.mFromTitle = folderInfo.title;
        fromXml.mFromLabelState = folderInfo.getFromLabelState();
        Collections.sort(folderInfo.contents, Folder.ITEM_POS_COMPARATOR);
        fromXml.updateItemLocationsInDatabaseBatch(true);
        if (((BaseDragLayer.LayoutParams) fromXml.getLayoutParams()) == null) {
            BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(0, 0);
            layoutParams.customPosition = true;
            fromXml.setLayoutParams(layoutParams);
        }
        fromXml.mItemsInvalidated = true;
        fromXml.mInfo.mListeners.add(fromXml);
        if (TextUtils.isEmpty(fromXml.mInfo.title)) {
            fromXml.mFolderName.setText("");
            fromXml.mFolderName.setHint(R.string.folder_hint_text);
        } else {
            fromXml.mFolderName.setText(fromXml.mInfo.title);
            fromXml.mFolderName.setHint((CharSequence) null);
        }
        fromXml.mFolderIcon.post(new Runnable() { // from class: c.a.a.I0.d
            @Override // java.lang.Runnable
            public final void run() {
                Folder.this.a();
            }
        });
        inflateIcon.mFolder = fromXml;
        inflateIcon.setOnFocusChangeListener(launcher.mFocusHandler);
        return inflateIcon;
    }

    public static FolderIcon inflateIcon(int i, ActivityContext activityContext, ViewGroup viewGroup, FolderInfo folderInfo) {
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        FolderIcon folderIcon = (FolderIcon) LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        folderIcon.setClipToPadding(false);
        BubbleTextView bubbleTextView = (BubbleTextView) folderIcon.findViewById(R.id.folder_icon_name);
        folderIcon.mFolderName = bubbleTextView;
        bubbleTextView.setText(folderInfo.title);
        folderIcon.mFolderName.setCompoundDrawablePadding(0);
        ((FrameLayout.LayoutParams) folderIcon.mFolderName.getLayoutParams()).topMargin = deviceProfile.iconSizePx + deviceProfile.iconDrawablePaddingPx;
        folderIcon.setTag(folderInfo);
        folderIcon.setOnClickListener(ItemClickHandler.INSTANCE);
        folderIcon.mInfo = folderInfo;
        folderIcon.mActivity = activityContext;
        folderIcon.mDotRenderer = deviceProfile.mDotRendererWorkSpace;
        folderIcon.setContentDescription(folderIcon.getAccessiblityTitle(folderInfo.title));
        FolderDotInfo folderDotInfo = new FolderDotInfo();
        Iterator it = folderInfo.contents.iterator();
        while (it.hasNext()) {
            folderDotInfo.addDotInfo(activityContext.getDotInfoForItem((WorkspaceItemInfo) it.next()));
        }
        folderIcon.updateDotScale(folderIcon.mDotInfo.hasDot(), folderDotInfo.hasDot());
        folderIcon.mDotInfo = folderDotInfo;
        folderIcon.setAccessibilityDelegate(activityContext.getAccessibilityDelegate());
        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(activityContext.getDeviceProfile().inv);
        folderIcon.mPreviewVerifier = folderGridOrganizer;
        folderGridOrganizer.setFolderInfo(folderInfo);
        folderIcon.updatePreviewItems(false);
        folderInfo.mListeners.add(folderIcon);
        return folderIcon;
    }

    public /* synthetic */ void a(DropTarget.DragObject dragObject, FolderNameInfos folderNameInfos, int i, WorkspaceItemInfo workspaceItemInfo) {
        dragObject.folderNameProvider.getSuggestedFolderName(getContext(), this.mInfo.contents, folderNameInfos);
        showFinalView(i, workspaceItemInfo, folderNameInfos, dragObject.logInstanceId);
    }

    public void animateDotScale(float... fArr) {
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<FolderIcon, Float>) DOT_SCALE_PROPERTY, fArr);
        this.mDotScaleAnim = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderIcon.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                FolderIcon.this.mDotScaleAnim = null;
            }
        });
        this.mDotScaleAnim.start();
    }

    public void b(int i, WorkspaceItemInfo workspaceItemInfo, FolderNameInfos folderNameInfos, InstanceId instanceId) {
        this.mPreviewItemManager.hidePreviewItem(i, false);
        View iterateOverItems = this.mFolder.mContent.iterateOverItems(new j(workspaceItemInfo));
        if (iterateOverItems != null) {
            iterateOverItems.setVisibility(0);
        }
        LauncherAtom$ToState launcherAtom$ToState = LauncherAtom$ToState.TO_SUGGESTION0;
        if (FeatureFlags.FOLDER_NAME_SUGGEST.get() && this.mInfo.getLabelState().equals(FolderInfo.LabelState.UNLABELED)) {
            if (folderNameInfos == null || !folderNameInfos.hasSuggestions()) {
                StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_SUGGESTIONS);
            } else if (folderNameInfos.hasPrimary()) {
                CharSequence charSequence = folderNameInfos.mLabels[0];
                LauncherAtom$FromState fromLabelState = this.mInfo.getFromLabelState();
                this.mInfo.setTitle(charSequence, this.mFolder.mLauncher.mModelWriter);
                CharSequence charSequence2 = this.mInfo.title;
                this.mFolderName.setText(charSequence2);
                setContentDescription(getAccessiblityTitle(charSequence2));
                this.mFolder.mFolderName.setText(this.mInfo.title);
                StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).withFromState(fromLabelState).withToState(launcherAtom$ToState).withEditText(charSequence.toString()).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELED);
                this.mFolder.logFolderLabelState(fromLabelState, launcherAtom$ToState);
            } else {
                StatsLogManager.newInstance(getContext()).logger().withInstanceId(instanceId).withItemInfo(this.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_AUTO_LABELING_SKIPPED_EMPTY_PRIMARY);
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mBackgroundIsVisible) {
            this.mPreviewItemManager.recomputePreviewDrawingParams();
            if (!(this.mBackground.mDrawingDelegate != null)) {
                this.mBackground.drawBackground(canvas);
            }
            if (this.mCurrentPreviewItems.isEmpty()) {
                return;
            }
            int save = canvas.save();
            canvas.clipPath(this.mBackground.getClipPath());
            this.mPreviewItemManager.draw(canvas);
            canvas.restoreToCount(save);
            if (!(this.mBackground.mDrawingDelegate != null)) {
                this.mBackground.drawBackgroundStroke(canvas);
            }
            drawDot(canvas);
        }
    }

    public void drawDot(Canvas canvas) {
        if (this.mForceHideDot) {
            return;
        }
        FolderDotInfo folderDotInfo = this.mDotInfo;
        if ((folderDotInfo == null || !folderDotInfo.hasDot()) && this.mDotScale <= RecentsState.NO_OFFSET) {
            return;
        }
        Rect rect = this.mDotParams.iconBounds;
        BubbleTextView.getIconBounds(this, rect, this.mActivity.getDeviceProfile().iconSizePx);
        Utilities.scaleRectAboutCenter(rect, this.mBackground.previewSize / rect.width());
        this.mDotParams.scale = Math.max(RecentsState.NO_OFFSET, this.mDotScale - ((this.mBackground.mScale - 1.0f) / 0.20000005f));
        DotRenderer.DrawParams drawParams = this.mDotParams;
        drawParams.color = this.mBackground.mDotColor;
        this.mDotRenderer.draw(canvas, drawParams);
    }

    public String getAccessiblityTitle(CharSequence charSequence) {
        int size = this.mInfo.contents.size();
        return size < 4 ? getContext().getString(R.string.folder_name_format_exact, charSequence, Integer.valueOf(size)) : getContext().getString(R.string.folder_name_format_overflow, charSequence, 4);
    }

    public void getPreviewBounds(Rect rect) {
        this.mPreviewItemManager.recomputePreviewDrawingParams();
        PreviewBackground previewBackground = this.mBackground;
        int i = previewBackground.basePreviewOffsetY;
        int i2 = previewBackground.basePreviewOffsetX;
        int i3 = previewBackground.previewSize;
        rect.set(i2, i, i2 + i3, i3 + i);
    }

    public List getPreviewItemsOnPage(int i) {
        FolderGridOrganizer folderGridOrganizer = this.mPreviewVerifier;
        folderGridOrganizer.setFolderInfo(this.mInfo);
        return folderGridOrganizer.previewItemsForPage(i, this.mInfo.contents);
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
        return 0;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getWorkspaceVisualDragBounds(Rect rect) {
        getPreviewBounds(rect);
    }

    public final void init() {
        this.mLongPressHelper = new CheckLongPressHelper(this, null);
        this.mPreviewLayoutRule = new ClippedFolderIconLayoutRule();
        this.mPreviewItemManager = new PreviewItemManager(this);
        this.mDotParams = new DotRenderer.DrawParams();
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onAdd(WorkspaceItemInfo workspaceItemInfo, int i) {
        boolean hasDot = this.mDotInfo.hasDot();
        this.mDotInfo.addDotInfo(this.mActivity.getDotInfoForItem(workspaceItemInfo));
        updateDotScale(hasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0220  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDrop(final com.android.launcher3.model.data.WorkspaceItemInfo r26, final com.android.launcher3.DropTarget.DragObject r27, android.graphics.Rect r28, float r29, int r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 695
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.FolderIcon.onDrop(com.android.launcher3.model.data.WorkspaceItemInfo, com.android.launcher3.DropTarget$DragObject, android.graphics.Rect, float, int, boolean):void");
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onItemsChanged(boolean z) {
        updatePreviewItems(z);
        invalidate();
        requestLayout();
    }

    @Override // com.android.launcher3.model.data.FolderInfo.FolderListener
    public void onRemove(WorkspaceItemInfo workspaceItemInfo) {
        boolean hasDot = this.mDotInfo.hasDot();
        FolderDotInfo folderDotInfo = this.mDotInfo;
        DotInfo dotInfoForItem = this.mActivity.getDotInfoForItem(workspaceItemInfo);
        Objects.requireNonNull(folderDotInfo);
        if (dotInfoForItem != null) {
            int size = folderDotInfo.mNumNotifications - dotInfoForItem.mNotificationKeys.size();
            folderDotInfo.mNumNotifications = size;
            folderDotInfo.mNumNotifications = Utilities.boundToRange(size, 0, 999);
        }
        updateDotScale(hasDot, this.mDotInfo.hasDot());
        setContentDescription(getAccessiblityTitle(this.mInfo.title));
        invalidate();
        requestLayout();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    public Drawable prepareCreateAnimation(View view) {
        PreviewItemManager previewItemManager = this.mPreviewItemManager;
        Objects.requireNonNull(previewItemManager);
        Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
        previewItemManager.computePreviewDrawingParams(drawable.getIntrinsicWidth(), view.getMeasuredWidth());
        previewItemManager.mReferenceDrawable = drawable;
        return drawable;
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setForceHideDot(boolean z) {
        if (this.mForceHideDot == z) {
            return;
        }
        this.mForceHideDot = z;
        if (z) {
            invalidate();
            return;
        }
        FolderDotInfo folderDotInfo = this.mDotInfo;
        if (folderDotInfo != null && folderDotInfo.hasDot()) {
            animateDotScale(RecentsState.NO_OFFSET, 1.0f);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setIconVisible(boolean z) {
        this.mBackgroundIsVisible = z;
        invalidate();
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceOffset(float f, float f2) {
        this.mTranslationForReorderBounce.set(f, f2);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceScale(float f) {
        this.mScaleForReorderBounce = f;
        super.setScaleX(f);
        super.setScaleY(f);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderPreviewOffset(float f, float f2) {
        this.mTranslationForReorderPreview.set(f, f2);
        updateTranslation();
    }

    public final void showFinalView(final int i, final WorkspaceItemInfo workspaceItemInfo, final FolderNameInfos folderNameInfos, final InstanceId instanceId) {
        postDelayed(new Runnable() { // from class: c.a.a.I0.k
            @Override // java.lang.Runnable
            public final void run() {
                FolderIcon.this.b(i, workspaceItemInfo, folderNameInfos, instanceId);
            }
        }, 400L);
    }

    public final void updateDotScale(boolean z, boolean z2) {
        float f = z2 ? 1.0f : RecentsState.NO_OFFSET;
        if ((z ^ z2) && isShown()) {
            animateDotScale(f);
            return;
        }
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
        this.mDotScale = f;
        invalidate();
    }

    public final void updatePreviewItems(boolean z) {
        PreviewItemManager previewItemManager = this.mPreviewItemManager;
        previewItemManager.buildParamsForPage(0, previewItemManager.mFirstPageParams, z);
        this.mCurrentPreviewItems.clear();
        this.mCurrentPreviewItems.addAll(getPreviewItemsOnPage(0));
    }

    public final void updateTranslation() {
        super.setTranslationX(this.mTranslationForReorderBounce.x + this.mTranslationForReorderPreview.x);
        super.setTranslationY(this.mTranslationForReorderBounce.y + this.mTranslationForReorderPreview.y);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        boolean z;
        PreviewItemManager previewItemManager = this.mPreviewItemManager;
        int i = 0;
        while (true) {
            if (i >= previewItemManager.mFirstPageParams.size()) {
                z = false;
                break;
            }
            if (((PreviewItemDrawingParams) previewItemManager.mFirstPageParams.get(i)).drawable == drawable) {
                z = true;
                break;
            }
            i++;
        }
        return z || super.verifyDrawable(drawable);
    }

    public final boolean willAcceptItem(ItemInfo itemInfo) {
        int i = itemInfo.itemType;
        return ((i != 0 && i != 1 && i != 6) || itemInfo == this.mInfo || this.mFolder.isOpen()) ? false : true;
    }

    public void updatePreviewItems(Predicate predicate) {
        PreviewItemManager previewItemManager = this.mPreviewItemManager;
        Iterator it = previewItemManager.mFirstPageParams.iterator();
        boolean z = false;
        while (it.hasNext()) {
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) it.next();
            if (predicate.test(previewItemDrawingParams.item)) {
                previewItemManager.setDrawable(previewItemDrawingParams, previewItemDrawingParams.item);
                z = true;
            }
        }
        Iterator it2 = previewItemManager.mCurrentPageParams.iterator();
        while (it2.hasNext()) {
            PreviewItemDrawingParams previewItemDrawingParams2 = (PreviewItemDrawingParams) it2.next();
            if (predicate.test(previewItemDrawingParams2.item)) {
                previewItemManager.setDrawable(previewItemDrawingParams2, previewItemDrawingParams2.item);
                z = true;
            }
        }
        if (z) {
            previewItemManager.mIcon.invalidate();
        }
    }

    public FolderIcon(Context context) {
        super(context);
        this.mBackground = new PreviewBackground();
        this.mBackgroundIsVisible = true;
        this.mTmpParams = new PreviewItemDrawingParams(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mCurrentPreviewItems = new ArrayList();
        this.mAnimating = false;
        this.mOpenAlarm = new Alarm();
        this.mDotInfo = new FolderDotInfo();
        this.mTranslationForReorderBounce = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mTranslationForReorderPreview = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mScaleForReorderBounce = 1.0f;
        this.mOnOpenListener = new OnAlarmListener() { // from class: com.android.launcher3.folder.FolderIcon.2
            @Override // com.android.launcher3.OnAlarmListener
            public void onAlarm(Alarm alarm) {
                Folder folder = FolderIcon.this.mFolder;
                folder.mIsExternalDrag = true;
                folder.mDragInProgress = true;
                folder.mDragController.mListeners.add(folder);
                ArrayList arrayList = new ArrayList(folder.mInfo.contents);
                folder.mEmptyCellRank = arrayList.size();
                arrayList.add(null);
                folder.animateOpen(arrayList, folder.mEmptyCellRank / folder.mContent.mOrganizer.mMaxItemsPerPage);
            }
        };
        init();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDrop(com.android.launcher3.DropTarget.DragObject r9, boolean r10) {
        /*
            r8 = this;
            com.android.launcher3.model.data.ItemInfo r0 = r9.dragInfo
            boolean r1 = r0 instanceof com.android.launcher3.model.data.AppInfo
            if (r1 == 0) goto Ld
            com.android.launcher3.model.data.AppInfo r0 = (com.android.launcher3.model.data.AppInfo) r0
            com.android.launcher3.model.data.WorkspaceItemInfo r0 = r0.makeWorkspaceItem()
            goto L1e
        Ld:
            com.android.launcher3.DragSource r1 = r9.dragSource
            boolean r1 = r1 instanceof com.android.launcher3.dragndrop.BaseItemDragListener
            if (r1 == 0) goto L1c
            com.android.launcher3.model.data.WorkspaceItemInfo r1 = new com.android.launcher3.model.data.WorkspaceItemInfo
            com.android.launcher3.model.data.WorkspaceItemInfo r0 = (com.android.launcher3.model.data.WorkspaceItemInfo) r0
            r1.<init>(r0)
            r2 = r1
            goto L1f
        L1c:
            com.android.launcher3.model.data.WorkspaceItemInfo r0 = (com.android.launcher3.model.data.WorkspaceItemInfo) r0
        L1e:
            r2 = r0
        L1f:
            com.android.launcher3.folder.Folder r0 = r8.mFolder
            boolean r1 = r0.mDragInProgress
            if (r1 == 0) goto L28
            r1 = 1
            r0.mItemAddedBackToSelfViaIcon = r1
        L28:
            r4 = 0
            r5 = 1065353216(0x3f800000, float:1.0)
            if (r10 == 0) goto L30
            int r0 = r2.rank
            goto L38
        L30:
            com.android.launcher3.model.data.FolderInfo r0 = r8.mInfo
            java.util.ArrayList r0 = r0.contents
            int r0 = r0.size()
        L38:
            r6 = r0
            r1 = r8
            r3 = r9
            r7 = r10
            r1.onDrop(r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.folder.FolderIcon.onDrop(com.android.launcher3.DropTarget$DragObject, boolean):void");
    }
}
