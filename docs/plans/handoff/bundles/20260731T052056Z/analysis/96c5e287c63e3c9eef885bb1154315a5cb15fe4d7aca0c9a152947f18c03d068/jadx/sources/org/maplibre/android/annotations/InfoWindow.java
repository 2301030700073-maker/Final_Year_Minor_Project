package org.maplibre.android.annotations;

import android.graphics.PointF;
import android.view.View;
import java.lang.ref.WeakReference;
import org.maplibre.android.maps.MapLibreMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InfoWindow {
    public PointF coordinates;
    public WeakReference maplibreMap;

    public abstract void close();

    public abstract void initialize(View view, MapLibreMap mapLibreMap);
}
