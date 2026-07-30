package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;

/* loaded from: classes.dex */
public class MediationConfiguration {
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";

    /* renamed from: do, reason: not valid java name */
    public final Bundle f9925do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdFormat f9926do;

    public MediationConfiguration(AdFormat adFormat, Bundle bundle) {
        this.f9926do = adFormat;
        this.f9925do = bundle;
    }

    public AdFormat getFormat() {
        return this.f9926do;
    }

    public Bundle getServerParameters() {
        return this.f9925do;
    }
}
