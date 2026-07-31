package androidx.glance.appwidget;

import android.util.SizeF;
import android.widget.RemoteViews;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Api31Impl {
    public static final Api31Impl INSTANCE = new Api31Impl();

    public final RemoteViews createRemoteViews(Map<SizeF, ? extends RemoteViews> map) {
        return new RemoteViews((Map<SizeF, RemoteViews>) map);
    }
}
