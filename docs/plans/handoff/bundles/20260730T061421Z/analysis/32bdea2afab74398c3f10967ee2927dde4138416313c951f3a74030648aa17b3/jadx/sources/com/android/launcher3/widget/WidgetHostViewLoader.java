package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.views.BaseDragLayer;

/* loaded from: classes.dex */
public class WidgetHostViewLoader implements DragController.DragListener {
    public final PendingAddWidgetInfo mInfo;
    public Launcher mLauncher;
    public final View mView;
    public Runnable mInflateWidgetRunnable = null;
    public Runnable mBindWidgetRunnable = null;
    public int mWidgetLoadingId = -1;
    public Handler mHandler = new Handler();

    public WidgetHostViewLoader(Launcher launcher, View view) {
        this.mLauncher = launcher;
        this.mView = view;
        this.mInfo = (PendingAddWidgetInfo) view.getTag();
    }

    public static Bundle getDefaultOptionsForWidget(Context context, PendingAddWidgetInfo pendingAddWidgetInfo) {
        Rect rect = new Rect();
        AppWidgetResizeFrame.getWidgetSizeRanges(context, pendingAddWidgetInfo.spanX, pendingAddWidgetInfo.spanY, rect);
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, pendingAddWidgetInfo.componentName, null);
        float f = context.getResources().getDisplayMetrics().density;
        int i = (int) ((defaultPaddingForWidget.left + defaultPaddingForWidget.right) / f);
        int i2 = (int) ((defaultPaddingForWidget.top + defaultPaddingForWidget.bottom) / f);
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetMinWidth", rect.left - i);
        bundle.putInt("appWidgetMinHeight", rect.top - i2);
        bundle.putInt("appWidgetMaxWidth", rect.right - i);
        bundle.putInt("appWidgetMaxHeight", rect.bottom - i2);
        return bundle;
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragEnd() {
        this.mLauncher.mDragController.mListeners.remove(this);
        this.mHandler.removeCallbacks(this.mBindWidgetRunnable);
        this.mHandler.removeCallbacks(this.mInflateWidgetRunnable);
        int i = this.mWidgetLoadingId;
        if (i != -1) {
            this.mLauncher.mAppWidgetHost.deleteAppWidgetId(i);
            this.mWidgetLoadingId = -1;
        }
        AppWidgetHostView appWidgetHostView = this.mInfo.boundWidget;
        if (appWidgetHostView != null) {
            this.mLauncher.mDragLayer.removeView(appWidgetHostView);
            this.mLauncher.mAppWidgetHost.deleteAppWidgetId(this.mInfo.boundWidget.getAppWidgetId());
            this.mInfo.boundWidget = null;
        }
    }

    @Override // com.android.launcher3.dragndrop.DragController.DragListener
    public void onDragStart(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = this.mInfo.info;
        if (launcherAppWidgetProviderInfo.isCustomWidget()) {
            return;
        }
        final Bundle defaultOptionsForWidget = getDefaultOptionsForWidget(this.mLauncher, this.mInfo);
        if (this.mInfo.getHandler().needsConfigure()) {
            this.mInfo.bindOptions = defaultOptionsForWidget;
            return;
        }
        this.mBindWidgetRunnable = new Runnable() { // from class: com.android.launcher3.widget.WidgetHostViewLoader.1
            @Override // java.lang.Runnable
            public void run() {
                WidgetHostViewLoader widgetHostViewLoader = WidgetHostViewLoader.this;
                widgetHostViewLoader.mWidgetLoadingId = widgetHostViewLoader.mLauncher.mAppWidgetHost.allocateAppWidgetId();
                AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(WidgetHostViewLoader.this.mLauncher);
                int i = WidgetHostViewLoader.this.mWidgetLoadingId;
                LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo2 = launcherAppWidgetProviderInfo;
                if (i <= -100 ? true : appWidgetManager.bindAppWidgetIdIfAllowed(i, launcherAppWidgetProviderInfo2.getProfile(), ((AppWidgetProviderInfo) launcherAppWidgetProviderInfo2).provider, defaultOptionsForWidget)) {
                    WidgetHostViewLoader widgetHostViewLoader2 = WidgetHostViewLoader.this;
                    widgetHostViewLoader2.mHandler.post(widgetHostViewLoader2.mInflateWidgetRunnable);
                }
            }
        };
        this.mInflateWidgetRunnable = new Runnable() { // from class: com.android.launcher3.widget.WidgetHostViewLoader.2
            @Override // java.lang.Runnable
            public void run() {
                WidgetHostViewLoader widgetHostViewLoader = WidgetHostViewLoader.this;
                int i = widgetHostViewLoader.mWidgetLoadingId;
                if (i == -1) {
                    return;
                }
                Launcher launcher = widgetHostViewLoader.mLauncher;
                AppWidgetHostView createView = launcher.mAppWidgetHost.createView((Context) launcher, i, launcherAppWidgetProviderInfo);
                WidgetHostViewLoader widgetHostViewLoader2 = WidgetHostViewLoader.this;
                widgetHostViewLoader2.mInfo.boundWidget = createView;
                widgetHostViewLoader2.mWidgetLoadingId = -1;
                createView.setVisibility(4);
                WidgetHostViewLoader widgetHostViewLoader3 = WidgetHostViewLoader.this;
                int[] estimateItemSize = widgetHostViewLoader3.mLauncher.mWorkspace.estimateItemSize(widgetHostViewLoader3.mInfo);
                BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(estimateItemSize[0], estimateItemSize[1]);
                layoutParams.y = 0;
                layoutParams.x = 0;
                layoutParams.customPosition = true;
                createView.setLayoutParams(layoutParams);
                WidgetHostViewLoader.this.mLauncher.mDragLayer.addView(createView);
                WidgetHostViewLoader widgetHostViewLoader4 = WidgetHostViewLoader.this;
                widgetHostViewLoader4.mView.setTag(widgetHostViewLoader4.mInfo);
            }
        };
        this.mHandler.post(this.mBindWidgetRunnable);
    }
}
