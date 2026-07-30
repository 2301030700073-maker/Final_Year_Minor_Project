package com.android.launcher3.secondarydisplay;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import b.l.W;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.secondarydisplay.PinnedAppsAdapter.PinUnPinShortcut;
import com.android.launcher3.secondarydisplay.SecondaryDragLayer;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class SecondaryDragLayer extends BaseDragLayer {
    public View mAllAppsButton;
    public AllAppsContainerView mAppsView;
    public PinnedAppsAdapter mPinnedAppsAdapter;
    public GridView mWorkspace;

    public class CloseAllAppsTouchController implements TouchController {
        public CloseAllAppsTouchController(AnonymousClass1 anonymousClass1) {
        }

        @Override // com.android.launcher3.util.TouchController
        public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
            if (((SecondaryDisplayLauncher) SecondaryDragLayer.this.mActivity).mAppDrawerShown && AbstractFloatingView.getTopOpenView((ActivityContext) SecondaryDragLayer.this.mActivity) == null && motionEvent.getAction() == 0) {
                SecondaryDragLayer secondaryDragLayer = SecondaryDragLayer.this;
                if (!secondaryDragLayer.isEventOverView(((SecondaryDisplayLauncher) secondaryDragLayer.mActivity).mAppsView, motionEvent)) {
                    ((SecondaryDisplayLauncher) SecondaryDragLayer.this.mActivity).showAppDrawer(false);
                    return true;
                }
            }
            return false;
        }

        @Override // com.android.launcher3.util.TouchController
        public boolean onControllerTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public SecondaryDragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
        recreateControllers();
    }

    public static boolean c(SecondaryDragLayer secondaryDragLayer, View view) {
        Objects.requireNonNull(secondaryDragLayer);
        if (!(view instanceof BubbleTextView)) {
            return false;
        }
        if (PopupContainerWithArrow.getOpen((BaseDraggingActivity) secondaryDragLayer.mActivity) != null) {
            view.clearFocus();
            return false;
        }
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (!W.supportsShortcuts(itemInfo)) {
            return false;
        }
        int shortcutCountForItem = ((SecondaryDisplayLauncher) secondaryDragLayer.mActivity).mPopupDataProvider.getShortcutCountForItem(itemInfo);
        List emptyList = Collections.emptyList();
        PinnedAppsAdapter pinnedAppsAdapter = secondaryDragLayer.mPinnedAppsAdapter;
        Objects.requireNonNull(pinnedAppsAdapter);
        ((PopupContainerWithArrow) ((SecondaryDisplayLauncher) secondaryDragLayer.mActivity).getLayoutInflater().inflate(R.layout.popup_container, (ViewGroup) ((SecondaryDisplayLauncher) secondaryDragLayer.mActivity).mDragLayer, false)).populateAndShow((BubbleTextView) view, shortcutCountForItem, emptyList, Arrays.asList(pinnedAppsAdapter.new PinUnPinShortcut(pinnedAppsAdapter.mLauncher, itemInfo, pinnedAppsAdapter.mPinnedApps.contains(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user))), SystemShortcut.APP_INFO.getShortcut((BaseDraggingActivity) secondaryDragLayer.mActivity, itemInfo)));
        view.getParent().requestDisallowInterceptTouchEvent(true);
        return true;
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        PinnedAppsAdapter pinnedAppsAdapter = this.mPinnedAppsAdapter;
        pinnedAppsAdapter.mPrefs.registerOnSharedPreferenceChangeListener(pinnedAppsAdapter);
        pinnedAppsAdapter.onSharedPreferenceChanged(pinnedAppsAdapter.mPrefs, "pinned_apps");
    }

    @Override // com.android.launcher3.views.BaseDragLayer, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        PinnedAppsAdapter pinnedAppsAdapter = this.mPinnedAppsAdapter;
        pinnedAppsAdapter.mPrefs.unregisterOnSharedPreferenceChangeListener(pinnedAppsAdapter);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mAllAppsButton = findViewById(R.id.all_apps_button);
        AllAppsContainerView allAppsContainerView = (AllAppsContainerView) findViewById(R.id.apps_view);
        this.mAppsView = allAppsContainerView;
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: c.a.a.T0.l
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return SecondaryDragLayer.c(SecondaryDragLayer.this, view);
            }
        };
        for (AllAppsContainerView.AdapterHolder adapterHolder : allAppsContainerView.mAH) {
            adapterHolder.adapter.mOnIconLongClickListener = onLongClickListener;
        }
        this.mWorkspace = (GridView) findViewById(R.id.workspace_grid);
        PinnedAppsAdapter pinnedAppsAdapter = new PinnedAppsAdapter((SecondaryDisplayLauncher) this.mActivity, this.mAppsView.mAllAppsStore, new View.OnLongClickListener() { // from class: c.a.a.T0.l
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return SecondaryDragLayer.c(SecondaryDragLayer.this, view);
            }
        });
        this.mPinnedAppsAdapter = pinnedAppsAdapter;
        this.mWorkspace.setAdapter((ListAdapter) pinnedAppsAdapter);
        this.mWorkspace.setNumColumns(((SecondaryDisplayLauncher) this.mActivity).getDeviceProfile().inv.numColumns);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(size, size2);
        DeviceProfile deviceProfile = ((SecondaryDisplayLauncher) this.mActivity).getDeviceProfile();
        InvariantDeviceProfile invariantDeviceProfile = deviceProfile.inv;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt == this.mAppsView) {
                int i4 = (deviceProfile.desiredWorkspaceLeftRightMarginPx + deviceProfile.cellLayoutPaddingLeftRightPx) * 2;
                this.mAppsView.measure(View.MeasureSpec.makeMeasureSpec(Math.min(size, (deviceProfile.allAppsCellWidthPx * invariantDeviceProfile.numAllAppsColumns) + i4), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(size2, (deviceProfile.allAppsCellHeightPx * invariantDeviceProfile.numAllAppsColumns) + i4), 1073741824));
            } else if (childAt == this.mAllAppsButton) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(deviceProfile.iconSizePx, 1073741824);
                this.mAllAppsButton.measure(makeMeasureSpec, makeMeasureSpec);
            } else {
                GridView gridView = this.mWorkspace;
                if (childAt == gridView) {
                    measureChildWithMargins(gridView, i, 0, i2, deviceProfile.iconSizePx + deviceProfile.edgeMarginPx);
                } else {
                    measureChildWithMargins(childAt, i, 0, i2, 0);
                }
            }
        }
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = new TouchController[]{new CloseAllAppsTouchController(null)};
    }
}
