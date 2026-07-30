package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataClient;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import defpackage.FG;
import defpackage.GG;

/* loaded from: classes3.dex */
public final class zzdb extends DataClient {
    public static final /* synthetic */ int zza = 0;
    private final DataApi zzb;

    public zzdb(Activity activity, GoogleApi.Settings settings) {
        super(activity, settings);
        this.zzb = new zzct();
    }

    private final FG zza(final DataClient.OnDataChangedListener onDataChangedListener, final IntentFilter[] intentFilterArr) {
        final ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder(onDataChangedListener, getLooper(), "DataListener");
        return doRegisterEventListener(RegistrationMethods.builder().withHolder(createListenerHolder).register(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzcy
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzr(new zzhj((GG) obj2), DataClient.OnDataChangedListener.this, createListenerHolder, intentFilterArr);
            }
        }).unregister(new RemoteCall() { // from class: com.google.android.gms.wearable.internal.zzcz
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzim) obj).zzz(new zzhi((GG) obj2), DataClient.OnDataChangedListener.this);
            }
        }).setMethodKey(24015).build());
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<Void> addListener(DataClient.OnDataChangedListener onDataChangedListener) {
        return zza(onDataChangedListener, new IntentFilter[]{zzhl.zza("com.google.android.gms.wearable.DATA_CHANGED")});
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<Integer> deleteDataItems(Uri uri) {
        return PendingResultUtil.toTask(((zzct) this.zzb).deleteDataItems(asGoogleApiClient(), uri, 0), zzcv.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataItem> getDataItem(Uri uri) {
        DataApi dataApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzci((zzct) dataApi, asGoogleApiClient, uri)), zzcu.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataItemBuffer> getDataItems() {
        DataApi dataApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzcj((zzct) dataApi, asGoogleApiClient)), zzcw.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataClient.GetFdForAssetResponse> getFdForAsset(Asset asset) {
        DataApi dataApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        if (asset == null) {
            throw new IllegalArgumentException("asset is null");
        }
        if (asset.getDigest() == null) {
            throw new IllegalArgumentException("invalid asset");
        }
        if (asset.zza() == null) {
            return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzcm((zzct) dataApi, asGoogleApiClient, asset)), zzcx.zza);
        }
        throw new IllegalArgumentException("invalid asset");
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataItem> putDataItem(PutDataRequest putDataRequest) {
        DataApi dataApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzch((zzct) dataApi, asGoogleApiClient, putDataRequest)), zzcu.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<Boolean> removeListener(DataClient.OnDataChangedListener onDataChangedListener) {
        return doUnregisterEventListener((ListenerHolder.ListenerKey) Preconditions.checkNotNull(ListenerHolders.createListenerHolder(onDataChangedListener, getLooper(), "DataListener").getListenerKey(), "Key must not be null"), 24005);
    }

    public zzdb(Context context, GoogleApi.Settings settings) {
        super(context, settings);
        this.zzb = new zzct();
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<Void> addListener(DataClient.OnDataChangedListener onDataChangedListener, Uri uri, int i) {
        boolean z;
        Asserts.checkNotNull(uri, "uri must not be null");
        if (i != 0) {
            if (i != 1) {
                z = false;
                Preconditions.checkArgument(z, "invalid filter type");
                return zza(onDataChangedListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.DATA_CHANGED", uri, i)});
            }
            i = 1;
        }
        z = true;
        Preconditions.checkArgument(z, "invalid filter type");
        return zza(onDataChangedListener, new IntentFilter[]{zzhl.zzb("com.google.android.gms.wearable.DATA_CHANGED", uri, i)});
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<Integer> deleteDataItems(Uri uri, int i) {
        return PendingResultUtil.toTask(this.zzb.deleteDataItems(asGoogleApiClient(), uri, i), zzcv.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataItemBuffer> getDataItems(Uri uri) {
        return PendingResultUtil.toTask(((zzct) this.zzb).getDataItems(asGoogleApiClient(), uri, 0), zzcw.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataItemBuffer> getDataItems(Uri uri, int i) {
        return PendingResultUtil.toTask(this.zzb.getDataItems(asGoogleApiClient(), uri, i), zzcw.zza);
    }

    @Override // com.google.android.gms.wearable.DataClient
    public final FG<DataClient.GetFdForAssetResponse> getFdForAsset(DataItemAsset dataItemAsset) {
        DataApi dataApi = this.zzb;
        GoogleApiClient asGoogleApiClient = asGoogleApiClient();
        return PendingResultUtil.toTask(asGoogleApiClient.enqueue(new zzcn((zzct) dataApi, asGoogleApiClient, dataItemAsset)), zzcx.zza);
    }
}
