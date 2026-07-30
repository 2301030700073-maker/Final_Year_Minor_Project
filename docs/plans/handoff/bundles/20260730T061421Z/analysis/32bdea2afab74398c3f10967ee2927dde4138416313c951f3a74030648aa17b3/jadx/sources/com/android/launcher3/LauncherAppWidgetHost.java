package com.android.launcher3;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.Toast;
import b.l.W;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.widget.DeferredAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.custom.CustomAppWidgetProviderInfo;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.plugins.CustomWidgetPlugin;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public class LauncherAppWidgetHost extends AppWidgetHost {
    public IntConsumer mAppWidgetRemovedCallback;
    public final Context mContext;
    public int mFlags;
    public final SparseArray mPendingViews;
    public final ArrayList mProviderChangeListeners;
    public final SparseArray mViews;

    public interface ProviderChangedListener {
        void notifyWidgetProvidersChanged();
    }

    public LauncherAppWidgetHost(Context context, IntConsumer intConsumer) {
        super(context, 1024);
        this.mProviderChangeListeners = new ArrayList();
        this.mViews = new SparseArray();
        this.mPendingViews = new SparseArray();
        this.mFlags = 2;
        this.mAppWidgetRemovedCallback = null;
        this.mContext = context;
        this.mAppWidgetRemovedCallback = intConsumer;
    }

    @Override // android.appwidget.AppWidgetHost
    public int allocateAppWidgetId() {
        return super.allocateAppWidgetId();
    }

    @Override // android.appwidget.AppWidgetHost
    public void clearViews() {
        super.clearViews();
        this.mViews.clear();
    }

    public AppWidgetHostView createView(Context context, int i, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        if (launcherAppWidgetProviderInfo.isCustomWidget()) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
            launcherAppWidgetHostView.setAppWidget(0, launcherAppWidgetProviderInfo);
            CustomWidgetManager customWidgetManager = (CustomWidgetManager) CustomWidgetManager.INSTANCE.b(context);
            Objects.requireNonNull(customWidgetManager);
            CustomWidgetPlugin customWidgetPlugin = (CustomWidgetPlugin) customWidgetManager.mPlugins.get(((CustomAppWidgetProviderInfo) launcherAppWidgetHostView.getAppWidgetInfo()).providerId);
            if (customWidgetPlugin != null) {
                customWidgetPlugin.onViewCreated(launcherAppWidgetHostView);
            }
            return launcherAppWidgetHostView;
        }
        if ((this.mFlags & 1) == 0) {
            DeferredAppWidgetHostView deferredAppWidgetHostView = new DeferredAppWidgetHostView(context);
            deferredAppWidgetHostView.setAppWidget(i, launcherAppWidgetProviderInfo);
            this.mViews.put(i, deferredAppWidgetHostView);
            return deferredAppWidgetHostView;
        }
        try {
            return super.createView(context, i, (AppWidgetProviderInfo) launcherAppWidgetProviderInfo);
        } catch (Exception e) {
            if (!Utilities.isBinderSizeError(e)) {
                throw new RuntimeException(e);
            }
            LauncherAppWidgetHostView launcherAppWidgetHostView2 = (LauncherAppWidgetHostView) this.mViews.get(i);
            if (launcherAppWidgetHostView2 == null) {
                launcherAppWidgetHostView2 = this.onCreateView(this.mContext, i);
            }
            launcherAppWidgetHostView2.setAppWidget(i, launcherAppWidgetProviderInfo);
            launcherAppWidgetHostView2.updateAppWidget(new RemoteViews(launcherAppWidgetHostView2.getAppWidgetInfo().provider.getPackageName(), 0));
            return launcherAppWidgetHostView2;
        }
    }

    @Override // android.appwidget.AppWidgetHost
    public void deleteAppWidgetId(int i) {
        super.deleteAppWidgetId(i);
        this.mViews.remove(i);
    }

    @Override // android.appwidget.AppWidgetHost
    public void onAppWidgetRemoved(int i) {
        IntConsumer intConsumer = this.mAppWidgetRemovedCallback;
        if (intConsumer == null) {
            return;
        }
        intConsumer.accept(i);
    }

    @Override // android.appwidget.AppWidgetHost
    public /* bridge */ /* synthetic */ AppWidgetHostView onCreateView(Context context, int i, AppWidgetProviderInfo appWidgetProviderInfo) {
        return onCreateView(context, i);
    }

    @Override // android.appwidget.AppWidgetHost
    public void onProviderChanged(int i, AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
        super.onProviderChanged(i, fromProviderInfo);
        fromProviderInfo.initSpans(this.mContext);
    }

    @Override // android.appwidget.AppWidgetHost
    public void onProvidersChanged() {
        if (this.mProviderChangeListeners.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.mProviderChangeListeners).iterator();
        while (it.hasNext()) {
            ((ProviderChangedListener) it.next()).notifyWidgetProvidersChanged();
        }
    }

    public void setListenIfResumed(boolean z) {
        if (z == ((this.mFlags & 4) != 0)) {
            return;
        }
        if (!z) {
            this.mFlags &= -5;
            stopListening();
            return;
        }
        int i = this.mFlags | 4;
        this.mFlags = i;
        if ((i & 2) != 0) {
            startListening();
        }
    }

    public void startBindFlow(BaseActivity baseActivity, int i, AppWidgetProviderInfo appWidgetProviderInfo, int i2) {
        baseActivity.startActivityForResult(new Intent("android.appwidget.action.APPWIDGET_BIND").putExtra("appWidgetId", i).putExtra("appWidgetProvider", appWidgetProviderInfo.provider).putExtra("appWidgetProviderProfile", appWidgetProviderInfo.getProfile()), i2);
    }

    public void startConfigActivity(final BaseActivity baseActivity, int i, final int i2) {
        try {
            W.recordEvent("Main", "start: startConfigActivity");
            startAppWidgetConfigureActivityForResult(baseActivity, i, 0, i2, null);
        } catch (ActivityNotFoundException | SecurityException unused) {
            Toast.makeText(baseActivity, R.string.activity_not_found, 0).show();
            new Handler().post(new Runnable() { // from class: c.a.a.S
                @Override // java.lang.Runnable
                public final void run() {
                    BaseActivity.this.onActivityResult(i2, 0, null);
                }
            });
        }
    }

    @Override // android.appwidget.AppWidgetHost
    public void startListening() {
        this.mFlags |= 1;
        try {
            super.startListening();
        } catch (Exception e) {
            if (!Utilities.isBinderSizeError(e)) {
                throw new RuntimeException(e);
            }
        }
        for (int size = this.mViews.size() - 1; size >= 0; size--) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) this.mViews.valueAt(size);
            if (launcherAppWidgetHostView instanceof DeferredAppWidgetHostView) {
                launcherAppWidgetHostView.reInflate();
            }
        }
    }

    @Override // android.appwidget.AppWidgetHost
    public void stopListening() {
        this.mFlags &= -2;
        super.stopListening();
    }

    public LauncherAppWidgetHostView onCreateView(Context context, int i) {
        LauncherAppWidgetHostView launcherAppWidgetHostView;
        if (this.mPendingViews.get(i) != null) {
            launcherAppWidgetHostView = (LauncherAppWidgetHostView) this.mPendingViews.get(i);
            this.mPendingViews.remove(i);
        } else {
            launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
        }
        this.mViews.put(i, launcherAppWidgetHostView);
        return launcherAppWidgetHostView;
    }
}
