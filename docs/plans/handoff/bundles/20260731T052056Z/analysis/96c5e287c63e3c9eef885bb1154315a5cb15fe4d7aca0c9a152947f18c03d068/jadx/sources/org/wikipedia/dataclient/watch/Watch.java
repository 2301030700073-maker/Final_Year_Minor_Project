package org.wikipedia.dataclient.watch;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.dataclient.mwapi.MwResponse;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Watch extends MwResponse {
    public final String expiry;
    public final boolean missing;
    public final int ns;
    public final int pageid;
    public final String title;
    public final boolean unwatched;
    public final boolean watched;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(0)), null, null, null, null, null, null, null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Watch$$serializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Watch(int i, List list, String str, String str2, int i2, int i3, String str3, boolean z, boolean z2, boolean z3) {
        super(i, str, list);
        if (4 != (i & 4)) {
            TuplesKt.throwMissingFieldException(i, 4, Watch$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
        this.title = str2;
        if ((i & 8) == 0) {
            this.ns = 0;
        } else {
            this.ns = i2;
        }
        if ((i & 16) == 0) {
            this.pageid = 0;
        } else {
            this.pageid = i3;
        }
        if ((i & 32) == 0) {
            this.expiry = null;
        } else {
            this.expiry = str3;
        }
        if ((i & 64) == 0) {
            this.watched = false;
        } else {
            this.watched = z;
        }
        if ((i & 128) == 0) {
            this.unwatched = false;
        } else {
            this.unwatched = z2;
        }
        if ((i & 256) == 0) {
            this.missing = false;
        } else {
            this.missing = z3;
        }
    }
}
