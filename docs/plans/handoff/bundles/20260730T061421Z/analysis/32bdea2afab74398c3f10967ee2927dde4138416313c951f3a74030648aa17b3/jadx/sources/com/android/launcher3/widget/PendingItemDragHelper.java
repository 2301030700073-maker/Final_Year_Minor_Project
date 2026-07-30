package com.android.launcher3.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.RemoteViews;
import c.a.a.H0.h;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.LivePreviewWidgetCell;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class PendingItemDragHelper extends DragPreviewProvider {
    public final PendingAddItemInfo mAddInfo;
    public int[] mEstimatedCellSize;
    public RemoteViews mPreview;

    public PendingItemDragHelper(View view) {
        super(view);
        this.mAddInfo = (PendingAddItemInfo) view.getTag();
    }

    @Override // com.android.launcher3.graphics.DragPreviewProvider
    public Bitmap convertPreviewToAlphaBitmap(Bitmap bitmap) {
        int[] iArr;
        if ((this.mAddInfo instanceof PendingAddShortcutInfo) || (iArr = this.mEstimatedCellSize) == null) {
            return bitmap.copy(Bitmap.Config.ALPHA_8, true);
        }
        int i = iArr[0];
        int i2 = iArr[1];
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        float min = Math.min((i - this.blurSizeOutline) / bitmap.getWidth(), (i2 - this.blurSizeOutline) / bitmap.getHeight());
        int width = (int) (bitmap.getWidth() * min);
        int height = (int) (min * bitmap.getHeight());
        Rect rect2 = new Rect(0, 0, width, height);
        rect2.offset((i - width) / 2, (i2 - height) / 2);
        new Canvas(createBitmap).drawBitmap(bitmap, rect, rect2, new Paint(2));
        return createBitmap;
    }

    public void startDrag(Rect rect, int i, int i2, Point point, DragSource dragSource, DragOptions dragOptions) {
        float width;
        h hVar;
        Bitmap bitmap;
        Rect rect2;
        Point point2;
        Launcher launcher = Launcher.getLauncher(this.mView.getContext());
        LauncherAppState launcherAppState = LauncherAppState.getInstance(launcher);
        int[] estimateItemSize = launcher.mWorkspace.estimateItemSize(this.mAddInfo);
        this.mEstimatedCellSize = estimateItemSize;
        PendingAddItemInfo pendingAddItemInfo = this.mAddInfo;
        if (pendingAddItemInfo instanceof PendingAddWidgetInfo) {
            PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) pendingAddItemInfo;
            int min = Math.min((int) (i * 1.25f), estimateItemSize[0]);
            int[] iArr = new int[1];
            RemoteViews remoteViews = this.mPreview;
            Bitmap generateFromRemoteViews = remoteViews != null ? LivePreviewWidgetCell.generateFromRemoteViews(launcher, remoteViews, pendingAddWidgetInfo.info, min, iArr) : null;
            if (generateFromRemoteViews == null) {
                generateFromRemoteViews = (Bitmap) launcherAppState.mWidgetCache.generateWidgetPreview(launcher, pendingAddWidgetInfo.info, min, null, iArr).first;
            }
            if (iArr[0] < i) {
                int i3 = (i - iArr[0]) / 2;
                if (i > i2) {
                    i3 = (i3 * i2) / i;
                }
                rect.left += i3;
                rect.right -= i3;
            }
            launcher.mDragController.mListeners.add(new WidgetHostViewLoader(launcher, this.mView));
            width = rect.width() / generateFromRemoteViews.getWidth();
            hVar = new h(1);
            bitmap = generateFromRemoteViews;
            point2 = null;
            rect2 = null;
        } else {
            Drawable fullResIcon = ((PendingAddShortcutInfo) pendingAddItemInfo).activityInfo.getFullResIcon(launcherAppState.mIconCache);
            LauncherIcons obtain = LauncherIcons.obtain(launcher);
            Bitmap createScaledBitmapWithoutShadow = obtain.createScaledBitmapWithoutShadow(fullResIcon, 0);
            obtain.recycle();
            int i4 = this.previewPadding / 2;
            Point point3 = new Point(i4, i4);
            DeviceProfile deviceProfile = launcher.getDeviceProfile();
            int i5 = deviceProfile.iconSizePx;
            int dimensionPixelSize = launcher.getResources().getDimensionPixelSize(R.dimen.widget_preview_shortcut_padding);
            rect.left += dimensionPixelSize;
            rect.top += dimensionPixelSize;
            Rect rect3 = new Rect();
            int[] iArr2 = this.mEstimatedCellSize;
            int i6 = (iArr2[0] - i5) / 2;
            rect3.left = i6;
            rect3.right = i6 + i5;
            int i7 = (((iArr2[1] - i5) - deviceProfile.iconTextSizePx) - deviceProfile.iconDrawablePaddingPx) / 2;
            rect3.top = i7;
            rect3.bottom = i7 + i5;
            width = launcher.getDeviceProfile().iconSizePx / createScaledBitmapWithoutShadow.getWidth();
            hVar = new h(0);
            bitmap = createScaledBitmapWithoutShadow;
            rect2 = rect3;
            point2 = point3;
        }
        launcher.mWorkspace.mOutlineProvider = this;
        launcher.mDragController.startDrag(bitmap, hVar, point.x + rect.left + ((int) (((bitmap.getWidth() * width) - bitmap.getWidth()) / 2.0f)), point.y + rect.top + ((int) (((bitmap.getHeight() * width) - bitmap.getHeight()) / 2.0f)), dragSource, this.mAddInfo, point2, rect2, width, width, dragOptions);
    }
}
