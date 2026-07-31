package org.maplibre.android.plugins.annotation;

import android.location.Location;
import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.maps.MapLibreMap;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.places.PlacesFragment$$ExternalSyntheticLambda19;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationManager$MapClickResolver implements MapLibreMap.OnMapClickListener, MapLibreMap.OnMapLongClickListener {
    public final /* synthetic */ SymbolManager this$0;

    public AnnotationManager$MapClickResolver(SymbolManager symbolManager) {
        this.this$0 = symbolManager;
    }

    @Override // org.maplibre.android.maps.MapLibreMap.OnMapClickListener
    public final boolean onMapClick(LatLng latLng) {
        Symbol queryMapForFeatures;
        Object obj;
        SymbolManager symbolManager = this.this$0;
        ArrayList arrayList = symbolManager.clickListeners;
        if (arrayList.isEmpty() || (queryMapForFeatures = symbolManager.queryMapForFeatures(symbolManager.maplibreMap.projection.toScreenLocation(latLng))) == null) {
            return false;
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return false;
        }
        PlacesFragment placesFragment = ((PlacesFragment$$ExternalSyntheticLambda19) it.next()).f$0;
        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
        L.d(">>>> clicked: " + queryMapForFeatures.getLatLng().getLatitude() + ", " + queryMapForFeatures.getLatLng().getLongitude());
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("marker_click", "map_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
        Iterator it2 = placesFragment.annotationCache.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((NearbyPage) obj).annotation, queryMapForFeatures)) {
                break;
            }
        }
        NearbyPage nearbyPage = (NearbyPage) obj;
        if (nearbyPage == null) {
            return true;
        }
        PageTitle pageTitle = nearbyPage.pageTitle;
        Location location = new Location("");
        location.setLatitude(queryMapForFeatures.getLatLng().getLatitude());
        location.setLongitude(queryMapForFeatures.getLatLng().getLongitude());
        Symbol symbol = placesFragment.magnifiedMarker;
        if (symbol != null) {
            symbol.jsonObject.addProperty("icon-size", Float.valueOf(1.0f));
            SymbolManager symbolManager2 = placesFragment.symbolManager;
            if (symbolManager2 != null) {
                symbolManager2.update(symbol);
            }
        }
        placesFragment.getViewModel().highlightedPageTitle = null;
        placesFragment.setMagnifiedSymbol(nearbyPage.annotation);
        placesFragment.getViewModel().highlightedPageTitle = pageTitle;
        SymbolManager symbolManager3 = placesFragment.symbolManager;
        if (symbolManager3 != null) {
            symbolManager3.update(nearbyPage.annotation);
        }
        placesFragment.showLinkPreview(pageTitle, location);
        return true;
    }

    @Override // org.maplibre.android.maps.MapLibreMap.OnMapLongClickListener
    public final boolean onMapLongClick(LatLng latLng) {
        SymbolManager symbolManager = this.this$0;
        ArrayList arrayList = symbolManager.longClickListeners;
        if (arrayList.isEmpty() || symbolManager.queryMapForFeatures(symbolManager.maplibreMap.projection.toScreenLocation(latLng)) == null) {
            return false;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
        return false;
    }
}
