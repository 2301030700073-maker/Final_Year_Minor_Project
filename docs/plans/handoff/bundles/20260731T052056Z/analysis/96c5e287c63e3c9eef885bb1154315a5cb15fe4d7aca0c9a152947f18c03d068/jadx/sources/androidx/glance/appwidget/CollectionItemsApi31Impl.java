package androidx.glance.appwidget;

import android.widget.RemoteViews;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CollectionItemsApi31Impl {
    public static final CollectionItemsApi31Impl INSTANCE = new CollectionItemsApi31Impl();

    public final void setRemoteAdapter(RemoteViews remoteViews, int i, RemoteCollectionItems remoteCollectionItems) {
        remoteViews.setRemoteAdapter(i, toPlatformCollectionItems(remoteCollectionItems));
    }

    public final RemoteViews.RemoteCollectionItems toPlatformCollectionItems(RemoteCollectionItems remoteCollectionItems) {
        RemoteViews.RemoteCollectionItems.Builder viewTypeCount = new RemoteViews.RemoteCollectionItems.Builder().setHasStableIds(remoteCollectionItems.hasStableIds).setViewTypeCount(remoteCollectionItems._viewTypeCount);
        long[] jArr = remoteCollectionItems.ids;
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            viewTypeCount.addItem(jArr[i], remoteCollectionItems.views[i]);
        }
        return viewTypeCount.build();
    }
}
