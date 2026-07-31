package org.wikipedia.settings;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RemoteConfig$RemoteConfigAndroidV1 {
    public final boolean disableReadingListSync;
    public final RemoteConfig$RemoteConfigHCaptcha hCaptcha;
    public final Boolean hybridSearchEnabled;
    public final List hybridSearchLanguages;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new SearchResult$$ExternalSyntheticLambda0(11))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RemoteConfig$RemoteConfigAndroidV1$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RemoteConfig$RemoteConfigAndroidV1(int i, boolean z, RemoteConfig$RemoteConfigHCaptcha remoteConfig$RemoteConfigHCaptcha, Boolean bool, List list) {
        this.disableReadingListSync = (i & 1) == 0 ? false : z;
        if ((i & 2) == 0) {
            this.hCaptcha = null;
        } else {
            this.hCaptcha = remoteConfig$RemoteConfigHCaptcha;
        }
        if ((i & 4) == 0) {
            this.hybridSearchEnabled = null;
        } else {
            this.hybridSearchEnabled = bool;
        }
        if ((i & 8) == 0) {
            this.hybridSearchLanguages = null;
        } else {
            this.hybridSearchLanguages = list;
        }
    }
}
