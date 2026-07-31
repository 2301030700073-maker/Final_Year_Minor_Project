package org.maplibre.android.location;

import android.content.Context;
import android.location.Location;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import okhttp3.FormBody;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdate;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.location.MapLibreAnimator;
import org.maplibre.android.maps.IconManager;
import org.maplibre.android.maps.MapGestureDetector;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.Transform;
import org.maplibre.android.maps.UiSettings;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationCameraController {
    public int cameraMode;
    public final AnonymousClass2 compassBearingValueListener;
    public final AnonymousClass2 gpsBearingValueListener;
    public final FragmentNewsBinding initialGesturesManager;
    public final LocationComponent.AnonymousClass8 internalCameraTrackingChangedListener;
    public final LocationGesturesManager internalGesturesManager;
    public boolean isEnabled;
    public boolean isTransitioning;
    public LatLng lastLocation;
    public final AnonymousClass2 latLngValueListener;
    public final MapLibreMap maplibreMap;
    public final MoveGestureDetector moveGestureDetector;
    public final LocationComponent.AnonymousClass6 onCameraMoveInvalidateListener;
    public LocationComponentOptions options;
    public final LocationCameraController$$ExternalSyntheticLambda0 paddingValueListener;
    public final LocationCameraController$$ExternalSyntheticLambda0 tiltValueListener;
    public final Transform transform;
    public final LocationCameraController$$ExternalSyntheticLambda0 zoomValueListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationCameraController$6, reason: invalid class name */
    public final class AnonymousClass6 {
        public boolean interrupt;

        public AnonymousClass6() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationCameraController$7, reason: invalid class name */
    public final class AnonymousClass7 {
        public AnonymousClass7() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.location.LocationCameraController$8, reason: invalid class name */
    public final class AnonymousClass8 {
        public AnonymousClass8() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LocationGesturesManager extends FragmentNewsBinding {
        public LocationGesturesManager(Context context) {
            super(context, true);
        }

        @Override // org.wikipedia.databinding.FragmentNewsBinding
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent != null && motionEvent.getActionMasked() == 1) {
                LocationCameraController.this.adjustGesturesThresholds();
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.maplibre.android.location.LocationCameraController$2] */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.maplibre.android.location.LocationCameraController$2] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.maplibre.android.location.LocationCameraController$2] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v4, types: [org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0] */
    public LocationCameraController(Context context, MapLibreMap mapLibreMap, Transform transform, LocationComponent.AnonymousClass8 anonymousClass8, LocationComponentOptions locationComponentOptions, LocationComponent.AnonymousClass6 anonymousClass6) {
        final int i = 0;
        this.latLngValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController.2
            public final /* synthetic */ LocationCameraController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i2 = i;
                LocationCameraController locationCameraController = this.this$0;
                switch (i2) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.lastLocation = latLng;
                            Transform transform2 = locationCameraController.transform;
                            MapLibreMap mapLibreMap2 = locationCameraController.maplibreMap;
                            latLng.getClass();
                            transform2.moveCamera(mapLibreMap2, new CameraUpdateFactory$CameraPositionUpdate(latLng, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        Float f = (Float) obj;
                        if (locationCameraController.cameraMode != 36 || locationCameraController.maplibreMap.transform.getCameraPosition().bearing != 0.0d) {
                            locationCameraController.setBearing(f.floatValue());
                            break;
                        }
                        break;
                    default:
                        Float f2 = (Float) obj;
                        int i3 = locationCameraController.cameraMode;
                        if (i3 == 32 || i3 == 16) {
                            locationCameraController.setBearing(f2.floatValue());
                            break;
                        }
                        break;
                }
            }
        };
        final int i2 = 1;
        this.gpsBearingValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController.2
            public final /* synthetic */ LocationCameraController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i22 = i2;
                LocationCameraController locationCameraController = this.this$0;
                switch (i22) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.lastLocation = latLng;
                            Transform transform2 = locationCameraController.transform;
                            MapLibreMap mapLibreMap2 = locationCameraController.maplibreMap;
                            latLng.getClass();
                            transform2.moveCamera(mapLibreMap2, new CameraUpdateFactory$CameraPositionUpdate(latLng, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        Float f = (Float) obj;
                        if (locationCameraController.cameraMode != 36 || locationCameraController.maplibreMap.transform.getCameraPosition().bearing != 0.0d) {
                            locationCameraController.setBearing(f.floatValue());
                            break;
                        }
                        break;
                    default:
                        Float f2 = (Float) obj;
                        int i3 = locationCameraController.cameraMode;
                        if (i3 == 32 || i3 == 16) {
                            locationCameraController.setBearing(f2.floatValue());
                            break;
                        }
                        break;
                }
            }
        };
        final int i3 = 2;
        this.compassBearingValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController.2
            public final /* synthetic */ LocationCameraController this$0;

            {
                this.this$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i22 = i3;
                LocationCameraController locationCameraController = this.this$0;
                switch (i22) {
                    case 0:
                        LatLng latLng = (LatLng) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.lastLocation = latLng;
                            Transform transform2 = locationCameraController.transform;
                            MapLibreMap mapLibreMap2 = locationCameraController.maplibreMap;
                            latLng.getClass();
                            transform2.moveCamera(mapLibreMap2, new CameraUpdateFactory$CameraPositionUpdate(latLng, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        Float f = (Float) obj;
                        if (locationCameraController.cameraMode != 36 || locationCameraController.maplibreMap.transform.getCameraPosition().bearing != 0.0d) {
                            locationCameraController.setBearing(f.floatValue());
                            break;
                        }
                        break;
                    default:
                        Float f2 = (Float) obj;
                        int i32 = locationCameraController.cameraMode;
                        if (i32 == 32 || i32 == 16) {
                            locationCameraController.setBearing(f2.floatValue());
                            break;
                        }
                        break;
                }
            }
        };
        this.zoomValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0
            public final /* synthetic */ LocationCameraController f$0;

            {
                this.f$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i4 = i;
                LocationCameraController locationCameraController = this.f$0;
                switch (i4) {
                    case 0:
                        float floatValue = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            final double d = floatValue;
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdate(d) { // from class: org.maplibre.android.camera.CameraUpdateFactory$ZoomUpdate
                                public final double zoom;

                                {
                                    this.zoom = d;
                                }

                                public final boolean equals(Object obj2) {
                                    if (this == obj2) {
                                        return true;
                                    }
                                    return obj2 != null && CameraUpdateFactory$ZoomUpdate.class.equals(obj2.getClass()) && Double.compare(((CameraUpdateFactory$ZoomUpdate) obj2).zoom, this.zoom) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0;
                                }

                                @Override // org.maplibre.android.camera.CameraUpdate
                                public final CameraPosition getCameraPosition(MapLibreMap mapLibreMap2) {
                                    mapLibreMap2.getClass();
                                    CameraPosition cameraPosition = mapLibreMap2.transform.getCameraPosition();
                                    cameraPosition.getClass();
                                    double d2 = cameraPosition.bearing;
                                    return new CameraPosition(cameraPosition.target, this.zoom, cameraPosition.tilt, d2, cameraPosition.padding);
                                }

                                public final int hashCode() {
                                    long doubleToLongBits = Double.doubleToLongBits(this.zoom);
                                    return (93 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 961;
                                }

                                public final String toString() {
                                    return "ZoomUpdate{type=3, zoom=" + this.zoom + ", x=0.0, y=0.0}";
                                }
                            }, null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, dArr), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    default:
                        float floatValue2 = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, floatValue2, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                }
            }
        };
        this.paddingValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0
            public final /* synthetic */ LocationCameraController f$0;

            {
                this.f$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i4 = i2;
                LocationCameraController locationCameraController = this.f$0;
                switch (i4) {
                    case 0:
                        float floatValue = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            final double d = floatValue;
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdate(d) { // from class: org.maplibre.android.camera.CameraUpdateFactory$ZoomUpdate
                                public final double zoom;

                                {
                                    this.zoom = d;
                                }

                                public final boolean equals(Object obj2) {
                                    if (this == obj2) {
                                        return true;
                                    }
                                    return obj2 != null && CameraUpdateFactory$ZoomUpdate.class.equals(obj2.getClass()) && Double.compare(((CameraUpdateFactory$ZoomUpdate) obj2).zoom, this.zoom) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0;
                                }

                                @Override // org.maplibre.android.camera.CameraUpdate
                                public final CameraPosition getCameraPosition(MapLibreMap mapLibreMap2) {
                                    mapLibreMap2.getClass();
                                    CameraPosition cameraPosition = mapLibreMap2.transform.getCameraPosition();
                                    cameraPosition.getClass();
                                    double d2 = cameraPosition.bearing;
                                    return new CameraPosition(cameraPosition.target, this.zoom, cameraPosition.tilt, d2, cameraPosition.padding);
                                }

                                public final int hashCode() {
                                    long doubleToLongBits = Double.doubleToLongBits(this.zoom);
                                    return (93 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 961;
                                }

                                public final String toString() {
                                    return "ZoomUpdate{type=3, zoom=" + this.zoom + ", x=0.0, y=0.0}";
                                }
                            }, null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, dArr), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    default:
                        float floatValue2 = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, floatValue2, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                }
            }
        };
        this.tiltValueListener = new MapLibreAnimator.AnimationsValueChangeListener(this) { // from class: org.maplibre.android.location.LocationCameraController$$ExternalSyntheticLambda0
            public final /* synthetic */ LocationCameraController f$0;

            {
                this.f$0 = this;
            }

            @Override // org.maplibre.android.location.MapLibreAnimator.AnimationsValueChangeListener
            public final void onNewAnimationValue(Object obj) {
                int i4 = i3;
                LocationCameraController locationCameraController = this.f$0;
                switch (i4) {
                    case 0:
                        float floatValue = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            final double d = floatValue;
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdate(d) { // from class: org.maplibre.android.camera.CameraUpdateFactory$ZoomUpdate
                                public final double zoom;

                                {
                                    this.zoom = d;
                                }

                                public final boolean equals(Object obj2) {
                                    if (this == obj2) {
                                        return true;
                                    }
                                    return obj2 != null && CameraUpdateFactory$ZoomUpdate.class.equals(obj2.getClass()) && Double.compare(((CameraUpdateFactory$ZoomUpdate) obj2).zoom, this.zoom) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0 && Float.compare(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) == 0;
                                }

                                @Override // org.maplibre.android.camera.CameraUpdate
                                public final CameraPosition getCameraPosition(MapLibreMap mapLibreMap2) {
                                    mapLibreMap2.getClass();
                                    CameraPosition cameraPosition = mapLibreMap2.transform.getCameraPosition();
                                    cameraPosition.getClass();
                                    double d2 = cameraPosition.bearing;
                                    return new CameraPosition(cameraPosition.target, this.zoom, cameraPosition.tilt, d2, cameraPosition.padding);
                                }

                                public final int hashCode() {
                                    long doubleToLongBits = Double.doubleToLongBits(this.zoom);
                                    return (93 + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)))) * 961;
                                }

                                public final String toString() {
                                    return "ZoomUpdate{type=3, zoom=" + this.zoom + ", x=0.0, y=0.0}";
                                }
                            }, null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, dArr), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                    default:
                        float floatValue2 = ((Float) obj).floatValue();
                        if (!locationCameraController.isTransitioning) {
                            locationCameraController.transform.moveCamera(locationCameraController.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, -1.0d, -1.0d, floatValue2, -1.0d, -1.0d, -1.0d, null), null);
                            LocationComponent.this.onCameraMoveListener.onCameraMove();
                            break;
                        }
                        break;
                }
            }
        };
        LocationComponent.AnonymousClass1 anonymousClass1 = new LocationComponent.AnonymousClass1(1, this);
        AnonymousClass6 anonymousClass62 = new AnonymousClass6();
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        AnonymousClass8 anonymousClass82 = new AnonymousClass8();
        this.maplibreMap = mapLibreMap;
        this.transform = transform;
        this.initialGesturesManager = ((MapView) mapLibreMap.onGesturesManagerInteractionListener.iconMap).mapGestureDetector.gesturesManager;
        LocationGesturesManager locationGesturesManager = new LocationGesturesManager(context);
        this.internalGesturesManager = locationGesturesManager;
        this.moveGestureDetector = (MoveGestureDetector) locationGesturesManager.toolbarContainer;
        IconManager iconManager = mapLibreMap.onGesturesManagerInteractionListener;
        ((MapView) iconManager.iconMap).mapGestureDetector.onRotateListenerList.add(anonymousClass7);
        MapView mapView = (MapView) iconManager.iconMap;
        mapView.mapGestureDetector.onFlingListenerList.add(anonymousClass82);
        mapView.mapGestureDetector.onMoveListenerList.add(anonymousClass62);
        mapLibreMap.cameraChangeDispatcher.onCameraMove.add(anonymousClass1);
        this.internalCameraTrackingChangedListener = anonymousClass8;
        this.onCameraMoveInvalidateListener = anonymousClass6;
        initializeOptions(locationComponentOptions);
    }

    public final void adjustGesturesThresholds() {
        if (this.options.trackingGesturesManagement) {
            boolean isLocationTracking = isLocationTracking();
            MoveGestureDetector moveGestureDetector = this.moveGestureDetector;
            if (isLocationTracking) {
                moveGestureDetector.moveThreshold = this.options.trackingInitialMoveThreshold;
            } else {
                moveGestureDetector.moveThreshold = ((MoveGestureDetector) this.initialGesturesManager.toolbarContainer).moveThreshold;
                moveGestureDetector.moveThresholdRect = null;
            }
        }
    }

    public final void initializeOptions(LocationComponentOptions locationComponentOptions) {
        this.options = locationComponentOptions;
        boolean z = locationComponentOptions.trackingGesturesManagement;
        MapLibreMap mapLibreMap = this.maplibreMap;
        if (z) {
            MapView mapView = (MapView) mapLibreMap.onGesturesManagerInteractionListener.iconMap;
            MapGestureDetector mapGestureDetector = mapView.mapGestureDetector;
            FragmentNewsBinding fragmentNewsBinding = mapGestureDetector.gesturesManager;
            LocationGesturesManager locationGesturesManager = this.internalGesturesManager;
            if (fragmentNewsBinding != locationGesturesManager) {
                Context context = mapView.getContext();
                mapGestureDetector.initializeGesturesManager(locationGesturesManager);
                mapGestureDetector.initializeGestureListeners(context);
            }
            adjustGesturesThresholds();
            return;
        }
        MapView mapView2 = (MapView) mapLibreMap.onGesturesManagerInteractionListener.iconMap;
        MapGestureDetector mapGestureDetector2 = mapView2.mapGestureDetector;
        FragmentNewsBinding fragmentNewsBinding2 = mapGestureDetector2.gesturesManager;
        FragmentNewsBinding fragmentNewsBinding3 = this.initialGesturesManager;
        if (fragmentNewsBinding2 != fragmentNewsBinding3) {
            Context context2 = mapView2.getContext();
            mapGestureDetector2.initializeGesturesManager(fragmentNewsBinding3);
            mapGestureDetector2.initializeGestureListeners(context2);
        }
    }

    public final boolean isBearingTracking() {
        int i = this.cameraMode;
        return i == 16 || i == 32 || i == 22 || i == 34 || i == 36;
    }

    public final boolean isLocationTracking() {
        int i = this.cameraMode;
        return i == 24 || i == 32 || i == 34 || i == 36;
    }

    public final void setBearing(float f) {
        if (this.isTransitioning) {
            return;
        }
        this.transform.moveCamera(this.maplibreMap, new CameraUpdateFactory$CameraPositionUpdate(null, f, -1.0d, -1.0d, -1.0d, -1.0d, -1.0d, null), null);
        LocationComponent.this.onCameraMoveListener.onCameraMove();
    }

    public final void setCameraMode(int i, Location location, LocationComponent.AnonymousClass6 anonymousClass6) {
        double d;
        if (this.cameraMode == i) {
            if (anonymousClass6 != null) {
                anonymousClass6.onLocationCameraTransitionFinished(i);
                return;
            }
            return;
        }
        boolean isLocationTracking = isLocationTracking();
        this.cameraMode = i;
        MapLibreMap mapLibreMap = this.maplibreMap;
        if (i != 8) {
            mapLibreMap.transform.cancelTransitions();
        }
        adjustGesturesThresholds();
        LocationComponent.AnonymousClass8 anonymousClass8 = this.internalCameraTrackingChangedListener;
        anonymousClass8.onCameraTrackingChanged();
        if (isLocationTracking && !isLocationTracking()) {
            UiSettings uiSettings = mapLibreMap.uiSettings;
            uiSettings.userProvidedFocalPoint = null;
            uiSettings.focalPointChangeListener.onFocalPointChanged(null);
            anonymousClass8.onCameraTrackingDismissed();
        }
        if (isLocationTracking || !isLocationTracking() || location == null || !this.isEnabled) {
            if (anonymousClass6 != null) {
                anonymousClass6.onLocationCameraTransitionFinished(this.cameraMode);
                return;
            }
            return;
        }
        this.isTransitioning = true;
        LatLng latLng = new LatLng(location);
        int i2 = this.cameraMode;
        if (i2 == 34 || i2 == 36 || i2 == 22) {
            double bearing = i2 == 36 ? 0.0d : location.getBearing();
            while (bearing >= 360.0d) {
                bearing -= 360.0d;
            }
            while (bearing < 0.0d) {
                bearing += 360.0d;
            }
            d = bearing;
        } else {
            d = -1.0d;
        }
        CameraUpdateFactory$CameraPositionUpdate newCameraPosition = TabUtil.newCameraPosition(new CameraPosition(latLng, -1.0d, -1.0d, d, null));
        FormBody.Builder builder = new FormBody.Builder(26, this, anonymousClass6);
        boolean immediateAnimation = UriUtil.immediateAnimation(mapLibreMap.projection, mapLibreMap.transform.getCameraPosition().target, latLng);
        Transform transform = this.transform;
        if (immediateAnimation) {
            transform.moveCamera(mapLibreMap, newCameraPosition, builder);
        } else {
            transform.animateCamera(mapLibreMap, newCameraPosition, 750, builder);
        }
    }
}
