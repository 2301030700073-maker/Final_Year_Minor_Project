package com.android.launcher3.popup;

import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import b.l.W;
import c.a.a.H0.h;
import c.a.a.O0.b;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationFooterLayout;
import com.android.launcher3.notification.NotificationInfo;
import com.android.launcher3.notification.NotificationItemView;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.notification.NotificationMainView;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.PopupPopulator;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.shortcuts.ShortcutDragPreviewProvider;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class PopupContainerWithArrow extends ArrowPopup implements DragSource, DragController.DragListener {
    public LauncherAccessibilityDelegate mAccessibilityDelegate;
    public final PointF mInterceptTouchDown;
    public NotificationItemView mNotificationItemView;
    public int mNumNotifications;
    public BubbleTextView mOriginalIcon;
    public PopupItemDragHandler mPopupItemDragHandler;
    public final List mShortcuts;
    public final int mStartDragThreshold;
    public ViewGroup mSystemShortcutContainer;

    public class LauncherPopupItemDragHandler implements PopupItemDragHandler {
        public final PopupContainerWithArrow mContainer;
        public final Point mIconLastTouchPos = new Point();
        public final Launcher mLauncher;

        public LauncherPopupItemDragHandler(Launcher launcher, PopupContainerWithArrow popupContainerWithArrow) {
            this.mLauncher = launcher;
            this.mContainer = popupContainerWithArrow;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (!ItemLongClickListener.canStartDrag(this.mLauncher) || !(view.getParent() instanceof DeepShortcutView)) {
                return false;
            }
            DeepShortcutView deepShortcutView = (DeepShortcutView) view.getParent();
            deepShortcutView.mIconView.setVisibility(4);
            Point point = new Point();
            int i = this.mIconLastTouchPos.x;
            Point point2 = DeepShortcutView.sTempPoint;
            int measuredHeight = deepShortcutView.getMeasuredHeight() / 2;
            point2.x = measuredHeight;
            point2.y = measuredHeight;
            if (Utilities.isRtl(deepShortcutView.getResources())) {
                DeepShortcutView.sTempPoint.x = deepShortcutView.getMeasuredWidth() - DeepShortcutView.sTempPoint.x;
            }
            point.x = i - DeepShortcutView.sTempPoint.x;
            point.y = this.mIconLastTouchPos.y - this.mLauncher.getDeviceProfile().iconSizePx;
            h hVar = new h(0);
            WorkspaceItemInfo finalInfo = deepShortcutView.getFinalInfo();
            finalInfo.container = -107;
            Workspace workspace = this.mLauncher.mWorkspace;
            View view2 = deepShortcutView.mIconView;
            final DragView beginDragShared = workspace.beginDragShared(view2, hVar, this.mContainer, finalInfo, new ShortcutDragPreviewProvider(view2, point), new DragOptions());
            final int i2 = -point.x;
            final int i3 = -point.y;
            if (!beginDragShared.mAnim.isStarted()) {
                beginDragShared.mAnimatedShiftX = i2;
                beginDragShared.mAnimatedShiftY = i3;
                beginDragShared.applyTranslation();
                beginDragShared.mAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.dragndrop.DragView.4
                    public final /* synthetic */ int val$shiftX;
                    public final /* synthetic */ int val$shiftY;

                    public AnonymousClass4(final int i22, final int i32) {
                        r2 = i22;
                        r3 = i32;
                    }

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
                        DragView dragView = DragView.this;
                        dragView.mAnimatedShiftX = (int) (r2 * animatedFraction);
                        dragView.mAnimatedShiftY = (int) (animatedFraction * r3);
                        dragView.applyTranslation();
                    }
                });
            }
            AbstractFloatingView.closeOpenContainer(this.mLauncher, 1);
            return false;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action != 0 && action != 2) {
                return false;
            }
            this.mIconLastTouchPos.set((int) motionEvent.getX(), (int) motionEvent.getY());
            return false;
        }
    }

    public class LiveUpdateHandler implements PopupDataProvider.PopupDataChangeListener, View.OnAttachStateChangeListener {
        public final Launcher mLauncher;

        public LiveUpdateHandler(Launcher launcher) {
            this.mLauncher = launcher;
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void onNotificationDotsUpdated(Predicate predicate) {
            if (predicate.test(PackageUserKey.fromItemInfo((ItemInfo) PopupContainerWithArrow.this.mOriginalIcon.getTag()))) {
                PopupContainerWithArrow.this.updateNotificationHeader();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.mLauncher.mPopupDataProvider.mChangeListener = this;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.mLauncher.mPopupDataProvider.setChangeListener(null);
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void onWidgetsBound() {
            SystemShortcut shortcut = SystemShortcut.WIDGETS.getShortcut(this.mLauncher, (ItemInfo) PopupContainerWithArrow.this.mOriginalIcon.getTag());
            View view = null;
            int childCount = PopupContainerWithArrow.this.mSystemShortcutContainer.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                View childAt = PopupContainerWithArrow.this.mSystemShortcutContainer.getChildAt(i);
                if (childAt.getTag() instanceof SystemShortcut.Widgets) {
                    view = childAt;
                    break;
                }
                i++;
            }
            if (shortcut != null && view == null) {
                PopupContainerWithArrow popupContainerWithArrow = PopupContainerWithArrow.this;
                ViewGroup viewGroup = popupContainerWithArrow.mSystemShortcutContainer;
                if (viewGroup != popupContainerWithArrow) {
                    popupContainerWithArrow.initializeSystemShortcut(R.layout.system_shortcut_icon_only, viewGroup, shortcut);
                    return;
                } else {
                    popupContainerWithArrow.close(false);
                    PopupContainerWithArrow.showForIcon(PopupContainerWithArrow.this.mOriginalIcon);
                    return;
                }
            }
            if (shortcut != null || view == null) {
                return;
            }
            PopupContainerWithArrow popupContainerWithArrow2 = PopupContainerWithArrow.this;
            ViewGroup viewGroup2 = popupContainerWithArrow2.mSystemShortcutContainer;
            if (viewGroup2 != popupContainerWithArrow2) {
                viewGroup2.removeView(view);
            } else {
                popupContainerWithArrow2.close(false);
                PopupContainerWithArrow.showForIcon(PopupContainerWithArrow.this.mOriginalIcon);
            }
        }

        @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
        public void trimNotifications(Map map) {
            PopupContainerWithArrow popupContainerWithArrow = PopupContainerWithArrow.this;
            if (popupContainerWithArrow.mNotificationItemView == null) {
                return;
            }
            DotInfo dotInfo = (DotInfo) map.get(PackageUserKey.fromItemInfo((ItemInfo) popupContainerWithArrow.mOriginalIcon.getTag()));
            if (dotInfo == null || dotInfo.mNotificationKeys.size() == 0) {
                NotificationItemView notificationItemView = PopupContainerWithArrow.this.mNotificationItemView;
                notificationItemView.mContainer.removeView(notificationItemView.mMainView);
                notificationItemView.mContainer.removeView(notificationItemView.mHeader);
                if (notificationItemView.mContainer.indexOfChild(notificationItemView.mFooter) >= 0) {
                    notificationItemView.mContainer.removeView(notificationItemView.mFooter);
                    notificationItemView.mContainer.removeView(notificationItemView.mDivider);
                }
                View view = notificationItemView.mGutter;
                if (view != null) {
                    notificationItemView.mContainer.removeView(view);
                }
                PopupContainerWithArrow popupContainerWithArrow2 = PopupContainerWithArrow.this;
                DeepShortcutView deepShortcutView = null;
                popupContainerWithArrow2.mNotificationItemView = null;
                popupContainerWithArrow2.updateHiddenShortcuts();
                PopupContainerWithArrow popupContainerWithArrow3 = PopupContainerWithArrow.this;
                int childCount = popupContainerWithArrow3.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = popupContainerWithArrow3.getChildAt(i);
                    if (childAt.getVisibility() == 0 && (childAt instanceof DeepShortcutView)) {
                        if (deepShortcutView != null) {
                            deepShortcutView.mDivider.setVisibility(0);
                        }
                        DeepShortcutView deepShortcutView2 = (DeepShortcutView) childAt;
                        deepShortcutView2.mDivider.setVisibility(4);
                        deepShortcutView = deepShortcutView2;
                    }
                }
                return;
            }
            NotificationItemView notificationItemView2 = PopupContainerWithArrow.this.mNotificationItemView;
            List list = dotInfo.mNotificationKeys;
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((NotificationKeyData) it.next()).notificationKey);
            }
            if ((!arrayList.contains(notificationItemView2.mMainView.mNotificationInfo.notificationKey)) && !notificationItemView2.mAnimatingNextIcon) {
                notificationItemView2.mAnimatingNextIcon = true;
                NotificationMainView notificationMainView = notificationItemView2.mMainView;
                notificationMainView.mTextAndBackground.setVisibility(4);
                notificationMainView.mIconView.setVisibility(4);
                notificationItemView2.mMainView.setContentTranslation(RecentsState.NO_OFFSET);
                notificationItemView2.mIconView.getGlobalVisibleRect(NotificationItemView.sTempRect);
                notificationItemView2.mFooter.animateFirstNotificationTo(NotificationItemView.sTempRect, new b(notificationItemView2));
                return;
            }
            NotificationFooterLayout notificationFooterLayout = notificationItemView2.mFooter;
            if (!notificationFooterLayout.isAttachedToWindow() || notificationFooterLayout.mIconRow.getChildCount() == 0) {
                return;
            }
            Iterator it2 = notificationFooterLayout.mOverflowNotifications.iterator();
            while (it2.hasNext()) {
                if (!arrayList.contains(((NotificationInfo) it2.next()).notificationKey)) {
                    it2.remove();
                }
            }
            int childCount2 = notificationFooterLayout.mIconRow.getChildCount();
            while (true) {
                childCount2--;
                if (childCount2 < 0) {
                    return;
                }
                View childAt2 = notificationFooterLayout.mIconRow.getChildAt(childCount2);
                if (!arrayList.contains(((NotificationInfo) childAt2.getTag()).notificationKey)) {
                    notificationFooterLayout.removeViewFromIconRow(childAt2);
                }
            }
        }
    }

    public interface PopupItemDragHandler extends View.OnLongClickListener, View.OnTouchListener {
    }

    public PopupContainerWithArrow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mShortcuts = new ArrayList();
        this.mInterceptTouchDown = new PointF();
        this.mStartDragThreshold = getResources().getDimensionPixelSize(R.dimen.deep_shortcuts_start_drag_threshold);
    }

    public static boolean canShow(View view, ItemInfo itemInfo) {
        return (view instanceof BubbleTextView) && W.supportsShortcuts(itemInfo);
    }

    public static PopupContainerWithArrow getOpen(BaseDraggingActivity baseDraggingActivity) {
        return (PopupContainerWithArrow) AbstractFloatingView.getOpenView(baseDraggingActivity, 2);
    }

    public static PopupContainerWithArrow showForIcon(BubbleTextView bubbleTextView) {
        final Launcher launcher = Launcher.getLauncher(bubbleTextView.getContext());
        if (getOpen(launcher) != null) {
            bubbleTextView.clearFocus();
            return null;
        }
        final ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
        if (!canShow(bubbleTextView, itemInfo)) {
            return null;
        }
        PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow) launcher.getLayoutInflater().inflate(R.layout.popup_container, (ViewGroup) launcher.mDragLayer, false);
        popupContainerWithArrow.addOnAttachStateChangeListener(popupContainerWithArrow.new LiveUpdateHandler(launcher));
        popupContainerWithArrow.mPopupItemDragHandler = new LauncherPopupItemDragHandler(launcher, popupContainerWithArrow);
        popupContainerWithArrow.mAccessibilityDelegate = new ShortcutMenuAccessibilityDelegate(launcher);
        launcher.mDragController.mListeners.add(popupContainerWithArrow);
        PopupDataProvider popupDataProvider = launcher.mPopupDataProvider;
        int shortcutCountForItem = popupDataProvider.getShortcutCountForItem(itemInfo);
        DotInfo dotInfoForItem = popupDataProvider.getDotInfoForItem(itemInfo);
        popupContainerWithArrow.populateAndShow(bubbleTextView, shortcutCountForItem, dotInfoForItem == null ? Collections.EMPTY_LIST : PopupDataProvider.getNotificationsForItem(itemInfo, dotInfoForItem.mNotificationKeys), (List) launcher.getSupportedShortcuts().map(new Function() { // from class: c.a.a.R0.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SystemShortcut shortcut;
                shortcut = ((SystemShortcut.Factory) obj).getShortcut(Launcher.this, itemInfo);
                return shortcut;
            }
        }).filter(new Predicate() { // from class: c.a.a.R0.c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((SystemShortcut) obj);
            }
        }).collect(Collectors.toList()));
        PackageUserKey fromItemInfo = PackageUserKey.fromItemInfo(itemInfo);
        LauncherModel launcherModel = launcher.mModel;
        Objects.requireNonNull(launcherModel);
        launcherModel.enqueueModelUpdateTask(new LauncherModel.AnonymousClass6(launcherModel, fromItemInfo));
        return popupContainerWithArrow;
    }

    public /* synthetic */ void c(View view) {
        this.mLauncher.getItemOnClickListener().onClick(view);
        close(true);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void closeComplete() {
        PopupContainerWithArrow open = getOpen(this.mLauncher);
        if (open == null || open.mOriginalIcon != this.mOriginalIcon) {
            BubbleTextView bubbleTextView = this.mOriginalIcon;
            bubbleTextView.setTextVisibility(bubbleTextView.shouldTextBeVisible());
            this.mOriginalIcon.setForceHideDot(false);
        }
        super.closeComplete();
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        if (itemInfo == NotificationMainView.NOTIFICATION_ITEM_INFO) {
            launcherLogProto$Target.itemType = 8;
        } else {
            launcherLogProto$Target.itemType = 5;
            launcherLogProto$Target.rank = itemInfo.rank;
        }
        arrayList.add(LoggerUtils.newContainerTarget(9));
    }

    @Override // android.view.View
    public View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public View.OnClickListener getItemClickListener() {
        return new View.OnClickListener() { // from class: c.a.a.R0.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PopupContainerWithArrow.this.c(view);
            }
        };
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 9;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void getTargetObjectLocation(Rect rect) {
        getPopupContainer().getDescendantRectRelativeToSelf(this.mOriginalIcon, rect);
        rect.top = this.mOriginalIcon.getPaddingTop() + rect.top;
        rect.left = this.mOriginalIcon.getPaddingLeft() + rect.left;
        rect.right -= this.mOriginalIcon.getPaddingRight();
        int i = rect.top;
        BubbleTextView bubbleTextView = this.mOriginalIcon;
        Drawable drawable = bubbleTextView.mIcon;
        rect.bottom = i + (drawable != null ? drawable.getBounds().height() : bubbleTextView.getHeight());
    }

    public final void initializeSystemShortcut(int i, ViewGroup viewGroup, SystemShortcut systemShortcut) {
        View findViewById = viewGroup.findViewById(R.id.separator);
        int childCount = (findViewById == null || !systemShortcut.isLeftGroup()) ? viewGroup.getChildCount() : viewGroup.indexOfChild(findViewById);
        View inflate = this.mInflater.inflate(i, viewGroup, false);
        viewGroup.addView(inflate, childCount);
        if (inflate instanceof DeepShortcutView) {
            DeepShortcutView deepShortcutView = (DeepShortcutView) inflate;
            systemShortcut.setIconAndLabelFor(deepShortcutView.mIconView, deepShortcutView.mBubbleText);
        } else if (inflate instanceof ImageView) {
            systemShortcut.setIconAndContentDescriptionFor((ImageView) inflate);
            if (Utilities.ATLEAST_OREO) {
                inflate.setTooltipText(inflate.getContentDescription());
            }
        }
        inflate.setTag(systemShortcut);
        inflate.setOnClickListener(systemShortcut);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 2) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
        this.mLauncher.getUserEventDispatcher().logActionCommand(i, this.mOriginalIcon, getLogContainerType());
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        BaseDragLayer popupContainer = getPopupContainer();
        if (popupContainer.isEventOverView(this, motionEvent)) {
            return false;
        }
        this.mLauncher.getUserEventDispatcher().logActionTapOutside(LoggerUtils.newContainerTarget(9));
        close(true);
        BubbleTextView bubbleTextView = this.mOriginalIcon;
        return bubbleTextView == null || !popupContainer.isEventOverView(bubbleTextView, motionEvent);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void onCreateCloseAnimation(AnimatorSet animatorSet) {
        animatorSet.play(this.mOriginalIcon.createTextAlphaAnimator(true));
        this.mOriginalIcon.setForceHideDot(false);
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        if (this.mIsOpen) {
            return;
        }
        if (this.mOpenCloseAnimator != null) {
            this.mDeferContainerRemoval = false;
        } else if (this.mDeferContainerRemoval) {
            closeComplete();
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        this.mDeferContainerRemoval = true;
        animateClose();
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void onInflationComplete(boolean z) {
        NotificationItemView notificationItemView;
        if (z && (notificationItemView = this.mNotificationItemView) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) notificationItemView.mGutter.getLayoutParams();
            int i = marginLayoutParams.topMargin;
            marginLayoutParams.topMargin = marginLayoutParams.bottomMargin;
            marginLayoutParams.bottomMargin = i;
        }
        int childCount = getChildCount();
        DeepShortcutView deepShortcutView = null;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (childAt instanceof DeepShortcutView)) {
                if (deepShortcutView != null) {
                    deepShortcutView.mDivider.setVisibility(0);
                }
                DeepShortcutView deepShortcutView2 = (DeepShortcutView) childAt;
                deepShortcutView2.mDivider.setVisibility(4);
                deepShortcutView = deepShortcutView2;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean isDraggingOrSettling;
        if (motionEvent.getAction() == 0) {
            this.mInterceptTouchDown.set(motionEvent.getX(), motionEvent.getY());
        }
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView != null) {
            Objects.requireNonNull(notificationItemView);
            if (motionEvent.getAction() == 0) {
                NotificationItemView.sTempRect.set(notificationItemView.mMainView.getLeft(), notificationItemView.mMainView.getTop(), notificationItemView.mMainView.getRight(), notificationItemView.mMainView.getBottom());
                boolean z = !NotificationItemView.sTempRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
                notificationItemView.mIgnoreTouch = z;
                if (!z) {
                    notificationItemView.mContainer.getParent().requestDisallowInterceptTouchEvent(true);
                }
            }
            if (notificationItemView.mIgnoreTouch || notificationItemView.mMainView.mNotificationInfo == null) {
                isDraggingOrSettling = false;
            } else {
                notificationItemView.mSwipeDetector.onTouchEvent(motionEvent);
                isDraggingOrSettling = notificationItemView.mSwipeDetector.isDraggingOrSettling();
            }
            if (isDraggingOrSettling) {
                return true;
            }
        }
        return Utilities.squaredHypot(this.mInterceptTouchDown.x - motionEvent.getX(), this.mInterceptTouchDown.y - motionEvent.getY()) > Utilities.squaredTouchSlop(getContext());
    }

    @Override // com.android.launcher3.AbstractFloatingView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView == null) {
            return super.onTouchEvent(motionEvent);
        }
        if (notificationItemView.mIgnoreTouch || notificationItemView.mMainView.mNotificationInfo == null) {
            z = false;
        } else {
            notificationItemView.mSwipeDetector.onTouchEvent(motionEvent);
            z = true;
        }
        return z || super.onTouchEvent(motionEvent);
    }

    @TargetApi(28)
    public void populateAndShow(BubbleTextView bubbleTextView, int i, final List list, List list2) {
        this.mNumNotifications = list.size();
        this.mOriginalIcon = bubbleTextView;
        boolean z = i > 0;
        int dimension = (int) getResources().getDimension(R.dimen.bg_popup_item_width);
        if (z) {
            dimension = (int) Math.max(dimension, getResources().getDimension(R.dimen.system_shortcut_header_icon_touch_size) * list2.size());
        }
        if (this.mNumNotifications > 0) {
            View.inflate(getContext(), R.layout.notification_content, this);
            NotificationItemView notificationItemView = new NotificationItemView(this);
            this.mNotificationItemView = notificationItemView;
            if (this.mNumNotifications == 1) {
                notificationItemView.removeFooter();
            } else {
                notificationItemView.mFooter.setWidth(dimension);
            }
            updateNotificationHeader();
        }
        int childCount = getChildCount();
        this.mSystemShortcutContainer = this;
        if (z) {
            NotificationItemView notificationItemView2 = this.mNotificationItemView;
            if (notificationItemView2 != null && notificationItemView2.mGutter == null) {
                PopupContainerWithArrow popupContainerWithArrow = notificationItemView2.mContainer;
                notificationItemView2.mGutter = popupContainerWithArrow.inflateAndAdd(R.layout.notification_gutter, popupContainerWithArrow);
            }
            while (i > 0) {
                DeepShortcutView deepShortcutView = (DeepShortcutView) inflateAndAdd(R.layout.deep_shortcut, this);
                deepShortcutView.getLayoutParams().width = dimension;
                this.mShortcuts.add(deepShortcutView);
                i--;
            }
            updateHiddenShortcuts();
            if (!list2.isEmpty()) {
                this.mSystemShortcutContainer = (ViewGroup) inflateAndAdd(R.layout.system_shortcut_icons, this);
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    initializeSystemShortcut(R.layout.system_shortcut_icon_only, this.mSystemShortcutContainer, (SystemShortcut) it.next());
                }
            }
        } else if (!list2.isEmpty()) {
            NotificationItemView notificationItemView3 = this.mNotificationItemView;
            if (notificationItemView3 != null && notificationItemView3.mGutter == null) {
                PopupContainerWithArrow popupContainerWithArrow2 = notificationItemView3.mContainer;
                notificationItemView3.mGutter = popupContainerWithArrow2.inflateAndAdd(R.layout.notification_gutter, popupContainerWithArrow2);
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                initializeSystemShortcut(R.layout.system_shortcut, this, (SystemShortcut) it2.next());
            }
        }
        reorderAndShow(childCount);
        final ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
        setAccessibilityPaneTitle(getContext().getString(this.mNumNotifications == 0 ? R.string.action_deep_shortcut : R.string.shortcuts_menu_with_notifications_description));
        this.mOriginalIcon.setForceHideDot(true);
        setLayoutTransition(new LayoutTransition());
        Handler handler = Executors.MODEL_EXECUTOR.mHandler;
        final BaseDraggingActivity baseDraggingActivity = this.mLauncher;
        final Handler handler2 = new Handler(Looper.getMainLooper());
        final List list3 = this.mShortcuts;
        final ComponentName targetComponent = itemInfo.getTargetComponent();
        final UserHandle userHandle = itemInfo.user;
        handler.postAtFrontOfQueue(new Runnable() { // from class: c.a.a.R0.l
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                boolean z2;
                ArrayList arrayList;
                final List list4;
                List list5 = list;
                final BaseDraggingActivity baseDraggingActivity2 = baseDraggingActivity;
                final ItemInfo itemInfo2 = itemInfo;
                Handler handler3 = handler2;
                final PopupContainerWithArrow popupContainerWithArrow3 = this;
                UserHandle userHandle2 = userHandle;
                ComponentName componentName = targetComponent;
                List list6 = list3;
                if (!list5.isEmpty()) {
                    NotificationListener instanceIfConnected = NotificationListener.getInstanceIfConnected();
                    if (instanceIfConnected == null) {
                        list4 = Collections.emptyList();
                    } else {
                        StatusBarNotification[] activeNotifications = instanceIfConnected.getActiveNotifications((String[]) list5.stream().map(new Function() { // from class: c.a.a.O0.k
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                String str;
                                str = ((NotificationKeyData) obj).notificationKey;
                                return str;
                            }
                        }).toArray(new IntFunction() { // from class: c.a.a.O0.e
                            @Override // java.util.function.IntFunction
                            public final Object apply(int i2) {
                                return NotificationListener.e(i2);
                            }
                        }));
                        list4 = (List) (activeNotifications == null ? Collections.emptyList() : Arrays.asList(activeNotifications)).stream().map(new Function() { // from class: c.a.a.R0.j
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                return new NotificationInfo(BaseDraggingActivity.this, (StatusBarNotification) obj, itemInfo2);
                            }
                        }).collect(Collectors.toList());
                    }
                    handler3.post(new Runnable() { // from class: c.a.a.R0.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            PopupContainerWithArrow popupContainerWithArrow4 = PopupContainerWithArrow.this;
                            List list7 = list4;
                            NotificationItemView notificationItemView4 = popupContainerWithArrow4.mNotificationItemView;
                            if (notificationItemView4 == null || list7.isEmpty()) {
                                return;
                            }
                            notificationItemView4.mMainView.applyNotificationInfo((NotificationInfo) list7.get(0), false);
                            for (int i2 = 1; i2 < list7.size(); i2++) {
                                NotificationFooterLayout notificationFooterLayout = notificationItemView4.mFooter;
                                NotificationInfo notificationInfo = (NotificationInfo) list7.get(i2);
                                if (notificationFooterLayout.mNotifications.size() < 5) {
                                    notificationFooterLayout.mNotifications.add(notificationInfo);
                                } else {
                                    notificationFooterLayout.mOverflowNotifications.add(notificationInfo);
                                }
                            }
                            NotificationFooterLayout notificationFooterLayout2 = notificationItemView4.mFooter;
                            notificationFooterLayout2.mIconRow.removeAllViews();
                            for (int i3 = 0; i3 < notificationFooterLayout2.mNotifications.size(); i3++) {
                                notificationFooterLayout2.addNotificationIconForInfo((NotificationInfo) notificationFooterLayout2.mNotifications.get(i3));
                            }
                            notificationFooterLayout2.mOverflowEllipsis.setVisibility(notificationFooterLayout2.mOverflowNotifications.isEmpty() ? 8 : 0);
                        }
                    });
                }
                LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
                if (componentName == null) {
                    z2 = true;
                } else {
                    shortcutQuery.setActivity(componentName);
                    z2 = false;
                }
                if (z2) {
                    arrayList = ShortcutRequest.QueryResult.DEFAULT;
                } else {
                    shortcutQuery.setQueryFlags(9);
                    try {
                        arrayList = new ShortcutRequest.QueryResult(((LauncherApps) baseDraggingActivity2.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle2));
                    } catch (IllegalStateException | SecurityException e) {
                        Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
                        arrayList = ShortcutRequest.QueryResult.DEFAULT;
                    }
                }
                String str = list5.isEmpty() ? null : ((NotificationKeyData) list5.get(0)).shortcutId;
                if (str != null) {
                    Iterator<E> it3 = arrayList.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            if (((ShortcutInfo) it3.next()).getId().equals(str)) {
                                it3.remove();
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                Collections.sort(arrayList, PopupPopulator.SHORTCUT_RANK_COMPARATOR);
                if (arrayList.size() > 4) {
                    ArrayList arrayList2 = new ArrayList(4);
                    int size = arrayList.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size; i3++) {
                        ShortcutInfo shortcutInfo = (ShortcutInfo) arrayList.get(i3);
                        int size2 = arrayList2.size();
                        if (size2 < 4) {
                            arrayList2.add(shortcutInfo);
                            if (shortcutInfo.isDynamic()) {
                                i2++;
                            }
                        } else if (shortcutInfo.isDynamic() && i2 < 2) {
                            i2++;
                            arrayList2.remove(size2 - i2);
                            arrayList2.add(shortcutInfo);
                        }
                    }
                    arrayList = arrayList2;
                }
                IconCache iconCache = LauncherAppState.getInstance(baseDraggingActivity2).mIconCache;
                for (int i4 = 0; i4 < arrayList.size() && i4 < list6.size(); i4++) {
                    final ShortcutInfo shortcutInfo2 = (ShortcutInfo) arrayList.get(i4);
                    final WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(shortcutInfo2, baseDraggingActivity2);
                    iconCache.getShortcutIcon(workspaceItemInfo, shortcutInfo2, false, iconCache.mIsUsingFallbackIconCheck);
                    workspaceItemInfo.rank = i4;
                    workspaceItemInfo.container = -107;
                    final DeepShortcutView deepShortcutView2 = (DeepShortcutView) list6.get(i4);
                    handler3.post(new Runnable() { // from class: c.a.a.R0.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            DeepShortcutView deepShortcutView3 = DeepShortcutView.this;
                            WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
                            ShortcutInfo shortcutInfo3 = shortcutInfo2;
                            PopupContainerWithArrow popupContainerWithArrow4 = popupContainerWithArrow3;
                            deepShortcutView3.mInfo = workspaceItemInfo2;
                            deepShortcutView3.mDetail = shortcutInfo3;
                            deepShortcutView3.mBubbleText.applyFromWorkspaceItem(workspaceItemInfo2);
                            deepShortcutView3.mIconView.setBackground(deepShortcutView3.mBubbleText.mIcon);
                            CharSequence longLabel = deepShortcutView3.mDetail.getLongLabel();
                            boolean z3 = !TextUtils.isEmpty(longLabel) && deepShortcutView3.mBubbleText.getPaint().measureText(longLabel.toString()) <= ((float) ((deepShortcutView3.mBubbleText.getWidth() - deepShortcutView3.mBubbleText.getTotalPaddingLeft()) - deepShortcutView3.mBubbleText.getTotalPaddingRight()));
                            BubbleTextView bubbleTextView2 = deepShortcutView3.mBubbleText;
                            if (!z3) {
                                longLabel = deepShortcutView3.mDetail.getShortLabel();
                            }
                            bubbleTextView2.setText(longLabel);
                            deepShortcutView3.mBubbleText.setOnClickListener(popupContainerWithArrow4.getItemClickListener());
                            deepShortcutView3.mBubbleText.setOnLongClickListener(popupContainerWithArrow4.mPopupItemDragHandler);
                            deepShortcutView3.mBubbleText.setOnTouchListener(popupContainerWithArrow4.mPopupItemDragHandler);
                        }
                    });
                }
            }
        });
    }

    public final void updateHiddenShortcuts() {
        int i = this.mNotificationItemView != null ? 2 : 4;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.bg_popup_item_height);
        int dimensionPixelSize2 = this.mNotificationItemView != null ? getResources().getDimensionPixelSize(R.dimen.bg_popup_item_condensed_height) : dimensionPixelSize;
        float f = dimensionPixelSize2 / dimensionPixelSize;
        int size = this.mShortcuts.size();
        int i2 = 0;
        while (i2 < size) {
            DeepShortcutView deepShortcutView = (DeepShortcutView) this.mShortcuts.get(i2);
            deepShortcutView.setVisibility(i2 >= i ? 8 : 0);
            deepShortcutView.getLayoutParams().height = dimensionPixelSize2;
            deepShortcutView.mIconView.setScaleX(f);
            deepShortcutView.mIconView.setScaleY(f);
            i2++;
        }
    }

    public final void updateNotificationHeader() {
        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) this.mOriginalIcon.getTag();
        DotInfo dotInfoForItem = this.mLauncher.getDotInfoForItem(itemInfoWithIcon);
        NotificationItemView notificationItemView = this.mNotificationItemView;
        if (notificationItemView == null || dotInfoForItem == null) {
            return;
        }
        int notificationCount = dotInfoForItem.getNotificationCount();
        int i = itemInfoWithIcon.bitmap.color;
        notificationItemView.mHeaderCount.setText(notificationCount <= 1 ? "" : String.valueOf(notificationCount));
        if (Color.alpha(i) > 0) {
            if (notificationItemView.mNotificationHeaderTextColor == 0) {
                Context context = notificationItemView.mContext;
                notificationItemView.mNotificationHeaderTextColor = W.resolveContrastColor(context, i, W.getAttrColor(context, R.attr.popupColorPrimary));
            }
            notificationItemView.mHeaderText.setTextColor(notificationItemView.mNotificationHeaderTextColor);
            notificationItemView.mHeaderCount.setTextColor(notificationItemView.mNotificationHeaderTextColor);
        }
    }

    public PopupContainerWithArrow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PopupContainerWithArrow(Context context) {
        this(context, null, 0);
    }
}
