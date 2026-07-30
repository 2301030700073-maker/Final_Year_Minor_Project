package com.amazonaws;

import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.util.VersionInfoUtils;

/* loaded from: classes.dex */
public class ClientConfiguration {

    /* renamed from: for, reason: not valid java name */
    public static final String f8670for;

    /* renamed from: if, reason: not valid java name */
    public static final RetryPolicy f8671if;

    /* renamed from: do, reason: not valid java name */
    public final int f8672do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Protocol f8673do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RetryPolicy f8674do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8675do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final int f8676for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final int f8677if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f8678if;

    static {
        if (VersionInfoUtils.f9082do == null) {
            synchronized (VersionInfoUtils.class) {
                if (VersionInfoUtils.f9082do == null) {
                    VersionInfoUtils.m5202do();
                }
            }
        }
        f8670for = VersionInfoUtils.f9082do;
        f8671if = PredefinedRetryPolicies.f8972do;
    }

    public ClientConfiguration() {
        this.f8675do = f8670for;
        this.f8672do = -1;
        this.f8674do = f8671if;
        this.f8673do = Protocol.HTTPS;
        this.f8677if = 15000;
        this.f8676for = 15000;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4969do() {
        return this.f8672do;
    }

    /* renamed from: if, reason: not valid java name */
    public final RetryPolicy m4970if() {
        return this.f8674do;
    }

    public ClientConfiguration(ClientConfiguration clientConfiguration) {
        this.f8675do = f8670for;
        this.f8672do = -1;
        this.f8674do = f8671if;
        this.f8673do = Protocol.HTTPS;
        this.f8677if = 15000;
        this.f8676for = 15000;
        this.f8676for = clientConfiguration.f8676for;
        this.f8672do = clientConfiguration.f8672do;
        this.f8674do = clientConfiguration.f8674do;
        this.f8673do = clientConfiguration.f8673do;
        this.f8677if = clientConfiguration.f8677if;
        this.f8675do = clientConfiguration.f8675do;
        this.f8678if = clientConfiguration.f8678if;
    }
}
