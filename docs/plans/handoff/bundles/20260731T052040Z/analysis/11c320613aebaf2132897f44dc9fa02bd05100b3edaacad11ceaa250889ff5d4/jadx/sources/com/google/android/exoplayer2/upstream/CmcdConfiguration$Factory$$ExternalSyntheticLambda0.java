package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.upstream.CmcdConfiguration;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.RegularImmutableMap;
import java.util.UUID;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CmcdConfiguration$Factory$$ExternalSyntheticLambda0 implements CmcdConfiguration.Factory {
    @Override // com.google.android.exoplayer2.upstream.CmcdConfiguration.Factory
    public final CmcdConfiguration createCmcdConfiguration(MediaItem mediaItem) {
        String uuid = UUID.randomUUID().toString();
        String str = mediaItem.mediaId;
        if (str == null) {
            str = "";
        }
        return new CmcdConfiguration(uuid, str, new CmcdConfiguration.RequestConfig() { // from class: com.google.android.exoplayer2.upstream.CmcdConfiguration.Factory.1
            @Override // com.google.android.exoplayer2.upstream.CmcdConfiguration.RequestConfig
            public final ImmutableMap getCustomData() {
                return RegularImmutableMap.EMPTY;
            }

            @Override // com.google.android.exoplayer2.upstream.CmcdConfiguration.RequestConfig
            public final /* synthetic */ int getRequestedMaximumThroughputKbps(int i) {
                return C.RATE_UNSET_INT;
            }

            @Override // com.google.android.exoplayer2.upstream.CmcdConfiguration.RequestConfig
            public final /* synthetic */ boolean isKeyAllowed(String str2) {
                return true;
            }
        });
    }
}
