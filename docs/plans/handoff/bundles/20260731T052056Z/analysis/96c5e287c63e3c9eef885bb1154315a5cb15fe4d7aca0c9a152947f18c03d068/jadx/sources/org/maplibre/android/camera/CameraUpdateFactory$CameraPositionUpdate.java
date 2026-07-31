package org.maplibre.android.camera;

import androidx.compose.animation.core.Animation;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.maps.MapLibreMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CameraUpdateFactory$CameraPositionUpdate implements CameraUpdate {
    public final double bearing;
    public final double centerAltitude;
    public final double fov;
    public final double[] padding;
    public final double roll;
    public final LatLng target;
    public final double tilt;
    public final double zoom;

    public CameraUpdateFactory$CameraPositionUpdate(LatLng latLng, double d, double d2, double d3, double d4, double d5, double d6, double[] dArr) {
        this.bearing = d;
        this.target = latLng;
        this.centerAltitude = d2;
        this.tilt = d3;
        this.roll = d4;
        this.fov = d5;
        this.zoom = d6;
        this.padding = dArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !CameraUpdateFactory$CameraPositionUpdate.class.equals(obj.getClass())) {
            return false;
        }
        CameraUpdateFactory$CameraPositionUpdate cameraUpdateFactory$CameraPositionUpdate = (CameraUpdateFactory$CameraPositionUpdate) obj;
        if (Double.compare(cameraUpdateFactory$CameraPositionUpdate.bearing, this.bearing) != 0 || Double.compare(cameraUpdateFactory$CameraPositionUpdate.tilt, this.tilt) != 0 || Double.compare(cameraUpdateFactory$CameraPositionUpdate.roll, this.roll) != 0 || Double.compare(cameraUpdateFactory$CameraPositionUpdate.fov, this.fov) != 0 || Double.compare(cameraUpdateFactory$CameraPositionUpdate.zoom, this.zoom) != 0 || Double.compare(cameraUpdateFactory$CameraPositionUpdate.centerAltitude, this.centerAltitude) != 0) {
            return false;
        }
        LatLng latLng = cameraUpdateFactory$CameraPositionUpdate.target;
        LatLng latLng2 = this.target;
        if (latLng2 == null ? latLng == null : Intrinsics.areEqual(latLng2, latLng)) {
            return Arrays.equals(this.padding, cameraUpdateFactory$CameraPositionUpdate.padding);
        }
        return false;
    }

    @Override // org.maplibre.android.camera.CameraUpdate
    public final CameraPosition getCameraPosition(MapLibreMap mapLibreMap) {
        mapLibreMap.getClass();
        LatLng latLng = this.target;
        if (latLng != null) {
            return new CameraPosition(latLng, this.zoom, this.tilt, this.bearing, this.padding);
        }
        CameraPosition cameraPosition = mapLibreMap.transform.getCameraPosition();
        cameraPosition.getClass();
        return new CameraPosition(cameraPosition.target, this.zoom, this.tilt, this.bearing, this.padding);
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.bearing);
        int i = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31;
        LatLng latLng = this.target;
        int hashCode = latLng != null ? latLng.hashCode() : 0;
        long doubleToLongBits2 = Double.doubleToLongBits(this.centerAltitude);
        int i2 = ((i + hashCode) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.tilt);
        int i3 = (i2 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.roll);
        int i4 = (i3 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)));
        long doubleToLongBits5 = Double.doubleToLongBits(this.fov);
        int i5 = (i4 * 31) + ((int) (doubleToLongBits5 ^ (doubleToLongBits5 >>> 32)));
        long doubleToLongBits6 = Double.doubleToLongBits(this.zoom);
        return Arrays.hashCode(this.padding) + (((i5 * 31) + ((int) ((doubleToLongBits6 >>> 32) ^ doubleToLongBits6))) * 31);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.padding);
        StringBuilder sb = new StringBuilder("CameraPositionUpdate{bearing=");
        sb.append(this.bearing);
        sb.append(", target=");
        sb.append(this.target);
        sb.append(", centerAltitude=");
        sb.append(this.centerAltitude);
        sb.append(", tilt=");
        sb.append(this.tilt);
        sb.append(", roll=");
        sb.append(this.roll);
        sb.append(", fov=");
        sb.append(this.fov);
        sb.append(", zoom=");
        sb.append(this.zoom);
        sb.append(", padding=");
        return Animation.CC.m(sb, arrays, "}");
    }
}
