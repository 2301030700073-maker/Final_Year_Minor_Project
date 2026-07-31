package androidx.glance.appwidget;

import android.widget.RemoteViews;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteCollectionItems {
    public static final RemoteCollectionItems Empty = new RemoteCollectionItems(new long[0], new RemoteViews[0], false, 1);
    public final int _viewTypeCount;
    public final boolean hasStableIds;
    public final long[] ids;
    public final RemoteViews[] views;

    public RemoteCollectionItems(long[] jArr, RemoteViews[] remoteViewsArr, boolean z, int i) {
        this.ids = jArr;
        this.views = remoteViewsArr;
        this.hasStableIds = z;
        this._viewTypeCount = i;
        if (jArr.length != remoteViewsArr.length) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("RemoteCollectionItems has different number of ids and views");
            throw null;
        }
        if (i < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("View type count must be >= 1");
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
