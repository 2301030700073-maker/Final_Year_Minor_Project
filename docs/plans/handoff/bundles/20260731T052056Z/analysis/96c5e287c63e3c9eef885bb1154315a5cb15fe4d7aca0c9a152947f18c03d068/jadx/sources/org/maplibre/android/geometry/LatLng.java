package org.maplibre.android.geometry;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.util.DefaultStyle;
import org.maplibre.geojson.Point;
import org.maplibre.turf.TurfConversion;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0019\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R,\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u00028\u0006@FX\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR,\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00028\u0006@FX\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000b¨\u0006\u000e"}, d2 = {"Lorg/maplibre/android/geometry/LatLng;", "Landroid/os/Parcelable;", "", "latitude", "longitude", "<init>", "(DD)V", "D", "getLatitude", "()D", "setLatitude", "(D)V", "getLongitude", "setLongitude", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LatLng implements Parcelable {
    public static final Parcelable.Creator<LatLng> CREATOR = new DefaultStyle.AnonymousClass1(5);
    public final double altitude;
    private double latitude;
    private double longitude;

    public LatLng(Location location) {
        location.getClass();
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();
        double altitude = location.getAltitude();
        setLatitude(latitude);
        setLongitude(longitude);
        this.altitude = altitude;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final double distanceTo(LatLng latLng) {
        latLng.getClass();
        Point fromLngLat = Point.fromLngLat(this.longitude, this.latitude);
        Point fromLngLat2 = Point.fromLngLat(latLng.longitude, latLng.latitude);
        double degreesToRadians = TurfConversion.degreesToRadians(fromLngLat2.latitude() - fromLngLat.latitude());
        double degreesToRadians2 = TurfConversion.degreesToRadians(fromLngLat2.longitude() - fromLngLat.longitude());
        double degreesToRadians3 = TurfConversion.degreesToRadians(fromLngLat.latitude());
        double degreesToRadians4 = TurfConversion.degreesToRadians(fromLngLat2.latitude());
        double cos = (Math.cos(degreesToRadians4) * Math.cos(degreesToRadians3) * Math.pow(Math.sin(degreesToRadians2 / 2.0d), 2.0d)) + Math.pow(Math.sin(degreesToRadians / 2.0d), 2.0d);
        return ((Double) TurfConversion.FACTORS.get("metres")).doubleValue() * Math.atan2(Math.sqrt(cos), Math.sqrt(1.0d - cos)) * 2.0d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LatLng.class.equals(obj.getClass())) {
            LatLng latLng = (LatLng) obj;
            if (Double.compare(latLng.altitude, this.altitude) == 0 && Double.compare(latLng.latitude, this.latitude) == 0 && Double.compare(latLng.longitude, this.longitude) == 0) {
                return true;
            }
        }
        return false;
    }

    public final double getLatitude() {
        return this.latitude;
    }

    public final double getLongitude() {
        return this.longitude;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.latitude);
        long doubleToLongBits2 = Double.doubleToLongBits(this.longitude);
        int i = (((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.altitude);
        return (i * 31) + ((int) ((doubleToLongBits3 >>> 32) ^ doubleToLongBits3));
    }

    public final void setLatitude(double d) {
        if (Double.isNaN(d)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("latitude must not be NaN");
        } else if (Math.abs(d) <= 90.0d) {
            this.latitude = d;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("latitude must be between -90 and 90");
        }
    }

    public final void setLongitude(double d) {
        if (Double.isNaN(d)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("longitude must not be NaN");
        } else if (Double.isInfinite(d)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("longitude must not be infinite");
        } else {
            this.longitude = d;
        }
    }

    public final String toString() {
        return "LatLng [latitude=" + this.latitude + ", longitude=" + this.longitude + ", altitude=" + this.altitude + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeDouble(this.latitude);
        parcel.writeDouble(this.longitude);
        parcel.writeDouble(this.altitude);
    }

    public LatLng(double d, double d2) {
        setLatitude(d);
        setLongitude(d2);
    }

    public LatLng() {
        setLatitude(0.0d);
        setLongitude(0.0d);
    }

    public LatLng(Parcel parcel) {
        setLatitude(parcel.readDouble());
        setLongitude(parcel.readDouble());
        this.altitude = parcel.readDouble();
    }
}
