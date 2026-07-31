package androidx.compose.foundation.text;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface TextDragObserver {
    void onCancel();

    /* renamed from: onDown-k-4lQ0M, reason: not valid java name */
    void mo277onDownk4lQ0M();

    /* renamed from: onDrag-k-4lQ0M, reason: not valid java name */
    void mo278onDragk4lQ0M(long j);

    /* renamed from: onStart-3MmeM6k, reason: not valid java name */
    void mo279onStart3MmeM6k(long j, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0);

    void onStop();

    void onUp();
}
