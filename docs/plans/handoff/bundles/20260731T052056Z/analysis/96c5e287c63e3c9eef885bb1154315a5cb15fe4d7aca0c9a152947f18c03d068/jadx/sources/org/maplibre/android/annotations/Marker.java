package org.maplibre.android.annotations;

import org.maplibre.android.geometry.LatLng;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Deprecated
/* loaded from: classes.dex */
public class Marker extends Annotation {
    private String iconId;
    public boolean infoWindowShown;
    private LatLng position;

    public final LatLng getPosition() {
        return this.position;
    }

    public final String toString() {
        return "Marker [position[" + this.position + "]]";
    }
}
