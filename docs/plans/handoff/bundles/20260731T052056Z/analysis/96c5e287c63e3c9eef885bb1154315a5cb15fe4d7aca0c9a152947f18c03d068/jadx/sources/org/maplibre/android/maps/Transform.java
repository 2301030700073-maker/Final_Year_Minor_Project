package org.maplibre.android.maps;

import android.graphics.PointF;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.FormBody;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.camera.CameraUpdate;
import org.maplibre.android.camera.CameraUpdateFactory$CameraPositionUpdate;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Transform implements MapView.OnCameraDidChangeListener {
    public FormBody.Builder cameraCancelableCallback;
    public final CameraChangeDispatcher cameraChangeDispatcher;
    public CameraPosition cameraPosition;
    public final MapView mapView;
    public final NativeMap nativeMap;
    public final Handler handler = new Handler(Looper.getMainLooper());
    public final AnonymousClass1 moveByChangeListener = new MapView.OnCameraDidChangeListener() { // from class: org.maplibre.android.maps.Transform.1
        @Override // org.maplibre.android.maps.MapView.OnCameraDidChangeListener
        public final void onCameraDidChange(boolean z) {
            if (z) {
                Transform transform = Transform.this;
                transform.cameraChangeDispatcher.onCameraIdle();
                ((CopyOnWriteArrayList) transform.mapView.mapChangeReceiver.onCameraDidChangeListenerList).remove(this);
            }
        }
    };

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.Transform$2, reason: invalid class name */
    public final class AnonymousClass2 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ MapLibreMap.CancelableCallback val$callback;

        public /* synthetic */ AnonymousClass2(MapLibreMap.CancelableCallback cancelableCallback, int i) {
            this.$r8$classId = i;
            this.val$callback = cancelableCallback;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            MapLibreMap.CancelableCallback cancelableCallback = this.val$callback;
            switch (i) {
                case 0:
                    cancelableCallback.onFinish();
                    break;
                case 1:
                    if (cancelableCallback != null) {
                        cancelableCallback.onFinish();
                        break;
                    }
                    break;
                default:
                    cancelableCallback.onCancel();
                    break;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.maplibre.android.maps.Transform$1] */
    public Transform(MapView mapView, NativeMap nativeMap, CameraChangeDispatcher cameraChangeDispatcher) {
        this.mapView = mapView;
        this.nativeMap = nativeMap;
        this.cameraChangeDispatcher = cameraChangeDispatcher;
    }

    public final void animateCamera(MapLibreMap mapLibreMap, CameraUpdateFactory$CameraPositionUpdate cameraUpdateFactory$CameraPositionUpdate, int i, FormBody.Builder builder) {
        CameraPosition cameraPosition = cameraUpdateFactory$CameraPositionUpdate.getCameraPosition(mapLibreMap);
        if (cameraPosition.equals(this.cameraPosition)) {
            builder.onFinish();
            return;
        }
        cancelTransitions();
        this.cameraChangeDispatcher.onCameraMoveStarted(3);
        this.cameraCancelableCallback = builder;
        ((CopyOnWriteArrayList) this.mapView.mapChangeReceiver.onCameraDidChangeListenerList).add(this);
        ((NativeMapView) this.nativeMap).flyTo(cameraPosition.target, cameraPosition.zoom, cameraPosition.bearing, cameraPosition.tilt, cameraPosition.padding, i);
    }

    public final void cancelTransitions() {
        CameraChangeDispatcher cameraChangeDispatcher = this.cameraChangeDispatcher;
        int i = 2;
        cameraChangeDispatcher.handler.scheduleMessage(2);
        FormBody.Builder builder = this.cameraCancelableCallback;
        if (builder != null) {
            cameraChangeDispatcher.onCameraIdle();
            this.cameraCancelableCallback = null;
            this.handler.post(new AnonymousClass2(builder, i));
        }
        ((NativeMapView) this.nativeMap).cancelTransitions();
        cameraChangeDispatcher.onCameraIdle();
    }

    public final CameraPosition getCameraPosition() {
        CameraPosition cameraPosition = this.cameraPosition;
        if (cameraPosition != null) {
            return cameraPosition;
        }
        CameraPosition invalidateCameraPosition = invalidateCameraPosition();
        this.cameraPosition = invalidateCameraPosition;
        return invalidateCameraPosition;
    }

    public final double getRawBearing() {
        return ((NativeMapView) this.nativeMap).getBearing();
    }

    public final double getRawZoom() {
        return ((NativeMapView) this.nativeMap).getZoom();
    }

    public final double getTilt() {
        return ((NativeMapView) this.nativeMap).getPitch();
    }

    public final CameraPosition invalidateCameraPosition() {
        NativeMap nativeMap = this.nativeMap;
        if (nativeMap != null) {
            CameraPosition cameraPosition = ((NativeMapView) nativeMap).getCameraPosition();
            CameraPosition cameraPosition2 = this.cameraPosition;
            if (cameraPosition2 != null && !cameraPosition2.equals(cameraPosition)) {
                this.cameraChangeDispatcher.onCameraMove();
            }
            this.cameraPosition = cameraPosition;
        }
        return this.cameraPosition;
    }

    public final void moveBy(double d, double d2, long j) {
        if (j > 0) {
            ((CopyOnWriteArrayList) this.mapView.mapChangeReceiver.onCameraDidChangeListenerList).add(this.moveByChangeListener);
        }
        ((NativeMapView) this.nativeMap).moveBy(d, d2, j);
    }

    public final void moveCamera(MapLibreMap mapLibreMap, CameraUpdate cameraUpdate, MapLibreMap.CancelableCallback cancelableCallback) {
        CameraPosition cameraPosition = cameraUpdate.getCameraPosition(mapLibreMap);
        if (cameraPosition == null || cameraPosition.equals(this.cameraPosition)) {
            if (cancelableCallback != null) {
                cancelableCallback.onFinish();
                return;
            }
            return;
        }
        cancelTransitions();
        CameraChangeDispatcher cameraChangeDispatcher = this.cameraChangeDispatcher;
        cameraChangeDispatcher.onCameraMoveStarted(3);
        ((NativeMapView) this.nativeMap).jumpTo(cameraPosition.target, cameraPosition.zoom, cameraPosition.tilt, cameraPosition.bearing, cameraPosition.padding);
        invalidateCameraPosition();
        cameraChangeDispatcher.onCameraIdle();
        this.handler.post(new AnonymousClass2(cancelableCallback, 1));
    }

    @Override // org.maplibre.android.maps.MapView.OnCameraDidChangeListener
    public final void onCameraDidChange(boolean z) {
        if (z) {
            invalidateCameraPosition();
            FormBody.Builder builder = this.cameraCancelableCallback;
            if (builder != null) {
                this.cameraCancelableCallback = null;
                this.handler.post(new AnonymousClass2(builder, 0));
            }
            this.cameraChangeDispatcher.onCameraIdle();
            ((CopyOnWriteArrayList) this.mapView.mapChangeReceiver.onCameraDidChangeListenerList).remove(this);
        }
    }

    public final void setMaxZoom(double d) {
        if (d >= 0.0d && d <= 25.5d) {
            ((NativeMapView) this.nativeMap).setMaxZoom(d);
            return;
        }
        Logger.e("Mbgl-Transform", "Not setting maxZoomPreference, value is in unsupported range: " + d);
    }

    public final void setZoom(double d, PointF pointF) {
        ((NativeMapView) this.nativeMap).setZoom(d, pointF);
    }

    public final void zoomBy(double d, PointF pointF) {
        setZoom(((NativeMapView) this.nativeMap).getZoom() + d, pointF);
    }
}
