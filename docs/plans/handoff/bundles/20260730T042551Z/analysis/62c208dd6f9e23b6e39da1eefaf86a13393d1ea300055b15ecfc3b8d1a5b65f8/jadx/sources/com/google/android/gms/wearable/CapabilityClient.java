package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.Wearable;
import defpackage.FG;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class CapabilityClient extends GoogleApi<Wearable.WearableOptions> {
    public static final String ACTION_CAPABILITY_CHANGED = "com.google.android.gms.wearable.CAPABILITY_CHANGED";
    public static final int FILTER_ALL = 0;
    public static final int FILTER_LITERAL = 0;
    public static final int FILTER_PREFIX = 1;
    public static final int FILTER_REACHABLE = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CapabilityFilterType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface NodeFilterType {
    }

    public interface OnCapabilityChangedListener extends CapabilityApi.CapabilityListener {
        @Override // com.google.android.gms.wearable.CapabilityApi.CapabilityListener
        void onCapabilityChanged(CapabilityInfo capabilityInfo);
    }

    public CapabilityClient(Activity activity, GoogleApi.Settings settings) {
        super(activity, Wearable.API, Wearable.WearableOptions.zza, settings);
    }

    public abstract FG<Void> addListener(OnCapabilityChangedListener onCapabilityChangedListener, Uri uri, int i);

    public abstract FG<Void> addListener(OnCapabilityChangedListener onCapabilityChangedListener, String str);

    public abstract FG<Void> addLocalCapability(String str);

    public abstract FG<Map<String, CapabilityInfo>> getAllCapabilities(int i);

    public abstract FG<CapabilityInfo> getCapability(String str, int i);

    public abstract FG<Boolean> removeListener(OnCapabilityChangedListener onCapabilityChangedListener);

    public abstract FG<Boolean> removeListener(OnCapabilityChangedListener onCapabilityChangedListener, String str);

    public abstract FG<Void> removeLocalCapability(String str);

    public CapabilityClient(Context context, GoogleApi.Settings settings) {
        super(context, Wearable.API, Wearable.WearableOptions.zza, settings);
    }
}
