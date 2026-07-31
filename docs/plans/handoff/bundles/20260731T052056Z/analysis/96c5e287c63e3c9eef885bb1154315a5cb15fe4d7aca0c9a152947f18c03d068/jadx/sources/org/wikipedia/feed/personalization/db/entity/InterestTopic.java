package org.wikipedia.feed.personalization.db.entity;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class InterestTopic {
    public static final Companion Companion = new Companion();
    public final String topicId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return InterestTopic$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ InterestTopic(int i, String str) {
        if (1 == (i & 1)) {
            this.topicId = str;
        } else {
            TuplesKt.throwMissingFieldException(i, 1, InterestTopic$$serializer.INSTANCE.getDescriptor());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterestTopic) && Intrinsics.areEqual(this.topicId, ((InterestTopic) obj).topicId);
    }

    public final int hashCode() {
        return this.topicId.hashCode();
    }

    public final String toString() {
        return Animation.CC.m("InterestTopic(topicId=", this.topicId, ")");
    }

    public InterestTopic(String str) {
        str.getClass();
        this.topicId = str;
    }
}
