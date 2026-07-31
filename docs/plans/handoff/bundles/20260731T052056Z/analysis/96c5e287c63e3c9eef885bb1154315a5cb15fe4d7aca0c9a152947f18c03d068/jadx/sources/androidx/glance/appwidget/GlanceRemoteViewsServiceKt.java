package androidx.glance.appwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.widget.RemoteViews;
import coil3.network.NetworkHeaders;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GlanceRemoteViewsServiceKt {
    public static final void setRemoteAdapter(RemoteViews remoteViews, Context context, int i, int i2, String str, RemoteCollectionItems remoteCollectionItems) {
        if (Build.VERSION.SDK_INT > 31) {
            CollectionItemsApi31Impl.INSTANCE.setRemoteAdapter(remoteViews, i2, remoteCollectionItems);
            return;
        }
        Intent putExtra = new Intent(context, (Class<?>) GlanceRemoteViewsService.class).putExtra("appWidgetId", i).putExtra("androidx.glance.widget.extra.view_id", i2).putExtra("androidx.glance.widget.extra.size_info", str);
        putExtra.setData(Uri.parse(putExtra.toUri(1)));
        if (context.getPackageManager().resolveService(putExtra, 0) == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("GlanceRemoteViewsService could not be resolved, check the app manifest.");
            return;
        }
        remoteViews.setRemoteAdapter(i2, putExtra);
        NetworkHeaders.Builder builder = GlanceRemoteViewsService.InMemoryStore;
        synchronized (builder) {
            builder.data.put(NetworkHeaders.Builder.key(i, i2, str), remoteCollectionItems);
        }
        AppWidgetManager.getInstance(context).notifyAppWidgetViewDataChanged(i, i2);
    }
}
