package androidx.glance.appwidget;

import android.widget.RemoteViews;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteViewsTranslatorApi31Impl {
    public static final RemoteViewsTranslatorApi31Impl INSTANCE = new RemoteViewsTranslatorApi31Impl();

    public final void addChildView(RemoteViews remoteViews, int i, RemoteViews remoteViews2, int i2) {
        remoteViews.addStableView(i, remoteViews2, i2);
    }
}
