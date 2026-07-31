package androidx.glance.appwidget;

import android.widget.RemoteViews;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteCollectionItems {
    public static final RemoteCollectionItems Empty = new RemoteCollectionItems(new long[0], new RemoteViews[0], 1);
    public final int _viewTypeCount;
    public final long[] ids;
    public final RemoteViews[] views;

    public RemoteCollectionItems(long[] jArr, RemoteViews[] remoteViewsArr, int i) {
        this.ids = jArr;
        this.views = remoteViewsArr;
        this._viewTypeCount = i;
        if (jArr.length != remoteViewsArr.length) {
            UriKt$$ExternalSyntheticBUOutline0.m("RemoteCollectionItems has different number of ids and views");
            throw null;
        }
        if (i < 1) {
            UriKt$$ExternalSyntheticBUOutline0.m("View type count must be >= 1");
            throw null;
        }
        ArrayList arrayList = new ArrayList(remoteViewsArr.length);
        for (RemoteViews remoteViews : remoteViewsArr) {
            arrayList.add(Integer.valueOf(remoteViews.getLayoutId()));
        }
        int size = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList)).size();
        if (size <= this._viewTypeCount) {
            return;
        }
        throw new IllegalArgumentException(("View type count is set to " + this._viewTypeCount + ", but the collection contains " + size + " different layout ids").toString());
    }
}
