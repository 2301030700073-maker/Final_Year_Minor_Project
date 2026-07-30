package com.google.android.gms.wearable;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.Wearable;
import defpackage.FG;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public abstract class DataClient extends GoogleApi<Wearable.WearableOptions> {
    public static final String ACTION_DATA_CHANGED = "com.google.android.gms.wearable.DATA_CHANGED";
    public static final int FILTER_LITERAL = 0;
    public static final int FILTER_PREFIX = 1;

    @Retention(RetentionPolicy.SOURCE)
    public @interface FilterType {
    }

    public static abstract class GetFdForAssetResponse implements Releasable {
        public abstract ParcelFileDescriptor getFdForAsset();

        public abstract InputStream getInputStream();
    }

    public interface OnDataChangedListener extends DataApi.DataListener {
        @Override // com.google.android.gms.wearable.DataApi.DataListener
        void onDataChanged(DataEventBuffer dataEventBuffer);
    }

    public DataClient(Activity activity, GoogleApi.Settings settings) {
        super(activity, Wearable.API, Wearable.WearableOptions.zza, settings);
    }

    public abstract FG<Void> addListener(OnDataChangedListener onDataChangedListener);

    public abstract FG<Void> addListener(OnDataChangedListener onDataChangedListener, Uri uri, int i);

    public abstract FG<Integer> deleteDataItems(Uri uri);

    public abstract FG<Integer> deleteDataItems(Uri uri, int i);

    public abstract FG<DataItem> getDataItem(Uri uri);

    public abstract FG<DataItemBuffer> getDataItems();

    public abstract FG<DataItemBuffer> getDataItems(Uri uri);

    public abstract FG<DataItemBuffer> getDataItems(Uri uri, int i);

    public abstract FG<GetFdForAssetResponse> getFdForAsset(Asset asset);

    public abstract FG<GetFdForAssetResponse> getFdForAsset(DataItemAsset dataItemAsset);

    public abstract FG<DataItem> putDataItem(PutDataRequest putDataRequest);

    public abstract FG<Boolean> removeListener(OnDataChangedListener onDataChangedListener);

    public DataClient(Context context, GoogleApi.Settings settings) {
        super(context, Wearable.API, Wearable.WearableOptions.zza, settings);
    }
}
