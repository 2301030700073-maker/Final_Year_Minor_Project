package org.wikipedia.dataclient.wikidata;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.mwapi.MwPostResponse;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.wikidata.Entities;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class EntityPostResponse extends MwPostResponse {
    public final Entities.Entity entity;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(7)), null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return EntityPostResponse$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ EntityPostResponse(int i, List list, String str, MwQueryPage mwQueryPage, String str2, int i2, Entities.Entity entity) {
        super(i, list, str, mwQueryPage, str2, i2);
        if ((i & 32) == 0) {
            this.entity = null;
        } else {
            this.entity = entity;
        }
    }
}
