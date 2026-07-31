package org.maplibre.android.location;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.navigation.internal.NavContext;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.JsonObject;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okio.Path;
import okio.internal.DefaultSocket;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.location.MapLibreAnimator;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.Style;
import org.maplibre.android.style.expressions.Expression;
import org.maplibre.android.style.layers.Layer;
import org.maplibre.android.style.layers.LayoutPropertyValue;
import org.maplibre.android.style.layers.PaintPropertyValue;
import org.maplibre.android.style.layers.SymbolLayer;
import org.maplibre.android.style.sources.GeoJsonOptions;
import org.maplibre.android.style.sources.GeoJsonSource;
import org.maplibre.geojson.Feature;
import org.maplibre.geojson.Point;
import org.wikipedia.R;
import org.wikipedia.login.LoginClient;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationLayerController {
    public final AnonymousClass1 accuracyValueListener;
    public final NavContext bitmapProvider;
    public final AnonymousClass1 compassBearingValueListener;
    public final AnonymousClass1 gpsBearingValueListener;
    public final LocationComponent.AnonymousClass9 internalRenderModeChangedListener;
    public boolean isHidden = true;
    public boolean isStale;
    public final AnonymousClass1 latLngValueListener;
    public final DefaultSocket locationLayerRenderer;
    public final MapLibreMap maplibreMap;
    public LocationComponentOptions options;
    public MultipartBody.Builder positionManager;
    public final AnonymousClass1 pulsingCircleRadiusListener;
    public int renderMode;

    /* JADX WARN: Type inference failed for: r0v1, types: [org.maplibre.android.location.LocationLayerController$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.maplibre.android.location.LocationLayerController$1] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.maplibre.android.location.LocationLayerController$1] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.maplibre.android.location.LocationLayerController$1] */
    /* JADX WARN: Type inference failed for: r1v1, types: [org.maplibre.android.location.LocationLayerController$1] */
    public LocationLayerController(MapLibreMap mapLibreMap, Style style, LoginClient loginClient, Path.Companion companion, NavContext navContext, LocationComponentOptions locationComponentOptions, LocationComponent.AnonymousClass9 anonymousClass9) {
        final int i = 1;
        final int i2 = 0;
        this.latLngValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationLayerController.1
            public final /* synthetic */ LocationLayerController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i3 = i2;
                LocationLayerController locationLayerController = this.this$0;
                switch (i3) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
                        defaultSocket.getClass();
                        Point fromLngLat = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                        JsonObject properties = ((Feature) defaultSocket.source).properties();
                        if (properties != null) {
                            defaultSocket.source = Feature.fromGeometry(fromLngLat, properties);
                            defaultSocket.refreshSource();
                            break;
                        }
                        break;
                    case 1:
                        locationLayerController.locationLayerRenderer.setGpsBearing((Float) obj);
                        break;
                    case 2:
                        Float f = (Float) obj;
                        DefaultSocket defaultSocket2 = locationLayerController.locationLayerRenderer;
                        defaultSocket2.getClass();
                        f.floatValue();
                        ((Feature) defaultSocket2.source).addNumberProperty("mapbox-property-compass-bearing", f);
                        defaultSocket2.refreshSource();
                        break;
                    case 3:
                        Float f2 = (Float) obj;
                        DefaultSocket defaultSocket3 = locationLayerController.locationLayerRenderer;
                        defaultSocket3.getClass();
                        f2.floatValue();
                        ((Feature) defaultSocket3.source).addNumberProperty("mapbox-property-accuracy-radius", f2);
                        defaultSocket3.refreshSource();
                        break;
                    default:
                        Float f3 = (Float) obj;
                        Float valueOf = locationLayerController.options.pulseFadeEnabled.booleanValue() ? Float.valueOf(1.0f - ((f3.floatValue() / 100.0f) * 3.0f)) : null;
                        DefaultSocket defaultSocket4 = locationLayerController.locationLayerRenderer;
                        ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f3.floatValue()));
                        if (valueOf != null) {
                            ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-opacity", valueOf);
                        }
                        defaultSocket4.refreshSource();
                        break;
                }
            }
        };
        this.gpsBearingValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationLayerController.1
            public final /* synthetic */ LocationLayerController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i3 = i;
                LocationLayerController locationLayerController = this.this$0;
                switch (i3) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
                        defaultSocket.getClass();
                        Point fromLngLat = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                        JsonObject properties = ((Feature) defaultSocket.source).properties();
                        if (properties != null) {
                            defaultSocket.source = Feature.fromGeometry(fromLngLat, properties);
                            defaultSocket.refreshSource();
                            break;
                        }
                        break;
                    case 1:
                        locationLayerController.locationLayerRenderer.setGpsBearing((Float) obj);
                        break;
                    case 2:
                        Float f = (Float) obj;
                        DefaultSocket defaultSocket2 = locationLayerController.locationLayerRenderer;
                        defaultSocket2.getClass();
                        f.floatValue();
                        ((Feature) defaultSocket2.source).addNumberProperty("mapbox-property-compass-bearing", f);
                        defaultSocket2.refreshSource();
                        break;
                    case 3:
                        Float f2 = (Float) obj;
                        DefaultSocket defaultSocket3 = locationLayerController.locationLayerRenderer;
                        defaultSocket3.getClass();
                        f2.floatValue();
                        ((Feature) defaultSocket3.source).addNumberProperty("mapbox-property-accuracy-radius", f2);
                        defaultSocket3.refreshSource();
                        break;
                    default:
                        Float f3 = (Float) obj;
                        Float valueOf = locationLayerController.options.pulseFadeEnabled.booleanValue() ? Float.valueOf(1.0f - ((f3.floatValue() / 100.0f) * 3.0f)) : null;
                        DefaultSocket defaultSocket4 = locationLayerController.locationLayerRenderer;
                        ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f3.floatValue()));
                        if (valueOf != null) {
                            ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-opacity", valueOf);
                        }
                        defaultSocket4.refreshSource();
                        break;
                }
            }
        };
        final int i3 = 2;
        this.compassBearingValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationLayerController.1
            public final /* synthetic */ LocationLayerController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i32 = i3;
                LocationLayerController locationLayerController = this.this$0;
                switch (i32) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
                        defaultSocket.getClass();
                        Point fromLngLat = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                        JsonObject properties = ((Feature) defaultSocket.source).properties();
                        if (properties != null) {
                            defaultSocket.source = Feature.fromGeometry(fromLngLat, properties);
                            defaultSocket.refreshSource();
                            break;
                        }
                        break;
                    case 1:
                        locationLayerController.locationLayerRenderer.setGpsBearing((Float) obj);
                        break;
                    case 2:
                        Float f = (Float) obj;
                        DefaultSocket defaultSocket2 = locationLayerController.locationLayerRenderer;
                        defaultSocket2.getClass();
                        f.floatValue();
                        ((Feature) defaultSocket2.source).addNumberProperty("mapbox-property-compass-bearing", f);
                        defaultSocket2.refreshSource();
                        break;
                    case 3:
                        Float f2 = (Float) obj;
                        DefaultSocket defaultSocket3 = locationLayerController.locationLayerRenderer;
                        defaultSocket3.getClass();
                        f2.floatValue();
                        ((Feature) defaultSocket3.source).addNumberProperty("mapbox-property-accuracy-radius", f2);
                        defaultSocket3.refreshSource();
                        break;
                    default:
                        Float f3 = (Float) obj;
                        Float valueOf = locationLayerController.options.pulseFadeEnabled.booleanValue() ? Float.valueOf(1.0f - ((f3.floatValue() / 100.0f) * 3.0f)) : null;
                        DefaultSocket defaultSocket4 = locationLayerController.locationLayerRenderer;
                        ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f3.floatValue()));
                        if (valueOf != null) {
                            ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-opacity", valueOf);
                        }
                        defaultSocket4.refreshSource();
                        break;
                }
            }
        };
        final int i4 = 3;
        this.accuracyValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationLayerController.1
            public final /* synthetic */ LocationLayerController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i32 = i4;
                LocationLayerController locationLayerController = this.this$0;
                switch (i32) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
                        defaultSocket.getClass();
                        Point fromLngLat = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                        JsonObject properties = ((Feature) defaultSocket.source).properties();
                        if (properties != null) {
                            defaultSocket.source = Feature.fromGeometry(fromLngLat, properties);
                            defaultSocket.refreshSource();
                            break;
                        }
                        break;
                    case 1:
                        locationLayerController.locationLayerRenderer.setGpsBearing((Float) obj);
                        break;
                    case 2:
                        Float f = (Float) obj;
                        DefaultSocket defaultSocket2 = locationLayerController.locationLayerRenderer;
                        defaultSocket2.getClass();
                        f.floatValue();
                        ((Feature) defaultSocket2.source).addNumberProperty("mapbox-property-compass-bearing", f);
                        defaultSocket2.refreshSource();
                        break;
                    case 3:
                        Float f2 = (Float) obj;
                        DefaultSocket defaultSocket3 = locationLayerController.locationLayerRenderer;
                        defaultSocket3.getClass();
                        f2.floatValue();
                        ((Feature) defaultSocket3.source).addNumberProperty("mapbox-property-accuracy-radius", f2);
                        defaultSocket3.refreshSource();
                        break;
                    default:
                        Float f3 = (Float) obj;
                        Float valueOf = locationLayerController.options.pulseFadeEnabled.booleanValue() ? Float.valueOf(1.0f - ((f3.floatValue() / 100.0f) * 3.0f)) : null;
                        DefaultSocket defaultSocket4 = locationLayerController.locationLayerRenderer;
                        ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f3.floatValue()));
                        if (valueOf != null) {
                            ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-opacity", valueOf);
                        }
                        defaultSocket4.refreshSource();
                        break;
                }
            }
        };
        final int i5 = 4;
        this.pulsingCircleRadiusListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationLayerController.1
            public final /* synthetic */ LocationLayerController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i32 = i5;
                LocationLayerController locationLayerController = this.this$0;
                switch (i32) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
                        defaultSocket.getClass();
                        Point fromLngLat = Point.fromLngLat(latLng.getLongitude(), latLng.getLatitude());
                        JsonObject properties = ((Feature) defaultSocket.source).properties();
                        if (properties != null) {
                            defaultSocket.source = Feature.fromGeometry(fromLngLat, properties);
                            defaultSocket.refreshSource();
                            break;
                        }
                        break;
                    case 1:
                        locationLayerController.locationLayerRenderer.setGpsBearing((Float) obj);
                        break;
                    case 2:
                        Float f = (Float) obj;
                        DefaultSocket defaultSocket2 = locationLayerController.locationLayerRenderer;
                        defaultSocket2.getClass();
                        f.floatValue();
                        ((Feature) defaultSocket2.source).addNumberProperty("mapbox-property-compass-bearing", f);
                        defaultSocket2.refreshSource();
                        break;
                    case 3:
                        Float f2 = (Float) obj;
                        DefaultSocket defaultSocket3 = locationLayerController.locationLayerRenderer;
                        defaultSocket3.getClass();
                        f2.floatValue();
                        ((Feature) defaultSocket3.source).addNumberProperty("mapbox-property-accuracy-radius", f2);
                        defaultSocket3.refreshSource();
                        break;
                    default:
                        Float f3 = (Float) obj;
                        Float valueOf = locationLayerController.options.pulseFadeEnabled.booleanValue() ? Float.valueOf(1.0f - ((f3.floatValue() / 100.0f) * 3.0f)) : null;
                        DefaultSocket defaultSocket4 = locationLayerController.locationLayerRenderer;
                        ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-radius", Float.valueOf(f3.floatValue()));
                        if (valueOf != null) {
                            ((Feature) defaultSocket4.source).addNumberProperty("mapbox-property-pulsing-circle-opacity", valueOf);
                        }
                        defaultSocket4.refreshSource();
                        break;
                }
            }
        };
        this.maplibreMap = mapLibreMap;
        this.bitmapProvider = navContext;
        this.internalRenderModeChangedListener = anonymousClass9;
        boolean z = locationComponentOptions.enableStaleState;
        this.isStale = z;
        this.locationLayerRenderer = new DefaultSocket(loginClient, companion, z);
        initializeComponents(style, locationComponentOptions);
    }

    public final void applyStyle(LocationComponentOptions locationComponentOptions) {
        String str;
        MultipartBody.Builder builder = this.positionManager;
        Object obj = locationComponentOptions.layerAbove;
        Object obj2 = locationComponentOptions.layerBelow;
        String str2 = (String) builder.type;
        boolean z = (str2 != obj && (str2 == null || !str2.equals(obj))) || ((str = (String) builder.parts) != obj2 && (str == null || !str.equals(obj2)));
        builder.type = obj;
        builder.parts = obj2;
        DefaultSocket defaultSocket = this.locationLayerRenderer;
        if (z) {
            HashSet hashSet = (HashSet) defaultSocket.closeBits;
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((Style) defaultSocket.socket).removeLayer((String) it.next());
            }
            hashSet.clear();
            defaultSocket.addLayers(this.positionManager);
            if (this.isHidden) {
                this.isHidden = true;
                defaultSocket.hide();
            }
        }
        this.options = locationComponentOptions;
        styleBitmaps(locationComponentOptions);
        float f = locationComponentOptions.accuracyAlpha;
        int i = locationComponentOptions.accuracyColor;
        ((Feature) defaultSocket.source).addNumberProperty("mapbox-property-accuracy-alpha", Float.valueOf(f));
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-accuracy-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(i));
        defaultSocket.refreshSource();
        Expression.Interpolator interpolator = new Expression.Interpolator("linear", new Expression[0]);
        Expression expression = new Expression("zoom", new Expression[0]);
        MapLibreMap mapLibreMap = this.maplibreMap;
        Expression expression2 = new Expression("interpolate", Expression.join(new Expression[]{interpolator, expression}, FormBody.Builder.toExpressionArray(Expression.stop(Double.valueOf(mapLibreMap.getMinZoomLevel()), Float.valueOf(locationComponentOptions.minZoomIconScale)), Expression.stop(Double.valueOf(mapLibreMap.getMaxZoomLevel()), Float.valueOf(locationComponentOptions.maxZoomIconScale)))));
        Iterator it2 = ((HashSet) defaultSocket.closeBits).iterator();
        while (it2.hasNext()) {
            Layer layer = ((Style) defaultSocket.socket).getLayer((String) it2.next());
            if (layer instanceof SymbolLayer) {
                layer.setProperties(new LayoutPropertyValue("icon-size", expression2));
            }
        }
        if (((Style) defaultSocket.socket).getLayer("mapbox-location-pulsing-circle-layer") != null) {
            defaultSocket.setLayerVisibility("mapbox-location-pulsing-circle-layer", true);
            ((Style) defaultSocket.socket).getLayer("mapbox-location-pulsing-circle-layer").setProperties(new PaintPropertyValue("circle-radius", Expression.get("mapbox-property-pulsing-circle-radius")), new PaintPropertyValue("circle-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(locationComponentOptions.pulseColor.intValue())), new PaintPropertyValue("circle-stroke-color", ReadingListFragment.MultiSelectCallback.colorToRgbaString(locationComponentOptions.pulseColor.intValue())), new PaintPropertyValue("circle-opacity", Expression.get("mapbox-property-pulsing-circle-opacity")));
        }
        determineIconsSource(locationComponentOptions);
        if (this.isHidden) {
            return;
        }
        show();
    }

    public final void determineIconsSource(LocationComponentOptions locationComponentOptions) {
        String str = this.renderMode == 8 ? locationComponentOptions.gpsName : locationComponentOptions.foregroundName;
        if (str == null) {
            str = "mapbox-location-icon";
        }
        String str2 = locationComponentOptions.foregroundStaleName;
        if (str2 == null) {
            str2 = "mapbox-location-stale-icon";
        }
        String str3 = locationComponentOptions.backgroundName;
        if (str3 == null) {
            str3 = "mapbox-location-stroke-icon";
        }
        String str4 = locationComponentOptions.backgroundStaleName;
        if (str4 == null) {
            str4 = "mapbox-location-background-stale-icon";
        }
        String str5 = locationComponentOptions.bearingName;
        if (str5 == null) {
            str5 = "mapbox-location-bearing-icon";
        }
        DefaultSocket defaultSocket = this.locationLayerRenderer;
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-foreground-icon", str);
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-background-icon", str3);
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-foreground-stale-icon", str2);
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-background-stale-icon", str4);
        ((Feature) defaultSocket.source).addStringProperty("mapbox-property-shadow-icon", str5);
        defaultSocket.refreshSource();
    }

    public final void initializeComponents(Style style, LocationComponentOptions locationComponentOptions) {
        this.positionManager = new MultipartBody.Builder(style, locationComponentOptions.layerAbove, locationComponentOptions.layerBelow);
        DefaultSocket defaultSocket = this.locationLayerRenderer;
        defaultSocket.socket = style;
        Feature feature = (Feature) defaultSocket.source;
        Boolean bool = Boolean.TRUE;
        GeoJsonOptions geoJsonOptions = new GeoJsonOptions();
        geoJsonOptions.put("maxzoom", 16);
        geoJsonOptions.put("synchronousUpdate", bool);
        GeoJsonSource geoJsonSource = new GeoJsonSource();
        geoJsonSource.initialize("mapbox-location-source", geoJsonOptions);
        geoJsonSource.setGeoJson(feature);
        defaultSocket.sink = geoJsonSource;
        ((Style) defaultSocket.socket).addSource(geoJsonSource);
        defaultSocket.addLayers(this.positionManager);
        applyStyle(locationComponentOptions);
        if (!this.isHidden) {
            show();
        } else {
            this.isHidden = true;
            defaultSocket.hide();
        }
    }

    public final void show() {
        this.isHidden = false;
        int i = this.renderMode;
        boolean z = this.isStale;
        DefaultSocket defaultSocket = this.locationLayerRenderer;
        if (i == 4) {
            defaultSocket.setLayerVisibility("mapbox-location-shadow-layer", true);
            defaultSocket.setLayerVisibility("mapbox-location-foreground-layer", true);
            defaultSocket.setLayerVisibility("mapbox-location-background-layer", true);
            defaultSocket.setLayerVisibility("mapbox-location-accuracy-layer", !z);
            defaultSocket.setLayerVisibility("mapbox-location-bearing-layer", true);
            return;
        }
        if (i == 8) {
            defaultSocket.setLayerVisibility("mapbox-location-shadow-layer", false);
            defaultSocket.setLayerVisibility("mapbox-location-foreground-layer", true);
            defaultSocket.setLayerVisibility("mapbox-location-background-layer", true);
            defaultSocket.setLayerVisibility("mapbox-location-accuracy-layer", false);
            defaultSocket.setLayerVisibility("mapbox-location-bearing-layer", false);
            return;
        }
        if (i != 18) {
            defaultSocket.getClass();
            return;
        }
        defaultSocket.setLayerVisibility("mapbox-location-shadow-layer", true);
        defaultSocket.setLayerVisibility("mapbox-location-foreground-layer", true);
        defaultSocket.setLayerVisibility("mapbox-location-background-layer", true);
        defaultSocket.setLayerVisibility("mapbox-location-accuracy-layer", !z);
        defaultSocket.setLayerVisibility("mapbox-location-bearing-layer", false);
    }

    public final void styleBitmaps(LocationComponentOptions locationComponentOptions) {
        float f = locationComponentOptions.elevation;
        int i = locationComponentOptions.gpsDrawable;
        Integer num = locationComponentOptions.foregroundStaleTintColor;
        Integer num2 = locationComponentOptions.foregroundTintColor;
        NavContext navContext = this.bitmapProvider;
        Bitmap bitmap = null;
        if (f > RecyclerView.DECELERATION_RATE) {
            Drawable drawableFromRes = HttpUrl.Companion.getDrawableFromRes(navContext.context, R.drawable.maplibre_user_icon_shadow, null);
            float f2 = locationComponentOptions.elevation;
            int intrinsicWidth = drawableFromRes.getIntrinsicWidth();
            int intrinsicHeight = drawableFromRes.getIntrinsicHeight();
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawableFromRes.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            try {
                drawableFromRes.draw(canvas);
                int i2 = (int) (intrinsicWidth + f2 + 0.5f);
                if (i2 % 2 == 1) {
                    i2--;
                }
                int i3 = (int) (intrinsicHeight + f2 + 0.5f);
                if (i3 % 2 == 1) {
                    i3--;
                }
                bitmap = Bitmap.createScaledBitmap(createBitmap, i2, i3, false);
            } catch (IllegalArgumentException e) {
                e.getMessage().equals("radius must be > 0");
                throw e;
            }
        }
        Bitmap generateBitmap = navContext.generateBitmap(locationComponentOptions.backgroundDrawable, locationComponentOptions.backgroundTintColor);
        Bitmap generateBitmap2 = navContext.generateBitmap(locationComponentOptions.backgroundDrawableStale, locationComponentOptions.backgroundStaleTintColor);
        Bitmap generateBitmap3 = navContext.generateBitmap(locationComponentOptions.bearingDrawable, locationComponentOptions.bearingTintColor);
        Bitmap generateBitmap4 = navContext.generateBitmap(locationComponentOptions.foregroundDrawable, num2);
        Bitmap generateBitmap5 = navContext.generateBitmap(locationComponentOptions.foregroundDrawableStale, num);
        if (this.renderMode == 8) {
            generateBitmap4 = navContext.generateBitmap(i, num2);
            generateBitmap5 = navContext.generateBitmap(i, num);
        }
        DefaultSocket defaultSocket = this.locationLayerRenderer;
        Style style = (Style) defaultSocket.socket;
        if (bitmap != null) {
            style.addImage("mapbox-location-shadow-icon", bitmap);
        } else {
            style.removeImage("mapbox-location-shadow-icon");
        }
        ((Style) defaultSocket.socket).addImage("mapbox-location-stroke-icon", generateBitmap);
        ((Style) defaultSocket.socket).addImage("mapbox-location-background-stale-icon", generateBitmap2);
        ((Style) defaultSocket.socket).addImage("mapbox-location-bearing-icon", generateBitmap3);
        ((Style) defaultSocket.socket).addImage("mapbox-location-icon", generateBitmap4);
        ((Style) defaultSocket.socket).addImage("mapbox-location-stale-icon", generateBitmap5);
    }
}
