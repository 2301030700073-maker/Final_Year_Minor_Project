package org.maplibre.android.maps;

import android.animation.Animator;
import android.app.AlertDialog;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PointF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.HttpException;
import com.hcaptcha.sdk.HCaptcha;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.text.UStringsKt;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.MapLibre;
import org.maplibre.android.annotations.Annotation;
import org.maplibre.android.annotations.Marker;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.renderer.MapRenderer;
import org.maplibre.android.maps.widgets.CompassView;
import org.maplibre.android.net.ConnectivityReceiver;
import org.maplibre.android.storage.FileSource;
import org.maplibre.android.style.layers.CannotAddLayerException;
import org.maplibre.android.style.sources.CannotAddSourceException;
import org.maplibre.android.style.sources.Source;
import org.wikipedia.R;
import org.wikipedia.util.TabUtil;
import timber.log.Timber;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class MapView extends FrameLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public AnonymousClass3 attributionClickListener;
    public final CameraChangeDispatcher cameraDispatcher;
    public CompassView compassView;
    public boolean destroyed;
    public final FocalPointInvalidator focalInvalidator;
    public PointF focalPoint;
    public final InitialRenderCallback initialRenderCallback;
    public boolean isStarted;
    public final MapCallback mapCallback;
    public final MapChangeReceiver mapChangeReceiver;
    public MapGestureDetector mapGestureDetector;
    public Style.Builder mapKeyListener;
    public MapRenderer mapRenderer;
    public MapLibreMap maplibreMap;
    public MapLibreMapOptions maplibreMapOptions;
    public NativeMap nativeMapView;
    public final IconManager registerTouchListener;
    public View renderView;
    public Bundle savedInstanceState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.MapView$4, reason: invalid class name */
    public final class AnonymousClass4 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass4(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    final MapView mapView = (MapView) obj;
                    if (mapView.destroyed || mapView.maplibreMap != null) {
                        return;
                    }
                    Context context = mapView.getContext();
                    FocalPointInvalidator focalPointInvalidator = mapView.focalInvalidator;
                    focalPointInvalidator.focalPointChangeListeners.add(new FocalPointChangeListener() { // from class: org.maplibre.android.maps.MapView.1
                        @Override // org.maplibre.android.maps.FocalPointChangeListener
                        public final void onFocalPointChanged(PointF pointF) {
                            MapView.this.focalPoint = pointF;
                        }
                    });
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2(mapView.nativeMapView, mapView);
                    UiSettings uiSettings = new UiSettings(anonymousClass2, focalPointInvalidator, mapView.getPixelRatio(), mapView);
                    LongSparseArray longSparseArray = new LongSparseArray((Object) null);
                    IconManager iconManager = new IconManager(mapView.nativeMapView);
                    NativeMap nativeMap = mapView.nativeMapView;
                    HCaptcha hCaptcha = new HCaptcha(mapView, longSparseArray, iconManager, new IconManager(longSparseArray), new MultipartBody.Builder(nativeMap, longSparseArray, iconManager), new AnonymousClass2(nativeMap, longSparseArray));
                    Transform transform = new Transform(mapView, mapView.nativeMapView, mapView.cameraDispatcher);
                    ArrayList arrayList = new ArrayList();
                    MapLibreMap mapLibreMap = new MapLibreMap(mapView.nativeMapView, transform, uiSettings, anonymousClass2, mapView.registerTouchListener, mapView.cameraDispatcher, arrayList);
                    mapView.maplibreMap = mapLibreMap;
                    hCaptcha.handler = mapLibreMap;
                    mapLibreMap.annotationManager = hCaptcha;
                    MapGestureDetector mapGestureDetector = new MapGestureDetector(context, transform, anonymousClass2, uiSettings, hCaptcha, mapView.cameraDispatcher);
                    mapView.mapGestureDetector = mapGestureDetector;
                    mapView.mapKeyListener = new Style.Builder(transform, uiSettings, mapGestureDetector);
                    MapLibreMap mapLibreMap2 = mapView.maplibreMap;
                    mapLibreMap2.locationComponent = new LocationComponent(mapLibreMap2, transform, arrayList);
                    mapView.setClickable(true);
                    mapView.setLongClickable(true);
                    mapView.setFocusable(true);
                    mapView.setFocusableInTouchMode(true);
                    mapView.requestDisallowInterceptTouchEvent(true);
                    ((NativeMapView) mapView.nativeMapView).setReachability(MapLibre.isConnected().booleanValue());
                    Bundle bundle = mapView.savedInstanceState;
                    MapLibreMap mapLibreMap3 = mapView.maplibreMap;
                    if (bundle == null) {
                        MapLibreMapOptions mapLibreMapOptions = mapView.maplibreMapOptions;
                        NativeMap nativeMap2 = mapLibreMap3.nativeMapView;
                        NativeMap nativeMap3 = mapLibreMap3.nativeMapView;
                        Transform transform2 = mapLibreMap3.transform;
                        NativeMap nativeMap4 = transform2.nativeMap;
                        CameraPosition cameraPosition = mapLibreMapOptions.cameraPosition;
                        if (cameraPosition != null && !cameraPosition.equals(CameraPosition.DEFAULT)) {
                            transform2.moveCamera(mapLibreMap3, TabUtil.newCameraPosition(cameraPosition), null);
                        }
                        double d = mapLibreMapOptions.minZoom;
                        if (d < 0.0d || d > 25.5d) {
                            Logger.e("Mbgl-Transform", "Not setting minZoomPreference, value is in unsupported range: " + d);
                        } else {
                            ((NativeMapView) nativeMap4).setMinZoom(d);
                        }
                        transform2.setMaxZoom(mapLibreMapOptions.maxZoom);
                        double d2 = mapLibreMapOptions.minPitch;
                        if (d2 < 0.0d || d2 > 60.0d) {
                            Logger.e("Mbgl-Transform", "Not setting minPitchPreference, value is in unsupported range: " + d2);
                        } else {
                            ((NativeMapView) nativeMap4).setMinPitch(d2);
                        }
                        double d3 = mapLibreMapOptions.maxPitch;
                        if (d3 < 0.0d || d3 > 60.0d) {
                            Logger.e("Mbgl-Transform", "Not setting maxPitchPreference, value is in unsupported range: " + d3);
                        } else {
                            ((NativeMapView) nativeMap4).setMaxPitch(d3);
                        }
                        UiSettings uiSettings2 = mapLibreMap3.uiSettings;
                        Resources resources = context.getResources();
                        uiSettings2.zoomGesturesEnabled = mapLibreMapOptions.zoomGesturesEnabled;
                        uiSettings2.scrollGesturesEnabled = mapLibreMapOptions.scrollGesturesEnabled;
                        uiSettings2.horizontalScrollGesturesEnabled = mapLibreMapOptions.horizontalScrollGesturesEnabled;
                        uiSettings2.rotateGesturesEnabled = mapLibreMapOptions.rotateGesturesEnabled;
                        uiSettings2.tiltGesturesEnabled = mapLibreMapOptions.tiltGesturesEnabled;
                        uiSettings2.doubleTapGesturesEnabled = mapLibreMapOptions.doubleTapGesturesEnabled;
                        uiSettings2.quickZoomGesturesEnabled = mapLibreMapOptions.quickZoomGesturesEnabled;
                        if (mapLibreMapOptions.compassEnabled) {
                            uiSettings2.initialiseCompass(mapLibreMapOptions, resources);
                        }
                        if (mapLibreMapOptions.logoEnabled) {
                            uiSettings2.initialiseLogo(mapLibreMapOptions, resources);
                        }
                        if (mapLibreMapOptions.attributionEnabled) {
                            uiSettings2.initialiseAttribution(context, mapLibreMapOptions);
                        }
                        boolean z = mapLibreMapOptions.debugActive;
                        mapLibreMap3.debugActive = z;
                        NativeMapView nativeMapView = (NativeMapView) nativeMap2;
                        nativeMapView.setDebug(z);
                        String str = mapLibreMapOptions.apiBaseUri;
                        if (!TextUtils.isEmpty(str) && !nativeMapView.checkState("setApiBaseUrl")) {
                            nativeMapView.fileSource.setApiBaseUrl(str);
                        }
                        if (mapLibreMapOptions.prefetchesTiles) {
                            ((NativeMapView) nativeMap3).setPrefetchZoomDelta(mapLibreMapOptions.prefetchZoomDelta);
                        } else {
                            ((NativeMapView) nativeMap3).setPrefetchZoomDelta(0);
                        }
                    } else {
                        mapLibreMap3.getClass();
                        CameraPosition cameraPosition2 = (CameraPosition) bundle.getParcelable("maplibre_cameraPosition");
                        UiSettings uiSettings3 = mapLibreMap3.uiSettings;
                        uiSettings3.horizontalScrollGesturesEnabled = bundle.getBoolean("maplibre_horizontalScrollEnabled");
                        uiSettings3.zoomGesturesEnabled = bundle.getBoolean("maplibre_zoomEnabled");
                        uiSettings3.scrollGesturesEnabled = bundle.getBoolean("maplibre_scrollEnabled");
                        uiSettings3.rotateGesturesEnabled = bundle.getBoolean("maplibre_rotateEnabled");
                        uiSettings3.tiltGesturesEnabled = bundle.getBoolean("maplibre_tiltEnabled");
                        uiSettings3.doubleTapGesturesEnabled = bundle.getBoolean("maplibre_doubleTapEnabled");
                        uiSettings3.scaleVelocityAnimationEnabled = bundle.getBoolean("maplibre_scaleAnimationEnabled");
                        uiSettings3.rotateVelocityAnimationEnabled = bundle.getBoolean("maplibre_rotateAnimationEnabled");
                        uiSettings3.flingVelocityAnimationEnabled = bundle.getBoolean("maplibre_flingAnimationEnabled");
                        uiSettings3.increaseRotateThresholdWhenScaling = bundle.getBoolean("maplibre_increaseRotateThreshold");
                        uiSettings3.disableRotateWhenScaling = bundle.getBoolean("maplibre_disableRotateWhenScaling");
                        uiSettings3.increaseScaleThresholdWhenRotating = bundle.getBoolean("maplibre_increaseScaleThreshold");
                        uiSettings3.quickZoomGesturesEnabled = bundle.getBoolean("maplibre_quickZoom");
                        uiSettings3.zoomRate = bundle.getFloat("maplibre_zoomRate", 1.0f);
                        MapView mapView2 = uiSettings3.mapView;
                        if (bundle.getBoolean("maplibre_compassEnabled") && !uiSettings3.isCompassInitialized) {
                            uiSettings3.compassView = mapView2.initialiseCompassView();
                            uiSettings3.isCompassInitialized = true;
                        }
                        uiSettings3.setCompassEnabled(bundle.getBoolean("maplibre_compassEnabled"));
                        int i2 = bundle.getInt("maplibre_compassGravity");
                        CompassView compassView = uiSettings3.compassView;
                        if (compassView != null) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) compassView.getLayoutParams();
                            layoutParams.gravity = i2;
                            compassView.setLayoutParams(layoutParams);
                        }
                        int i3 = bundle.getInt("maplibre_compassMarginLeft");
                        int i4 = bundle.getInt("maplibre_compassMarginTop");
                        int i5 = bundle.getInt("maplibre_compassMarginRight");
                        int i6 = bundle.getInt("maplibre_compassMarginBottom");
                        CompassView compassView2 = uiSettings3.compassView;
                        if (compassView2 != null) {
                            UiSettings.setWidgetMargins(i3, i4, i5, i6, compassView2, uiSettings3.compassMargins);
                        }
                        boolean z2 = bundle.getBoolean("maplibre_compassFade");
                        CompassView compassView3 = uiSettings3.compassView;
                        if (compassView3 != null) {
                            compassView3.fadeCompassViewFacingNorth = z2;
                        }
                        Context context2 = mapView2.getContext();
                        byte[] byteArray = bundle.getByteArray("maplibre_compassImage");
                        BitmapDrawable bitmapDrawable = byteArray == null ? null : new BitmapDrawable(context2.getResources(), BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length));
                        CompassView compassView4 = uiSettings3.compassView;
                        if (compassView4 != null) {
                            compassView4.setCompassImage(bitmapDrawable);
                        }
                        if (bundle.getBoolean("maplibre_logoEnabled") && !uiSettings3.isLogoInitialized) {
                            uiSettings3.logoView = mapView2.initialiseLogoView();
                            uiSettings3.isLogoInitialized = true;
                        }
                        uiSettings3.setLogoEnabled(bundle.getBoolean("maplibre_logoEnabled"));
                        int i7 = bundle.getInt("maplibre_logoGravity");
                        ImageView imageView = uiSettings3.logoView;
                        if (imageView != null) {
                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) imageView.getLayoutParams();
                            layoutParams2.gravity = i7;
                            imageView.setLayoutParams(layoutParams2);
                        }
                        int i8 = bundle.getInt("maplibre_logoMarginLeft");
                        int i9 = bundle.getInt("maplibre_logoMarginTop");
                        int i10 = bundle.getInt("maplibre_logoMarginRight");
                        int i11 = bundle.getInt("maplibre_logoMarginBottom");
                        ImageView imageView2 = uiSettings3.logoView;
                        if (imageView2 != null) {
                            UiSettings.setWidgetMargins(i8, i9, i10, i11, imageView2, uiSettings3.logoMargins);
                        }
                        if (bundle.getBoolean("maplibre_atrrEnabled") && !uiSettings3.isAttributionInitialized) {
                            uiSettings3.attributionsView = mapView2.initialiseAttributionView();
                            uiSettings3.isAttributionInitialized = true;
                        }
                        uiSettings3.setAttributionEnabled(bundle.getBoolean("maplibre_atrrEnabled"));
                        int i12 = bundle.getInt("maplibre_attrGravity");
                        ImageView imageView3 = uiSettings3.attributionsView;
                        if (imageView3 != null) {
                            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) imageView3.getLayoutParams();
                            layoutParams3.gravity = i12;
                            imageView3.setLayoutParams(layoutParams3);
                        }
                        uiSettings3.setAttributionMargins(bundle.getInt("maplibre_attrMarginLeft"), bundle.getInt("maplibre_attrMarginTop"), bundle.getInt("maplibre_attrMarginRight"), bundle.getInt("maplibre_atrrMarginBottom"));
                        uiSettings3.deselectMarkersOnTap = bundle.getBoolean("maplibre_deselectMarkerOnTap");
                        PointF pointF = (PointF) bundle.getParcelable("maplibre_userFocalPoint");
                        if (pointF != null) {
                            uiSettings3.userProvidedFocalPoint = pointF;
                            uiSettings3.focalPointChangeListener.onFocalPointChanged(pointF);
                        }
                        if (cameraPosition2 != null) {
                            CameraUpdateFactory$CameraPositionUpdate newCameraPosition = TabUtil.newCameraPosition(new CameraPosition(cameraPosition2.target, cameraPosition2.zoom, cameraPosition2.tilt, cameraPosition2.bearing, cameraPosition2.padding));
                            mapLibreMap3.notifyDeveloperAnimationListeners();
                            mapLibreMap3.transform.moveCamera(mapLibreMap3, newCameraPosition, null);
                        }
                        ((NativeMapView) mapLibreMap3.nativeMapView).setDebug(bundle.getBoolean("maplibre_debugActive"));
                    }
                    MapCallback mapCallback = mapView.mapCallback;
                    MapView mapView3 = MapView.this;
                    MapLibreMap mapLibreMap4 = mapView3.maplibreMap;
                    mapLibreMap4.transform.invalidateCameraPosition();
                    MultipartBody.Builder builder = (MultipartBody.Builder) mapLibreMap4.annotationManager.internalConfig;
                    NativeMap nativeMap5 = (NativeMap) builder.boundary;
                    LongSparseArray longSparseArray2 = (LongSparseArray) builder.type;
                    Iterator it = ((HashMap) ((IconManager) builder.parts).iconMap).keySet().iterator();
                    if (it.hasNext()) {
                        throw Modifier.CC.m(it);
                    }
                    int size = longSparseArray2.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        Annotation annotation = (Annotation) longSparseArray2.get(i13);
                        if (annotation instanceof Marker) {
                            Marker marker = (Marker) annotation;
                            long j = annotation.id;
                            NativeMapView nativeMapView2 = (NativeMapView) nativeMap5;
                            nativeMapView2.removeAnnotation(j);
                            marker.id = nativeMapView2.addMarker(marker);
                        }
                    }
                    HCaptcha hCaptcha2 = mapLibreMap4.annotationManager;
                    LongSparseArray longSparseArray3 = (LongSparseArray) hCaptcha2.onFailureListeners;
                    int size2 = longSparseArray3.size();
                    for (int i14 = 0; i14 < size2; i14++) {
                        if (((Annotation) longSparseArray3.get(i14)) instanceof Marker) {
                            throw null;
                        }
                    }
                    Iterator it2 = ((ArrayList) hCaptcha2.onOpenListeners).iterator();
                    while (it2.hasNext()) {
                        if (((Marker) it2.next()).infoWindowShown) {
                            throw null;
                        }
                    }
                    ArrayList arrayList2 = mapCallback.onMapReadyCallbackList;
                    if (arrayList2.size() > 0) {
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            OnMapReadyCallback onMapReadyCallback = (OnMapReadyCallback) it3.next();
                            if (onMapReadyCallback != null) {
                                onMapReadyCallback.onMapReady(mapView3.maplibreMap);
                            }
                            it3.remove();
                        }
                    }
                    mapView3.maplibreMap.transform.invalidateCameraPosition();
                    MapLibreMap mapLibreMap5 = mapView.maplibreMap;
                    mapLibreMap5.started = true;
                    LocationComponent locationComponent = mapLibreMap5.locationComponent;
                    locationComponent.isComponentStarted = true;
                    locationComponent.onLocationLayerStart();
                    return;
                default:
                    ((MapGestureDetector) obj).cancelAnimators();
                    return;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FocalPointInvalidator implements FocalPointChangeListener {
        public final ArrayList focalPointChangeListeners = new ArrayList();

        public FocalPointInvalidator() {
        }

        @Override // org.maplibre.android.maps.FocalPointChangeListener
        public final void onFocalPointChanged(PointF pointF) {
            PointF pointF2;
            MapGestureDetector mapGestureDetector = MapView.this.mapGestureDetector;
            if (pointF != null || (pointF2 = mapGestureDetector.uiSettings.userProvidedFocalPoint) == null) {
                pointF2 = pointF;
            }
            mapGestureDetector.constantFocalPoint = pointF2;
            Iterator it = this.focalPointChangeListeners.iterator();
            while (it.hasNext()) {
                ((FocalPointChangeListener) it.next()).onFocalPointChanged(pointF);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InitialRenderCallback implements OnDidFinishRenderingFrameWithStatsListener {
        public int renderCount;

        public InitialRenderCallback() {
            ((CopyOnWriteArrayList) MapView.this.mapChangeReceiver.onDidFinishRenderingFrameWithStatsList).add(this);
        }

        @Override // org.maplibre.android.maps.MapView.OnDidFinishRenderingFrameWithStatsListener
        public final void onDidFinishRenderingFrame() {
            MapView mapView = MapView.this;
            MapLibreMap mapLibreMap = mapView.maplibreMap;
            if (mapLibreMap == null || mapLibreMap.getStyle() == null || !mapView.maplibreMap.getStyle().fullyLoaded) {
                return;
            }
            int i = this.renderCount + 1;
            this.renderCount = i;
            if (i == 3) {
                mapView.setForeground(null);
                ((CopyOnWriteArrayList) mapView.mapChangeReceiver.onDidFinishRenderingFrameWithStatsList).remove(this);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MapCallback implements OnDidFinishLoadingStyleListener, OnDidFinishRenderingFrameWithStatsListener, OnCameraDidChangeListener {
        public final ArrayList onMapReadyCallbackList = new ArrayList();

        public MapCallback() {
            MapChangeReceiver mapChangeReceiver = MapView.this.mapChangeReceiver;
            ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingStyleListenerList).add(this);
            ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingFrameWithStatsList).add(this);
            ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingMapListenerList).add(this);
            ((CopyOnWriteArrayList) mapChangeReceiver.onCameraIsChangingListenerList).add(this);
            ((CopyOnWriteArrayList) mapChangeReceiver.onCameraDidChangeListenerList).add(this);
            ((CopyOnWriteArrayList) mapChangeReceiver.onDidFailLoadingMapListenerList).add(this);
        }

        @Override // org.maplibre.android.maps.MapView.OnCameraDidChangeListener
        public final void onCameraDidChange(boolean z) {
            MapLibreMap mapLibreMap = MapView.this.maplibreMap;
            if (mapLibreMap != null) {
                mapLibreMap.onUpdateRegionChange();
            }
        }

        @Override // org.maplibre.android.maps.MapView.OnDidFinishLoadingStyleListener
        public final void onDidFinishLoadingStyle() {
            Iterator it;
            MapLibreMap mapLibreMap = MapView.this.maplibreMap;
            if (mapLibreMap != null) {
                ArrayList arrayList = mapLibreMap.awaitingStyleGetters;
                if (((NativeMapView) mapLibreMap.nativeMapView).destroyed) {
                    return;
                }
                Style style = mapLibreMap.style;
                if (style != null) {
                    Style.Builder builder = style.builder;
                    if (!style.fullyLoaded) {
                        style.fullyLoaded = true;
                        Iterator it2 = ((ArrayList) builder.sources).iterator();
                        while (it2.hasNext()) {
                            try {
                                style.addSource((Source) it2.next());
                            } catch (CannotAddSourceException e) {
                                Logger.e("Style", "Failed to add source", e);
                            }
                        }
                        try {
                            it = ((ArrayList) builder.layers).iterator();
                        } catch (CannotAddLayerException e2) {
                            Logger.e("Style", "Failed to add layer", e2);
                        }
                        if (it.hasNext()) {
                            it.next().getClass();
                            throw new ClassCastException();
                        }
                        Iterator it3 = ((ArrayList) builder.images).iterator();
                        while (it3.hasNext()) {
                            ((Style.Builder.ImageWrapper) it3.next()).getClass();
                            style.addImage(null, null);
                        }
                    }
                    LocationComponent locationComponent = mapLibreMap.locationComponent;
                    if (locationComponent.isComponentInitialized) {
                        locationComponent.locationLayerController.initializeComponents(locationComponent.maplibreMap.getStyle(), locationComponent.options);
                        locationComponent.locationCameraController.initializeOptions(locationComponent.options);
                        locationComponent.onLocationLayerStart();
                    }
                    Style.OnStyleLoaded onStyleLoaded = mapLibreMap.styleLoadedCallback;
                    if (onStyleLoaded != null) {
                        onStyleLoaded.onStyleLoaded(mapLibreMap.style);
                    }
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        ((Style.OnStyleLoaded) it4.next()).onStyleLoaded(mapLibreMap.style);
                    }
                } else if (UStringsKt.strictModeEnabled) {
                    throw new HttpException("No style to provide.");
                }
                mapLibreMap.styleLoadedCallback = null;
                arrayList.clear();
            }
        }

        @Override // org.maplibre.android.maps.MapView.OnDidFinishRenderingFrameWithStatsListener
        public final void onDidFinishRenderingFrame() {
            CameraPosition invalidateCameraPosition;
            MapLibreMap mapLibreMap = MapView.this.maplibreMap;
            if (mapLibreMap == null || (invalidateCameraPosition = mapLibreMap.transform.invalidateCameraPosition()) == null) {
                return;
            }
            UiSettings uiSettings = mapLibreMap.uiSettings;
            double d = -invalidateCameraPosition.bearing;
            uiSettings.clockwiseBearing = d;
            CompassView compassView = uiSettings.compassView;
            if (compassView != null) {
                compassView.update(d);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnCameraDidChangeListener {
        void onCameraDidChange(boolean z);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnDidFinishLoadingStyleListener {
        void onDidFinishLoadingStyle();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnDidFinishRenderingFrameWithStatsListener {
        void onDidFinishRenderingFrame();
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mapChangeReceiver = new MapChangeReceiver();
        this.mapCallback = new MapCallback();
        this.initialRenderCallback = new InitialRenderCallback();
        this.focalInvalidator = new FocalPointInvalidator();
        this.registerTouchListener = new IconManager(this);
        this.cameraDispatcher = new CameraChangeDispatcher();
        Timber.Forest.getClass();
        Timber.Forest.d(new Object[0]);
        initialize(context, MapLibreMapOptions.createFromAttributes(context, attributeSet));
    }

    public static void setMapStrictModeEnabled(boolean z) {
        synchronized (UStringsKt.class) {
            UStringsKt.strictModeEnabled = z;
        }
    }

    public MapLibreMap getMapLibreMap() {
        return this.maplibreMap;
    }

    public float getPixelRatio() {
        float f = this.maplibreMapOptions.pixelRatio;
        return f == RecyclerView.DECELERATION_RATE ? getResources().getDisplayMetrics().density : f;
    }

    public View getRenderView() {
        return this.renderView;
    }

    public MapRenderer.RenderingRefreshMode getRenderingRefreshMode() {
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            return mapRenderer.getRenderingRefreshMode();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Calling MapView#getRenderingRefreshMode before mapRenderer is created.");
        return null;
    }

    public Bitmap getViewContent() {
        setDrawingCacheEnabled(true);
        setDrawingCacheQuality(524288);
        buildDrawingCache();
        if (getDrawingCache() == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(getDrawingCache());
        setDrawingCacheEnabled(false);
        destroyDrawingCache();
        return createBitmap;
    }

    public final ImageView initialiseAttributionView() {
        ImageView imageView = new ImageView(getContext());
        addView(imageView);
        imageView.setTag("attrView");
        imageView.getLayoutParams().width = -2;
        imageView.getLayoutParams().height = -2;
        imageView.setAdjustViewBounds(true);
        imageView.setClickable(true);
        imageView.setFocusable(true);
        imageView.setContentDescription(getResources().getString(R.string.maplibre_attributionsIconContentDescription));
        imageView.setImageDrawable(HttpUrl.Companion.getDrawableFromRes(getContext(), R.drawable.maplibre_info_bg_selector, null));
        AnonymousClass3 anonymousClass3 = new AnonymousClass3(getContext(), this.maplibreMap);
        this.attributionClickListener = anonymousClass3;
        imageView.setOnClickListener(anonymousClass3);
        return imageView;
    }

    public final CompassView initialiseCompassView() {
        Context context = getContext();
        CompassView compassView = new CompassView(context);
        compassView.rotation = RecyclerView.DECELERATION_RATE;
        compassView.fadeCompassViewFacingNorth = true;
        compassView.isAnimating = false;
        compassView.setEnabled(false);
        int i = (int) (context.getResources().getDisplayMetrics().density * 48.0f);
        compassView.setLayoutParams(new ViewGroup.LayoutParams(i, i));
        this.compassView = compassView;
        addView(compassView);
        this.compassView.setTag("compassView");
        this.compassView.getLayoutParams().width = -2;
        this.compassView.getLayoutParams().height = -2;
        this.compassView.setContentDescription(getResources().getString(R.string.maplibre_compassContentDescription));
        CompassView compassView2 = this.compassView;
        CameraChangeDispatcher cameraChangeDispatcher = this.cameraDispatcher;
        compassView2.compassAnimationListener = new AnonymousClass2(this, cameraChangeDispatcher);
        compassView2.setOnClickListener(new AnonymousClass3(this, cameraChangeDispatcher));
        return this.compassView;
    }

    public final ImageView initialiseLogoView() {
        ImageView imageView = new ImageView(getContext());
        addView(imageView);
        imageView.setTag("logoView");
        imageView.getLayoutParams().width = -2;
        imageView.getLayoutParams().height = -2;
        imageView.setImageDrawable(HttpUrl.Companion.getDrawableFromRes(getContext(), R.drawable.maplibre_logo_icon, null));
        return imageView;
    }

    public final void initialize(Context context, MapLibreMapOptions mapLibreMapOptions) {
        if (isInEditMode()) {
            return;
        }
        if (!MapLibre.hasInstance()) {
            throw new HttpException();
        }
        setForeground(new ColorDrawable(mapLibreMapOptions.foregroundLoadColor));
        this.maplibreMapOptions = mapLibreMapOptions;
        setContentDescription(context.getString(R.string.maplibre_mapActionDescription));
        setWillNotDraw(false);
        MapRenderer create = MapRenderer.create(mapLibreMapOptions, getContext(), new Task$$ExternalSyntheticLambda0(27, this));
        this.mapRenderer = create;
        View view = create.getView();
        this.renderView = view;
        addView(view, 0);
        mapLibreMapOptions.pixelRatio = getPixelRatio();
        this.nativeMapView = new NativeMapView(getContext(), mapLibreMapOptions, this, this.mapChangeReceiver, this.mapRenderer);
    }

    public final void onDestroy() {
        this.destroyed = true;
        MapChangeReceiver mapChangeReceiver = this.mapChangeReceiver;
        ((CopyOnWriteArrayList) mapChangeReceiver.onCameraWillChangeListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onCameraIsChangingListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onCameraDidChangeListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onWillStartLoadingMapListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingMapListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidFailLoadingMapListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onWillStartRenderingFrameList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingFrameList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onWillStartRenderingMapListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishRenderingMapListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidBecomeIdleListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onDidFinishLoadingStyleListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onSourceChangedListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onStyleImageMissingListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onCanRemoveUnusedStyleImageListenerList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onPreCompileShaderList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onPostCompileShaderList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onShaderCompileFailedList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onGlyphsLoadedList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onGlyphsErrorList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onGlyphsRequestedList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onTileActionList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onSpriteLoadedList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onSpriteErrorList).clear();
        ((CopyOnWriteArrayList) mapChangeReceiver.onSpriteRequestedList).clear();
        MapCallback mapCallback = this.mapCallback;
        mapCallback.onMapReadyCallbackList.clear();
        MapChangeReceiver mapChangeReceiver2 = MapView.this.mapChangeReceiver;
        ((CopyOnWriteArrayList) mapChangeReceiver2.onDidFinishLoadingStyleListenerList).remove(mapCallback);
        ((CopyOnWriteArrayList) mapChangeReceiver2.onDidFinishRenderingFrameWithStatsList).remove(mapCallback);
        ((CopyOnWriteArrayList) mapChangeReceiver2.onDidFinishLoadingMapListenerList).remove(mapCallback);
        ((CopyOnWriteArrayList) mapChangeReceiver2.onCameraIsChangingListenerList).remove(mapCallback);
        ((CopyOnWriteArrayList) mapChangeReceiver2.onCameraDidChangeListenerList).remove(mapCallback);
        ((CopyOnWriteArrayList) mapChangeReceiver2.onDidFailLoadingMapListenerList).remove(mapCallback);
        InitialRenderCallback initialRenderCallback = this.initialRenderCallback;
        ((CopyOnWriteArrayList) MapView.this.mapChangeReceiver.onDidFinishRenderingFrameWithStatsList).remove(initialRenderCallback);
        CompassView compassView = this.compassView;
        if (compassView != null) {
            compassView.resetAnimation();
        }
        MapLibreMap mapLibreMap = this.maplibreMap;
        if (mapLibreMap != null) {
            mapLibreMap.locationComponent.getClass();
            Style style = mapLibreMap.style;
            if (style != null) {
                style.clear();
            }
            CameraChangeDispatcher cameraChangeDispatcher = mapLibreMap.cameraChangeDispatcher;
            cameraChangeDispatcher.handler.removeCallbacksAndMessages(null);
            cameraChangeDispatcher.onCameraMoveStarted.clear();
            cameraChangeDispatcher.onCameraMoveCanceled.clear();
            cameraChangeDispatcher.onCameraMove.clear();
            cameraChangeDispatcher.onCameraIdle.clear();
        }
        NativeMap nativeMap = this.nativeMapView;
        if (nativeMap != null) {
            ((NativeMapView) nativeMap).destroy();
            this.nativeMapView = null;
        }
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.onDestroy();
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        MapGestureDetector mapGestureDetector = this.mapGestureDetector;
        if (mapGestureDetector == null) {
            return super.onGenericMotionEvent(motionEvent);
        }
        Transform transform = mapGestureDetector.transform;
        if ((motionEvent.getSource() & 2) != 2 || motionEvent.getActionMasked() != 8 || !mapGestureDetector.uiSettings.zoomGesturesEnabled) {
            return super.onGenericMotionEvent(motionEvent);
        }
        transform.cancelTransitions();
        transform.zoomBy(motionEvent.getAxisValue(9), new PointF(motionEvent.getX(), motionEvent.getY()));
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        Style.Builder builder = this.mapKeyListener;
        if (builder == null) {
            return super.onKeyDown(i, keyEvent);
        }
        Transform transform = (Transform) builder.sources;
        Transform transform2 = (Transform) builder.sources;
        UiSettings uiSettings = (UiSettings) builder.layers;
        double d = keyEvent.getRepeatCount() >= 5 ? 50.0d : 10.0d;
        if (i != 66) {
            switch (i) {
                case RADIO_BUTTON_VALUE:
                    if (uiSettings.scrollGesturesEnabled) {
                        transform.cancelTransitions();
                        transform2.moveBy(0.0d, d, 0L);
                        return true;
                    }
                    break;
                case RADIO_ROW_VALUE:
                    if (uiSettings.scrollGesturesEnabled) {
                        transform.cancelTransitions();
                        transform2.moveBy(0.0d, -d, 0L);
                        return true;
                    }
                    break;
                case RADIO_COLUMN_VALUE:
                    if (uiSettings.scrollGesturesEnabled) {
                        transform.cancelTransitions();
                        transform2.moveBy(d, 0.0d, 0L);
                        return true;
                    }
                    break;
                case SIZE_BOX_VALUE:
                    if (uiSettings.scrollGesturesEnabled) {
                        transform.cancelTransitions();
                        transform2.moveBy(-d, 0.0d, 0L);
                        return true;
                    }
                    break;
            }
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        Style.Builder builder = this.mapKeyListener;
        if (builder == null) {
            return super.onKeyLongPress(i, keyEvent);
        }
        UiSettings uiSettings = (UiSettings) builder.layers;
        if (i == 23 || i == 66) {
            boolean z = uiSettings.zoomGesturesEnabled;
            AnonymousClass2 anonymousClass2 = uiSettings.projection;
            if (z) {
                ((MapGestureDetector) builder.images).zoomAnimated(false, new PointF(anonymousClass2.getWidth() / 2.0f, anonymousClass2.getHeight() / 2.0f), true);
                return true;
            }
        }
        return super.onKeyLongPress(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        Style.Builder builder = this.mapKeyListener;
        if (builder == null) {
            return super.onKeyUp(i, keyEvent);
        }
        UiSettings uiSettings = (UiSettings) builder.layers;
        if (!keyEvent.isCanceled() && (i == 23 || i == 66)) {
            boolean z = uiSettings.zoomGesturesEnabled;
            AnonymousClass2 anonymousClass2 = uiSettings.projection;
            if (z) {
                ((MapGestureDetector) builder.images).zoomAnimated(true, new PointF(anonymousClass2.getWidth() / 2.0f, anonymousClass2.getHeight() / 2.0f), true);
                return true;
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    public final void onLowMemory() {
        NativeMap nativeMap = this.nativeMapView;
        if (nativeMap == null || this.maplibreMap == null || this.destroyed) {
            return;
        }
        ((NativeMapView) nativeMap).onLowMemory();
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        NativeMap nativeMap;
        if (isInEditMode() || (nativeMap = this.nativeMapView) == null) {
            return;
        }
        ((NativeMapView) nativeMap).resizeView(i, i2);
    }

    public final void onStart() {
        if (!this.isStarted) {
            ConnectivityReceiver instance = ConnectivityReceiver.instance(getContext());
            if (instance.activationCounter == 0) {
                instance.context.registerReceiver(instance, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            }
            instance.activationCounter++;
            FileSource.getInstance(getContext()).activate();
            this.isStarted = true;
        }
        MapLibreMap mapLibreMap = this.maplibreMap;
        if (mapLibreMap != null) {
            mapLibreMap.started = true;
            LocationComponent locationComponent = mapLibreMap.locationComponent;
            locationComponent.isComponentStarted = true;
            locationComponent.onLocationLayerStart();
        }
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.onStart();
        }
    }

    public final void onStop() {
        AnonymousClass3 anonymousClass3 = this.attributionClickListener;
        if (anonymousClass3 != null) {
            ((UiSettings) anonymousClass3.this$0).getClass();
            AttributionDialogManager attributionDialogManager = (AttributionDialogManager) anonymousClass3.val$cameraChangeDispatcher;
            AlertDialog alertDialog = attributionDialogManager.dialog;
            if (alertDialog != null && alertDialog.isShowing()) {
                attributionDialogManager.dialog.dismiss();
            }
        }
        if (this.maplibreMap != null) {
            this.mapGestureDetector.cancelAnimators();
            MapLibreMap mapLibreMap = this.maplibreMap;
            mapLibreMap.started = false;
            LocationComponent locationComponent = mapLibreMap.locationComponent;
            locationComponent.onLocationLayerStop();
            locationComponent.isComponentStarted = false;
        }
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.onStop();
        }
        if (this.isStarted) {
            ConnectivityReceiver instance = ConnectivityReceiver.instance(getContext());
            int i = instance.activationCounter - 1;
            instance.activationCounter = i;
            if (i == 0) {
                instance.context.unregisterReceiver(ConnectivityReceiver.INSTANCE);
            }
            FileSource.getInstance(getContext()).deactivate();
            this.isStarted = false;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent;
        MapGestureDetector mapGestureDetector = this.mapGestureDetector;
        if (mapGestureDetector == null) {
            return super.onTouchEvent(motionEvent);
        }
        Transform transform = mapGestureDetector.transform;
        ArrayList arrayList = mapGestureDetector.scheduledAnimators;
        if (motionEvent != null && (motionEvent.getButtonState() == 0 || motionEvent.getButtonState() == 1)) {
            if (motionEvent.getActionMasked() == 0) {
                mapGestureDetector.cancelAnimators();
                ((NativeMapView) transform.nativeMap).setGestureInProgress(true);
            }
            onTouchEvent = mapGestureDetector.gesturesManager.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 1) {
                if (mapGestureDetector.doubleTapRegistered) {
                    ((MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer).isEnabled = true;
                    mapGestureDetector.doubleTapRegistered = false;
                }
                ((NativeMapView) transform.nativeMap).setGestureInProgress(false);
                transform.invalidateCameraPosition();
                if (!arrayList.isEmpty()) {
                    mapGestureDetector.animationsTimeoutHandler.removeCallbacksAndMessages(null);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((Animator) it.next()).start();
                    }
                    arrayList.clear();
                }
            } else if (actionMasked == 3) {
                arrayList.clear();
                ((NativeMapView) transform.nativeMap).setGestureInProgress(false);
                transform.invalidateCameraPosition();
                if (mapGestureDetector.doubleTapRegistered) {
                    ((MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer).isEnabled = true;
                    mapGestureDetector.doubleTapRegistered = false;
                }
            } else if (actionMasked == 5 && mapGestureDetector.doubleTapRegistered) {
                ((MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer).isEnabled = true;
                mapGestureDetector.doubleTapRegistered = false;
            }
        } else {
            onTouchEvent = false;
        }
        return onTouchEvent || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0054 A[RETURN] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTrackballEvent(android.view.MotionEvent r12) {
        /*
            r11 = this;
            org.maplibre.android.maps.Style$Builder r0 = r11.mapKeyListener
            if (r0 == 0) goto L9c
            java.lang.Object r1 = r0.layers
            org.maplibre.android.maps.UiSettings r1 = (org.maplibre.android.maps.UiSettings) r1
            java.lang.Object r2 = r0.sources
            r3 = r2
            org.maplibre.android.maps.Transform r3 = (org.maplibre.android.maps.Transform) r3
            int r2 = r12.getActionMasked()
            r10 = 1
            r4 = 0
            if (r2 == 0) goto L75
            if (r2 == r10) goto L47
            r5 = 2
            if (r2 == r5) goto L29
            r1 = 3
            if (r2 == r1) goto L1e
            goto L4d
        L1e:
            java.lang.Object r11 = r0.styleUri
            org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable r11 = (org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable) r11
            if (r11 == 0) goto L74
            r11.cancelable = r10
            r0.styleUri = r4
            return r10
        L29:
            boolean r0 = r1.scrollGesturesEnabled
            if (r0 != 0) goto L2e
            goto L4d
        L2e:
            r3.cancelTransitions()
            float r11 = r12.getX()
            double r0 = (double) r11
            r4 = -4601552919265804288(0xc024000000000000, double:-10.0)
            double r0 = r0 * r4
            float r11 = r12.getY()
            double r11 = (double) r11
            double r6 = r11 * r4
            r8 = 0
            r4 = r0
            r3.moveBy(r4, r6, r8)
            return r10
        L47:
            boolean r2 = r1.zoomGesturesEnabled
            org.maplibre.android.maps.MapView$2 r1 = r1.projection
            if (r2 != 0) goto L56
        L4d:
            boolean r11 = super.onTrackballEvent(r12)
            if (r11 == 0) goto L54
            goto L74
        L54:
            r11 = 0
            return r11
        L56:
            java.lang.Object r11 = r0.styleUri
            org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable r11 = (org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable) r11
            if (r11 == 0) goto L74
            android.graphics.PointF r11 = new android.graphics.PointF
            float r12 = r1.getWidth()
            r2 = 1073741824(0x40000000, float:2.0)
            float r12 = r12 / r2
            float r1 = r1.getHeight()
            float r1 = r1 / r2
            r11.<init>(r12, r1)
            java.lang.Object r12 = r0.images
            org.maplibre.android.maps.MapGestureDetector r12 = (org.maplibre.android.maps.MapGestureDetector) r12
            r12.zoomAnimated(r10, r11, r10)
        L74:
            return r10
        L75:
            java.lang.Object r11 = r0.styleUri
            org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable r11 = (org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable) r11
            if (r11 == 0) goto L7f
            r11.cancelable = r10
            r0.styleUri = r4
        L7f:
            org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable r11 = new org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable
            r11.<init>(r0)
            r0.styleUri = r11
            android.os.Handler r11 = new android.os.Handler
            android.os.Looper r12 = android.os.Looper.getMainLooper()
            r11.<init>(r12)
            java.lang.Object r12 = r0.styleUri
            org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable r12 = (org.wikipedia.captcha.HCaptchaHelper$MakeHCaptchaDialogCancelable) r12
            int r0 = android.view.ViewConfiguration.getLongPressTimeout()
            long r0 = (long) r0
            r11.postDelayed(r12, r0)
            return r10
        L9c:
            boolean r11 = super.onTrackballEvent(r12)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.maps.MapView.onTrackballEvent(android.view.MotionEvent):boolean");
    }

    public void setMapLibreMap(MapLibreMap mapLibreMap) {
        this.maplibreMap = mapLibreMap;
    }

    public void setMaximumFps(int i) {
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.setMaximumFps(i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Calling MapView#setMaximumFps before mapRenderer is created.");
        }
    }

    public void setRenderingRefreshMode(MapRenderer.RenderingRefreshMode renderingRefreshMode) {
        MapRenderer mapRenderer = this.mapRenderer;
        if (mapRenderer != null) {
            mapRenderer.setRenderingRefreshMode(renderingRefreshMode);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Calling MapView#setRenderingRefreshMode before mapRenderer is created.");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.MapView$2, reason: invalid class name */
    public final class AnonymousClass2 {
        public final Object this$0;
        public final Object val$cameraChangeDispatcher;

        public /* synthetic */ AnonymousClass2(NativeMap nativeMap, Object obj) {
            this.val$cameraChangeDispatcher = nativeMap;
            this.this$0 = obj;
        }

        public static double degreesToRadians(double d) {
            return ((d % 360.0d) * 3.141592653589793d) / 180.0d;
        }

        public LatLng fromScreenLocation(PointF pointF) {
            return ((NativeMapView) ((NativeMap) this.val$cameraChangeDispatcher)).latLngForPixel(pointF);
        }

        public float getHeight() {
            return ((MapView) this.this$0).getHeight();
        }

        public double getMetersPerPixelAtLatitude(double d) {
            return ((NativeMapView) ((NativeMap) this.val$cameraChangeDispatcher)).getMetersPerPixelAtLatitude(d);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0134  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0147 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.maplibre.android.geometry.VisibleRegion getVisibleRegion() {
            /*
                Method dump skipped, instructions count: 357
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.maps.MapView.AnonymousClass2.getVisibleRegion():org.maplibre.android.geometry.VisibleRegion");
        }

        public float getWidth() {
            return ((MapView) this.this$0).getWidth();
        }

        public PointF toScreenLocation(LatLng latLng) {
            return ((NativeMapView) ((NativeMap) this.val$cameraChangeDispatcher)).pixelForLatLng(latLng);
        }

        public AnonymousClass2(MapView mapView, CameraChangeDispatcher cameraChangeDispatcher) {
            this.this$0 = mapView;
            this.val$cameraChangeDispatcher = cameraChangeDispatcher;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.MapView$3, reason: invalid class name */
    public final class AnonymousClass3 implements View.OnClickListener {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object this$0;
        public final Object val$cameraChangeDispatcher;

        public AnonymousClass3(Context context, MapLibreMap mapLibreMap) {
            this.val$cameraChangeDispatcher = new AttributionDialogManager(context, mapLibreMap);
            this.this$0 = mapLibreMap.uiSettings;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.$r8$classId;
            Object obj = this.val$cameraChangeDispatcher;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    MapView mapView = (MapView) obj2;
                    MapLibreMap mapLibreMap = mapView.maplibreMap;
                    if (mapLibreMap != null) {
                        Transform transform = mapLibreMap.transform;
                        if (mapView.compassView != null) {
                            PointF pointF = mapView.focalPoint;
                            if (pointF != null) {
                                float f = pointF.x;
                                float f2 = pointF.y;
                                mapLibreMap.notifyDeveloperAnimationListeners();
                                ((NativeMapView) transform.nativeMap).setBearing(0.0d, f, f2, 150L);
                            } else {
                                float width = mapLibreMap.projection.getWidth() / 2.0f;
                                float height = mapView.maplibreMap.projection.getHeight() / 2.0f;
                                mapLibreMap.notifyDeveloperAnimationListeners();
                                ((NativeMapView) transform.nativeMap).setBearing(0.0d, width, height, 150L);
                            }
                            ((CameraChangeDispatcher) obj).onCameraMoveStarted(3);
                            CompassView compassView = mapView.compassView;
                            compassView.isAnimating = true;
                            compassView.postDelayed(compassView, 650L);
                            break;
                        }
                    }
                    break;
                default:
                    ((UiSettings) obj2).getClass();
                    ((AttributionDialogManager) obj).onClick(view);
                    break;
            }
        }

        public AnonymousClass3(MapView mapView, CameraChangeDispatcher cameraChangeDispatcher) {
            this.this$0 = mapView;
            this.val$cameraChangeDispatcher = cameraChangeDispatcher;
        }
    }

    public MapView(Context context, MapLibreMapOptions mapLibreMapOptions) {
        super(context);
        this.mapChangeReceiver = new MapChangeReceiver();
        this.mapCallback = new MapCallback();
        this.initialRenderCallback = new InitialRenderCallback();
        this.focalInvalidator = new FocalPointInvalidator();
        this.registerTouchListener = new IconManager(this);
        this.cameraDispatcher = new CameraChangeDispatcher();
        Timber.Forest.getClass();
        Timber.Forest.d(new Object[0]);
        initialize(context, mapLibreMapOptions);
    }
}
