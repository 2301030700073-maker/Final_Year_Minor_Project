package com.google.android.gms.internal.ads;

import android.util.Base64;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsResponse;
import androidx.privacysandbox.ads.adservices.topics.Topic;
import com.google.common.util.concurrent.ListenableFuture;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final /* synthetic */ class zzeyt implements zzgtq {
    static final /* synthetic */ zzeyt zza = new zzeyt();

    private /* synthetic */ zzeyt() {
    }

    @Override // com.google.android.gms.internal.ads.zzgtq
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
        if (getTopicsResponse == null) {
            return zzgui.zza(new zzeyv("", 1, null));
        }
        zzial zzc = zziam.zzc();
        for (Topic topic : getTopicsResponse.getTopics()) {
            zziaj zzc2 = zziak.zzc();
            zzc2.zza(topic.getTopicId());
            zzc2.zzb(topic.getModelVersion());
            zzc2.zzc(topic.getTaxonomyVersion());
            zzc.zza((zziak) zzc2.zzbu());
        }
        return zzgui.zza(new zzeyv(Base64.encodeToString(((zziam) zzc.zzbu()).zzaN(), 1), 1, null));
    }
}
