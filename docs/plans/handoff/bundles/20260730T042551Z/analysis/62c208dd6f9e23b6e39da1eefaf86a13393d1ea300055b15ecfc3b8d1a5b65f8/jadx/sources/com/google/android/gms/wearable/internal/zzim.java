package com.google.android.gms.wearable.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.CapabilityApi;
import com.google.android.gms.wearable.ChannelApi;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageClient;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public final class zzim extends GmsClient {
    private final ExecutorService zze;
    private final zzff zzf;
    private final zzff zzg;
    private final zzff zzh;
    private final zzff zzi;
    private final zzff zzj;
    private final zzff zzk;
    private final zzff zzl;
    private final zzff zzm;
    private final zzff zzn;
    private final zzff zzo;
    private final zziu zzp;
    private final File zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzim(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ClientSettings clientSettings) {
        super(context, looper, 14, clientSettings, connectionCallbacks, onConnectionFailedListener);
        com.google.android.gms.internal.wearable.zzh.zza();
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        zziu zza = zziu.zza(context);
        this.zzf = new zzff();
        this.zzg = new zzff();
        this.zzh = new zzff();
        this.zzi = new zzff();
        this.zzj = new zzff();
        this.zzk = new zzff();
        this.zzl = new zzff();
        this.zzm = new zzff();
        this.zzn = new zzff();
        this.zzo = new zzff();
        this.zze = (ExecutorService) Preconditions.checkNotNull(unconfigurableExecutorService);
        this.zzp = zza;
        File file = new File(new File(context.getFilesDir(), "wearos_assets"), "streamtmp");
        file.mkdirs();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                file2.delete();
            }
        }
        this.zzq = file;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void connect(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        if (!requiresGooglePlayServices()) {
            try {
                Bundle bundle = getContext().getPackageManager().getApplicationInfo("com.google.android.wearable.app.cn", 128).metaData;
                if ((bundle != null ? bundle.getInt("com.google.android.wearable.api.version", 0) : 0) < 8600000) {
                    Context context = getContext();
                    Context context2 = getContext();
                    Intent intent = new Intent("com.google.android.wearable.app.cn.UPDATE_ANDROID_WEAR").setPackage("com.google.android.wearable.app.cn");
                    if (context2.getPackageManager().resolveActivity(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST) == null) {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.wearable.app.cn").build());
                    }
                    triggerNotAvailable(connectionProgressReportCallbacks, 6, PendingIntent.getActivity(context, 0, intent, com.google.android.gms.internal.wearable.zzd.zza));
                    return;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                triggerNotAvailable(connectionProgressReportCallbacks, 16, null);
                return;
            }
        }
        super.connect(connectionProgressReportCallbacks);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
        return queryLocalInterface instanceof zzfb ? (zzfb) queryLocalInterface : new zzfb(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.wearable.zze.zzo;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 8600000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.wearable.BIND";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServicePackage() {
        return this.zzp.zzb("com.google.android.wearable.app.cn") ? "com.google.android.wearable.app.cn" : "com.google.android.gms";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0) {
            this.zzf.zzb(iBinder);
            this.zzg.zzb(iBinder);
            this.zzh.zzb(iBinder);
            this.zzj.zzb(iBinder);
            this.zzk.zzb(iBinder);
            this.zzl.zzb(iBinder);
            this.zzm.zzb(iBinder);
            this.zzn.zzb(iBinder);
            this.zzo.zzb(iBinder);
            this.zzi.zzb(iBinder);
            i = 0;
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresGooglePlayServices() {
        return !this.zzp.zzb("com.google.android.wearable.app.cn");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean usesClientTelemetry() {
        return true;
    }

    public final void zzA(BaseImplementation.ResultHolder resultHolder, MessageApi.MessageListener messageListener) {
        this.zzk.zzc(this, resultHolder, messageListener);
    }

    public final void zzB(BaseImplementation.ResultHolder resultHolder, MessageClient.RpcService rpcService) {
        this.zzl.zzc(this, resultHolder, rpcService);
    }

    public final void zzC(BaseImplementation.ResultHolder resultHolder, String str, Uri uri, long j, long j2) {
        try {
            ExecutorService executorService = this.zze;
            Preconditions.checkNotNull(resultHolder);
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(uri);
            Preconditions.checkArgument(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
            Preconditions.checkArgument(j2 >= -1, "invalid length: %s", Long.valueOf(j2));
            executorService.execute(new zzil(this, uri, resultHolder, str, j, j2));
        } catch (RuntimeException e) {
            resultHolder.setFailedResult(new Status(8));
            throw e;
        }
    }

    public final void zzp(BaseImplementation.ResultHolder resultHolder, CapabilityApi.CapabilityListener capabilityListener, ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        this.zzo.zza(this, resultHolder, capabilityListener, zzit.zzk(listenerHolder, intentFilterArr));
    }

    public final void zzq(BaseImplementation.ResultHolder resultHolder, ChannelApi.ChannelListener channelListener, ListenerHolder listenerHolder, String str, IntentFilter[] intentFilterArr) {
        if (str == null) {
            this.zzh.zza(this, resultHolder, channelListener, zzit.zzm(listenerHolder, intentFilterArr));
        } else {
            this.zzh.zza(this, resultHolder, new zzhe(str, channelListener), zzit.zzn(listenerHolder, str, intentFilterArr));
        }
    }

    public final void zzr(BaseImplementation.ResultHolder resultHolder, DataApi.DataListener dataListener, ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        this.zzj.zza(this, resultHolder, dataListener, zzit.zzo(listenerHolder, intentFilterArr));
    }

    public final void zzs(BaseImplementation.ResultHolder resultHolder, MessageApi.MessageListener messageListener, ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        this.zzk.zza(this, resultHolder, messageListener, zzit.zzp(listenerHolder, intentFilterArr));
    }

    public final void zzt(BaseImplementation.ResultHolder resultHolder, MessageClient.RpcService rpcService, ListenerHolder listenerHolder, IntentFilter[] intentFilterArr) {
        this.zzl.zza(this, resultHolder, rpcService, zzit.zzq(listenerHolder, intentFilterArr));
    }

    public final void zzu(BaseImplementation.ResultHolder resultHolder, Asset asset) {
        ((zzfb) getService()).zzr(new zzhz(resultHolder), asset);
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzv(com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder r11, com.google.android.gms.wearable.PutDataRequest r12) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.wearable.internal.zzim.zzv(com.google.android.gms.common.api.internal.BaseImplementation$ResultHolder, com.google.android.gms.wearable.PutDataRequest):void");
    }

    public final void zzw(BaseImplementation.ResultHolder resultHolder, String str, Uri uri, boolean z) {
        try {
            ExecutorService executorService = this.zze;
            Preconditions.checkNotNull(resultHolder);
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(uri);
            executorService.execute(new zzik(this, uri, resultHolder, z, str));
        } catch (RuntimeException e) {
            resultHolder.setFailedResult(new Status(8));
            throw e;
        }
    }

    public final void zzx(BaseImplementation.ResultHolder resultHolder, CapabilityApi.CapabilityListener capabilityListener) {
        this.zzo.zzc(this, resultHolder, capabilityListener);
    }

    public final void zzy(BaseImplementation.ResultHolder resultHolder, ChannelApi.ChannelListener channelListener, String str) {
        if (str == null) {
            this.zzh.zzc(this, resultHolder, channelListener);
        } else {
            this.zzh.zzc(this, resultHolder, new zzhe(str, channelListener));
        }
    }

    public final void zzz(BaseImplementation.ResultHolder resultHolder, DataApi.DataListener dataListener) {
        this.zzj.zzc(this, resultHolder, dataListener);
    }
}
