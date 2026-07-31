package org.maplibre.android.geometry;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 Q2\u00020\u0001:\u0002RQB)\b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\nJ\r\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\nJ\r\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0015\u001a\u00020\u0012H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u001d\u0010\u001fJ\u0015\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0000¢\u0006\u0004\b!\u0010\"J-\u0010!\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b!\u0010'J\u0017\u0010)\u001a\u0004\u0018\u00010\u00002\u0006\u0010(\u001a\u00020\u0000¢\u0006\u0004\b)\u0010\"J-\u0010)\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b)\u0010'J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010,J\u001f\u00102\u001a\u0002012\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020*H\u0016¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\u001a2\u0006\u00104\u001a\u00020\u0002H\u0002¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u00020\u001a2\u0006\u00107\u001a\u00020\u0002H\u0002¢\u0006\u0004\b8\u00106J/\u00109\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0002H\u0002¢\u0006\u0004\b9\u0010'J1\u0010:\u001a\u0004\u0018\u00010\u00002\u0006\u0010#\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u0002H\u0002¢\u0006\u0004\b:\u0010'R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010;R\u0014\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010;R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010;R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010;R\u0011\u0010>\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0011\u0010@\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\b?\u0010=R\u0011\u0010B\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\bA\u0010=R\u0011\u0010D\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\bC\u0010=R\u0011\u0010F\u001a\u00020\u00128F¢\u0006\u0006\u001a\u0004\bE\u0010=R\u0011\u0010J\u001a\u00020G8F¢\u0006\u0006\u001a\u0004\bH\u0010IR\u0011\u0010L\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bK\u0010\nR\u0011\u0010N\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\bM\u0010\nR\u0011\u0010O\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\bO\u0010P¨\u0006S"}, d2 = {"Lorg/maplibre/android/geometry/LatLngBounds;", "Landroid/os/Parcelable;", "", "latitudeNorth", "longitudeEast", "latitudeSouth", "longitudeWest", "<init>", "(DDDD)V", "getLatNorth", "()D", "getLatSouth", "getLonEast", "getLonWest", "", "toString", "()Ljava/lang/String;", "", "Lorg/maplibre/android/geometry/LatLng;", "toLatLngs", "()[Lorg/maplibre/android/geometry/LatLng;", "latLng", "include", "(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/LatLngBounds;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "contains", "(Lorg/maplibre/android/geometry/LatLng;)Z", "(Lorg/maplibre/android/geometry/LatLngBounds;)Z", "bounds", "union", "(Lorg/maplibre/android/geometry/LatLngBounds;)Lorg/maplibre/android/geometry/LatLngBounds;", "northLat", "eastLon", "southLat", "westLon", "(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;", "box", "intersect", "", "hashCode", "()I", "describeContents", "Landroid/os/Parcel;", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "latitude", "containsLatitude", "(D)Z", "longitude", "containsLongitude", "unionNoParamCheck", "intersectNoParamCheck", "D", "getCenter", "()Lorg/maplibre/android/geometry/LatLng;", "center", "getSouthWest", "southWest", "getNorthEast", "northEast", "getSouthEast", "southEast", "getNorthWest", "northWest", "Lorg/maplibre/android/geometry/LatLngSpan;", "getSpan", "()Lorg/maplibre/android/geometry/LatLngSpan;", "span", "getLatitudeSpan", "latitudeSpan", "getLongitudeSpan", "longitudeSpan", "isEmptySpan", "()Z", "Companion", "Builder", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LatLngBounds implements Parcelable {
    public final double latitudeNorth;
    public final double latitudeSouth;
    public final double longitudeEast;
    public final double longitudeWest;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion();
    public static final Parcelable.Creator<LatLngBounds> CREATOR = new DefaultStyle.AnonymousClass1(6);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static void checkParams(double d, double d2, double d3, double d4) {
            if (Double.isNaN(d) || Double.isNaN(d3)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("latitude must not be NaN");
                return;
            }
            if (Double.isNaN(d2) || Double.isNaN(d4)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("longitude must not be NaN");
                return;
            }
            if (Double.isInfinite(d2) || Double.isInfinite(d4)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("longitude must not be infinite");
                return;
            }
            if (d > 90.0d || d < -90.0d || d3 > 90.0d || d3 < -90.0d) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("latitude must be between -90 and 90");
            } else if (d < d3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("latNorth cannot be less than latSouth");
            } else {
                if (d2 >= d4) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("lonEast cannot be less than lonWest");
            }
        }

        public static double lat_(int i, int i2) {
            double pow = 3.141592653589793d - ((i2 * 6.283185307179586d) / Math.pow(2.0d, i));
            return Math.toDegrees(Math.atan((Math.exp(pow) - Math.exp(-pow)) * 0.5d));
        }
    }

    public LatLngBounds(double d, double d2, double d3, double d4) {
        this.latitudeNorth = d;
        this.longitudeEast = d2;
        this.latitudeSouth = d3;
        this.longitudeWest = d4;
    }

    private final boolean containsLatitude(double latitude) {
        return latitude <= this.latitudeNorth && latitude >= this.latitudeSouth;
    }

    private final boolean containsLongitude(double longitude) {
        return longitude <= this.longitudeEast && longitude >= this.longitudeWest;
    }

    public static final LatLngBounds from(int i, int i2, int i3) {
        INSTANCE.getClass();
        double d = i;
        return new LatLngBounds(Companion.lat_(i, i3), (((i2 + 1) / Math.pow(2.0d, d)) * 360.0d) - 180.0d, Companion.lat_(i, i3 + 1), ((i2 / Math.pow(2.0d, d)) * 360.0d) - 180.0d);
    }

    private final LatLngBounds intersectNoParamCheck(double northLat, double eastLon, double southLat, double westLon) {
        double max = Math.max(this.longitudeWest, westLon);
        double min = Math.min(this.longitudeEast, eastLon);
        if (min < max) {
            return null;
        }
        double max2 = Math.max(this.latitudeSouth, southLat);
        double min2 = Math.min(this.latitudeNorth, northLat);
        if (min2 >= max2) {
            return new LatLngBounds(min2, min, max2, max);
        }
        return null;
    }

    private final LatLngBounds unionNoParamCheck(double northLat, double eastLon, double southLat, double westLon) {
        double d = this.latitudeNorth;
        if (d >= northLat) {
            northLat = d;
        }
        double d2 = this.longitudeEast;
        if (d2 >= eastLon) {
            eastLon = d2;
        }
        double d3 = this.latitudeSouth;
        if (d3 <= southLat) {
            southLat = d3;
        }
        double d4 = this.longitudeWest;
        if (d4 <= westLon) {
            westLon = d4;
        }
        return new LatLngBounds(northLat, eastLon, southLat, westLon);
    }

    public static final LatLngBounds world() {
        INSTANCE.getClass();
        Companion.checkParams(90.0d, 180.0d, -90.0d, -180.0d);
        return new LatLngBounds(90.0d, 180.0d, -90.0d, -180.0d);
    }

    public final boolean contains(LatLng latLng) {
        latLng.getClass();
        return containsLatitude(latLng.getLatitude()) && containsLongitude(latLng.getLongitude());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof LatLngBounds) {
            LatLngBounds latLngBounds = (LatLngBounds) other;
            if (this.latitudeNorth == latLngBounds.latitudeNorth && this.latitudeSouth == latLngBounds.latitudeSouth && this.longitudeEast == latLngBounds.longitudeEast && this.longitudeWest == latLngBounds.longitudeWest) {
                return true;
            }
        }
        return false;
    }

    public final LatLng getCenter() {
        return new LatLng((this.latitudeNorth + this.latitudeSouth) / 2.0d, (this.longitudeEast + this.longitudeWest) / 2.0d);
    }

    /* renamed from: getLatNorth, reason: from getter */
    public final double getLatitudeNorth() {
        return this.latitudeNorth;
    }

    /* renamed from: getLatSouth, reason: from getter */
    public final double getLatitudeSouth() {
        return this.latitudeSouth;
    }

    public final double getLatitudeSpan() {
        return Math.abs(this.latitudeNorth - this.latitudeSouth);
    }

    /* renamed from: getLonEast, reason: from getter */
    public final double getLongitudeEast() {
        return this.longitudeEast;
    }

    /* renamed from: getLonWest, reason: from getter */
    public final double getLongitudeWest() {
        return this.longitudeWest;
    }

    public final double getLongitudeSpan() {
        return Math.abs(this.longitudeEast - this.longitudeWest);
    }

    public final LatLng getNorthEast() {
        return new LatLng(this.latitudeNorth, this.longitudeEast);
    }

    public final LatLng getNorthWest() {
        return new LatLng(this.latitudeNorth, this.longitudeWest);
    }

    public final LatLng getSouthEast() {
        return new LatLng(this.latitudeSouth, this.longitudeEast);
    }

    public final LatLng getSouthWest() {
        return new LatLng(this.latitudeSouth, this.longitudeWest);
    }

    public final LatLngSpan getSpan() {
        double latitudeSpan = getLatitudeSpan();
        double longitudeSpan = getLongitudeSpan();
        LatLngSpan latLngSpan = new LatLngSpan();
        latLngSpan.latitudeSpan = latitudeSpan;
        latLngSpan.longitudeSpan = longitudeSpan;
        return latLngSpan;
    }

    public int hashCode() {
        return (int) (((this.longitudeWest + 180.0d) * 1.0E9d) + ((this.longitudeEast + 180.0d) * 1000000.0d) + ((this.latitudeSouth + 90.0d) * 1000.0d) + this.latitudeNorth + 90.0d);
    }

    public final LatLngBounds include(LatLng latLng) {
        latLng.getClass();
        Headers.Builder builder = new Headers.Builder(6, (byte) 0);
        builder.include(getNorthEast());
        builder.include(getSouthWest());
        builder.namesAndValues.add(latLng);
        return builder.build();
    }

    public final LatLngBounds intersect(LatLngBounds box) {
        box.getClass();
        return intersectNoParamCheck(box.latitudeNorth, box.longitudeEast, box.latitudeSouth, box.longitudeWest);
    }

    public final boolean isEmptySpan() {
        return getLongitudeSpan() == 0.0d || getLatitudeSpan() == 0.0d;
    }

    public final LatLng[] toLatLngs() {
        return new LatLng[]{getNorthEast(), getSouthWest()};
    }

    public String toString() {
        return "N:" + this.latitudeNorth + "; E:" + this.longitudeEast + "; S:" + this.latitudeSouth + "; W:" + this.longitudeWest;
    }

    public final LatLngBounds union(LatLngBounds bounds) {
        bounds.getClass();
        return unionNoParamCheck(bounds.latitudeNorth, bounds.longitudeEast, bounds.latitudeSouth, bounds.longitudeWest);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int flags) {
        out.getClass();
        out.writeDouble(this.latitudeNorth);
        out.writeDouble(this.longitudeEast);
        out.writeDouble(this.latitudeSouth);
        out.writeDouble(this.longitudeWest);
    }

    public final LatLngBounds intersect(double northLat, double eastLon, double southLat, double westLon) {
        INSTANCE.getClass();
        Companion.checkParams(northLat, eastLon, southLat, westLon);
        LatLngBounds intersectNoParamCheck = intersectNoParamCheck(northLat, eastLon, southLat, westLon);
        intersectNoParamCheck.getClass();
        return intersectNoParamCheck;
    }

    public final LatLngBounds union(double northLat, double eastLon, double southLat, double westLon) {
        INSTANCE.getClass();
        Companion.checkParams(northLat, eastLon, southLat, westLon);
        return unionNoParamCheck(northLat, eastLon, southLat, westLon);
    }

    public final boolean contains(LatLngBounds other) {
        other.getClass();
        return contains(other.getNorthEast()) && contains(other.getSouthWest());
    }

    public static final LatLngBounds from(double d, double d2, double d3, double d4) {
        INSTANCE.getClass();
        Companion.checkParams(d, d2, d3, d4);
        return new LatLngBounds(d, d2, d3, d4);
    }
}
