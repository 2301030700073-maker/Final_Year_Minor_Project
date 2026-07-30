package com.android.launcher3.widget;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.RemoteViews;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DeferredAppWidgetHostView extends LauncherAppWidgetHostView {
    public final TextPaint mPaint;
    public Layout mSetupTextLayout;

    public DeferredAppWidgetHostView(Context context) {
        super(context);
        setWillNotDraw(false);
        TextPaint textPaint = new TextPaint();
        this.mPaint = textPaint;
        textPaint.setColor(-1);
        TextPaint textPaint2 = this.mPaint;
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        boolean z = deviceProfile.isLandscape;
        InvariantDeviceProfile invariantDeviceProfile = deviceProfile.inv;
        textPaint2.setTextSize(TypedValue.applyDimension(0, (z ? invariantDeviceProfile.landscapeProfile : invariantDeviceProfile.portraitProfile).iconTextSizePx, getResources().getDisplayMetrics()));
        setBackgroundResource(R.drawable.bg_deferred_app_widget);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mSetupTextLayout != null) {
            canvas.translate(getPaddingLeft() * 2, (getHeight() - this.mSetupTextLayout.getHeight()) / 2);
            this.mSetupTextLayout.draw(canvas);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        AppWidgetProviderInfo appWidgetInfo = getAppWidgetInfo();
        if (appWidgetInfo == null || TextUtils.isEmpty(appWidgetInfo.label)) {
            return;
        }
        int measuredWidth = getMeasuredWidth() - ((getPaddingRight() + getPaddingLeft()) * 2);
        Layout layout = this.mSetupTextLayout;
        if (layout != null && layout.getText().equals(appWidgetInfo.label) && this.mSetupTextLayout.getWidth() == measuredWidth) {
            return;
        }
        this.mSetupTextLayout = new StaticLayout(appWidgetInfo.label, this.mPaint, measuredWidth, Layout.Alignment.ALIGN_CENTER, 1.0f, RecentsState.NO_OFFSET, true);
    }

    @Override // com.android.launcher3.widget.LauncherAppWidgetHostView, android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
    }
}
