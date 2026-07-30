package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import b.l.W;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.SystemUiController;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseWidgetSheet extends AbstractSlideInView implements View.OnClickListener, View.OnLongClickListener, DragSource, PopupDataProvider.PopupDataChangeListener {
    public Toast mWidgetInstructionToast;

    public BaseWidgetSheet(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
    public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
        LauncherLogProto$Target newContainerTarget = LoggerUtils.newContainerTarget(5);
        newContainerTarget.cardinality = getElementsRowCount();
        arrayList.add(newContainerTarget);
    }

    public abstract int getElementsRowCount();

    @Override // com.android.launcher3.AbstractFloatingView
    public int getLogContainerType() {
        return 5;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public int getScrimColor(Context context) {
        WallpaperColorInfo wallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(context);
        return GraphicsUtils.setColorAlphaBound(wallpaperColorInfo.mExtractionInfo.secondaryColor, context.getResources().getInteger(R.integer.extracted_color_gradient_alpha));
    }

    public SystemUiController getSystemUiController() {
        return this.mLauncher.getSystemUiController();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void logActionCommand(int i) {
        LauncherLogProto$Target newContainerTarget = LoggerUtils.newContainerTarget(getLogContainerType());
        newContainerTarget.cardinality = getElementsRowCount();
        this.mLauncher.getUserEventDispatcher().logActionCommand(i, newContainerTarget);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLauncher.mPopupDataProvider.mChangeListener = this;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Toast toast = this.mWidgetInstructionToast;
        if (toast != null) {
            toast.cancel();
        }
        Toast makeText = Toast.makeText(getContext(), Utilities.wrapForTts(getContext().getText(R.string.long_press_widget_to_add), getContext().getString(R.string.long_accessible_way_to_add)), 0);
        this.mWidgetInstructionToast = makeText;
        makeText.show();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public void onCloseComplete() {
        super.onCloseComplete();
        getSystemUiController().updateUiState(2, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mLauncher.mPopupDataProvider.setChangeListener(null);
    }

    @Override // com.android.launcher3.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        W.recordEvent("Main", "Widgets.onLongClick");
        view.cancelLongPress();
        if (!ItemLongClickListener.canStartDrag(this.mLauncher)) {
            return false;
        }
        if (!(view instanceof WidgetCell)) {
            return true;
        }
        WidgetCell widgetCell = (WidgetCell) view;
        WidgetImageView widgetImageView = widgetCell.mWidgetImage;
        if (widgetImageView.mBitmap == null) {
            return false;
        }
        int[] iArr = new int[2];
        getPopupContainer().getLocationInDragLayer(widgetImageView, iArr);
        new PendingItemDragHelper(widgetCell).startDrag(widgetImageView.getBitmapBounds(), widgetImageView.mBitmap.getWidth(), widgetImageView.getWidth(), new Point(iArr[0], iArr[1]), this, new DragOptions());
        close(true);
        return true;
    }

    public void setupNavBarColor() {
        getSystemUiController().updateUiState(2, W.getAttrBoolean(getContext(), R.attr.isMainColorDark) ? 2 : 1);
    }
}
