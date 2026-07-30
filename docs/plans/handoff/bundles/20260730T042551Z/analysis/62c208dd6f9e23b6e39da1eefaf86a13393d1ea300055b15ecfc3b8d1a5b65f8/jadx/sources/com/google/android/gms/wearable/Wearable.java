package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.wearable.internal.zzah;
import com.google.android.gms.wearable.internal.zzan;
import com.google.android.gms.wearable.internal.zzau;
import com.google.android.gms.wearable.internal.zzbd;
import com.google.android.gms.wearable.internal.zzce;
import com.google.android.gms.wearable.internal.zzct;
import com.google.android.gms.wearable.internal.zzdb;
import com.google.android.gms.wearable.internal.zzfl;
import com.google.android.gms.wearable.internal.zzfw;
import com.google.android.gms.wearable.internal.zzgd;
import com.google.android.gms.wearable.internal.zzgl;
import com.google.android.gms.wearable.internal.zzhk;
import com.google.android.gms.wearable.internal.zziw;

/* loaded from: classes3.dex */
public class Wearable {

    @Deprecated
    public static final Api<WearableOptions> API;
    private static final Api.ClientKey zzf;
    private static final Api.AbstractClientBuilder zzg;

    @Deprecated
    public static final DataApi DataApi = new zzct();

    @Deprecated
    public static final CapabilityApi CapabilityApi = new zzah();

    @Deprecated
    public static final MessageApi MessageApi = new zzfl();

    @Deprecated
    public static final NodeApi NodeApi = new zzgd();

    @Deprecated
    public static final ChannelApi ChannelApi = new zzau();

    @ShowFirstParty
    @Deprecated
    public static final com.google.android.gms.wearable.internal.zzk zza = new com.google.android.gms.wearable.internal.zzk();

    @ShowFirstParty
    @Deprecated
    public static final com.google.android.gms.wearable.internal.zzh zzb = new com.google.android.gms.wearable.internal.zzh();

    @ShowFirstParty
    @Deprecated
    public static final zzce zzc = new zzce();

    @ShowFirstParty
    @Deprecated
    public static final zzhk zzd = new zzhk();

    @ShowFirstParty
    @Deprecated
    public static final zziw zze = new zziw();

    public static final class WearableOptions implements Api.ApiOptions.Optional {
        static final WearableOptions zza = new WearableOptions(new Builder());
        private final Looper zzb;

        public static class Builder {
            private Looper zza;

            public WearableOptions build() {
                return new WearableOptions(this);
            }

            public Builder setLooper(Looper looper) {
                this.zza = looper;
                return this;
            }
        }

        private WearableOptions(Builder builder) {
            this.zzb = builder.zza;
        }

        public static /* bridge */ /* synthetic */ GoogleApi.Settings zza(WearableOptions wearableOptions) {
            return wearableOptions.zzb != null ? new GoogleApi.Settings.Builder().setLooper(wearableOptions.zzb).build() : GoogleApi.Settings.DEFAULT_SETTINGS;
        }

        public boolean equals(Object obj) {
            return obj instanceof WearableOptions;
        }

        public int hashCode() {
            return Objects.hashCode(WearableOptions.class);
        }
    }

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zzf = clientKey;
        zzh zzhVar = new zzh();
        zzg = zzhVar;
        API = new Api<>("Wearable.API", zzhVar, clientKey);
    }

    private Wearable() {
    }

    public static CapabilityClient getCapabilityClient(Activity activity) {
        return new zzan(activity, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static ChannelClient getChannelClient(Activity activity) {
        return new zzbd(activity, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static DataClient getDataClient(Activity activity) {
        return new zzdb(activity, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static MessageClient getMessageClient(Activity activity) {
        return new zzfw(activity, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static NodeClient getNodeClient(Activity activity) {
        return new zzgl(activity, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static CapabilityClient getCapabilityClient(Activity activity, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzan(activity, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static ChannelClient getChannelClient(Activity activity, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzbd(activity, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static DataClient getDataClient(Activity activity, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzdb(activity, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static MessageClient getMessageClient(Activity activity, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzfw(activity, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static NodeClient getNodeClient(Activity activity, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzgl(activity, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static CapabilityClient getCapabilityClient(Context context) {
        return new zzan(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static ChannelClient getChannelClient(Context context) {
        return new zzbd(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static DataClient getDataClient(Context context) {
        return new zzdb(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static MessageClient getMessageClient(Context context) {
        return new zzfw(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static NodeClient getNodeClient(Context context) {
        return new zzgl(context, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public static CapabilityClient getCapabilityClient(Context context, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzan(context, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static ChannelClient getChannelClient(Context context, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzbd(context, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static DataClient getDataClient(Context context, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzdb(context, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static MessageClient getMessageClient(Context context, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzfw(context, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }

    public static NodeClient getNodeClient(Context context, WearableOptions wearableOptions) {
        if (wearableOptions != null) {
            return new zzgl(context, WearableOptions.zza(wearableOptions));
        }
        throw new NullPointerException("options must not be null");
    }
}
