package com.braze.location;

import android.content.Context;
import com.braze.configuration.BrazeConfigurationProvider;
import java.util.EnumSet;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final IBrazeLocationApi f98a;

    public b(Context context, EnumSet allowedProviders, BrazeConfigurationProvider appConfigurationProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(allowedProviders, "allowedProviders");
        Intrinsics.checkNotNullParameter(appConfigurationProvider, "appConfigurationProvider");
        IBrazeLocationApi iBrazeLocationApi = null;
        try {
            Object newInstance = Class.forName("com.braze.location.BrazeInternalLocationApi").getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.braze.location.IBrazeLocationApi");
            iBrazeLocationApi = (IBrazeLocationApi) newInstance;
        } catch (Exception unused) {
        }
        this.f98a = iBrazeLocationApi;
        if (iBrazeLocationApi != null) {
            iBrazeLocationApi.initWithContext(context, allowedProviders, appConfigurationProvider);
        }
    }
}
