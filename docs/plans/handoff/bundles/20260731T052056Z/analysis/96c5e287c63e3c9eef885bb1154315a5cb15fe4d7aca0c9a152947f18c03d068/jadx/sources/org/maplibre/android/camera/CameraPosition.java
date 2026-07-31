package org.maplibre.android.camera;

import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.maplibre.android.geometry.LatLng;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u0013\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0013BM\b\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eB5\b\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000fR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0011R\u0014\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0011R\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0011R\u0016\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0012¨\u0006\u0014"}, d2 = {"Lorg/maplibre/android/camera/CameraPosition;", "Landroid/os/Parcelable;", "Lorg/maplibre/android/geometry/LatLng;", "target", "", "centerAltitude", "zoom", "tilt", "bearing", "roll", "fov", "", "padding", "<init>", "(Lorg/maplibre/android/geometry/LatLng;DDDDDD[D)V", "(Lorg/maplibre/android/geometry/LatLng;DDD[D)V", "Lorg/maplibre/android/geometry/LatLng;", "D", "[D", "Builder", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CameraPosition implements Parcelable {
    public final double bearing;
    public final double centerAltitude;
    public final double fov;
    public final double[] padding;
    public final double roll;
    public final LatLng target;
    public final double tilt;
    public final double zoom;
    public static final CameraPosition DEFAULT = new CameraPosition(new LatLng(), 0.0d, 0.0d, 0.0d, new double[]{0.0d, 0.0d, 0.0d, 0.0d});
    public static final Parcelable.Creator<CameraPosition> CREATOR = new CameraPosition$Companion$CREATOR$1();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder {
        public final double bearing;
        public final LatLng target;
        public final double tilt;
        public final double zoom;

        public Builder(TypedArray typedArray) {
            this.bearing = -1.0d;
            this.tilt = -1.0d;
            this.zoom = -1.0d;
            if (typedArray != null) {
                this.bearing = typedArray.getFloat(6, RecyclerView.DECELERATION_RATE);
                this.target = new LatLng(typedArray.getFloat(12, RecyclerView.DECELERATION_RATE), typedArray.getFloat(13, RecyclerView.DECELERATION_RATE));
                typedArray.getFloat(7, RecyclerView.DECELERATION_RATE);
                this.tilt = typedArray.getFloat(14, RecyclerView.DECELERATION_RATE);
                typedArray.getFloat(11, RecyclerView.DECELERATION_RATE);
                typedArray.getFloat(8, 36.869896f);
                this.zoom = typedArray.getFloat(15, RecyclerView.DECELERATION_RATE);
            }
        }
    }

    public CameraPosition(LatLng latLng, double d, double d2, double d3, double[] dArr) {
        this(latLng, 0.0d, d, d2, d3, 0.0d, 36.86989764584402d, dArr);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && CameraPosition.class.equals(obj.getClass())) {
            CameraPosition cameraPosition = (CameraPosition) obj;
            LatLng latLng = this.target;
            return (latLng == null || Intrinsics.areEqual(latLng, cameraPosition.target)) && this.centerAltitude == cameraPosition.centerAltitude && this.zoom == cameraPosition.zoom && this.tilt == cameraPosition.tilt && this.roll == cameraPosition.roll && this.fov == cameraPosition.fov && this.bearing == cameraPosition.bearing && Arrays.equals(this.padding, cameraPosition.padding);
        }
        return false;
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
        return "Target: " + this.target + ", Center Altitude:" + this.centerAltitude + ", Zoom:" + this.zoom + ", Bearing:" + this.bearing + ", Tilt:" + this.tilt + ", Roll:" + this.roll + ", FOV:" + this.fov + ", Padding:" + Arrays.toString(this.padding);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeDouble(this.bearing);
        parcel.writeParcelable(this.target, i);
        parcel.writeDouble(this.centerAltitude);
        parcel.writeDouble(this.tilt);
        parcel.writeDouble(this.roll);
        parcel.writeDouble(this.fov);
        parcel.writeDouble(this.zoom);
        double[] dArr = this.padding;
        if (dArr == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(dArr.length);
        for (double d : this.padding) {
            parcel.writeDouble(d);
        }
    }

    public CameraPosition(LatLng latLng, double d, double d2, double d3, double d4, double d5, double d6, double[] dArr) {
        this.target = latLng;
        this.centerAltitude = d;
        this.zoom = d2;
        this.tilt = d3;
        this.bearing = d4;
        this.roll = d5;
        this.fov = d6;
        this.padding = dArr;
    }
}
