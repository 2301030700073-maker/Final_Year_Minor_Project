package org.wikipedia.widgets;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.util.SizeF;
import android.widget.RemoteViews;
import androidx.core.app.NavUtils;
import androidx.core.graphics.TypefaceCompat$$ExternalSyntheticApiModelOutline0;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.login.LoginClient;
import org.wikipedia.search.SearchActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/widgets/WidgetProviderSearch;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WidgetProviderSearch extends AppWidgetProvider {
    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        context.getClass();
        appWidgetManager.getClass();
        iArr.getClass();
        int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetProviderSearch.class));
        appWidgetIds.getClass();
        for (int i : appWidgetIds) {
            int i2 = SearchActivity.$r8$clinit;
            PendingIntent activity = NavUtils.getActivity(context, 0, LoginClient.newIntent$default(context, Constants.InvokeSource.WIDGET, (String) null, (String) null, 56).putExtra("widgetType", WidgetTypes.SEARCH.getValue()).setFlags(268435456), 134217728);
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_search_large);
            remoteViews.setOnClickPendingIntent(R.id.widget_container, activity);
            if (Build.VERSION.SDK_INT >= 31) {
                RemoteViews remoteViews2 = new RemoteViews(context.getPackageName(), R.layout.widget_search_small);
                RemoteViews remoteViews3 = new RemoteViews(context.getPackageName(), R.layout.widget_search_medium);
                remoteViews2.setOnClickPendingIntent(R.id.widget_container, activity);
                remoteViews3.setOnClickPendingIntent(R.id.widget_container, activity);
                remoteViews = TypefaceCompat$$ExternalSyntheticApiModelOutline0.m(MapsKt__MapsKt.mapOf(new Pair(new SizeF(32.0f, 32.0f), remoteViews2), new Pair(new SizeF(100.0f, 32.0f), remoteViews3), new Pair(new SizeF(160.0f, 32.0f), remoteViews)));
            }
            appWidgetManager.updateAppWidget(i, remoteViews);
        }
    }
}
