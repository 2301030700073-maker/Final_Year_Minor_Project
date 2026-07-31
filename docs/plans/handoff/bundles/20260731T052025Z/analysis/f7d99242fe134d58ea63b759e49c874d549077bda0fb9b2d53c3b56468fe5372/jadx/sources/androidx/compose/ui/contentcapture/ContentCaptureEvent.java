package androidx.compose.ui.contentcapture;

import androidx.camera.view.PreviewView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ContentCaptureEvent {
    public final int id;
    public final PreviewView.AnonymousClass1 structureCompat;
    public final long timestamp;
    public final ContentCaptureEventType type;

    public ContentCaptureEvent(int i, long j, ContentCaptureEventType contentCaptureEventType, PreviewView.AnonymousClass1 anonymousClass1) {
        this.id = i;
        this.timestamp = j;
        this.type = contentCaptureEventType;
        this.structureCompat = anonymousClass1;
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
        PreviewView.AnonymousClass1 anonymousClass1 = this.structureCompat;
        return hashCode + (anonymousClass1 == null ? 0 : anonymousClass1.hashCode());
    }

    public final String toString() {
        return "ContentCaptureEvent(id=" + this.id + ", timestamp=" + this.timestamp + ", type=" + this.type + ", structureCompat=" + this.structureCompat + ')';
    }
}
