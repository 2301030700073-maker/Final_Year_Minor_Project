package com.android.launcher3;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.TypedValue;
import b.l.W;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.WindowBounds;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DeviceProfile {
    public int allAppsCellHeightPx;
    public int allAppsCellWidthPx;
    public int allAppsIconDrawablePaddingPx;
    public int allAppsIconSizePx;
    public float allAppsIconTextSizePx;
    public final float aspectRatio;
    public final int availableHeightPx;
    public final int availableWidthPx;
    public int cellHeightPx;
    public final int cellLayoutBottomPaddingPx;
    public final int cellLayoutPaddingLeftRightPx;
    public int cellWidthPx;
    public final int desiredWorkspaceLeftRightMarginPx;
    public int dropTargetBarSizePx;
    public final int edgeMarginPx;
    public int folderCellHeightPx;
    public int folderCellWidthPx;
    public int folderChildDrawablePaddingPx;
    public int folderChildIconSizePx;
    public int folderChildTextSizePx;
    public int folderIconOffsetYPx;
    public int folderIconSizePx;
    public final int heightPx;
    public int hotseatBarBottomPaddingPx;
    public final int hotseatBarSidePaddingEndPx;
    public final int hotseatBarSidePaddingStartPx;
    public int hotseatBarSizePx;
    public final int hotseatBarTopPaddingPx;
    public int hotseatCellHeightPx;
    public int iconDrawablePaddingOriginalPx;
    public int iconDrawablePaddingPx;
    public int iconSizePx;
    public int iconTextSizePx;
    public final InvariantDeviceProfile inv;
    public final boolean isLandscape;
    public final boolean isLargeTablet;
    public final boolean isMultiWindowMode;
    public final boolean isPhone;
    public final boolean isTablet;
    public DotRenderer mDotRendererAllApps;
    public DotRenderer mDotRendererWorkSpace;
    public final DefaultDisplay.Info mInfo;
    public boolean mIsSeascape;
    public final int mWorkspacePageIndicatorOverlapWorkspace;
    public final boolean transposeLayoutWithOrientation;
    public final int widthPx;
    public final int windowX;
    public final int windowY;
    public int workspaceCellPaddingXPx;
    public final int workspacePageIndicatorHeight;
    public float workspaceSpringLoadShrinkFactor;
    public final int workspaceSpringLoadedBottomSpace;
    public final PointF appWidgetScale = new PointF(1.0f, 1.0f);
    public final Rect mInsets = new Rect();
    public final Rect workspacePadding = new Rect();
    public final Rect mHotseatPadding = new Rect();

    public class Builder {
        public Context mContext;
        public int mHeight;
        public DefaultDisplay.Info mInfo;
        public InvariantDeviceProfile mInv;
        public boolean mIsLandscape;
        public Point mMaxSize;
        public Point mMinSize;
        public boolean mTransposeLayoutWithOrientation;
        public int mWidth;
        public final Point mWindowPosition = new Point();
        public boolean mIsMultiWindowMode = false;

        public Builder(Context context, InvariantDeviceProfile invariantDeviceProfile, DefaultDisplay.Info info) {
            this.mContext = context;
            this.mInv = invariantDeviceProfile;
            this.mInfo = info;
            this.mTransposeLayoutWithOrientation = context.getResources().getBoolean(R.bool.hotseat_transpose_layout_with_orientation);
        }

        public DeviceProfile build() {
            return new DeviceProfile(this.mContext, this.mInv, this.mInfo, this.mMinSize, this.mMaxSize, this.mWidth, this.mHeight, this.mIsLandscape, this.mIsMultiWindowMode, this.mTransposeLayoutWithOrientation, this.mWindowPosition);
        }

        public Builder setSize(int i, int i2) {
            this.mWidth = i;
            this.mHeight = i2;
            this.mIsLandscape = i > i2;
            return this;
        }
    }

    public interface OnDeviceProfileChangeListener {
        void onDeviceProfileChanged(DeviceProfile deviceProfile);
    }

    public DeviceProfile(Context context, InvariantDeviceProfile invariantDeviceProfile, DefaultDisplay.Info info, Point point, Point point2, int i, int i2, boolean z, boolean z2, boolean z3, Point point3) {
        int dimensionPixelSize;
        int i3;
        this.inv = invariantDeviceProfile;
        this.isLandscape = z;
        this.isMultiWindowMode = z2;
        this.windowX = point3.x;
        this.windowY = point3.y;
        this.widthPx = i;
        this.heightPx = i2;
        if (z) {
            this.availableWidthPx = point2.x;
            this.availableHeightPx = point.y;
        } else {
            this.availableWidthPx = point.x;
            this.availableHeightPx = point2.y;
        }
        this.mInfo = info;
        Point point4 = info.smallestSize;
        float dpiFromPx = Utilities.dpiFromPx(Math.min(point4.x, point4.y), info.metrics);
        int i4 = 1;
        this.isTablet = dpiFromPx >= 600.0f;
        boolean z4 = dpiFromPx >= 720.0f;
        this.isLargeTablet = z4;
        this.isPhone = (this.isTablet || z4) ? false : true;
        float max = Math.max(this.widthPx, this.heightPx) / Math.min(this.widthPx, this.heightPx);
        this.aspectRatio = max;
        boolean z5 = Float.compare(max, 2.0f) >= 0;
        this.transposeLayoutWithOrientation = z3;
        int i5 = isVerticalBarLayout() ? 2 : 1;
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.orientation = i5;
        configuration.densityDpi = info.metrics.densityDpi;
        Resources resources = context.createConfigurationContext(configuration).getResources();
        this.edgeMarginPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        this.desiredWorkspaceLeftRightMarginPx = isVerticalBarLayout() ? 0 : this.edgeMarginPx;
        if (!isVerticalBarLayout() && this.isTablet) {
            i4 = 4;
        }
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.dynamic_grid_cell_layout_padding);
        if (z) {
            this.cellLayoutPaddingLeftRightPx = 0;
            this.cellLayoutBottomPaddingPx = dimensionPixelSize2;
        } else {
            this.cellLayoutPaddingLeftRightPx = i4 * dimensionPixelSize2;
            this.cellLayoutBottomPaddingPx = 0;
        }
        this.workspacePageIndicatorHeight = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_height);
        this.mWorkspacePageIndicatorOverlapWorkspace = resources.getDimensionPixelSize(R.dimen.workspace_page_indicator_overlap_workspace);
        this.iconDrawablePaddingOriginalPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_icon_drawable_padding);
        this.dropTargetBarSizePx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_drop_target_size);
        this.workspaceSpringLoadedBottomSpace = resources.getDimensionPixelSize(R.dimen.dynamic_grid_min_spring_loaded_space);
        this.workspaceCellPaddingXPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_cell_padding_x);
        this.hotseatBarTopPaddingPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_top_padding);
        this.hotseatBarBottomPaddingPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_bottom_padding) + (z5 ? 0 : resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_bottom_non_tall_padding));
        this.hotseatBarSidePaddingEndPx = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_side_padding);
        this.hotseatBarSidePaddingStartPx = isVerticalBarLayout() ? this.workspacePageIndicatorHeight : 0;
        int pxFromDp = W.pxFromDp(invariantDeviceProfile.iconSize, this.mInfo.metrics);
        if (isVerticalBarLayout()) {
            dimensionPixelSize = this.hotseatBarSidePaddingStartPx;
            i3 = this.hotseatBarSidePaddingEndPx;
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dynamic_grid_hotseat_extra_vertical_size) + this.hotseatBarTopPaddingPx;
            i3 = this.hotseatBarBottomPaddingPx;
        }
        this.hotseatBarSizePx = pxFromDp + dimensionPixelSize + i3;
        updateAvailableDimensions(resources);
        if (!isVerticalBarLayout() && this.isPhone && z5) {
            int i6 = ((getCellSize().y - this.iconSizePx) - (this.iconDrawablePaddingPx * 2)) - this.workspacePageIndicatorHeight;
            this.hotseatBarSizePx += i6;
            this.hotseatBarBottomPaddingPx += i6;
            updateAvailableDimensions(resources);
        }
        updateWorkspacePadding();
        DotRenderer dotRenderer = new DotRenderer(this.iconSizePx, IconShape.getShapePath(), 100);
        this.mDotRendererWorkSpace = dotRenderer;
        int i7 = this.iconSizePx;
        int i8 = this.allAppsIconSizePx;
        this.mDotRendererAllApps = i7 != i8 ? new DotRenderer(i8, IconShape.getShapePath(), 100) : dotRenderer;
    }

    public void autoResizeAllAppsCells() {
        this.allAppsCellHeightPx = (this.allAppsIconDrawablePaddingPx * (isVerticalBarLayout() ? 2 : 1) * 2) + Utilities.calculateTextHeight(this.allAppsIconTextSizePx) + this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx;
    }

    public DeviceProfile copy(Context context) {
        return toBuilder(context).build();
    }

    public Point getCellSize() {
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        int i = invariantDeviceProfile.numColumns;
        int i2 = invariantDeviceProfile.numRows;
        Point point = new Point();
        Point totalWorkspacePadding = getTotalWorkspacePadding();
        point.x = ((this.availableWidthPx - totalWorkspacePadding.x) - (this.cellLayoutPaddingLeftRightPx * 2)) / i;
        point.y = ((this.availableHeightPx - totalWorkspacePadding.y) - this.cellLayoutBottomPaddingPx) / i2;
        return point;
    }

    public Rect getHotseatLayoutPadding() {
        if (!isVerticalBarLayout()) {
            int i = this.widthPx;
            InvariantDeviceProfile invariantDeviceProfile = this.inv;
            int round = Math.round(((i / invariantDeviceProfile.numColumns) - (i / invariantDeviceProfile.numHotseatIcons)) / 2.0f);
            Rect rect = this.mHotseatPadding;
            Rect rect2 = this.workspacePadding;
            int i2 = rect2.left + round;
            int i3 = this.cellLayoutPaddingLeftRightPx;
            Rect rect3 = this.mInsets;
            rect.set(i2 + i3 + rect3.left, this.hotseatBarTopPaddingPx, round + rect2.right + i3 + rect3.right, this.hotseatBarBottomPaddingPx + rect3.bottom + this.cellLayoutBottomPaddingPx);
        } else if (isSeascape()) {
            Rect rect4 = this.mHotseatPadding;
            Rect rect5 = this.mInsets;
            rect4.set(rect5.left + this.hotseatBarSidePaddingStartPx, rect5.top, this.hotseatBarSidePaddingEndPx, rect5.bottom);
        } else {
            Rect rect6 = this.mHotseatPadding;
            int i4 = this.hotseatBarSidePaddingEndPx;
            Rect rect7 = this.mInsets;
            rect6.set(i4, rect7.top, rect7.right + this.hotseatBarSidePaddingStartPx, rect7.bottom);
        }
        return this.mHotseatPadding;
    }

    public DeviceProfile getMultiWindowProfile(Context context, WindowBounds windowBounds) {
        Point point = new Point(Math.min(this.availableWidthPx, windowBounds.availableSize.x), Math.min(this.availableHeightPx, windowBounds.availableSize.y));
        Builder builder = toBuilder(context);
        builder.mMinSize = point;
        builder.mMaxSize = point;
        builder.setSize(windowBounds.bounds.width(), windowBounds.bounds.height());
        Rect rect = windowBounds.bounds;
        builder.mWindowPosition.set(rect.left, rect.top);
        builder.mIsMultiWindowMode = true;
        DeviceProfile build = builder.build();
        int i = build.getCellSize().y;
        int i2 = build.iconSizePx;
        if (((i - i2) - this.iconDrawablePaddingPx) - build.iconTextSizePx < build.iconDrawablePaddingPx * 2) {
            build.iconTextSizePx = 0;
            build.iconDrawablePaddingPx = 0;
            build.cellHeightPx = i2;
            build.autoResizeAllAppsCells();
        }
        build.appWidgetScale.set(build.getCellSize().x / getCellSize().x, build.getCellSize().y / getCellSize().y);
        build.updateWorkspacePadding();
        return build;
    }

    public Point getTotalWorkspacePadding() {
        updateWorkspacePadding();
        Rect rect = this.workspacePadding;
        return new Point(rect.left + rect.right, rect.top + rect.bottom);
    }

    public boolean isSeascape() {
        return isVerticalBarLayout() && this.mIsSeascape;
    }

    public boolean isVerticalBarLayout() {
        return this.isLandscape && this.transposeLayoutWithOrientation;
    }

    public Builder toBuilder(Context context) {
        Point point = new Point(this.availableWidthPx, this.availableHeightPx);
        Builder builder = new Builder(context, this.inv, this.mInfo);
        builder.mMinSize = point;
        builder.mMaxSize = point;
        builder.setSize(this.widthPx, this.heightPx);
        builder.mWindowPosition.set(this.windowX, this.windowY);
        builder.mIsMultiWindowMode = this.isMultiWindowMode;
        return builder;
    }

    public final void updateAvailableDimensions(Resources resources) {
        updateIconSize(1.0f, resources);
        float f = this.cellHeightPx * this.inv.numRows;
        float f2 = this.availableHeightPx - getTotalWorkspacePadding().y;
        if (f > f2) {
            updateIconSize(f2 / f, resources);
        }
        int calculateTextHeight = Utilities.calculateTextHeight(resources.getDimension(R.dimen.folder_label_text_size)) + resources.getDimensionPixelSize(R.dimen.folder_label_padding_bottom) + resources.getDimensionPixelSize(R.dimen.folder_label_padding_top);
        updateFolderCellSize(1.0f, resources);
        int i = this.edgeMarginPx * 2;
        Point totalWorkspacePadding = getTotalWorkspacePadding();
        int i2 = this.folderCellHeightPx;
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        float min = Math.min(((this.availableWidthPx - totalWorkspacePadding.x) - i) / (this.folderCellWidthPx * invariantDeviceProfile.numFolderColumns), (((this.availableHeightPx - totalWorkspacePadding.y) - calculateTextHeight) - i) / (i2 * invariantDeviceProfile.numFolderRows));
        if (min < 1.0f) {
            updateFolderCellSize(min, resources);
        }
    }

    public final void updateFolderCellSize(float f, Resources resources) {
        this.folderChildIconSizePx = (int) (W.pxFromDp(this.inv.iconSize, this.mInfo.metrics) * f);
        int dimensionPixelSize = (int) (resources.getDimensionPixelSize(R.dimen.folder_child_text_size) * f);
        this.folderChildTextSizePx = dimensionPixelSize;
        int calculateTextHeight = Utilities.calculateTextHeight(dimensionPixelSize);
        int dimensionPixelSize2 = (int) (resources.getDimensionPixelSize(R.dimen.folder_cell_x_padding) * f);
        int dimensionPixelSize3 = (int) (resources.getDimensionPixelSize(R.dimen.folder_cell_y_padding) * f);
        int i = this.folderChildIconSizePx;
        this.folderCellWidthPx = (dimensionPixelSize2 * 2) + i;
        int i2 = (dimensionPixelSize3 * 2) + i + calculateTextHeight;
        this.folderCellHeightPx = i2;
        this.folderChildDrawablePaddingPx = Math.max(0, ((i2 - i) - calculateTextHeight) / 3);
    }

    public final void updateIconSize(float f, Resources resources) {
        boolean isVerticalBarLayout = isVerticalBarLayout();
        InvariantDeviceProfile invariantDeviceProfile = this.inv;
        this.iconSizePx = Math.max(1, (int) (W.pxFromDp(isVerticalBarLayout ? invariantDeviceProfile.landscapeIconSize : invariantDeviceProfile.iconSize, this.mInfo.metrics) * f));
        int pxFromSp = (int) (Utilities.pxFromSp(this.inv.iconTextSize, this.mInfo.metrics) * f);
        this.iconTextSizePx = pxFromSp;
        int i = (int) (this.iconDrawablePaddingOriginalPx * f);
        this.iconDrawablePaddingPx = i;
        this.cellHeightPx = Utilities.calculateTextHeight(pxFromSp) + this.iconSizePx + i;
        int i2 = getCellSize().y;
        int i3 = this.cellHeightPx;
        int i4 = (i2 - i3) / 2;
        int i5 = this.iconDrawablePaddingPx;
        if (i5 > i4 && !isVerticalBarLayout && !this.isMultiWindowMode) {
            this.cellHeightPx = i3 - (i5 - i4);
            this.iconDrawablePaddingPx = i4;
        }
        this.cellWidthPx = this.iconSizePx + this.iconDrawablePaddingPx;
        InvariantDeviceProfile invariantDeviceProfile2 = this.inv;
        if (invariantDeviceProfile2.numAllAppsColumns != invariantDeviceProfile2.numColumns) {
            this.allAppsIconSizePx = W.pxFromDp(this.inv.allAppsIconSize, this.mInfo.metrics);
            float round = Math.round(TypedValue.applyDimension(2, this.inv.allAppsIconTextSize, this.mInfo.metrics));
            this.allAppsIconTextSizePx = round;
            this.allAppsIconDrawablePaddingPx = this.iconDrawablePaddingOriginalPx;
            this.allAppsCellHeightPx = Math.round(this.allAppsIconSizePx + round + (r1 * 4));
        } else {
            this.allAppsIconSizePx = this.iconSizePx;
            this.allAppsIconTextSizePx = this.iconTextSizePx;
            this.allAppsIconDrawablePaddingPx = this.iconDrawablePaddingPx;
            this.allAppsCellHeightPx = getCellSize().y;
        }
        this.allAppsCellWidthPx = this.allAppsIconSizePx + this.allAppsIconDrawablePaddingPx;
        if (isVerticalBarLayout()) {
            this.iconTextSizePx = 0;
            this.iconDrawablePaddingPx = 0;
            this.cellHeightPx = this.iconSizePx;
            autoResizeAllAppsCells();
        }
        if (isVerticalBarLayout) {
            this.hotseatBarSizePx = this.iconSizePx + this.hotseatBarSidePaddingStartPx + this.hotseatBarSidePaddingEndPx;
        }
        this.hotseatCellHeightPx = this.iconSizePx;
        if (isVerticalBarLayout) {
            this.workspaceSpringLoadShrinkFactor = resources.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        } else {
            this.workspaceSpringLoadShrinkFactor = Math.min(resources.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f, 1.0f - ((this.dropTargetBarSizePx + this.workspaceSpringLoadedBottomSpace) / (((this.availableHeightPx - this.hotseatBarSizePx) - this.workspacePageIndicatorHeight) - this.edgeMarginPx)));
        }
        int normalizedCircleSize = IconNormalizer.getNormalizedCircleSize(this.iconSizePx);
        this.folderIconSizePx = normalizedCircleSize;
        this.folderIconOffsetYPx = (this.iconSizePx - normalizedCircleSize) / 2;
    }

    public void updateInsets(Rect rect) {
        this.mInsets.set(rect);
        updateWorkspacePadding();
    }

    public boolean updateIsSeascape(Context context) {
        if (isVerticalBarLayout()) {
            boolean z = ((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo.rotation == 3;
            if (this.mIsSeascape != z) {
                this.mIsSeascape = z;
                return true;
            }
        }
        return false;
    }

    public final void updateWorkspacePadding() {
        Rect rect = this.workspacePadding;
        if (isVerticalBarLayout()) {
            rect.top = 0;
            rect.bottom = this.edgeMarginPx;
            if (isSeascape()) {
                rect.left = this.hotseatBarSizePx;
                rect.right = this.hotseatBarSidePaddingStartPx;
                return;
            } else {
                rect.left = this.hotseatBarSidePaddingStartPx;
                rect.right = this.hotseatBarSizePx;
                return;
            }
        }
        int i = (this.hotseatBarSizePx + this.workspacePageIndicatorHeight) - this.mWorkspacePageIndicatorOverlapWorkspace;
        if (!this.isTablet) {
            int i2 = this.desiredWorkspaceLeftRightMarginPx;
            rect.set(i2, this.edgeMarginPx, i2, i);
            return;
        }
        int i3 = this.widthPx;
        int i4 = this.inv.numColumns;
        int i5 = this.cellWidthPx;
        int min = ((int) Math.min(Math.max(0, i3 - (((i4 - 1) * i5) + (i4 * i5))), this.widthPx * 0.14f)) / 2;
        int max = Math.max(0, ((((this.heightPx - this.edgeMarginPx) - i) - ((this.inv.numRows * 2) * this.cellHeightPx)) - this.hotseatBarTopPaddingPx) - this.hotseatBarBottomPaddingPx) / 2;
        rect.set(min, this.edgeMarginPx + max, min, i + max);
    }
}
