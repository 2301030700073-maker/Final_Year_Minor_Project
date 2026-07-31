package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface TextDragObserver {
    void onCancel();

    /* renamed from: onDown-k-4lQ0M, reason: not valid java name */
    void mo193onDownk4lQ0M();

    /* renamed from: onDrag-k-4lQ0M, reason: not valid java name */
    void mo194onDragk4lQ0M(long j);

    /* renamed from: onStart-3MmeM6k, reason: not valid java name */
    void mo195onStart3MmeM6k(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0);

    void onStop();

    void onUp();
}
