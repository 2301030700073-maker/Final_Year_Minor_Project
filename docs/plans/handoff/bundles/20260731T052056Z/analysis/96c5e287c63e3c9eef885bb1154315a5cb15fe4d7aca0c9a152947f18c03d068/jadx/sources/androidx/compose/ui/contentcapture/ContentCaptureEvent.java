package androidx.compose.ui.contentcapture;

import androidx.paging.HintHandler;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentCaptureEvent {
    public final int id;
    public final HintHandler structureCompat;
    public final long timestamp;
    public final ContentCaptureEventType type;

    public ContentCaptureEvent(int i, long j, ContentCaptureEventType contentCaptureEventType, HintHandler hintHandler) {
        this.id = i;
        this.timestamp = j;
        this.type = contentCaptureEventType;
        this.structureCompat = hintHandler;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContentCaptureEvent)) {
            return false;
        }
        ContentCaptureEvent contentCaptureEvent = (ContentCaptureEvent) obj;
        return this.id == contentCaptureEvent.id && this.timestamp == contentCaptureEvent.timestamp && this.type == contentCaptureEvent.type && Intrinsics.areEqual(this.structureCompat, contentCaptureEvent.structureCompat);
    }

    public final int hashCode() {
        int i = this.id * 31;
        long j = this.timestamp;
        int hashCode = (this.type.hashCode() + ((i + ((int) (j ^ (j >>> 32)))) * 31)) * 31;
        HintHandler hintHandler = this.structureCompat;
        return hashCode + (hintHandler == null ? 0 : hintHandler.hashCode());
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.id + ", timestamp=" + this.timestamp + ", type=" + this.type + ", structureCompat=" + this.structureCompat + ')';
    }
}
