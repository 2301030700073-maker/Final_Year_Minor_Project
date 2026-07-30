package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzei;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;

@Deprecated
/* loaded from: classes.dex */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;

    /* renamed from: do, reason: not valid java name */
    public final zzei f10135do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f10136do;

    public /* synthetic */ SearchAdRequest(zzb zzbVar) {
        this.f10136do = zzbVar.f10139do;
        this.f10135do = new zzei(zzbVar.f10138do, this);
    }

    @Deprecated
    public int getAnchorTextColor() {
        return 0;
    }

    @Deprecated
    public int getBackgroundColor() {
        return 0;
    }

    @Deprecated
    public int getBackgroundGradientBottom() {
        return 0;
    }

    @Deprecated
    public int getBackgroundGradientTop() {
        return 0;
    }

    @Deprecated
    public int getBorderColor() {
        return 0;
    }

    @Deprecated
    public int getBorderThickness() {
        return 0;
    }

    @Deprecated
    public int getBorderType() {
        return 0;
    }

    @Deprecated
    public int getCallButtonColor() {
        return 0;
    }

    @Deprecated
    public String getCustomChannels() {
        return null;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.f10135do.zzd(cls);
    }

    @Deprecated
    public int getDescriptionTextColor() {
        return 0;
    }

    @Deprecated
    public String getFontFace() {
        return null;
    }

    @Deprecated
    public int getHeaderTextColor() {
        return 0;
    }

    @Deprecated
    public int getHeaderTextSize() {
        return 0;
    }

    public Location getLocation() {
        return null;
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.f10135do.zzh(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.f10135do.zzf(cls);
    }

    public String getQuery() {
        return this.f10136do;
    }

    public boolean isTestDevice(Context context) {
        return this.f10135do.zzs(context);
    }
}
