package org.maplibre.android.maps;

import android.graphics.PointF;
import android.graphics.RectF;
import android.text.TextUtils;
import android.widget.ImageView;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.Style;
import org.maplibre.android.maps.widgets.CompassView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapLibreMap {
    public HCaptcha annotationManager;
    public final ArrayList awaitingStyleGetters = new ArrayList();
    public final CameraChangeDispatcher cameraChangeDispatcher;
    public boolean debugActive;
    public final ArrayList developerAnimationStartedListeners;
    public LocationComponent locationComponent;
    public final NativeMap nativeMapView;
    public final IconManager onGesturesManagerInteractionListener;
    public final MapView.AnonymousClass2 projection;
    public boolean started;
    public Style style;
    public Style.OnStyleLoaded styleLoadedCallback;
    public final Transform transform;
    public final UiSettings uiSettings;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnCameraIdleListener {
        void onCameraIdle();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnCameraMoveListener {
        void onCameraMove();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnFpsChangedListener {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnMapClickListener {
        boolean onMapClick(LatLng latLng);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnMapLongClickListener {
        boolean onMapLongClick(LatLng latLng);
    }

    public MapLibreMap(NativeMap nativeMap, Transform transform, UiSettings uiSettings, MapView.AnonymousClass2 anonymousClass2, IconManager iconManager, CameraChangeDispatcher cameraChangeDispatcher, ArrayList arrayList) {
        this.nativeMapView = nativeMap;
        this.uiSettings = uiSettings;
        this.projection = anonymousClass2;
        this.transform = transform;
        this.onGesturesManagerInteractionListener = iconManager;
        this.cameraChangeDispatcher = cameraChangeDispatcher;
        this.developerAnimationStartedListeners = arrayList;
    }

    public final void easeCamera(CameraUpdateFactory$CameraPositionUpdate cameraUpdateFactory$CameraPositionUpdate) {
        notifyDeveloperAnimationListeners();
        CameraPosition cameraPosition = cameraUpdateFactory$CameraPositionUpdate.getCameraPosition(this);
        Transform transform = this.transform;
        if (cameraPosition.equals(transform.cameraPosition)) {
            return;
        }
        transform.cancelTransitions();
        transform.cameraChangeDispatcher.onCameraMoveStarted(3);
        ((CopyOnWriteArrayList) transform.mapView.mapChangeReceiver.onCameraDidChangeListenerList).add(transform);
        ((NativeMapView) transform.nativeMap).easeTo(cameraPosition.target, cameraPosition.zoom, cameraPosition.bearing, cameraPosition.tilt, cameraPosition.padding, 1000L);
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, int[] iArr, double d, double d2) {
        return ((NativeMapView) this.nativeMapView).getCameraForLatLngBounds(latLngBounds, iArr, d, d2);
    }

    public final double getMaxZoomLevel() {
        return ((NativeMapView) this.transform.nativeMap).getMaxZoom();
    }

    public final double getMinZoomLevel() {
        return ((NativeMapView) this.transform.nativeMap).getMinZoom();
    }

    public final Style getStyle() {
        Style style = this.style;
        if (style == null || !style.fullyLoaded) {
            return null;
        }
        return style;
    }

    public final void notifyDeveloperAnimationListeners() {
        Iterator it = this.developerAnimationStartedListeners.iterator();
        while (it.hasNext()) {
            LocationComponent locationComponent = LocationComponent.this;
            if (locationComponent.isComponentInitialized && locationComponent.isEnabled) {
                locationComponent.setCameraMode(8);
            }
        }
    }

    public final void onUpdateRegionChange() {
        ArrayList arrayList = (ArrayList) ((IconManager) this.annotationManager.onSuccessListeners).iconMap;
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw null;
        }
    }

    public final List queryRenderedFeatures(PointF pointF, String... strArr) {
        return ((NativeMapView) this.nativeMapView).queryRenderedFeatures(pointF, strArr);
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        int[] iArr = {i, i2, i3, i4};
        double[] dArr = new double[4];
        for (int i5 = 0; i5 < 4; i5++) {
            dArr[i5] = iArr[i5];
        }
        NativeMapView nativeMapView = (NativeMapView) ((NativeMap) this.projection.val$cameraChangeDispatcher);
        if (!nativeMapView.checkState("setContentPadding")) {
            nativeMapView.edgeInsets = dArr;
        }
        UiSettings uiSettings = this.uiSettings;
        int[] iArr2 = uiSettings.logoMargins;
        int i6 = iArr2[0];
        int i7 = iArr2[1];
        int i8 = iArr2[2];
        int i9 = iArr2[3];
        ImageView imageView = uiSettings.logoView;
        if (imageView != null) {
            UiSettings.setWidgetMargins(i6, i7, i8, i9, imageView, iArr2);
        }
        CompassView compassView = uiSettings.compassView;
        uiSettings.setCompassEnabled(compassView != null ? compassView.isEnabled() : false);
        int[] iArr3 = uiSettings.compassMargins;
        int i10 = iArr3[0];
        int i11 = iArr3[1];
        int i12 = iArr3[2];
        int i13 = iArr3[3];
        CompassView compassView2 = uiSettings.compassView;
        if (compassView2 != null) {
            UiSettings.setWidgetMargins(i10, i11, i12, i13, compassView2, iArr3);
        }
        int[] iArr4 = uiSettings.attributionsMargins;
        uiSettings.setAttributionMargins(iArr4[0], iArr4[1], iArr4[2], iArr4[3]);
    }

    public final void setStyle(Style.Builder builder, Style.OnStyleLoaded onStyleLoaded) {
        this.styleLoadedCallback = onStyleLoaded;
        this.locationComponent.onLocationLayerStop();
        Style style = this.style;
        if (style != null) {
            style.clear();
        }
        NativeMap nativeMap = this.nativeMapView;
        this.style = new Style(builder, nativeMap);
        if (!TextUtils.isEmpty((String) builder.styleUri)) {
            ((NativeMapView) nativeMap).setStyleUri((String) builder.styleUri);
        } else if (TextUtils.isEmpty(null)) {
            ((NativeMapView) nativeMap).setStyleJson("{\"version\": 8,\"sources\": {},\"layers\": []}");
        } else {
            ((NativeMapView) nativeMap).setStyleJson(null);
        }
    }

    public final List queryRenderedFeatures(RectF rectF, String... strArr) {
        return ((NativeMapView) this.nativeMapView).queryRenderedFeatures(rectF, strArr);
    }
}
