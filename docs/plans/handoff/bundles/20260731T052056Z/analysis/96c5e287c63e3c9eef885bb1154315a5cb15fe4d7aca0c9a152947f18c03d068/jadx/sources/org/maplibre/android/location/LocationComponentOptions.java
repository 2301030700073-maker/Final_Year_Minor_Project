package org.maplibre.android.location;

import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationComponentOptions implements Parcelable {
    public static final Parcelable.Creator<LocationComponentOptions> CREATOR = new DefaultStyle.AnonymousClass1(11);
    public float accuracyAlpha;
    public boolean accuracyAnimationEnabled;
    public int accuracyColor;
    public int backgroundDrawable;
    public int backgroundDrawableStale;
    public String backgroundName;
    public String backgroundStaleName;
    public Integer backgroundStaleTintColor;
    public Integer backgroundTintColor;
    public int bearingDrawable;
    public String bearingName;
    public Integer bearingTintColor;
    public boolean compassAnimationEnabled;
    public float elevation;
    public boolean enableStaleState;
    public int foregroundDrawable;
    public int foregroundDrawableStale;
    public String foregroundName;
    public String foregroundStaleName;
    public Integer foregroundStaleTintColor;
    public Integer foregroundTintColor;
    public int gpsDrawable;
    public String gpsName;
    public String layerAbove;
    public String layerBelow;
    public float maxZoomIconScale;
    public float minZoomIconScale;
    public int[] padding;
    public float pulseAlpha;
    public Integer pulseColor;
    public Boolean pulseEnabled;
    public Boolean pulseFadeEnabled;
    public float pulseMaxRadius;
    public float pulseSingleDuration;
    public long staleStateTimeout;
    public float trackingAnimationDurationMultiplier;
    public boolean trackingGesturesManagement;
    public float trackingInitialMoveThreshold;
    public float trackingMultiFingerMoveThreshold;
    public RectF trackingMultiFingerProtectedMoveArea;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LocationComponentOptions.class == obj.getClass()) {
            LocationComponentOptions locationComponentOptions = (LocationComponentOptions) obj;
            if (Float.compare(locationComponentOptions.accuracyAlpha, this.accuracyAlpha) != 0 || this.accuracyColor != locationComponentOptions.accuracyColor || this.backgroundDrawableStale != locationComponentOptions.backgroundDrawableStale || this.foregroundDrawableStale != locationComponentOptions.foregroundDrawableStale || this.gpsDrawable != locationComponentOptions.gpsDrawable || this.foregroundDrawable != locationComponentOptions.foregroundDrawable || this.backgroundDrawable != locationComponentOptions.backgroundDrawable || this.bearingDrawable != locationComponentOptions.bearingDrawable || Float.compare(locationComponentOptions.elevation, this.elevation) != 0 || this.enableStaleState != locationComponentOptions.enableStaleState || this.staleStateTimeout != locationComponentOptions.staleStateTimeout || Float.compare(locationComponentOptions.maxZoomIconScale, this.maxZoomIconScale) != 0 || Float.compare(locationComponentOptions.minZoomIconScale, this.minZoomIconScale) != 0 || this.trackingGesturesManagement != locationComponentOptions.trackingGesturesManagement || Float.compare(locationComponentOptions.trackingInitialMoveThreshold, this.trackingInitialMoveThreshold) != 0 || Float.compare(locationComponentOptions.trackingMultiFingerMoveThreshold, this.trackingMultiFingerMoveThreshold) != 0 || Float.compare(locationComponentOptions.trackingAnimationDurationMultiplier, this.trackingAnimationDurationMultiplier) != 0) {
                return false;
            }
            RectF rectF = this.trackingMultiFingerProtectedMoveArea;
            RectF rectF2 = locationComponentOptions.trackingMultiFingerProtectedMoveArea;
            if (rectF == null ? rectF2 != null : !rectF.equals(rectF2)) {
                return false;
            }
            if (this.compassAnimationEnabled != locationComponentOptions.compassAnimationEnabled || this.accuracyAnimationEnabled != locationComponentOptions.accuracyAnimationEnabled) {
                return false;
            }
            String str = this.backgroundStaleName;
            String str2 = locationComponentOptions.backgroundStaleName;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            String str3 = this.foregroundStaleName;
            String str4 = locationComponentOptions.foregroundStaleName;
            if (str3 == null ? str4 != null : !str3.equals(str4)) {
                return false;
            }
            String str5 = this.gpsName;
            String str6 = locationComponentOptions.gpsName;
            if (str5 == null ? str6 != null : !str5.equals(str6)) {
                return false;
            }
            String str7 = this.foregroundName;
            String str8 = locationComponentOptions.foregroundName;
            if (str7 == null ? str8 != null : !str7.equals(str8)) {
                return false;
            }
            String str9 = this.backgroundName;
            String str10 = locationComponentOptions.backgroundName;
            if (str9 == null ? str10 != null : !str9.equals(str10)) {
                return false;
            }
            String str11 = this.bearingName;
            String str12 = locationComponentOptions.bearingName;
            if (str11 == null ? str12 != null : !str11.equals(str12)) {
                return false;
            }
            Integer num = this.bearingTintColor;
            Integer num2 = locationComponentOptions.bearingTintColor;
            if (num == null ? num2 != null : !num.equals(num2)) {
                return false;
            }
            Integer num3 = this.foregroundTintColor;
            Integer num4 = locationComponentOptions.foregroundTintColor;
            if (num3 == null ? num4 != null : !num3.equals(num4)) {
                return false;
            }
            Integer num5 = this.backgroundTintColor;
            Integer num6 = locationComponentOptions.backgroundTintColor;
            if (num5 == null ? num6 != null : !num5.equals(num6)) {
                return false;
            }
            Integer num7 = this.foregroundStaleTintColor;
            Integer num8 = locationComponentOptions.foregroundStaleTintColor;
            if (num7 == null ? num8 != null : !num7.equals(num8)) {
                return false;
            }
            Integer num9 = this.backgroundStaleTintColor;
            Integer num10 = locationComponentOptions.backgroundStaleTintColor;
            if (num9 == null ? num10 != null : !num9.equals(num10)) {
                return false;
            }
            if (!Arrays.equals(this.padding, locationComponentOptions.padding)) {
                return false;
            }
            String str13 = this.layerAbove;
            String str14 = locationComponentOptions.layerAbove;
            if (str13 == null ? str14 != null : !str13.equals(str14)) {
                return false;
            }
            if (this.pulseEnabled != locationComponentOptions.pulseEnabled || this.pulseFadeEnabled != locationComponentOptions.pulseFadeEnabled) {
                return false;
            }
            Integer num11 = this.pulseColor;
            Integer num12 = locationComponentOptions.pulseColor;
            if (num11 == null ? num12 != null : !num11.equals(num12)) {
                return false;
            }
            if (Float.compare(locationComponentOptions.pulseSingleDuration, this.pulseSingleDuration) != 0 || Float.compare(locationComponentOptions.pulseMaxRadius, this.pulseMaxRadius) != 0 || Float.compare(locationComponentOptions.pulseAlpha, this.pulseAlpha) != 0) {
                return false;
            }
            String str15 = this.layerBelow;
            String str16 = locationComponentOptions.layerBelow;
            if (str15 != null) {
                return str15.equals(str16);
            }
            if (str16 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        float f = this.accuracyAlpha;
        int floatToIntBits = (((((f != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f) : 0) * 31) + this.accuracyColor) * 31) + this.backgroundDrawableStale) * 31;
        String str = this.backgroundStaleName;
        int hashCode = (((floatToIntBits + (str != null ? str.hashCode() : 0)) * 31) + this.foregroundDrawableStale) * 31;
        String str2 = this.foregroundStaleName;
        int hashCode2 = (((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.gpsDrawable) * 31;
        String str3 = this.gpsName;
        int hashCode3 = (((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.foregroundDrawable) * 31;
        String str4 = this.foregroundName;
        int hashCode4 = (((hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.backgroundDrawable) * 31;
        String str5 = this.backgroundName;
        int hashCode5 = (((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.bearingDrawable) * 31;
        String str6 = this.bearingName;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        Integer num = this.bearingTintColor;
        int hashCode7 = (hashCode6 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.foregroundTintColor;
        int hashCode8 = (hashCode7 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Integer num3 = this.backgroundTintColor;
        int hashCode9 = (hashCode8 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Integer num4 = this.foregroundStaleTintColor;
        int hashCode10 = (hashCode9 + (num4 != null ? num4.hashCode() : 0)) * 31;
        Integer num5 = this.backgroundStaleTintColor;
        int hashCode11 = (hashCode10 + (num5 != null ? num5.hashCode() : 0)) * 31;
        float f2 = this.elevation;
        int floatToIntBits2 = (((hashCode11 + (f2 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f2) : 0)) * 31) + (this.enableStaleState ? 1 : 0)) * 31;
        long j = this.staleStateTimeout;
        int hashCode12 = (Arrays.hashCode(this.padding) + ((floatToIntBits2 + ((int) (j ^ (j >>> 32)))) * 31)) * 31;
        float f3 = this.maxZoomIconScale;
        int floatToIntBits3 = (hashCode12 + (f3 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f3) : 0)) * 31;
        float f4 = this.minZoomIconScale;
        int floatToIntBits4 = (((floatToIntBits3 + (f4 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f4) : 0)) * 31) + (this.trackingGesturesManagement ? 1 : 0)) * 31;
        float f5 = this.trackingInitialMoveThreshold;
        int floatToIntBits5 = (floatToIntBits4 + (f5 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f5) : 0)) * 31;
        float f6 = this.trackingMultiFingerMoveThreshold;
        int floatToIntBits6 = (floatToIntBits5 + (f6 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f6) : 0)) * 31;
        RectF rectF = this.trackingMultiFingerProtectedMoveArea;
        int hashCode13 = (floatToIntBits6 + (rectF != null ? rectF.hashCode() : 0)) * 31;
        String str7 = this.layerAbove;
        int hashCode14 = (hashCode13 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.layerBelow;
        int hashCode15 = (hashCode14 + (str8 != null ? str8.hashCode() : 0)) * 31;
        float f7 = this.trackingAnimationDurationMultiplier;
        int floatToIntBits7 = ((this.pulseFadeEnabled.booleanValue() ? 1 : 0) + (((this.pulseEnabled.booleanValue() ? 1 : 0) + ((((((hashCode15 + (f7 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f7) : 0)) * 31) + (this.compassAnimationEnabled ? 1 : 0)) * 31) + (this.accuracyAnimationEnabled ? 1 : 0)) * 31)) * 31)) * 31;
        Integer num6 = this.pulseColor;
        int hashCode16 = (floatToIntBits7 + (num6 != null ? num6.hashCode() : 0)) * 31;
        float f8 = this.pulseSingleDuration;
        int floatToIntBits8 = (hashCode16 + (f8 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f8) : 0)) * 31;
        float f9 = this.pulseMaxRadius;
        int floatToIntBits9 = (floatToIntBits8 + (f9 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f9) : 0)) * 31;
        float f10 = this.pulseAlpha;
        return floatToIntBits9 + (f10 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f10) : 0);
    }

    public final String toString() {
        return "LocationComponentOptions{accuracyAlpha=" + this.accuracyAlpha + ", accuracyColor=" + this.accuracyColor + ", backgroundDrawableStale=" + this.backgroundDrawableStale + ", backgroundStaleName=" + this.backgroundStaleName + ", foregroundDrawableStale=" + this.foregroundDrawableStale + ", foregroundStaleName=" + this.foregroundStaleName + ", gpsDrawable=" + this.gpsDrawable + ", gpsName=" + this.gpsName + ", foregroundDrawable=" + this.foregroundDrawable + ", foregroundName=" + this.foregroundName + ", backgroundDrawable=" + this.backgroundDrawable + ", backgroundName=" + this.backgroundName + ", bearingDrawable=" + this.bearingDrawable + ", bearingName=" + this.bearingName + ", bearingTintColor=" + this.bearingTintColor + ", foregroundTintColor=" + this.foregroundTintColor + ", backgroundTintColor=" + this.backgroundTintColor + ", foregroundStaleTintColor=" + this.foregroundStaleTintColor + ", backgroundStaleTintColor=" + this.backgroundStaleTintColor + ", elevation=" + this.elevation + ", enableStaleState=" + this.enableStaleState + ", staleStateTimeout=" + this.staleStateTimeout + ", padding=" + Arrays.toString(this.padding) + ", maxZoomIconScale=" + this.maxZoomIconScale + ", minZoomIconScale=" + this.minZoomIconScale + ", trackingGesturesManagement=" + this.trackingGesturesManagement + ", trackingInitialMoveThreshold=" + this.trackingInitialMoveThreshold + ", trackingMultiFingerMoveThreshold=" + this.trackingMultiFingerMoveThreshold + ", trackingMultiFingerProtectedMoveArea=" + this.trackingMultiFingerProtectedMoveArea + ", layerAbove=" + this.layerAbove + "layerBelow=" + this.layerBelow + "trackingAnimationDurationMultiplier=" + this.trackingAnimationDurationMultiplier + "pulseEnabled=" + this.pulseEnabled + "pulseFadeEnabled=" + this.pulseFadeEnabled + "pulseColor=" + this.pulseColor + "pulseSingleDuration=" + this.pulseSingleDuration + "pulseMaxRadius=" + this.pulseMaxRadius + "pulseAlpha=" + this.pulseAlpha + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.accuracyAlpha);
        parcel.writeInt(this.accuracyColor);
        parcel.writeInt(this.backgroundDrawableStale);
        parcel.writeString(this.backgroundStaleName);
        parcel.writeInt(this.foregroundDrawableStale);
        parcel.writeString(this.foregroundStaleName);
        parcel.writeInt(this.gpsDrawable);
        parcel.writeString(this.gpsName);
        parcel.writeInt(this.foregroundDrawable);
        parcel.writeString(this.foregroundName);
        parcel.writeInt(this.backgroundDrawable);
        parcel.writeString(this.backgroundName);
        parcel.writeInt(this.bearingDrawable);
        parcel.writeString(this.bearingName);
        parcel.writeValue(this.bearingTintColor);
        parcel.writeValue(this.foregroundTintColor);
        parcel.writeValue(this.backgroundTintColor);
        parcel.writeValue(this.foregroundStaleTintColor);
        parcel.writeValue(this.backgroundStaleTintColor);
        parcel.writeFloat(this.elevation);
        parcel.writeByte(this.enableStaleState ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.staleStateTimeout);
        parcel.writeIntArray(this.padding);
        parcel.writeFloat(this.maxZoomIconScale);
        parcel.writeFloat(this.minZoomIconScale);
        parcel.writeByte(this.trackingGesturesManagement ? (byte) 1 : (byte) 0);
        parcel.writeFloat(this.trackingInitialMoveThreshold);
        parcel.writeFloat(this.trackingMultiFingerMoveThreshold);
        parcel.writeParcelable(this.trackingMultiFingerProtectedMoveArea, i);
        parcel.writeString(this.layerAbove);
        parcel.writeString(this.layerBelow);
        parcel.writeFloat(this.trackingAnimationDurationMultiplier);
        parcel.writeByte(this.compassAnimationEnabled ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.accuracyAnimationEnabled ? (byte) 1 : (byte) 0);
        parcel.writeValue(this.pulseEnabled);
        parcel.writeValue(this.pulseFadeEnabled);
        parcel.writeValue(this.pulseColor);
        parcel.writeFloat(this.pulseSingleDuration);
        parcel.writeFloat(this.pulseMaxRadius);
        parcel.writeFloat(this.pulseAlpha);
    }
}
