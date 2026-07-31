package org.maplibre.android.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import okhttp3.HttpUrl;
import org.maplibre.android.R$styleable;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.util.DefaultStyle;
import org.maplibre.android.utils.FontUtils;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapLibreMapOptions implements Parcelable {
    public static final Parcelable.Creator<MapLibreMapOptions> CREATOR = new DefaultStyle.AnonymousClass1(12);
    public boolean actionJournalEnabled;
    public long actionJournalLogFileCount;
    public long actionJournalLogFileSize;
    public String actionJournalPath;
    public int actionJournalRenderingReportInterval;
    public String apiBaseUri;
    public boolean attributionEnabled;
    public int attributionGravity;
    public int[] attributionMargins;
    public int attributionTintColor;
    public CameraPosition cameraPosition;
    public boolean compassEnabled;
    public int compassGravity;
    public Drawable compassImage;
    public int[] compassMargins;
    public boolean crossSourceCollisions;
    public boolean debugActive;
    public boolean doubleTapGesturesEnabled;
    public boolean fadeCompassFacingNorth;
    public int foregroundLoadColor;
    public boolean horizontalScrollGesturesEnabled;
    public String[] localIdeographFontFamilies;
    public String localIdeographFontFamily;
    public boolean localIdeographFontFamilyEnabled;
    public boolean logoEnabled;
    public int logoGravity;
    public int[] logoMargins;
    public double maxPitch;
    public double maxZoom;
    public double minPitch;
    public double minZoom;
    public float pixelRatio;
    public int prefetchZoomDelta;
    public boolean prefetchesTiles;
    public boolean quickZoomGesturesEnabled;
    public boolean rotateGesturesEnabled;
    public boolean scrollGesturesEnabled;
    public boolean textureMode;
    public boolean tiltGesturesEnabled;
    public boolean translucentTextureSurface;
    public boolean zMediaOverlay;
    public boolean zoomGesturesEnabled;

    public static MapLibreMapOptions createFromAttributes(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.maplibre_MapView, 0, 0);
        MapLibreMapOptions mapLibreMapOptions = new MapLibreMapOptions();
        mapLibreMapOptions.compassEnabled = true;
        mapLibreMapOptions.fadeCompassFacingNorth = true;
        mapLibreMapOptions.compassGravity = 8388661;
        mapLibreMapOptions.logoEnabled = true;
        mapLibreMapOptions.logoGravity = 8388691;
        mapLibreMapOptions.attributionTintColor = -1;
        mapLibreMapOptions.attributionEnabled = true;
        mapLibreMapOptions.attributionGravity = 8388691;
        mapLibreMapOptions.minZoom = 0.0d;
        mapLibreMapOptions.maxZoom = 25.5d;
        mapLibreMapOptions.minPitch = 0.0d;
        mapLibreMapOptions.maxPitch = 60.0d;
        mapLibreMapOptions.rotateGesturesEnabled = true;
        mapLibreMapOptions.scrollGesturesEnabled = true;
        mapLibreMapOptions.horizontalScrollGesturesEnabled = true;
        mapLibreMapOptions.tiltGesturesEnabled = true;
        mapLibreMapOptions.zoomGesturesEnabled = true;
        mapLibreMapOptions.doubleTapGesturesEnabled = true;
        mapLibreMapOptions.quickZoomGesturesEnabled = true;
        mapLibreMapOptions.prefetchesTiles = true;
        mapLibreMapOptions.prefetchZoomDelta = 4;
        mapLibreMapOptions.zMediaOverlay = false;
        mapLibreMapOptions.localIdeographFontFamilyEnabled = true;
        mapLibreMapOptions.crossSourceCollisions = true;
        mapLibreMapOptions.actionJournalEnabled = false;
        mapLibreMapOptions.actionJournalPath = "";
        mapLibreMapOptions.actionJournalLogFileSize = 1048576L;
        mapLibreMapOptions.actionJournalLogFileCount = 5L;
        mapLibreMapOptions.actionJournalRenderingReportInterval = 60;
        float f = context.getResources().getDisplayMetrics().density;
        mapLibreMapOptions.actionJournalPath = context.getFilesDir().getAbsolutePath();
        try {
            CameraPosition.Builder builder = new CameraPosition.Builder(obtainStyledAttributes);
            mapLibreMapOptions.cameraPosition = new CameraPosition(builder.target, builder.zoom, builder.tilt, builder.bearing, null);
            mapLibreMapOptions.apiBaseUri = obtainStyledAttributes.getString(5);
            String string = obtainStyledAttributes.getString(4);
            if (!TextUtils.isEmpty(string)) {
                mapLibreMapOptions.apiBaseUri = string;
            }
            mapLibreMapOptions.zoomGesturesEnabled = obtainStyledAttributes.getBoolean(56, true);
            mapLibreMapOptions.scrollGesturesEnabled = obtainStyledAttributes.getBoolean(54, true);
            mapLibreMapOptions.horizontalScrollGesturesEnabled = obtainStyledAttributes.getBoolean(45, true);
            mapLibreMapOptions.rotateGesturesEnabled = obtainStyledAttributes.getBoolean(53, true);
            mapLibreMapOptions.tiltGesturesEnabled = obtainStyledAttributes.getBoolean(55, true);
            mapLibreMapOptions.doubleTapGesturesEnabled = obtainStyledAttributes.getBoolean(44, true);
            mapLibreMapOptions.quickZoomGesturesEnabled = obtainStyledAttributes.getBoolean(52, true);
            mapLibreMapOptions.maxZoom = obtainStyledAttributes.getFloat(16, 25.5f);
            mapLibreMapOptions.minZoom = obtainStyledAttributes.getFloat(17, RecyclerView.DECELERATION_RATE);
            mapLibreMapOptions.maxPitch = obtainStyledAttributes.getFloat(9, 60.0f);
            mapLibreMapOptions.minPitch = obtainStyledAttributes.getFloat(10, RecyclerView.DECELERATION_RATE);
            mapLibreMapOptions.compassEnabled = obtainStyledAttributes.getBoolean(36, true);
            mapLibreMapOptions.compassGravity = obtainStyledAttributes.getInt(39, 8388661);
            float f2 = f * 4.0f;
            mapLibreMapOptions.compassMargins = new int[]{(int) obtainStyledAttributes.getDimension(41, f2), (int) obtainStyledAttributes.getDimension(43, f2), (int) obtainStyledAttributes.getDimension(42, f2), (int) obtainStyledAttributes.getDimension(40, f2)};
            mapLibreMapOptions.fadeCompassFacingNorth = obtainStyledAttributes.getBoolean(38, true);
            Drawable drawable = obtainStyledAttributes.getDrawable(37);
            if (drawable == null) {
                Resources resources = context.getResources();
                ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
                drawable = resources.getDrawable(R.drawable.maplibre_compass_icon, null);
            }
            mapLibreMapOptions.compassImage = drawable;
            mapLibreMapOptions.logoEnabled = obtainStyledAttributes.getBoolean(46, true);
            mapLibreMapOptions.logoGravity = obtainStyledAttributes.getInt(47, 8388691);
            mapLibreMapOptions.logoMargins = new int[]{(int) obtainStyledAttributes.getDimension(49, f2), (int) obtainStyledAttributes.getDimension(51, f2), (int) obtainStyledAttributes.getDimension(50, f2), (int) obtainStyledAttributes.getDimension(48, f2)};
            mapLibreMapOptions.attributionTintColor = obtainStyledAttributes.getColor(35, -1);
            mapLibreMapOptions.attributionEnabled = obtainStyledAttributes.getBoolean(29, true);
            mapLibreMapOptions.attributionGravity = obtainStyledAttributes.getInt(30, 8388691);
            mapLibreMapOptions.attributionMargins = new int[]{(int) obtainStyledAttributes.getDimension(32, 92.0f * f), (int) obtainStyledAttributes.getDimension(34, f2), (int) obtainStyledAttributes.getDimension(33, f2), (int) obtainStyledAttributes.getDimension(31, f2)};
            mapLibreMapOptions.textureMode = obtainStyledAttributes.getBoolean(27, false);
            mapLibreMapOptions.translucentTextureSurface = obtainStyledAttributes.getBoolean(28, false);
            mapLibreMapOptions.prefetchesTiles = obtainStyledAttributes.getBoolean(19, true);
            mapLibreMapOptions.prefetchZoomDelta = obtainStyledAttributes.getInt(26, 4);
            mapLibreMapOptions.zMediaOverlay = obtainStyledAttributes.getBoolean(20, false);
            mapLibreMapOptions.localIdeographFontFamilyEnabled = obtainStyledAttributes.getBoolean(22, true);
            int resourceId = obtainStyledAttributes.getResourceId(23, 0);
            if (resourceId != 0) {
                mapLibreMapOptions.localIdeographFontFamily = FontUtils.extractValidFont(context.getResources().getStringArray(resourceId));
            } else {
                String string2 = obtainStyledAttributes.getString(24);
                if (string2 == null) {
                    string2 = "sans-serif";
                }
                mapLibreMapOptions.localIdeographFontFamily = FontUtils.extractValidFont(string2);
            }
            mapLibreMapOptions.pixelRatio = obtainStyledAttributes.getFloat(25, RecyclerView.DECELERATION_RATE);
            mapLibreMapOptions.foregroundLoadColor = obtainStyledAttributes.getInt(21, -988703);
            mapLibreMapOptions.crossSourceCollisions = obtainStyledAttributes.getBoolean(18, true);
            mapLibreMapOptions.actionJournalEnabled = obtainStyledAttributes.getBoolean(0, false);
            mapLibreMapOptions.actionJournalLogFileSize = obtainStyledAttributes.getInteger(2, 1048576);
            mapLibreMapOptions.actionJournalLogFileCount = obtainStyledAttributes.getInteger(1, 5);
            mapLibreMapOptions.actionJournalRenderingReportInterval = obtainStyledAttributes.getInteger(3, 60);
            obtainStyledAttributes.recycle();
            return mapLibreMapOptions;
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MapLibreMapOptions.class == obj.getClass()) {
            MapLibreMapOptions mapLibreMapOptions = (MapLibreMapOptions) obj;
            if (this.debugActive != mapLibreMapOptions.debugActive || this.compassEnabled != mapLibreMapOptions.compassEnabled || this.fadeCompassFacingNorth != mapLibreMapOptions.fadeCompassFacingNorth) {
                return false;
            }
            Drawable drawable = this.compassImage;
            Drawable drawable2 = mapLibreMapOptions.compassImage;
            if (drawable == null ? drawable2 != null : !drawable.equals(drawable2)) {
                return false;
            }
            if (this.compassGravity != mapLibreMapOptions.compassGravity || this.logoEnabled != mapLibreMapOptions.logoEnabled || this.logoGravity != mapLibreMapOptions.logoGravity || this.attributionTintColor != mapLibreMapOptions.attributionTintColor || this.attributionEnabled != mapLibreMapOptions.attributionEnabled || this.attributionGravity != mapLibreMapOptions.attributionGravity || Double.compare(mapLibreMapOptions.minZoom, this.minZoom) != 0 || Double.compare(mapLibreMapOptions.maxZoom, this.maxZoom) != 0 || Double.compare(mapLibreMapOptions.minPitch, this.minPitch) != 0 || Double.compare(mapLibreMapOptions.maxPitch, this.maxPitch) != 0 || this.rotateGesturesEnabled != mapLibreMapOptions.rotateGesturesEnabled || this.scrollGesturesEnabled != mapLibreMapOptions.scrollGesturesEnabled || this.horizontalScrollGesturesEnabled != mapLibreMapOptions.horizontalScrollGesturesEnabled || this.tiltGesturesEnabled != mapLibreMapOptions.tiltGesturesEnabled || this.zoomGesturesEnabled != mapLibreMapOptions.zoomGesturesEnabled || this.doubleTapGesturesEnabled != mapLibreMapOptions.doubleTapGesturesEnabled || this.quickZoomGesturesEnabled != mapLibreMapOptions.quickZoomGesturesEnabled) {
                return false;
            }
            CameraPosition cameraPosition = this.cameraPosition;
            CameraPosition cameraPosition2 = mapLibreMapOptions.cameraPosition;
            if (cameraPosition == null ? cameraPosition2 != null : !cameraPosition.equals(cameraPosition2)) {
                return false;
            }
            if (!Arrays.equals(this.compassMargins, mapLibreMapOptions.compassMargins) || !Arrays.equals(this.logoMargins, mapLibreMapOptions.logoMargins) || !Arrays.equals(this.attributionMargins, mapLibreMapOptions.attributionMargins)) {
                return false;
            }
            String str = this.apiBaseUri;
            String str2 = mapLibreMapOptions.apiBaseUri;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            if (this.prefetchesTiles != mapLibreMapOptions.prefetchesTiles || this.prefetchZoomDelta != mapLibreMapOptions.prefetchZoomDelta || this.zMediaOverlay != mapLibreMapOptions.zMediaOverlay || this.localIdeographFontFamilyEnabled != mapLibreMapOptions.localIdeographFontFamilyEnabled || !this.localIdeographFontFamily.equals(mapLibreMapOptions.localIdeographFontFamily) || !Arrays.equals(this.localIdeographFontFamilies, mapLibreMapOptions.localIdeographFontFamilies) || this.pixelRatio != mapLibreMapOptions.pixelRatio || this.crossSourceCollisions != mapLibreMapOptions.crossSourceCollisions || this.actionJournalEnabled != mapLibreMapOptions.actionJournalEnabled) {
                return false;
            }
            this.actionJournalPath.equals(mapLibreMapOptions.actionJournalPath);
        }
        return false;
    }

    public final int hashCode() {
        CameraPosition cameraPosition = this.cameraPosition;
        int hashCode = (((((((((cameraPosition != null ? cameraPosition.hashCode() : 0) * 31) + (this.debugActive ? 1 : 0)) * 31) + (this.compassEnabled ? 1 : 0)) * 31) + (this.fadeCompassFacingNorth ? 1 : 0)) * 31) + this.compassGravity) * 31;
        Drawable drawable = this.compassImage;
        int hashCode2 = Arrays.hashCode(this.attributionMargins) + ((((((((Arrays.hashCode(this.logoMargins) + ((((((Arrays.hashCode(this.compassMargins) + ((hashCode + (drawable != null ? drawable.hashCode() : 0)) * 31)) * 31) + (this.logoEnabled ? 1 : 0)) * 31) + this.logoGravity) * 31)) * 31) + this.attributionTintColor) * 31) + (this.attributionEnabled ? 1 : 0)) * 31) + this.attributionGravity) * 31);
        long doubleToLongBits = Double.doubleToLongBits(this.minZoom);
        int i = (hashCode2 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        long doubleToLongBits2 = Double.doubleToLongBits(this.maxZoom);
        int i2 = (i * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)));
        long doubleToLongBits3 = Double.doubleToLongBits(this.minPitch);
        int i3 = (i2 * 31) + ((int) (doubleToLongBits3 ^ (doubleToLongBits3 >>> 32)));
        long doubleToLongBits4 = Double.doubleToLongBits(this.maxPitch);
        int i4 = ((((((((((((((((i3 * 31) + ((int) (doubleToLongBits4 ^ (doubleToLongBits4 >>> 32)))) * 31) + (this.rotateGesturesEnabled ? 1 : 0)) * 31) + (this.scrollGesturesEnabled ? 1 : 0)) * 31) + (this.horizontalScrollGesturesEnabled ? 1 : 0)) * 31) + (this.tiltGesturesEnabled ? 1 : 0)) * 31) + (this.zoomGesturesEnabled ? 1 : 0)) * 31) + (this.doubleTapGesturesEnabled ? 1 : 0)) * 31) + (this.quickZoomGesturesEnabled ? 1 : 0)) * 31;
        String str = this.apiBaseUri;
        int hashCode3 = (((((((((((((i4 + (str != null ? str.hashCode() : 0)) * 31) + (this.textureMode ? 1 : 0)) * 31) + (this.translucentTextureSurface ? 1 : 0)) * 31) + (this.prefetchesTiles ? 1 : 0)) * 31) + this.prefetchZoomDelta) * 31) + (this.zMediaOverlay ? 1 : 0)) * 31) + (this.localIdeographFontFamilyEnabled ? 1 : 0)) * 31;
        String str2 = this.localIdeographFontFamily;
        int hashCode4 = (((((((((hashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.localIdeographFontFamilies)) * 31) + ((int) this.pixelRatio)) * 31) + (this.crossSourceCollisions ? 1 : 0)) * 31) + (this.actionJournalEnabled ? 1 : 0)) * 31;
        String str3 = this.actionJournalPath;
        return ((((((hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31) + ((int) this.actionJournalLogFileSize)) * 31) + ((int) this.actionJournalLogFileCount)) * 31) + this.actionJournalRenderingReportInterval;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.cameraPosition, i);
        parcel.writeByte(this.debugActive ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.compassEnabled ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.compassGravity);
        parcel.writeIntArray(this.compassMargins);
        parcel.writeByte(this.fadeCompassFacingNorth ? (byte) 1 : (byte) 0);
        Drawable drawable = this.compassImage;
        parcel.writeParcelable(drawable != null ? HttpUrl.Companion.getBitmapFromDrawable(drawable) : null, i);
        parcel.writeByte(this.logoEnabled ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.logoGravity);
        parcel.writeIntArray(this.logoMargins);
        parcel.writeByte(this.attributionEnabled ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.attributionGravity);
        parcel.writeIntArray(this.attributionMargins);
        parcel.writeInt(this.attributionTintColor);
        parcel.writeDouble(this.minZoom);
        parcel.writeDouble(this.maxZoom);
        parcel.writeDouble(this.minPitch);
        parcel.writeDouble(this.maxPitch);
        parcel.writeByte(this.rotateGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.scrollGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.horizontalScrollGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.tiltGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.zoomGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.doubleTapGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.quickZoomGesturesEnabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.apiBaseUri);
        parcel.writeByte(this.textureMode ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.translucentTextureSurface ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.prefetchesTiles ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.prefetchZoomDelta);
        parcel.writeByte(this.zMediaOverlay ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.localIdeographFontFamilyEnabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.localIdeographFontFamily);
        parcel.writeStringArray(this.localIdeographFontFamilies);
        parcel.writeFloat(this.pixelRatio);
        parcel.writeInt(this.foregroundLoadColor);
        parcel.writeByte(this.crossSourceCollisions ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.actionJournalEnabled ? (byte) 1 : (byte) 0);
        parcel.writeString(this.actionJournalPath);
        parcel.writeLong(this.actionJournalLogFileSize);
        parcel.writeLong(this.actionJournalLogFileCount);
        parcel.writeInt(this.actionJournalRenderingReportInterval);
    }
}
