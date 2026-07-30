package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.SystemClock;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.Advanceable;
import android.widget.RemoteViews;
import b.l.W;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class LauncherAppWidgetHostView extends NavigableAppWidgetHostView implements BaseDragLayer.TouchCompleteListener, View.OnLongClickListener {
    public static final SparseBooleanArray sAutoAdvanceWidgetIds = new SparseBooleanArray();
    public Runnable mAutoAdvanceRunnable;
    public final LayoutInflater mInflater;
    public boolean mIsAttachedToWindow;
    public boolean mIsAutoAdvanceRegistered;
    public boolean mIsScrollable;
    public final Launcher mLauncher;
    public final CheckLongPressHelper mLongPressHelper;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mReinflateOnConfigChange;

    public LauncherAppWidgetHostView(Context context) {
        super(context);
        this.mLauncher = Launcher.getLauncher(context);
        this.mLongPressHelper = new CheckLongPressHelper(this, this);
        this.mInflater = LayoutInflater.from(context);
        setAccessibilityDelegate(this.mLauncher.mAccessibilityDelegate);
        setBackgroundResource(R.drawable.widget_internal_focus_bg);
        if (Utilities.ATLEAST_OREO) {
            setExecutor(Executors.THREAD_POOL_EXECUTOR);
        }
        if (Utilities.ATLEAST_Q && W.getAttrBoolean(this.mLauncher, R.attr.isWorkspaceDarkText)) {
            setOnLightBackground(true);
        }
    }

    public static void a(LauncherAppWidgetHostView launcherAppWidgetHostView) {
        Advanceable advanceable = launcherAppWidgetHostView.getAdvanceable();
        if (advanceable != null) {
            advanceable.advance();
        }
        launcherAppWidgetHostView.scheduleNextAdvance();
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public final void checkIfAutoAdvance() {
        boolean z;
        Advanceable advanceable = getAdvanceable();
        if (advanceable != null) {
            advanceable.fyiWillBeAdvancedByHostKThx();
            z = true;
        } else {
            z = false;
        }
        if (z != (sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) >= 0)) {
            if (z) {
                sAutoAdvanceWidgetIds.put(getAppWidgetId(), true);
            } else {
                sAutoAdvanceWidgetIds.delete(getAppWidgetId());
            }
            maybeRegisterAutoAdvance();
        }
    }

    public final boolean checkScrollableRecursively(ViewGroup viewGroup) {
        if (viewGroup instanceof AdapterView) {
            return true;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ViewGroup) && checkScrollableRecursively((ViewGroup) childAt)) {
                return true;
            }
        }
        return false;
    }

    public final Advanceable getAdvanceable() {
        int i;
        AppWidgetProviderInfo appWidgetInfo = getAppWidgetInfo();
        if (appWidgetInfo == null || (i = appWidgetInfo.autoAdvanceViewId) == -1 || !this.mIsAttachedToWindow) {
            return null;
        }
        KeyEvent.Callback findViewById = findViewById(i);
        if (findViewById instanceof Advanceable) {
            return (Advanceable) findViewById;
        }
        return null;
    }

    @Override // android.appwidget.AppWidgetHostView
    public AppWidgetProviderInfo getAppWidgetInfo() {
        AppWidgetProviderInfo appWidgetInfo = super.getAppWidgetInfo();
        if (appWidgetInfo == null || (appWidgetInfo instanceof LauncherAppWidgetProviderInfo)) {
            return appWidgetInfo;
        }
        throw new IllegalStateException("Launcher widget must have LauncherAppWidgetProviderInfo");
    }

    @Override // android.appwidget.AppWidgetHostView
    public View getErrorView() {
        return this.mInflater.inflate(R.layout.appwidget_error, (ViewGroup) this, false);
    }

    public final boolean isSameOrientation() {
        return this.mLauncher.getResources().getConfiguration().orientation == this.mLauncher.mOldConfig.orientation;
    }

    public final void maybeRegisterAutoAdvance() {
        Handler handler = getHandler();
        boolean z = getWindowVisibility() == 0 && handler != null && sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) >= 0;
        if (z != this.mIsAutoAdvanceRegistered) {
            this.mIsAutoAdvanceRegistered = z;
            if (this.mAutoAdvanceRunnable == null) {
                this.mAutoAdvanceRunnable = new Runnable() { // from class: c.a.a.c1.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherAppWidgetHostView.a(LauncherAppWidgetHostView.this);
                    }
                };
            }
            handler.removeCallbacks(this.mAutoAdvanceRunnable);
            scheduleNextAdvance();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        checkIfAutoAdvance();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mReinflateOnConfigChange && isSameOrientation()) {
            this.mReinflateOnConfigChange = false;
            reInflate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
        checkIfAutoAdvance();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getClass().getName());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            DragLayer dragLayer = Launcher.getLauncher(getContext()).mDragLayer;
            if (this.mIsScrollable) {
                dragLayer.requestDisallowInterceptTouchEvent(true);
            }
            dragLayer.setTouchCompleteListener(this);
        }
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return this.mLongPressHelper.mHasPerformedLongPress;
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: com.android.launcher3.widget.LauncherAppWidgetHostView.1
                @Override // java.lang.Runnable
                public void run() {
                    LauncherAppWidgetHostView launcherAppWidgetHostView = LauncherAppWidgetHostView.this;
                    Objects.requireNonNull(launcherAppWidgetHostView);
                    launcherAppWidgetHostView.updateAppWidget(new RemoteViews(launcherAppWidgetHostView.getAppWidgetInfo().provider.getPackageName(), 0));
                }
            });
        }
        this.mIsScrollable = checkScrollableRecursively(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (this.mIsScrollable) {
            Launcher.getLauncher(getContext()).mDragLayer.requestDisallowInterceptTouchEvent(false);
        }
        view.performLongClick();
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        maybeRegisterAutoAdvance();
    }

    public void reInflate() {
        if (isAttachedToWindow()) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) getTag();
            this.mLauncher.removeItem(this, launcherAppWidgetInfo, false);
            Launcher launcher = this.mLauncher;
            View inflateAppWidget = launcher.inflateAppWidget(launcherAppWidgetInfo);
            if (inflateAppWidget != null) {
                launcher.mWorkspace.addInScreen(inflateAppWidget, launcherAppWidgetInfo);
                launcher.mWorkspace.requestLayout();
            }
        }
    }

    public final void scheduleNextAdvance() {
        if (this.mIsAutoAdvanceRegistered) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long indexOfKey = (sAutoAdvanceWidgetIds.indexOfKey(getAppWidgetId()) * 250) + (20000 - (uptimeMillis % 20000)) + uptimeMillis;
            Handler handler = getHandler();
            if (handler != null) {
                handler.postAtTime(this.mAutoAdvanceRunnable, indexOfKey);
            }
        }
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    public boolean shouldAllowDirectClick() {
        if (!(getTag() instanceof ItemInfo)) {
            return false;
        }
        ItemInfo itemInfo = (ItemInfo) getTag();
        return itemInfo.spanX == 1 && itemInfo.spanY == 1;
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        super.updateAppWidget(remoteViews);
        checkIfAutoAdvance();
        this.mReinflateOnConfigChange = !isSameOrientation();
    }
}
