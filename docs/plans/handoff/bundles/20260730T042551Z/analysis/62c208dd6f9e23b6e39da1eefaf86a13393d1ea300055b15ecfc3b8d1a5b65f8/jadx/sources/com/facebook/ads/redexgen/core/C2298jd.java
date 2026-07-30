package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.bridge.gms.AdvertisingId;

/* renamed from: com.facebook.ads.redexgen.X.jd, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2298jd implements AnonymousClass89 {
    public final /* synthetic */ AdvertisingId A00;
    public final /* synthetic */ C2297jc A01;

    public C2298jd(C2297jc c2297jc, AdvertisingId advertisingId) {
        this.A01 = c2297jc;
        this.A00 = advertisingId;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass89
    public final boolean AAM() {
        return this.A00.isLimitAdTracking();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass89
    public final String getId() {
        return this.A00.getId();
    }
}
