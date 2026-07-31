package org.maplibre.android.plugins.annotation;

import java.util.LinkedList;
import okio.internal.DefaultSocket;
import org.maplibre.android.gestures.MoveGestureDetector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DraggableAnnotationController$AnnotationMoveGestureListener implements MoveGestureDetector.OnMoveGestureListener {
    public final /* synthetic */ DefaultSocket this$0;

    public DraggableAnnotationController$AnnotationMoveGestureListener(DefaultSocket defaultSocket) {
        this.this$0 = defaultSocket;
    }

    @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
    public final boolean onMove(MoveGestureDetector moveGestureDetector, float f, float f2) {
        return false;
    }

    @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
    public final boolean onMoveBegin(MoveGestureDetector moveGestureDetector) {
        for (SymbolManager symbolManager : (LinkedList) this.this$0.source) {
            if (moveGestureDetector.pointerIdList.size() == 1) {
                symbolManager.queryMapForFeatures(moveGestureDetector.focalPoint);
            }
        }
        return false;
    }

    @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
    public final void onMoveEnd(MoveGestureDetector moveGestureDetector) {
    }
}
