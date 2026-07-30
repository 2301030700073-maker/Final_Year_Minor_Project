package com.amazonaws.mobileconnectors.amazonmobileanalytics;

import com.amazonaws.ClientConfiguration;

/* loaded from: classes.dex */
public class AnalyticsConfig {

    /* renamed from: do, reason: not valid java name */
    public final ClientConfiguration f8790do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8791do;

    /* renamed from: if, reason: not valid java name */
    public final boolean f8792if;

    public AnalyticsConfig() {
        ClientConfiguration clientConfiguration = new ClientConfiguration();
        this.f8791do = true;
        this.f8792if = true;
        this.f8790do = new ClientConfiguration(clientConfiguration);
    }
}
