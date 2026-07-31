package org.wikipedia.dataclient.page;

import android.location.Location;
import org.maplibre.android.plugins.annotation.Symbol;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NearbyPage {
    public Symbol annotation = null;
    public final double latitude;
    public final double longitude;
    public final int pageId;
    public final PageTitle pageTitle;

    public NearbyPage(int i, PageTitle pageTitle, double d, double d2) {
        this.pageId = i;
        this.pageTitle = pageTitle;
        this.latitude = d;
        this.longitude = d2;
    }

    public final Location getLocation() {
        Location location = new Location("");
        location.setLatitude(this.latitude);
        location.setLongitude(this.longitude);
        return location;
    }
}
