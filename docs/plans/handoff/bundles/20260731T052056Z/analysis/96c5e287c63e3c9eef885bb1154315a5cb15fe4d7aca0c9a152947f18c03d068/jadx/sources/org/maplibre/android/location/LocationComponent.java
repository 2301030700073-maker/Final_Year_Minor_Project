package org.maplibre.android.location;

import android.animation.Animator;
import android.graphics.PointF;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.animation.DecelerateInterpolator;
import androidx.compose.ui.Modifier;
import androidx.lifecycle.WeakReference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.HttpException;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.location.MapLibreAnimator;
import org.maplibre.android.location.engine.LocationEngineRequest;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.CameraChangeDispatcher;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.Transform;
import org.maplibre.android.maps.UiSettings;
import org.maplibre.geojson.Feature;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationComponent {
    public final AnonymousClass8 cameraTrackingChangedListener;
    public LocationComponentCompassEngine compassEngine;
    public final AnonymousClass7 compassListener;
    public final WeakReference currentLocationEngineListener;
    public long fastestInterval;
    public boolean isComponentInitialized;
    public boolean isComponentStarted;
    public boolean isEnabled;
    public boolean isLayerReady;
    public boolean isListeningToCompass;
    public CameraPosition lastCameraPosition;
    public Location lastLocation;
    public final WeakReference lastLocationEngineListener;
    public long lastUpdateTime;
    public LocationAnimatorCoordinator locationAnimatorCoordinator;
    public LocationCameraController locationCameraController;
    public FormBody.Builder locationEngine;
    public final LocationEngineRequest locationEngineRequest;
    public LocationLayerController locationLayerController;
    public final MapLibreMap maplibreMap;
    public final AnonymousClass2 onCameraIdleListener;
    public final AnonymousClass6 onCameraMoveInvalidateListener;
    public final AnonymousClass1 onCameraMoveListener;
    public final CopyOnWriteArrayList onCameraTrackingChangedListeners;
    public final CopyOnWriteArrayList onLocationClickListeners;
    public final CopyOnWriteArrayList onLocationLongClickListeners;
    public final AnonymousClass5 onLocationStaleListener;
    public final CopyOnWriteArrayList onLocationStaleListeners;
    public final AnonymousClass3 onMapClickListener;
    public final AnonymousClass4 onMapLongClickListener;
    public final CopyOnWriteArrayList onRenderModeChangedListeners;
    public LocationComponentOptions options;
    public final AnonymousClass9 renderModeChangedListener;
    public StaleStateManager staleStateManager;
    public final Transform transform;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$1, reason: invalid class name */
    public final class AnonymousClass1 implements MapLibreMap.OnCameraMoveListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // org.maplibre.android.maps.MapLibreMap.OnCameraMoveListener
        public final void onCameraMove() {
            LatLng latLng;
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((LocationComponent) obj).updateLayerOffsets(false);
                    break;
                default:
                    LocationCameraController locationCameraController = (LocationCameraController) obj;
                    MapLibreMap mapLibreMap = locationCameraController.maplibreMap;
                    if (locationCameraController.isLocationTracking() && (latLng = locationCameraController.lastLocation) != null && locationCameraController.options.trackingGesturesManagement) {
                        PointF screenLocation = mapLibreMap.projection.toScreenLocation(latLng);
                        UiSettings uiSettings = mapLibreMap.uiSettings;
                        uiSettings.userProvidedFocalPoint = screenLocation;
                        uiSettings.focalPointChangeListener.onFocalPointChanged(screenLocation);
                        break;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$10, reason: invalid class name */
    public final class AnonymousClass10 {
        public AnonymousClass10() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$5, reason: invalid class name */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }

        public final void onStaleStateChange(boolean z) {
            LocationComponent locationComponent = LocationComponent.this;
            LocationLayerController locationLayerController = locationComponent.locationLayerController;
            locationLayerController.isStale = z;
            DefaultSocket defaultSocket = locationLayerController.locationLayerRenderer;
            int i = locationLayerController.renderMode;
            ((Feature) defaultSocket.source).addBooleanProperty("mapbox-property-location-stale", Boolean.valueOf(z));
            defaultSocket.refreshSource();
            if (i != 8) {
                defaultSocket.setLayerVisibility("mapbox-location-accuracy-layer", !z);
            }
            Iterator it = locationComponent.onLocationStaleListeners.iterator();
            while (it.hasNext()) {
                ((AnonymousClass5) it.next()).onStaleStateChange(z);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$6, reason: invalid class name */
    public final class AnonymousClass6 {
        public /* synthetic */ AnonymousClass6() {
        }

        public void onLocationCameraTransitionFinished(int i) {
            LocationComponent locationComponent = LocationComponent.this;
            locationComponent.locationAnimatorCoordinator.resetAllCameraAnimations(locationComponent.maplibreMap.transform.getCameraPosition(), i == 36);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$7, reason: invalid class name */
    public final class AnonymousClass7 {
        public AnonymousClass7() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$8, reason: invalid class name */
    public final class AnonymousClass8 {
        public AnonymousClass8() {
        }

        public final void onCameraTrackingChanged() {
            LocationComponent locationComponent = LocationComponent.this;
            locationComponent.locationAnimatorCoordinator.cancelAnimator(7);
            locationComponent.locationAnimatorCoordinator.cancelAnimator(8);
            locationComponent.updateAnimatorListenerHolders();
            Iterator it = locationComponent.onCameraTrackingChangedListeners.iterator();
            while (it.hasNext()) {
                ((AnonymousClass8) it.next()).onCameraTrackingChanged();
            }
        }

        public final void onCameraTrackingDismissed() {
            Iterator it = LocationComponent.this.onCameraTrackingChangedListeners.iterator();
            while (it.hasNext()) {
                ((AnonymousClass8) it.next()).onCameraTrackingDismissed();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationComponent$9, reason: invalid class name */
    public final class AnonymousClass9 {
        public AnonymousClass9() {
        }

        public final void onRenderModeChanged() {
            LocationComponent locationComponent = LocationComponent.this;
            locationComponent.updateAnimatorListenerHolders();
            Iterator it = locationComponent.onRenderModeChangedListeners.iterator();
            while (it.hasNext()) {
                ((AnonymousClass9) it.next()).onRenderModeChanged();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [org.maplibre.android.location.LocationComponent$3] */
    /* JADX WARN: Type inference failed for: r0v11, types: [org.maplibre.android.location.LocationComponent$4] */
    /* JADX WARN: Type inference failed for: r0v9, types: [org.maplibre.android.location.LocationComponent$2] */
    public LocationComponent(MapLibreMap mapLibreMap, Transform transform, ArrayList arrayList) {
        LocationEngineRequest.Builder builder = new LocationEngineRequest.Builder();
        builder.fastestInterval = 1000L;
        this.locationEngineRequest = new LocationEngineRequest(builder);
        this.currentLocationEngineListener = new WeakReference(this, 2);
        this.lastLocationEngineListener = new WeakReference(this, 3);
        this.onLocationStaleListeners = new CopyOnWriteArrayList();
        this.onLocationClickListeners = new CopyOnWriteArrayList();
        this.onLocationLongClickListeners = new CopyOnWriteArrayList();
        this.onCameraTrackingChangedListeners = new CopyOnWriteArrayList();
        this.onRenderModeChangedListeners = new CopyOnWriteArrayList();
        this.onCameraMoveListener = new AnonymousClass1(0, this);
        this.onCameraIdleListener = new MapLibreMap.OnCameraIdleListener() { // from class: org.maplibre.android.location.LocationComponent.2
            @Override // org.maplibre.android.maps.MapLibreMap.OnCameraIdleListener
            public final void onCameraIdle() {
                LocationComponent.this.updateLayerOffsets(false);
            }
        };
        this.onMapClickListener = new MapLibreMap.OnMapClickListener() { // from class: org.maplibre.android.location.LocationComponent.3
            @Override // org.maplibre.android.maps.MapLibreMap.OnMapClickListener
            public final boolean onMapClick(LatLng latLng) {
                LocationComponent locationComponent = LocationComponent.this;
                CopyOnWriteArrayList copyOnWriteArrayList = locationComponent.onLocationClickListeners;
                if (copyOnWriteArrayList.isEmpty()) {
                    return false;
                }
                MapLibreMap mapLibreMap2 = locationComponent.locationLayerController.maplibreMap;
                if (mapLibreMap2.queryRenderedFeatures(mapLibreMap2.projection.toScreenLocation(latLng), "mapbox-location-background-layer", "mapbox-location-foreground-layer", "mapbox-location-bearing-layer").isEmpty()) {
                    return false;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    throw Modifier.CC.m(it);
                }
                return true;
            }
        };
        this.onMapLongClickListener = new MapLibreMap.OnMapLongClickListener() { // from class: org.maplibre.android.location.LocationComponent.4
            @Override // org.maplibre.android.maps.MapLibreMap.OnMapLongClickListener
            public final boolean onMapLongClick(LatLng latLng) {
                LocationComponent locationComponent = LocationComponent.this;
                CopyOnWriteArrayList copyOnWriteArrayList = locationComponent.onLocationLongClickListeners;
                if (copyOnWriteArrayList.isEmpty()) {
                    return false;
                }
                MapLibreMap mapLibreMap2 = locationComponent.locationLayerController.maplibreMap;
                if (mapLibreMap2.queryRenderedFeatures(mapLibreMap2.projection.toScreenLocation(latLng), "mapbox-location-background-layer", "mapbox-location-foreground-layer", "mapbox-location-bearing-layer").isEmpty()) {
                    return false;
                }
                Iterator it = copyOnWriteArrayList.iterator();
                if (it.hasNext()) {
                    throw Modifier.CC.m(it);
                }
                return true;
            }
        };
        this.onLocationStaleListener = new AnonymousClass5();
        this.onCameraMoveInvalidateListener = new AnonymousClass6();
        this.compassListener = new AnonymousClass7();
        this.cameraTrackingChangedListener = new AnonymousClass8();
        this.renderModeChangedListener = new AnonymousClass9();
        AnonymousClass10 anonymousClass10 = new AnonymousClass10();
        this.maplibreMap = mapLibreMap;
        this.transform = transform;
        arrayList.add(anonymousClass10);
    }

    public final void checkActivationState() {
        if (!this.isComponentInitialized) {
            throw new HttpException("The LocationComponent has to be activated with one of the LocationComponent#activateLocationComponent overloads before any other methods are invoked.");
        }
    }

    public final void onLocationLayerStart() {
        if (this.isComponentInitialized && this.isComponentStarted) {
            MapLibreMap mapLibreMap = this.maplibreMap;
            Style style = mapLibreMap.getStyle();
            CameraChangeDispatcher cameraChangeDispatcher = mapLibreMap.cameraChangeDispatcher;
            if (style == null) {
                return;
            }
            if (!this.isLayerReady) {
                this.isLayerReady = true;
                cameraChangeDispatcher.onCameraMove.add(this.onCameraMoveListener);
                cameraChangeDispatcher.onCameraIdle.add(this.onCameraIdleListener);
                if (this.options.enableStaleState) {
                    StaleStateManager staleStateManager = this.staleStateManager;
                    if (!staleStateManager.isStale) {
                        PreferenceFragmentCompat.AnonymousClass1 anonymousClass1 = staleStateManager.handler;
                        anonymousClass1.removeCallbacksAndMessages(null);
                        anonymousClass1.sendEmptyMessageDelayed(1, staleStateManager.delayTime);
                    }
                }
            }
            if (this.isEnabled) {
                FormBody.Builder builder = this.locationEngine;
                if (builder != null) {
                    try {
                        builder.requestLocationUpdates(this.locationEngineRequest, this.currentLocationEngineListener, Looper.getMainLooper());
                    } catch (SecurityException e) {
                        Logger.e("Mbgl-LocationComponent", "Unable to request location updates", e);
                    }
                }
                setCameraMode(this.locationCameraController.cameraMode);
                if (this.options.pulseEnabled.booleanValue()) {
                    startPulsingLocationCircle();
                } else {
                    this.locationAnimatorCoordinator.cancelAnimator(9);
                    this.locationLayerController.locationLayerRenderer.adjustPulsingCircleLayerVisibility(false);
                }
                setLastLocation();
                updateCompassListenerState(true);
                LocationComponentCompassEngine locationComponentCompassEngine = this.compassEngine;
                updateCompassHeading(locationComponentCompassEngine != null ? locationComponentCompassEngine.lastHeading : RecyclerView.DECELERATION_RATE);
            }
        }
    }

    public final void onLocationLayerStop() {
        if (this.isComponentInitialized && this.isLayerReady && this.isComponentStarted) {
            this.isLayerReady = false;
            this.staleStateManager.handler.removeCallbacksAndMessages(null);
            if (this.compassEngine != null) {
                updateCompassListenerState(false);
            }
            this.locationAnimatorCoordinator.cancelAnimator(9);
            this.locationLayerController.locationLayerRenderer.adjustPulsingCircleLayerVisibility(false);
            LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
            SparseArray sparseArray = locationAnimatorCoordinator.animatorArray;
            for (int i = 0; i < sparseArray.size(); i++) {
                locationAnimatorCoordinator.cancelAnimator(sparseArray.keyAt(i));
            }
            FormBody.Builder builder = this.locationEngine;
            if (builder != null) {
                builder.removeLocationUpdates(this.currentLocationEngineListener);
            }
            MapLibreMap mapLibreMap = this.maplibreMap;
            CopyOnWriteArrayList copyOnWriteArrayList = mapLibreMap.cameraChangeDispatcher.onCameraMove;
            AnonymousClass1 anonymousClass1 = this.onCameraMoveListener;
            if (copyOnWriteArrayList.contains(anonymousClass1)) {
                copyOnWriteArrayList.remove(anonymousClass1);
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = mapLibreMap.cameraChangeDispatcher.onCameraIdle;
            AnonymousClass2 anonymousClass2 = this.onCameraIdleListener;
            if (copyOnWriteArrayList2.contains(anonymousClass2)) {
                copyOnWriteArrayList2.remove(anonymousClass2);
            }
        }
    }

    public final void removeCompassListener(LocationComponentCompassEngine locationComponentCompassEngine) {
        if (this.isListeningToCompass) {
            this.isListeningToCompass = false;
            ArrayList arrayList = locationComponentCompassEngine.compassListeners;
            arrayList.remove(this.compassListener);
            if (arrayList.isEmpty()) {
                Sensor sensor = locationComponentCompassEngine.compassSensor;
                boolean z = sensor != null;
                SensorManager sensorManager = locationComponentCompassEngine.sensorManager;
                if (z) {
                    sensorManager.unregisterListener(locationComponentCompassEngine, sensor);
                } else {
                    sensorManager.unregisterListener(locationComponentCompassEngine, locationComponentCompassEngine.gravitySensor);
                    sensorManager.unregisterListener(locationComponentCompassEngine, locationComponentCompassEngine.magneticFieldSensor);
                }
            }
        }
    }

    public final void setCameraMode(int i) {
        checkActivationState();
        this.locationCameraController.setCameraMode(i, this.lastLocation, new AnonymousClass6());
        updateCompassListenerState(true);
    }

    public final void setLastLocation() {
        Location location;
        FormBody.Builder builder = this.locationEngine;
        if (builder == null) {
            checkActivationState();
            updateLocation(this.lastLocation, true);
            return;
        }
        WeakReference weakReference = this.lastLocationEngineListener;
        if (weakReference == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("callback == null");
            return;
        }
        LocationManager locationManager = (LocationManager) ((FormBody.Builder) builder.names).names;
        Iterator<String> it = locationManager.getAllProviders().iterator();
        Location location2 = null;
        while (it.hasNext()) {
            try {
                location = locationManager.getLastKnownLocation(it.next());
            } catch (IllegalArgumentException e) {
                Log.e("AndroidLocationEngine", e.toString());
                location = null;
            }
            if (location != null && Headers.Companion.isBetterLocation(location, location2)) {
                location2 = location;
            }
        }
        if (location2 == null) {
            Logger.e("Mbgl-LocationComponent", "Failed to obtain last location update", new Exception("Last location unavailable"));
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(location2);
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
        LocationComponent locationComponent = (LocationComponent) weakReference.delegate.get();
        if (locationComponent != null) {
            locationComponent.updateLocation(unmodifiableList.isEmpty() ? null : (Location) unmodifiableList.get(0), true);
        }
    }

    public final void setRenderMode(int i) {
        checkActivationState();
        if (this.lastLocation != null && i == 8) {
            LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
            locationAnimatorCoordinator.cancelAnimator(2);
            locationAnimatorCoordinator.animatorArray.remove(2);
            this.locationLayerController.locationLayerRenderer.setGpsBearing(Float.valueOf(this.lastLocation.getBearing()));
        }
        LocationLayerController locationLayerController = this.locationLayerController;
        if (locationLayerController.renderMode != i) {
            locationLayerController.renderMode = i;
            locationLayerController.styleBitmaps(locationLayerController.options);
            locationLayerController.determineIconsSource(locationLayerController.options);
            if (!locationLayerController.isHidden) {
                locationLayerController.show();
            }
            locationLayerController.internalRenderModeChangedListener.onRenderModeChanged();
        }
        updateLayerOffsets(true);
        updateCompassListenerState(true);
    }

    public final void startPulsingLocationCircle() {
        if (this.isEnabled && this.isLayerReady) {
            LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
            LocationComponentOptions locationComponentOptions = this.options;
            SparseArray sparseArray = locationAnimatorCoordinator.animatorArray;
            locationAnimatorCoordinator.cancelAnimator(9);
            MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener = (MapLibreAnimator.AnimationsValueChangeListener) locationAnimatorCoordinator.listeners.get(9);
            if (animationsValueChangeListener != null) {
                float f = locationComponentOptions.pulseSingleDuration;
                float f2 = locationComponentOptions.pulseMaxRadius;
                DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
                PulsingLocationCircleAnimator pulsingLocationCircleAnimator = new PulsingLocationCircleAnimator(new Float[]{Float.valueOf(RecyclerView.DECELERATION_RATE), Float.valueOf(f2)}, animationsValueChangeListener);
                pulsingLocationCircleAnimator.setDuration((long) f);
                pulsingLocationCircleAnimator.setRepeatMode(1);
                pulsingLocationCircleAnimator.setRepeatCount(-1);
                pulsingLocationCircleAnimator.setInterpolator(decelerateInterpolator);
                sparseArray.put(9, pulsingLocationCircleAnimator);
                Animator animator = (Animator) sparseArray.get(9);
                if (animator != null) {
                    animator.start();
                }
            }
            this.locationLayerController.locationLayerRenderer.adjustPulsingCircleLayerVisibility(true);
        }
    }

    public final void updateAccuracyRadius(Location location, boolean z) {
        float metersPerPixelAtLatitude;
        if (location == null) {
            metersPerPixelAtLatitude = RecyclerView.DECELERATION_RATE;
        } else {
            metersPerPixelAtLatitude = (float) ((1.0d / this.maplibreMap.projection.getMetersPerPixelAtLatitude(location.getLatitude())) * location.getAccuracy());
        }
        this.locationAnimatorCoordinator.feedNewAccuracyRadius(metersPerPixelAtLatitude, z);
    }

    public final void updateAnimatorListenerHolders() {
        MapLibreAnimator mapLibreAnimator;
        HashSet hashSet = new HashSet();
        LocationLayerController locationLayerController = this.locationLayerController;
        locationLayerController.getClass();
        HashSet hashSet2 = new HashSet();
        hashSet2.add(new AnimatorListenerHolder(0, locationLayerController.latLngValueListener));
        int i = locationLayerController.renderMode;
        if (i == 8) {
            hashSet2.add(new AnimatorListenerHolder(2, locationLayerController.gpsBearingValueListener));
        } else if (i == 4) {
            hashSet2.add(new AnimatorListenerHolder(3, locationLayerController.compassBearingValueListener));
        }
        int i2 = locationLayerController.renderMode;
        if (i2 == 4 || i2 == 18) {
            hashSet2.add(new AnimatorListenerHolder(6, locationLayerController.accuracyValueListener));
        }
        if (locationLayerController.options.pulseEnabled.booleanValue()) {
            hashSet2.add(new AnimatorListenerHolder(9, locationLayerController.pulsingCircleRadiusListener));
        }
        hashSet.addAll(hashSet2);
        LocationCameraController locationCameraController = this.locationCameraController;
        locationCameraController.getClass();
        HashSet hashSet3 = new HashSet();
        if (locationCameraController.isLocationTracking()) {
            hashSet3.add(new AnimatorListenerHolder(1, locationCameraController.latLngValueListener));
        }
        int i3 = locationCameraController.cameraMode;
        if (i3 == 34 || i3 == 36 || i3 == 22) {
            hashSet3.add(new AnimatorListenerHolder(4, locationCameraController.gpsBearingValueListener));
        }
        int i4 = locationCameraController.cameraMode;
        if (i4 == 32 || i4 == 16) {
            hashSet3.add(new AnimatorListenerHolder(5, locationCameraController.compassBearingValueListener));
        }
        hashSet3.add(new AnimatorListenerHolder(7, locationCameraController.zoomValueListener));
        hashSet3.add(new AnimatorListenerHolder(8, locationCameraController.tiltValueListener));
        hashSet3.add(new AnimatorListenerHolder(10, locationCameraController.paddingValueListener));
        hashSet.addAll(hashSet3);
        LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
        SparseArray sparseArray = locationAnimatorCoordinator.animatorArray;
        SparseArray sparseArray2 = locationAnimatorCoordinator.listeners;
        sparseArray2.clear();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            AnimatorListenerHolder animatorListenerHolder = (AnimatorListenerHolder) it.next();
            sparseArray2.append(animatorListenerHolder.animatorType, animatorListenerHolder.listener);
        }
        for (int i5 = 0; i5 < sparseArray.size(); i5++) {
            int keyAt = sparseArray.keyAt(i5);
            if (sparseArray2.get(keyAt) == null && (mapLibreAnimator = (MapLibreAnimator) sparseArray.get(keyAt)) != null) {
                mapLibreAnimator.invalid = true;
            }
        }
        this.locationAnimatorCoordinator.resetAllCameraAnimations(this.maplibreMap.transform.getCameraPosition(), this.locationCameraController.cameraMode == 36);
        LocationAnimatorCoordinator locationAnimatorCoordinator2 = this.locationAnimatorCoordinator;
        SparseArray sparseArray3 = locationAnimatorCoordinator2.animatorArray;
        MapLibreLatLngAnimator mapLibreLatLngAnimator = (MapLibreLatLngAnimator) sparseArray3.get(0);
        MapLibreFloatAnimator mapLibreFloatAnimator = (MapLibreFloatAnimator) sparseArray3.get(2);
        MapLibreFloatAnimator mapLibreFloatAnimator2 = (MapLibreFloatAnimator) sparseArray3.get(3);
        MapLibreFloatAnimator mapLibreFloatAnimator3 = (MapLibreFloatAnimator) sparseArray3.get(6);
        if (mapLibreLatLngAnimator != null && mapLibreFloatAnimator != null) {
            locationAnimatorCoordinator2.createNewLatLngAnimator(0, new LatLng[]{(LatLng) mapLibreLatLngAnimator.getAnimatedValue(), (LatLng) mapLibreLatLngAnimator.target});
            Float f = (Float) mapLibreFloatAnimator.getAnimatedValue();
            f.getClass();
            Float f2 = (Float) mapLibreFloatAnimator.target;
            f2.getClass();
            locationAnimatorCoordinator2.createNewFloatAnimator(2, new Float[]{f, f2});
            locationAnimatorCoordinator2.playAnimators(mapLibreLatLngAnimator.getDuration() - mapLibreLatLngAnimator.getCurrentPlayTime(), 0, 2);
        }
        if (mapLibreFloatAnimator2 != null) {
            MapLibreFloatAnimator mapLibreFloatAnimator4 = (MapLibreFloatAnimator) locationAnimatorCoordinator2.animatorArray.get(3);
            float floatValue = mapLibreFloatAnimator4 != null ? ((Float) mapLibreFloatAnimator4.getAnimatedValue()).floatValue() : locationAnimatorCoordinator2.previousCompassBearing;
            Float f3 = (Float) mapLibreFloatAnimator2.target;
            f3.getClass();
            locationAnimatorCoordinator2.createNewFloatAnimator(3, new Float[]{Float.valueOf(floatValue), f3});
            locationAnimatorCoordinator2.playAnimators(locationAnimatorCoordinator2.compassAnimationEnabled ? 500L : 0L, 3);
        }
        if (mapLibreFloatAnimator3 != null) {
            locationAnimatorCoordinator2.feedNewAccuracyRadius(locationAnimatorCoordinator2.previousAccuracyRadius, false);
        }
    }

    public final void updateCompassHeading(float f) {
        LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
        CameraPosition cameraPosition = this.maplibreMap.transform.getCameraPosition();
        if (locationAnimatorCoordinator.previousCompassBearing < RecyclerView.DECELERATION_RATE) {
            locationAnimatorCoordinator.previousCompassBearing = f;
        }
        MapLibreFloatAnimator mapLibreFloatAnimator = (MapLibreFloatAnimator) locationAnimatorCoordinator.animatorArray.get(3);
        float floatValue = mapLibreFloatAnimator != null ? ((Float) mapLibreFloatAnimator.getAnimatedValue()).floatValue() : locationAnimatorCoordinator.previousCompassBearing;
        float f2 = (float) cameraPosition.bearing;
        locationAnimatorCoordinator.createNewFloatAnimator(floatValue, UriUtil.shortestRotation(f, floatValue), 3);
        locationAnimatorCoordinator.createNewFloatAnimator(f2, UriUtil.shortestRotation(f, f2), 5);
        locationAnimatorCoordinator.playAnimators(locationAnimatorCoordinator.compassAnimationEnabled ? 500L : 0L, 3, 5);
        locationAnimatorCoordinator.previousCompassBearing = f;
    }

    public final void updateCompassListenerState(boolean z) {
        LocationComponentCompassEngine locationComponentCompassEngine = this.compassEngine;
        if (locationComponentCompassEngine != null) {
            if (!z) {
                removeCompassListener(locationComponentCompassEngine);
                return;
            }
            if (this.isComponentInitialized && this.isComponentStarted && this.isEnabled && this.isLayerReady) {
                int i = this.locationCameraController.cameraMode;
                if (i != 32 && i != 16 && this.locationLayerController.renderMode != 4) {
                    removeCompassListener(locationComponentCompassEngine);
                    return;
                }
                if (this.isListeningToCompass) {
                    return;
                }
                this.isListeningToCompass = true;
                ArrayList arrayList = locationComponentCompassEngine.compassListeners;
                if (arrayList.isEmpty()) {
                    Sensor sensor = locationComponentCompassEngine.compassSensor;
                    boolean z2 = sensor != null;
                    SensorManager sensorManager = locationComponentCompassEngine.sensorManager;
                    if (z2) {
                        sensorManager.registerListener(locationComponentCompassEngine, sensor, 100000);
                    } else {
                        sensorManager.registerListener(locationComponentCompassEngine, locationComponentCompassEngine.gravitySensor, 100000);
                        sensorManager.registerListener(locationComponentCompassEngine, locationComponentCompassEngine.magneticFieldSensor, 100000);
                    }
                }
                arrayList.add(this.compassListener);
            }
        }
    }

    public final void updateLayerOffsets(boolean z) {
        CameraPosition cameraPosition = this.maplibreMap.transform.getCameraPosition();
        CameraPosition cameraPosition2 = this.lastCameraPosition;
        if (cameraPosition2 == null || z) {
            this.lastCameraPosition = cameraPosition;
            LocationLayerController locationLayerController = this.locationLayerController;
            double d = cameraPosition.bearing;
            if (locationLayerController.renderMode != 8) {
                locationLayerController.locationLayerRenderer.cameraBearingUpdated(d);
            }
            LocationLayerController locationLayerController2 = this.locationLayerController;
            locationLayerController2.locationLayerRenderer.cameraTiltUpdated(cameraPosition.tilt);
            checkActivationState();
            updateAccuracyRadius(this.lastLocation, true);
            return;
        }
        double d2 = cameraPosition.bearing;
        if (d2 != cameraPosition2.bearing) {
            LocationLayerController locationLayerController3 = this.locationLayerController;
            if (locationLayerController3.renderMode != 8) {
                locationLayerController3.locationLayerRenderer.cameraBearingUpdated(d2);
            }
        }
        double d3 = cameraPosition.tilt;
        if (d3 != this.lastCameraPosition.tilt) {
            this.locationLayerController.locationLayerRenderer.cameraTiltUpdated(d3);
        }
        if (cameraPosition.zoom != this.lastCameraPosition.zoom) {
            checkActivationState();
            updateAccuracyRadius(this.lastLocation, true);
        }
        this.lastCameraPosition = cameraPosition;
    }

    public final void updateLocation(Location location, boolean z) {
        Float[] bearingValues;
        if (location == null) {
            return;
        }
        if (!this.isLayerReady) {
            this.lastLocation = location;
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.lastUpdateTime < this.fastestInterval) {
            return;
        }
        this.lastUpdateTime = elapsedRealtime;
        LocationLayerController locationLayerController = this.locationLayerController;
        boolean z2 = locationLayerController.isHidden;
        int i = 1;
        if (this.isEnabled && this.isComponentStarted && z2) {
            locationLayerController.show();
            if (this.options.pulseEnabled.booleanValue()) {
                this.locationLayerController.locationLayerRenderer.adjustPulsingCircleLayerVisibility(true);
            }
        }
        if (!z) {
            StaleStateManager staleStateManager = this.staleStateManager;
            staleStateManager.setState(false);
            PreferenceFragmentCompat.AnonymousClass1 anonymousClass1 = staleStateManager.handler;
            anonymousClass1.removeCallbacksAndMessages(null);
            anonymousClass1.sendEmptyMessageDelayed(1, staleStateManager.delayTime);
        }
        CameraPosition cameraPosition = this.maplibreMap.transform.getCameraPosition();
        checkActivationState();
        boolean z3 = this.locationCameraController.cameraMode == 36;
        LocationAnimatorCoordinator locationAnimatorCoordinator = this.locationAnimatorCoordinator;
        Location[] locationArr = {location};
        MapView.AnonymousClass2 anonymousClass2 = locationAnimatorCoordinator.projection;
        SparseArray sparseArray = locationAnimatorCoordinator.animatorArray;
        Location location2 = locationArr[0];
        if (locationAnimatorCoordinator.previousLocation == null) {
            locationAnimatorCoordinator.previousLocation = location2;
            locationAnimatorCoordinator.locationUpdateTimestamp = SystemClock.elapsedRealtime() - 750;
        }
        MapLibreAnimator mapLibreAnimator = (MapLibreAnimator) sparseArray.get(0);
        LatLng latLng = mapLibreAnimator != null ? (LatLng) mapLibreAnimator.getAnimatedValue() : new LatLng(locationAnimatorCoordinator.previousLocation);
        MapLibreFloatAnimator mapLibreFloatAnimator = (MapLibreFloatAnimator) sparseArray.get(2);
        float floatValue = mapLibreFloatAnimator != null ? ((Float) mapLibreFloatAnimator.getAnimatedValue()).floatValue() : locationAnimatorCoordinator.previousLocation.getBearing();
        LatLng latLng2 = cameraPosition.target;
        float f = ((((float) cameraPosition.bearing) % 360.0f) + 360.0f) % 360.0f;
        if (latLng2 == null) {
            latLng2 = latLng;
        }
        LatLng[] latLngArr = new LatLng[2];
        latLngArr[0] = latLng;
        int i2 = 1;
        for (int i3 = 2; i2 < i3; i3 = 2) {
            latLngArr[i2] = new LatLng(locationArr[i2 - 1]);
            i2++;
            i = i;
        }
        int i4 = i;
        Float[] bearingValues2 = LocationAnimatorCoordinator.getBearingValues(Float.valueOf(floatValue), locationArr);
        locationAnimatorCoordinator.createNewLatLngAnimator(0, latLngArr);
        locationAnimatorCoordinator.createNewFloatAnimator(2, bearingValues2);
        latLngArr[0] = latLng2;
        if (z3) {
            bearingValues = new Float[2];
            bearingValues[0] = Float.valueOf(f);
            bearingValues[i4] = Float.valueOf(UriUtil.shortestRotation(RecyclerView.DECELERATION_RATE, f));
        } else {
            bearingValues = LocationAnimatorCoordinator.getBearingValues(Float.valueOf(f), locationArr);
        }
        locationAnimatorCoordinator.createNewLatLngAnimator(i4, latLngArr);
        locationAnimatorCoordinator.createNewFloatAnimator(4, bearingValues);
        LatLng latLng3 = new LatLng(location2);
        if (!UriUtil.immediateAnimation(anonymousClass2, latLng2, latLng3) && !UriUtil.immediateAnimation(anonymousClass2, latLng, latLng3)) {
            long j = locationAnimatorCoordinator.locationUpdateTimestamp;
            locationAnimatorCoordinator.locationUpdateTimestamp = SystemClock.elapsedRealtime();
            r12 = Math.min(j != 0 ? (long) ((r7 - j) * locationAnimatorCoordinator.durationMultiplier) : 0L, 2000L);
        }
        locationAnimatorCoordinator.playAnimators(r12, 0, 2, 1, 4);
        locationAnimatorCoordinator.previousLocation = location2;
        updateAccuracyRadius(location, false);
        this.lastLocation = location;
    }
}
