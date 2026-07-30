package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEventBuffer;

/* loaded from: classes3.dex */
final class zzio implements ListenerHolder.Notifier {
    final /* synthetic */ DataHolder zza;

    public zzio(DataHolder dataHolder) {
        this.zza = dataHolder;
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        try {
            ((DataApi.DataListener) obj).onDataChanged(new DataEventBuffer(this.zza));
        } finally {
            this.zza.close();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
        this.zza.close();
    }
}
