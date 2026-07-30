package com.android.launcher3.qsb;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.launcher3.Launcher;
import com.android.launcher3.qsb.QsbWidgetHostView;
import com.android.launcher3.widget.NavigableAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class QsbWidgetHostView extends NavigableAppWidgetHostView {

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mPreviousOrientation;

    public QsbWidgetHostView(Context context) {
        super(context);
        setFocusable(true);
        setBackgroundResource(R.drawable.qsb_host_view_focus_bg);
    }

    @Override // android.appwidget.AppWidgetHostView
    public View getDefaultView() {
        View defaultView = super.getDefaultView();
        defaultView.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.S0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Launcher.getLauncher(QsbWidgetHostView.this.getContext()).startSearch("", false, null, true);
            }
        });
        return defaultView;
    }

    @Override // android.appwidget.AppWidgetHostView
    public View getErrorView() {
        return getDefaultView(this);
    }

    @Override // android.appwidget.AppWidgetHostView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        try {
            super.onLayout(z, i, i2, i3, i4);
        } catch (RuntimeException unused) {
            post(new Runnable() { // from class: c.a.a.S0.f
                @Override // java.lang.Runnable
                public final void run() {
                    QsbWidgetHostView qsbWidgetHostView = QsbWidgetHostView.this;
                    Objects.requireNonNull(qsbWidgetHostView);
                    qsbWidgetHostView.updateAppWidget(new RemoteViews(qsbWidgetHostView.getAppWidgetInfo().provider.getPackageName(), 0));
                }
            });
        }
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    @Override // com.android.launcher3.widget.NavigableAppWidgetHostView
    public boolean shouldAllowDirectClick() {
        return true;
    }

    @Override // android.appwidget.AppWidgetHostView
    public void updateAppWidget(RemoteViews remoteViews) {
        this.mPreviousOrientation = getResources().getConfiguration().orientation;
        super.updateAppWidget(remoteViews);
    }

    public static View getDefaultView(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.qsb_default_view, viewGroup, false);
        inflate.findViewById(R.id.btn_qsb_search).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.S0.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Launcher.getLauncher(view.getContext()).startSearch("", false, null, true);
            }
        });
        return inflate;
    }
}
