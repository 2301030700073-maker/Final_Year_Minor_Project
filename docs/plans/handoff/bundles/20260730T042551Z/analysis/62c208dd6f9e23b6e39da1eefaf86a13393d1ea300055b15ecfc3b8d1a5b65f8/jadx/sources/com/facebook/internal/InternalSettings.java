package com.facebook.internal;

import defpackage.BF;
import defpackage.C0173Do;

/* loaded from: classes.dex */
public final class InternalSettings {
    public static final InternalSettings INSTANCE = new InternalSettings();
    private static final String UNITY_PREFIX = "Unity.";
    private static volatile String customUserAgent;

    private InternalSettings() {
    }

    public static final String getCustomUserAgent() {
        return customUserAgent;
    }

    public static final boolean isUnityApp() {
        String str = customUserAgent;
        return C0173Do.m394do(str == null ? null : Boolean.valueOf(BF.j(str, UNITY_PREFIX)), Boolean.TRUE);
    }

    public static /* synthetic */ void isUnityApp$annotations() {
    }

    public static final void setCustomUserAgent(String str) {
        C0173Do.m401try(str, "value");
        customUserAgent = str;
    }
}
