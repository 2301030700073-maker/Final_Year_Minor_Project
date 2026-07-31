package com.braze.location;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final IBrazeGeofenceApi f97a;

    public a() {
        IBrazeGeofenceApi iBrazeGeofenceApi = null;
        try {
            Object newInstance = Class.forName("com.braze.location.BrazeInternalGeofenceApi").getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.braze.location.IBrazeGeofenceApi");
            iBrazeGeofenceApi = (IBrazeGeofenceApi) newInstance;
        } catch (Exception unused) {
        }
        this.f97a = iBrazeGeofenceApi;
    }
}
