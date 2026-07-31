package org.schabi.newpipe.database.stream;

import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.database.stream.model.StreamEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamWithState {
    public final Long stateProgressMillis;
    public final StreamEntity stream;

    public StreamWithState(StreamEntity streamEntity, Long l) {
        this.stream = streamEntity;
        this.stateProgressMillis = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamWithState)) {
            return false;
        }
        StreamWithState streamWithState = (StreamWithState) obj;
        return this.stream.equals(streamWithState.stream) && Intrinsics.areEqual(this.stateProgressMillis, streamWithState.stateProgressMillis);
    }

    public final int hashCode() {
        int hashCode = this.stream.hashCode() * 31;
        Long l = this.stateProgressMillis;
        return hashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "StreamWithState(stream=" + this.stream + ", stateProgressMillis=" + this.stateProgressMillis + ")";
    }
}
