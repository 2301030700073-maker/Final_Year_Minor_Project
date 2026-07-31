package org.wikipedia.dataclient.restbase;

import coil3.util.ContextsKt;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RbServiceError {
    public final String detail;
    public final String errorKey;
    public final Map messageTranslations;
    public final String title;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(26))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RbServiceError$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RbServiceError(int i, String str, String str2, String str3, Map map) {
        if ((i & 1) == 0) {
            this.title = null;
        } else {
            this.title = str;
        }
        if ((i & 2) == 0) {
            this.detail = null;
        } else {
            this.detail = str2;
        }
        if ((i & 4) == 0) {
            this.errorKey = null;
        } else {
            this.errorKey = str3;
        }
        if ((i & 8) == 0) {
            this.messageTranslations = null;
        } else {
            this.messageTranslations = map;
        }
    }
}
