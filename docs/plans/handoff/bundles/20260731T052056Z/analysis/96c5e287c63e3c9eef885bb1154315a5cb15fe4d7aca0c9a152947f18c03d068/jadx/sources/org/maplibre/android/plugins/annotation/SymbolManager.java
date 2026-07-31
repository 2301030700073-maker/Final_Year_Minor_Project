package org.maplibre.android.plugins.annotation;

import android.graphics.PointF;
import androidx.collection.ArraySetKt;
import androidx.collection.LongSparseArray;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.MultipartBody;
import okio.internal.DefaultSocket;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.Style;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.android.style.layers.PaintPropertyValue;
import org.maplibre.android.style.layers.PropertyValue;
import org.maplibre.android.style.layers.SymbolLayer;
import org.maplibre.android.style.sources.GeoJsonOptions;
import org.maplibre.android.style.sources.GeoJsonSource;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.FeatureCollection;
import org.maplibre.geojson.Point;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SymbolManager {
    public final ArrayList clickListeners;
    public final SymbolElementProvider coreElementProvider;
    public long currentId;
    public final DefaultSocket draggableAnnotationController;
    public GeoJsonSource geoJsonSource;
    public final AtomicBoolean isSourceUpToDate;
    public SymbolLayer layer;
    public final ArrayList longClickListeners;
    public final MapView mapView;
    public final MapLibreMap maplibreMap;
    public Style style;
    public final LongSparseArray annotations = new LongSparseArray((Object) null);
    public final HashMap dataDrivenPropertyUsageMap = new HashMap();
    public final HashMap constantPropertyUsageMap = new HashMap();

    public SymbolManager(MapView mapView, final MapLibreMap mapLibreMap, Style style, SymbolElementProvider symbolElementProvider, DefaultSocket defaultSocket, final GeoJsonOptions geoJsonOptions) {
        new ArrayList();
        this.clickListeners = new ArrayList();
        this.longClickListeners = new ArrayList();
        this.isSourceUpToDate = new AtomicBoolean(true);
        this.mapView = mapView;
        this.maplibreMap = mapLibreMap;
        this.style = style;
        this.coreElementProvider = symbolElementProvider;
        this.draggableAnnotationController = defaultSocket;
        if (!style.fullyLoaded) {
            Gson$$ExternalSyntheticBUOutline0.m$1("The style has to be non-null and fully loaded.");
            throw null;
        }
        AnnotationManager$MapClickResolver annotationManager$MapClickResolver = new AnnotationManager$MapClickResolver(this);
        ((MapView) mapLibreMap.onGesturesManagerInteractionListener.iconMap).mapGestureDetector.onMapClickListenerList.add(annotationManager$MapClickResolver);
        ((MapView) mapLibreMap.onGesturesManagerInteractionListener.iconMap).mapGestureDetector.onMapLongClickListenerList.add(annotationManager$MapClickResolver);
        initializeSourcesAndLayers(geoJsonOptions);
        HashMap hashMap = (HashMap) defaultSocket.sink;
        ((LinkedList) defaultSocket.source).add(0, this);
        hashMap.put(this.layer.getId(), this);
        ((CopyOnWriteArrayList) mapView.mapChangeReceiver.onDidFinishLoadingStyleListenerList).add(new MapView.OnDidFinishLoadingStyleListener() { // from class: org.maplibre.android.plugins.annotation.AnnotationManager$1
            @Override // org.maplibre.android.maps.MapView.OnDidFinishLoadingStyleListener
            public final void onDidFinishLoadingStyle() {
                Style.OnStyleLoaded onStyleLoaded = new Style.OnStyleLoaded() { // from class: org.maplibre.android.plugins.annotation.AnnotationManager$1.1
                    @Override // org.maplibre.android.maps.Style.OnStyleLoaded
                    public final void onStyleLoaded(Style style2) {
                        AnnotationManager$1 annotationManager$1 = AnnotationManager$1.this;
                        SymbolManager symbolManager = SymbolManager.this;
                        symbolManager.style = style2;
                        symbolManager.initializeSourcesAndLayers(geoJsonOptions);
                    }
                };
                MapLibreMap mapLibreMap2 = mapLibreMap;
                Style style2 = mapLibreMap2.style;
                if (style2 == null || !style2.fullyLoaded) {
                    mapLibreMap2.awaitingStyleGetters.add(onStyleLoaded);
                } else {
                    onStyleLoaded.onStyleLoaded(style2);
                }
            }
        });
    }

    public final Symbol create(MultipartBody.Builder builder) {
        JsonArray jsonArray;
        long j = this.currentId;
        if (((Point) builder.boundary) == null) {
            Gson$$ExternalSyntheticBUOutline0.m$1("geometry field is required");
            return null;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("symbol-sort-key", (Number) null);
        jsonObject.addProperty("icon-size", (Number) null);
        jsonObject.addProperty("icon-image", (String) builder.type);
        jsonObject.addProperty("icon-rotate", (Number) null);
        jsonObject.add("icon-offset", null);
        jsonObject.addProperty("icon-anchor", (String) null);
        jsonObject.addProperty("text-field", (String) null);
        String[] strArr = (String[]) builder.parts;
        if (strArr != null) {
            jsonArray = new JsonArray();
            for (String str : strArr) {
                jsonArray.add(str);
            }
        } else {
            jsonArray = null;
        }
        jsonObject.add("text-font", jsonArray);
        jsonObject.addProperty("text-size", (Number) null);
        jsonObject.addProperty("text-max-width", (Number) null);
        jsonObject.addProperty("text-letter-spacing", (Number) null);
        jsonObject.addProperty("text-justify", (String) null);
        jsonObject.addProperty("text-radial-offset", (Number) null);
        jsonObject.addProperty("text-anchor", (String) null);
        jsonObject.addProperty("text-rotate", (Number) null);
        jsonObject.addProperty("text-transform", (String) null);
        jsonObject.add("text-offset", null);
        jsonObject.addProperty("icon-opacity", (Number) null);
        jsonObject.addProperty("icon-color", (String) null);
        jsonObject.addProperty("icon-halo-color", (String) null);
        jsonObject.addProperty("icon-halo-width", (Number) null);
        jsonObject.addProperty("icon-halo-blur", (Number) null);
        jsonObject.addProperty("text-opacity", (Number) null);
        jsonObject.addProperty("text-color", (String) null);
        jsonObject.addProperty("text-halo-color", (String) null);
        jsonObject.addProperty("text-halo-width", (Number) null);
        jsonObject.addProperty("text-halo-blur", (Number) null);
        Symbol symbol = new Symbol(j, this, jsonObject, (Point) builder.boundary);
        jsonObject.add("custom_data", null);
        this.annotations.put(jsonObject.get("id").getAsLong(), symbol);
        this.currentId++;
        updateSource();
        return symbol;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void enableDataDrivenProperty(String str) {
        String str2;
        String str3;
        HashMap hashMap = this.dataDrivenPropertyUsageMap;
        if (((Boolean) hashMap.get(str)).equals(Boolean.FALSE)) {
            hashMap.put(str, Boolean.TRUE);
            String str4 = "icon-rotate";
            String str5 = "text-radial-offset";
            String str6 = "icon-halo-color";
            switch (str.hashCode()) {
                case -2146810373:
                    str2 = "icon-halo-width";
                    str3 = "text-rotate";
                    if (str.equals(str3)) {
                        r23 = 0;
                        break;
                    }
                    break;
                case -2041493401:
                    str2 = "icon-halo-width";
                    str3 = "text-rotate";
                    if (str.equals("icon-offset")) {
                        r23 = 1;
                        break;
                    }
                    break;
                case -1946894033:
                    str2 = "icon-halo-width";
                    r23 = str.equals(str4) ? (char) 2 : (char) 65535;
                    str4 = str4;
                    str3 = "text-rotate";
                    break;
                case -1717422239:
                    str2 = "icon-halo-width";
                    r23 = str.equals(str5) ? (char) 3 : (char) 65535;
                    str5 = str5;
                    str3 = "text-rotate";
                    break;
                case -1708933018:
                    str2 = "icon-halo-width";
                    r23 = str.equals(str6) ? (char) 4 : (char) 65535;
                    str6 = str6;
                    str3 = "text-rotate";
                    break;
                case -1690648887:
                    if (str.equals("icon-halo-width")) {
                        r23 = 5;
                    }
                    str2 = "icon-halo-width";
                    str3 = "text-rotate";
                    break;
                case -1600683761:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-color")) {
                        r23 = 6;
                    }
                    str3 = "text-rotate";
                    break;
                case -1595213049:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-image")) {
                        r23 = 7;
                    }
                    str3 = "text-rotate";
                    break;
                case -1436636971:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-size")) {
                        r23 = '\b';
                    }
                    str3 = "text-rotate";
                    break;
                case -1336352187:
                    str2 = "icon-halo-width";
                    if (str.equals("symbol-sort-key")) {
                        r23 = '\t';
                    }
                    str3 = "text-rotate";
                    break;
                case -1262567732:
                    str2 = "icon-halo-width";
                    if (str.equals("text-transform")) {
                        r23 = '\n';
                    }
                    str3 = "text-rotate";
                    break;
                case -1084154641:
                    str2 = "icon-halo-width";
                    if (str.equals("text-font")) {
                        r23 = 11;
                    }
                    str3 = "text-rotate";
                    break;
                case -1083772767:
                    str2 = "icon-halo-width";
                    if (str.equals("text-size")) {
                        r23 = '\f';
                    }
                    str3 = "text-rotate";
                    break;
                case -888013006:
                    str2 = "icon-halo-width";
                    if (str.equals("text-halo-color")) {
                        r23 = '\r';
                    }
                    str3 = "text-rotate";
                    break;
                case -886443260:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-halo-blur")) {
                        r23 = 14;
                    }
                    str3 = "text-rotate";
                    break;
                case -869728875:
                    str2 = "icon-halo-width";
                    if (str.equals("text-halo-width")) {
                        r23 = 15;
                    }
                    str3 = "text-rotate";
                    break;
                case -483024021:
                    str2 = "icon-halo-width";
                    if (str.equals("text-opacity")) {
                        r23 = 16;
                    }
                    str3 = "text-rotate";
                    break;
                case -465299984:
                    str2 = "icon-halo-width";
                    if (str.equals("text-justify")) {
                        r23 = 17;
                    }
                    str3 = "text-rotate";
                    break;
                case 317300605:
                    str2 = "icon-halo-width";
                    if (str.equals("text-max-width")) {
                        r23 = 18;
                    }
                    str3 = "text-rotate";
                    break;
                case 428355132:
                    str2 = "icon-halo-width";
                    if (str.equals("text-letter-spacing")) {
                        r23 = 19;
                    }
                    str3 = "text-rotate";
                    break;
                case 525511352:
                    str2 = "icon-halo-width";
                    if (str.equals("text-halo-blur")) {
                        r23 = 20;
                    }
                    str3 = "text-rotate";
                    break;
                case 748171971:
                    str2 = "icon-halo-width";
                    if (str.equals("text-color")) {
                        r23 = 21;
                    }
                    str3 = "text-rotate";
                    break;
                case 750756954:
                    str2 = "icon-halo-width";
                    if (str.equals("text-field")) {
                        r23 = 22;
                    }
                    str3 = "text-rotate";
                    break;
                case 1419415223:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-opacity")) {
                        r23 = 23;
                    }
                    str3 = "text-rotate";
                    break;
                case 1660037973:
                    str2 = "icon-halo-width";
                    if (str.equals("text-anchor")) {
                        r23 = 24;
                    }
                    str3 = "text-rotate";
                    break;
                case 1859954313:
                    str2 = "icon-halo-width";
                    if (str.equals("icon-anchor")) {
                        r23 = 25;
                    }
                    str3 = "text-rotate";
                    break;
                case 2053557555:
                    str2 = "icon-halo-width";
                    if (str.equals("text-offset")) {
                        r23 = 26;
                    }
                    str3 = "text-rotate";
                    break;
                default:
                    str2 = "icon-halo-width";
                    str3 = "text-rotate";
                    break;
            }
            switch (r23) {
                case 0:
                    this.layer.setProperties(new LayoutPropertyValue(str3, Expression.get(str3)));
                    break;
                case 1:
                    this.layer.setProperties(new LayoutPropertyValue("icon-offset", Expression.get("icon-offset")));
                    break;
                case 2:
                    this.layer.setProperties(new LayoutPropertyValue(str4, Expression.get(str4)));
                    break;
                case 3:
                    this.layer.setProperties(new LayoutPropertyValue(str5, Expression.get(str5)));
                    break;
                case 4:
                    this.layer.setProperties(new PaintPropertyValue(str6, Expression.get(str6)));
                    break;
                case 5:
                    this.layer.setProperties(new PaintPropertyValue(str2, Expression.get(str2)));
                    break;
                case 6:
                    this.layer.setProperties(new PaintPropertyValue("icon-color", Expression.get("icon-color")));
                    break;
                case 7:
                    this.layer.setProperties(new LayoutPropertyValue("icon-image", Expression.get("icon-image")));
                    break;
                case '\b':
                    this.layer.setProperties(new LayoutPropertyValue("icon-size", Expression.get("icon-size")));
                    break;
                case '\t':
                    this.layer.setProperties(new LayoutPropertyValue("symbol-sort-key", Expression.get("symbol-sort-key")));
                    break;
                case '\n':
                    this.layer.setProperties(new LayoutPropertyValue("text-transform", Expression.get("text-transform")));
                    break;
                case 11:
                    this.layer.setProperties(new LayoutPropertyValue("text-font", Expression.get("text-font")));
                    break;
                case '\f':
                    this.layer.setProperties(new LayoutPropertyValue("text-size", Expression.get("text-size")));
                    break;
                case IMAGE_VALUE:
                    this.layer.setProperties(new PaintPropertyValue("text-halo-color", Expression.get("text-halo-color")));
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    this.layer.setProperties(new PaintPropertyValue("icon-halo-blur", Expression.get("icon-halo-blur")));
                    break;
                case 15:
                    this.layer.setProperties(new PaintPropertyValue("text-halo-width", Expression.get("text-halo-width")));
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    this.layer.setProperties(new PaintPropertyValue("text-opacity", Expression.get("text-opacity")));
                    break;
                case VERTICAL_GRID_ITEM_VALUE:
                    this.layer.setProperties(new LayoutPropertyValue("text-justify", Expression.get("text-justify")));
                    break;
                case RADIO_GROUP_VALUE:
                    this.layer.setProperties(new LayoutPropertyValue("text-max-width", Expression.get("text-max-width")));
                    break;
                case RADIO_BUTTON_VALUE:
                    this.layer.setProperties(new LayoutPropertyValue("text-letter-spacing", Expression.get("text-letter-spacing")));
                    break;
                case RADIO_ROW_VALUE:
                    this.layer.setProperties(new PaintPropertyValue("text-halo-blur", Expression.get("text-halo-blur")));
                    break;
                case RADIO_COLUMN_VALUE:
                    this.layer.setProperties(new PaintPropertyValue("text-color", Expression.get("text-color")));
                    break;
                case SIZE_BOX_VALUE:
                    this.layer.setProperties(new LayoutPropertyValue("text-field", Expression.get("text-field")));
                    break;
                case 23:
                    this.layer.setProperties(new PaintPropertyValue("icon-opacity", Expression.get("icon-opacity")));
                    break;
                case 24:
                    this.layer.setProperties(new LayoutPropertyValue("text-anchor", Expression.get("text-anchor")));
                    break;
                case 25:
                    this.layer.setProperties(new LayoutPropertyValue("icon-anchor", Expression.get("icon-anchor")));
                    break;
                case 26:
                    this.layer.setProperties(new LayoutPropertyValue("text-offset", Expression.get("text-offset")));
                    break;
            }
        }
    }

    public final void initializeSourcesAndLayers(GeoJsonOptions geoJsonOptions) {
        SymbolElementProvider symbolElementProvider = this.coreElementProvider;
        symbolElementProvider.getClass();
        String str = symbolElementProvider.sourceId;
        GeoJsonSource geoJsonSource = new GeoJsonSource();
        geoJsonSource.initialize(str, geoJsonOptions);
        geoJsonSource.setGeoJson(FeatureCollection.fromFeatures(new ArrayList()));
        this.geoJsonSource = geoJsonSource;
        this.layer = new SymbolLayer(symbolElementProvider.layerId, str);
        this.style.addSource(this.geoJsonSource);
        this.style.addLayer(this.layer);
        Boolean bool = Boolean.FALSE;
        HashMap hashMap = this.dataDrivenPropertyUsageMap;
        hashMap.put("symbol-sort-key", bool);
        hashMap.put("icon-size", bool);
        hashMap.put("icon-image", bool);
        hashMap.put("icon-rotate", bool);
        hashMap.put("icon-offset", bool);
        hashMap.put("icon-anchor", bool);
        hashMap.put("text-field", bool);
        hashMap.put("text-font", bool);
        hashMap.put("text-size", bool);
        hashMap.put("text-max-width", bool);
        hashMap.put("text-letter-spacing", bool);
        hashMap.put("text-justify", bool);
        hashMap.put("text-radial-offset", bool);
        hashMap.put("text-anchor", bool);
        hashMap.put("text-rotate", bool);
        hashMap.put("text-transform", bool);
        hashMap.put("text-offset", bool);
        hashMap.put("icon-opacity", bool);
        hashMap.put("icon-color", bool);
        hashMap.put("icon-halo-color", bool);
        hashMap.put("icon-halo-width", bool);
        hashMap.put("icon-halo-blur", bool);
        hashMap.put("text-opacity", bool);
        hashMap.put("text-color", bool);
        hashMap.put("text-halo-color", bool);
        hashMap.put("text-halo-width", bool);
        hashMap.put("text-halo-blur", bool);
        this.layer.setProperties((PropertyValue[]) this.constantPropertyUsageMap.values().toArray(new PropertyValue[0]));
        updateSource();
    }

    public final Symbol queryMapForFeatures(PointF pointF) {
        List queryRenderedFeatures = this.maplibreMap.queryRenderedFeatures(pointF, this.coreElementProvider.layerId);
        if (queryRenderedFeatures.isEmpty()) {
            return null;
        }
        return (Symbol) this.annotations.get(((Feature) queryRenderedFeatures.get(0)).getProperty("id").getAsLong());
    }

    public final void update(Symbol symbol) {
        LongSparseArray longSparseArray = this.annotations;
        int i = 0;
        if (longSparseArray.garbage) {
            int i2 = longSparseArray.size;
            long[] jArr = longSparseArray.keys;
            Object[] objArr = longSparseArray.values;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != ArraySetKt.DELETED) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            longSparseArray.garbage = false;
            longSparseArray.size = i3;
        }
        int i5 = longSparseArray.size;
        while (true) {
            if (i >= i5) {
                i = -1;
                break;
            } else if (longSparseArray.values[i] == symbol) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            longSparseArray.put(symbol.jsonObject.get("id").getAsLong(), symbol);
            updateSource();
        } else {
            Logger.e("AnnotationManager", "Can't update annotation: " + symbol.toString() + ", the annotation isn't active annotation.");
        }
    }

    public final void updateSource() {
        if (this.isSourceUpToDate.compareAndSet(true, false)) {
            this.mapView.post(new Task$$ExternalSyntheticLambda0(28, this));
        }
    }
}
