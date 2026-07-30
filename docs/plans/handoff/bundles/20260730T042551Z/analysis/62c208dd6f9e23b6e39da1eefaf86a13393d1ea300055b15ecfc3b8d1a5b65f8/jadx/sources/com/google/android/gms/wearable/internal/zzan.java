package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.CapabilityClient;
import com.google.android.gms.wearable.CapabilityInfo;
import defpackage.FG;
import defpackage.GG;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzan extends CapabilityClient {
    public static final /* synthetic */ int zza = 0;
    private final CapabilityApi zzb;

    public zzan(Activity activity, GoogleApi.Settings settings) {
        super(activity, settings);
        this.zzb = new zzah();
    }

    private final FG zza(final ListenerHolder listenerHolder, final CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener, final IntentFilter[] intentFilterArr) {
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(listenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzak
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzp(new zzhj((GG) obj2), CapabilityClient.OnCapabilityChangedListener.this, listenerHolder, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzal
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzx(new zzhi((GG) obj2), CapabilityClient.OnCapabilityChangedListener.this);
            }
        }).setMethodKey(24013).build());
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Void> addListener(CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener, Uri uri, int i) {
        boolean z;
        Asserts.checkNotNull(onCapabilityChangedListener, "listener must not be null");
        Asserts.checkNotNull(uri, "uri must not be null");
        if (i != 0) {
            if (i != 1) {
                z = false;
                Preconditions.checkArgument(z, "invalid filter type");
                return zza(ListenerHolders.createListenerHolder(onCapabilityChangedListener, getLooper(), "CapabilityListener"), onCapabilityChangedListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.CAPABILITY_CHANGED", uri, i)});
            }
            i = 1;
        }
        z = true;
        Preconditions.checkArgument(z, "invalid filter type");
        return zza(ListenerHolders.createListenerHolder(onCapabilityChangedListener, getLooper(), "CapabilityListener"), onCapabilityChangedListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.CAPABILITY_CHANGED", uri, i)});
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Void> addLocalCapability(String str) {
        Asserts.checkNotNull(str, "capability must not be null");
        CapabilityApi capabilityApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toVoidTask(asGoogleApiClient.enqueue(new zzx((zzah) capabilityApi, asGoogleApiClient, str)));
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Map<String, CapabilityInfo>> getAllCapabilities(int i) {
        CapabilityApi capabilityApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        boolean z = true;
        if (i != 0) {
            if (i == 1) {
                i = 1;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z);
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzw((zzah) capabilityApi, asGoogleApiClient, i)), new PendingResultUtil.ResultConverter() { // from class: com.google.android.gms.wearable.internal.zzaj
            @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
            public final Object convert(Result result) {
                return ((CapabilityApi.GetAllCapabilitiesResult) result).getAllCapabilities();
            }
        });
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<CapabilityInfo> getCapability(String str, int i) {
        Asserts.checkNotNull(str, "capability must not be null");
        CapabilityApi capabilityApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        boolean z = true;
        if (i != 0) {
            if (i == 1) {
                i = 1;
            } else {
                z = false;
            }
        }
        Preconditions.checkArgument(z);
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzv((zzah) capabilityApi, asGoogleApiClient, str, i)), new PendingResultUtil.ResultConverter() { // from class: com.google.android.gms.wearable.internal.zzai
            @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
            public final Object convert(Result result) {
                return ((CapabilityApi.GetCapabilityResult) result).getCapability();
            }
        });
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Boolean> removeListener(CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener) {
        Asserts.checkNotNull(onCapabilityChangedListener, "listener must not be null");
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(onCapabilityChangedListener, getLooper(), "CapabilityListener").getListenerKey(), "Key must not be null"), 24003);
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Void> removeLocalCapability(String str) {
        Asserts.checkNotNull(str, "capability must not be null");
        CapabilityApi capabilityApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toVoidTask(asGoogleApiClient.enqueue(new zzy((zzah) capabilityApi, asGoogleApiClient, str)));
    }

    public zzan(Context context, GoogleApi.Settings settings) {
        super(context, settings);
        this.zzb = new zzah();
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Boolean> removeListener(CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener, String str) {
        Asserts.checkNotNull(onCapabilityChangedListener, "listener must not be null");
        Asserts.checkNotNull(str, "capability must not be null");
        if (!str.startsWith("/")) {
            str = "/".concat(str);
        }
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(onCapabilityChangedListener, getLooper(), "CapabilityListener:".concat(String.valueOf(str))).getListenerKey(), "Key must not be null"), 24003);
    }

    @Override // com.google.android.gms.wearable.CapabilityClient
    public final FG<Void> addListener(CapabilityClient.OnCapabilityChangedListener onCapabilityChangedListener, String str) {
        Asserts.checkNotNull(onCapabilityChangedListener, "listener must not be null");
        Asserts.checkNotNull(str, "capability must not be null");
        IntentFilter zza2 = zzhl.zza("com.google.android.gms.wearable.CAPABILITY_CHANGED");
        if (!str.startsWith("/")) {
            str = "/".concat(str);
        }
        zza2.addDataPath(str, 0);
        return zza(ListenerHolders.createListenerHolder(onCapabilityChangedListener, getLooper(), "CapabilityListener:".concat(String.valueOf(str))), new zzam(onCapabilityChangedListener, str), new IntentFilter[]{zza2});
    }
}
