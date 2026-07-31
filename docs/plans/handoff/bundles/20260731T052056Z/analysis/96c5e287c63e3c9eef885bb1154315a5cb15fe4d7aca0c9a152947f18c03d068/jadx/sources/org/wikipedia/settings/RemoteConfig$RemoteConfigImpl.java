package org.wikipedia.settings;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$RemoteConfigImpl {
    public static final Companion Companion = new Companion();
    public final RemoteConfig$RemoteConfigAndroidV1 androidv1;
    public final RemoteConfig$RemoteConfigCommonV1 commonv1;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$RemoteConfigImpl$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RemoteConfig$RemoteConfigImpl(int i, RemoteConfig$RemoteConfigCommonV1 remoteConfig$RemoteConfigCommonV1, RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1) {
        if ((i & 1) == 0) {
            this.commonv1 = null;
        } else {
            this.commonv1 = remoteConfig$RemoteConfigCommonV1;
        }
        if ((i & 2) == 0) {
            this.androidv1 = null;
        } else {
            this.androidv1 = remoteConfig$RemoteConfigAndroidV1;
        }
    }

    public final boolean getDisableReadingListSync() {
        RemoteConfig$RemoteConfigAndroidV1 remoteConfig$RemoteConfigAndroidV1 = this.androidv1;
        return remoteConfig$RemoteConfigAndroidV1 != null && remoteConfig$RemoteConfigAndroidV1.disableReadingListSync;
    }
}
