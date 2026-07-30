package com.android.launcher3.qsb;

import android.app.SearchManager;
import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import c.a.a.S0.b;
import c.a.a.S0.c;
import com.android.launcher3.AppWidgetResizeFrame;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.FragmentWithPreview;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.systemui.shared.R;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class QsbContainerView extends FrameLayout {

    public class QsbFragment extends FragmentWithPreview {
        public String mKeyWidgetId = "qsb_widget_id";
        public int mOrientation;
        public QsbWidgetHostView mQsb;
        public QsbWidgetHost mQsbWidgetHost;
        public AppWidgetProviderInfo mWidgetInfo;
        public FrameLayout mWrapper;

        public static /* synthetic */ QsbWidgetHostView a(Context context) {
            return new QsbWidgetHostView(context);
        }

        public /* synthetic */ void b(View view) {
            startActivityForResult(new Intent("android.appwidget.action.APPWIDGET_BIND").putExtra("appWidgetId", this.mQsbWidgetHost.allocateAppWidgetId()).putExtra("appWidgetProvider", this.mWidgetInfo.provider), 1);
        }

        public final View createQsb(ViewGroup viewGroup) {
            AppWidgetProviderInfo searchWidgetProviderInfo = QsbContainerView.getSearchWidgetProviderInfo(getContext());
            this.mWidgetInfo = searchWidgetProviderInfo;
            boolean z = false;
            if (searchWidgetProviderInfo == null) {
                return getDefaultView(viewGroup, false);
            }
            InvariantDeviceProfile idp = LauncherAppState.getIDP(getContext());
            Bundle bundle = new Bundle();
            Rect widgetSizeRanges = AppWidgetResizeFrame.getWidgetSizeRanges(getContext(), idp.numColumns, 1, null);
            bundle.putInt("appWidgetMinWidth", widgetSizeRanges.left);
            bundle.putInt("appWidgetMinHeight", widgetSizeRanges.top);
            bundle.putInt("appWidgetMaxWidth", widgetSizeRanges.right);
            bundle.putInt("appWidgetMaxHeight", widgetSizeRanges.bottom);
            Context context = getContext();
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            int i = -1;
            int i2 = Utilities.getPrefs(context).getInt(this.mKeyWidgetId, -1);
            AppWidgetProviderInfo appWidgetInfo = appWidgetManager.getAppWidgetInfo(i2);
            boolean z2 = appWidgetInfo != null && appWidgetInfo.provider.equals(this.mWidgetInfo.provider);
            if (!z2) {
                if (!(this.mPreviewContext != null)) {
                    if (i2 > -1) {
                        this.mQsbWidgetHost.deleteHost();
                    }
                    int allocateAppWidgetId = this.mQsbWidgetHost.allocateAppWidgetId();
                    boolean bindAppWidgetIdIfAllowed = appWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, this.mWidgetInfo.getProfile(), this.mWidgetInfo.provider, bundle);
                    if (bindAppWidgetIdIfAllowed) {
                        i = allocateAppWidgetId;
                    } else {
                        this.mQsbWidgetHost.deleteAppWidgetId(allocateAppWidgetId);
                    }
                    if (i2 != i) {
                        saveWidgetId(i);
                    }
                    z2 = bindAppWidgetIdIfAllowed;
                    i2 = i;
                }
            }
            if (!z2) {
                return getDefaultView(viewGroup, true);
            }
            QsbWidgetHostView qsbWidgetHostView = (QsbWidgetHostView) this.mQsbWidgetHost.createView(context, i2, this.mWidgetInfo);
            this.mQsb = qsbWidgetHostView;
            qsbWidgetHostView.setId(R.id.qsb_widget);
            if (!(this.mPreviewContext != null)) {
                Bundle appWidgetOptions = AppWidgetManager.getInstance(context).getAppWidgetOptions(i2);
                Iterator<String> it = bundle.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    String next = it.next();
                    Object obj = bundle.get(next);
                    Object obj2 = appWidgetOptions.get(next);
                    if (obj == null) {
                        if (obj2 != null) {
                            break;
                        }
                    } else if (!obj.equals(obj2)) {
                        break;
                    }
                }
                if (!z) {
                    this.mQsb.updateAppWidgetOptions(bundle);
                }
            }
            return this.mQsb;
        }

        public View getDefaultView(ViewGroup viewGroup, boolean z) {
            View defaultView = QsbWidgetHostView.getDefaultView(viewGroup);
            if (z) {
                View findViewById = defaultView.findViewById(R.id.btn_qsb_setup);
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: c.a.a.S0.a
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        QsbContainerView.QsbFragment.this.b(view);
                    }
                });
            }
            return defaultView;
        }

        @Override // android.app.Fragment
        public void onActivityResult(int i, int i2, Intent intent) {
            if (i == 1) {
                if (i2 != -1) {
                    this.mQsbWidgetHost.deleteHost();
                } else {
                    saveWidgetId(intent.getIntExtra("appWidgetId", -1));
                    rebindFragment();
                }
            }
        }

        @Override // android.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            this.mWrapper = new FrameLayout(getContext());
            this.mQsbWidgetHost.startListening();
            FrameLayout frameLayout = this.mWrapper;
            frameLayout.addView(createQsb(frameLayout));
            return this.mWrapper;
        }

        @Override // android.app.Fragment
        public void onDestroy() {
            this.mQsbWidgetHost.stopListening();
            super.onDestroy();
        }

        @Override // com.android.launcher3.graphics.FragmentWithPreview
        public void onInit(Bundle bundle) {
            this.mQsbWidgetHost = new QsbWidgetHost(getContext(), 1026, c.f1622a, new b(this));
            this.mOrientation = getContext().getResources().getConfiguration().orientation;
        }

        @Override // android.app.Fragment
        public void onResume() {
            super.onResume();
            QsbWidgetHostView qsbWidgetHostView = this.mQsb;
            if (qsbWidgetHostView != null) {
                if (qsbWidgetHostView.mPreviousOrientation != this.mOrientation) {
                    rebindFragment();
                }
            }
        }

        public final void rebindFragment() {
            if (this.mWrapper == null || getContext() == null) {
                return;
            }
            this.mWrapper.removeAllViews();
            FrameLayout frameLayout = this.mWrapper;
            frameLayout.addView(createQsb(frameLayout));
        }

        public final void saveWidgetId(int i) {
            Utilities.getPrefs(getContext()).edit().putInt(this.mKeyWidgetId, i).apply();
        }
    }

    public class QsbWidgetHost extends AppWidgetHost {
        public final WidgetViewFactory mViewFactory;
        public final b mWidgetsUpdateCallback;

        public QsbWidgetHost(Context context, int i, WidgetViewFactory widgetViewFactory, b bVar) {
            super(context, i);
            this.mViewFactory = widgetViewFactory;
            this.mWidgetsUpdateCallback = bVar;
        }

        @Override // android.appwidget.AppWidgetHost
        public AppWidgetHostView onCreateView(Context context, int i, AppWidgetProviderInfo appWidgetProviderInfo) {
            Objects.requireNonNull((c) this.mViewFactory);
            return QsbFragment.a(context);
        }

        @Override // android.appwidget.AppWidgetHost
        public void onProvidersChanged() {
            super.onProvidersChanged();
            b bVar = this.mWidgetsUpdateCallback;
            if (bVar != null) {
                bVar.f1621a.rebindFragment();
            }
        }
    }

    public interface WidgetViewFactory {
    }

    public static ComponentName getSearchComponentName(Context context) {
        AppWidgetProviderInfo searchWidgetProviderInfo = getSearchWidgetProviderInfo(context);
        if (searchWidgetProviderInfo != null) {
            return searchWidgetProviderInfo.provider;
        }
        String searchWidgetPackageName = getSearchWidgetPackageName(context);
        if (searchWidgetPackageName != null) {
            return new ComponentName(searchWidgetPackageName, searchWidgetPackageName);
        }
        return null;
    }

    public static String getSearchWidgetPackageName(Context context) {
        String string = Settings.Global.getString(context.getContentResolver(), "SEARCH_PROVIDER_PACKAGE_NAME");
        if (string != null) {
            return string;
        }
        SearchManager searchManager = (SearchManager) context.getSystemService(SearchManager.class);
        return searchManager.getGlobalSearchActivity() != null ? searchManager.getGlobalSearchActivity().getPackageName() : string;
    }

    public static AppWidgetProviderInfo getSearchWidgetProviderInfo(Context context) {
        String searchWidgetPackageName = getSearchWidgetPackageName(context);
        AppWidgetProviderInfo appWidgetProviderInfo = null;
        if (searchWidgetPackageName == null) {
            return null;
        }
        for (AppWidgetProviderInfo appWidgetProviderInfo2 : AppWidgetManager.getInstance(context).getInstalledProvidersForPackage(searchWidgetPackageName, null)) {
            if (appWidgetProviderInfo2.provider.getPackageName().equals(searchWidgetPackageName) && appWidgetProviderInfo2.configure == null) {
                if ((appWidgetProviderInfo2.widgetCategory & 4) != 0) {
                    return appWidgetProviderInfo2;
                }
                if (appWidgetProviderInfo == null) {
                    appWidgetProviderInfo = appWidgetProviderInfo2;
                }
            }
        }
        return appWidgetProviderInfo;
    }
}
