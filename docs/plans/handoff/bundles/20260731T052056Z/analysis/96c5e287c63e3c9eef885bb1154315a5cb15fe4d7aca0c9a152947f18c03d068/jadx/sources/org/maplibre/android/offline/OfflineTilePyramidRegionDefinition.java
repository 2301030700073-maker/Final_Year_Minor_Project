package org.maplibre.android.offline;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import kotlin.Metadata;
import okhttp3.Headers;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B3\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB;\b\u0017\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000b\u0010\u000fR(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u0007\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R$\u0010\b\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00068\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u001a\u0010\u0019R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t8\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\n\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r8\u0016@RX\u0097\u000e¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lorg/maplibre/android/offline/OfflineTilePyramidRegionDefinition;", "Lorg/maplibre/android/offline/OfflineRegionDefinition;", "", "styleURL", "Lorg/maplibre/android/geometry/LatLngBounds;", "bounds", "", "minZoom", "maxZoom", "", "pixelRatio", "<init>", "(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDF)V", "", "includeIdeographs", "(Ljava/lang/String;Lorg/maplibre/android/geometry/LatLngBounds;DDFZ)V", "value", "Ljava/lang/String;", "getStyleURL", "()Ljava/lang/String;", "Lorg/maplibre/android/geometry/LatLngBounds;", "getBounds", "()Lorg/maplibre/android/geometry/LatLngBounds;", "D", "getMinZoom", "()D", "getMaxZoom", "F", "getPixelRatio", "()F", "Z", "getIncludeIdeographs", "()Z", "MapLibreAndroid_vulkanRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OfflineTilePyramidRegionDefinition implements OfflineRegionDefinition {
    public static final Parcelable.Creator<?> CREATOR = new DefaultStyle.AnonymousClass1(14);
    private final LatLngBounds bounds;
    private boolean includeIdeographs;
    private double maxZoom;
    private double minZoom;
    private float pixelRatio;
    private String styleURL;

    public OfflineTilePyramidRegionDefinition(Parcel parcel) {
        this.styleURL = parcel.readString();
        Headers.Builder builder = new Headers.Builder(6, (byte) 0);
        LatLng latLng = new LatLng(parcel.readDouble(), parcel.readDouble());
        ArrayList arrayList = builder.namesAndValues;
        arrayList.add(latLng);
        arrayList.add(new LatLng(parcel.readDouble(), parcel.readDouble()));
        this.bounds = builder.build();
        this.minZoom = parcel.readDouble();
        this.maxZoom = parcel.readDouble();
        this.pixelRatio = parcel.readFloat();
        this.includeIdeographs = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final LatLngBounds getBounds() {
        return this.bounds;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final boolean getIncludeIdeographs() {
        return this.includeIdeographs;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final double getMaxZoom() {
        return this.maxZoom;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final double getMinZoom() {
        return this.minZoom;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final float getPixelRatio() {
        return this.pixelRatio;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final String getStyleURL() {
        return this.styleURL;
    }

    @Override // org.maplibre.android.offline.OfflineRegionDefinition
    public final String getType() {
        return "tileregion";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.getClass();
        parcel.writeString(this.styleURL);
        LatLngBounds latLngBounds = this.bounds;
        if (latLngBounds != null) {
            parcel.writeDouble(latLngBounds.latitudeNorth);
            parcel.writeDouble(this.bounds.longitudeEast);
            parcel.writeDouble(this.bounds.latitudeSouth);
            parcel.writeDouble(this.bounds.longitudeWest);
        }
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeByte(this.includeIdeographs ? (byte) 1 : (byte) 0);
    }

    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d, double d2, float f, boolean z) {
        latLngBounds.getClass();
        this.styleURL = str;
        this.bounds = latLngBounds;
        this.minZoom = d;
        this.maxZoom = d2;
        this.pixelRatio = f;
        this.includeIdeographs = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OfflineTilePyramidRegionDefinition(String str, LatLngBounds latLngBounds, double d, double d2, float f) {
        this(str, latLngBounds, d, d2, f, false);
        latLngBounds.getClass();
    }
}
