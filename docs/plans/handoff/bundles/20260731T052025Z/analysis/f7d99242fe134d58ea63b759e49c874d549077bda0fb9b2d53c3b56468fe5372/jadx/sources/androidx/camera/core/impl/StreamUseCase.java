package androidx.camera.core.impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public enum StreamUseCase {
    DEFAULT(0),
    PREVIEW(1),
    VIDEO_RECORD(3),
    STILL_CAPTURE(2),
    /* JADX INFO: Fake field, exist only in values array */
    VIDEO_CALL(5),
    PREVIEW_VIDEO_STILL(4),
    /* JADX INFO: Fake field, exist only in values array */
    CROPPED_RAW(6);

    public final long value;

    StreamUseCase(int i) {
        this.value = i;
    }
}
