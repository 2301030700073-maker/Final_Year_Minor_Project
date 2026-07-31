package androidx.compose.ui.contentcapture;

import coil3.memory.MemoryCacheService;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentCaptureEvent {
    public final int id;
    public final MemoryCacheService structureCompat;
    public final long timestamp;
    public final ContentCaptureEventType type;

    public ContentCaptureEvent(int i, long j, ContentCaptureEventType contentCaptureEventType, MemoryCacheService memoryCacheService) {
        this.id = i;
        this.timestamp = j;
        this.type = contentCaptureEventType;
        this.structureCompat = memoryCacheService;
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
        MemoryCacheService memoryCacheService = this.structureCompat;
        return hashCode + (memoryCacheService == null ? 0 : memoryCacheService.hashCode());
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.id + ", timestamp=" + this.timestamp + ", type=" + this.type + ", structureCompat=" + this.structureCompat + ')';
    }
}
