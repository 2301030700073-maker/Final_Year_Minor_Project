package org.schabi.newpipe.database.stream.model;

import androidx.compose.ui.Modifier;
import com.google.android.exoplayer2.C;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamStateEntity {
    public static final Companion Companion = new Companion();
    public final long progressMillis;
    public final long streamUid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamStateEntity(long j, long j2) {
        this.streamUid = j;
        this.progressMillis = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamStateEntity)) {
            return false;
        }
        StreamStateEntity streamStateEntity = (StreamStateEntity) obj;
        return this.streamUid == streamStateEntity.streamUid && this.progressMillis == streamStateEntity.progressMillis;
    }

    public final int hashCode() {
        long j = this.streamUid;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.progressMillis;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    public final boolean isFinished(long j) {
        long j2 = (1000 * j) - 60000;
        long j3 = this.progressMillis;
        return j3 >= j2 && j3 >= (j * C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) / 4;
    }

    public final boolean isValid(long j) {
        long j2 = this.progressMillis;
        return j2 > 5000 || j2 > (j * 1000) / 4;
    }

    public final String toString() {
        return Modifier.CC.m(this.progressMillis, ")", Modifier.CC.m(this.streamUid, "StreamStateEntity(streamUid=", ", progressMillis="));
    }
}
