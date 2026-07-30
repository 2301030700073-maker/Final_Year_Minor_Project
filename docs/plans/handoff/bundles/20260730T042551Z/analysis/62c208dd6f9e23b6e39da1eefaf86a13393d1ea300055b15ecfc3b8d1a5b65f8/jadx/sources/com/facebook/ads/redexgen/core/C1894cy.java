package com.facebook.ads.redexgen.core;

import android.media.Spatializer;

/* renamed from: com.facebook.ads.redexgen.X.cy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1894cy implements Spatializer.OnSpatializerStateChangedListener {
    public final /* synthetic */ C1895cz A00;
    public final /* synthetic */ C09785u A01;

    public C1894cy(C1895cz c1895cz, C09785u c09785u) {
        this.A00 = c1895cz;
        this.A01 = c09785u;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.A01.A0L();
    }
}
