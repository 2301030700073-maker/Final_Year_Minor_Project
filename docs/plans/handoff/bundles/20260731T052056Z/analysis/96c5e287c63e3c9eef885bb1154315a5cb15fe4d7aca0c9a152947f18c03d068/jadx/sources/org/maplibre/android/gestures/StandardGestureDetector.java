package org.maplibre.android.gestures;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardGestureDetector extends BaseGesture {
    public final GestureDetector gestureDetector;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface StandardOnGestureListener extends GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {
    }

    public StandardGestureDetector(Context context, FragmentNewsBinding fragmentNewsBinding) {
        super(context, fragmentNewsBinding);
        this.gestureDetector = new GestureDetector(context, new StandardOnGestureListener() { // from class: org.maplibre.android.gestures.StandardGestureDetector.1
            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(10) && ((StandardOnGestureListener) standardGestureDetector.listener).onDoubleTap(motionEvent);
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(11) && ((StandardOnGestureListener) standardGestureDetector.listener).onDoubleTapEvent(motionEvent);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(9) && ((StandardOnGestureListener) standardGestureDetector.listener).onDown(motionEvent);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(7) && ((StandardOnGestureListener) standardGestureDetector.listener).onFling(motionEvent, motionEvent2, f, f2);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onLongPress(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                if (standardGestureDetector.canExecute(6)) {
                    ((StandardOnGestureListener) standardGestureDetector.listener).onLongPress(motionEvent);
                }
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(0) && ((StandardOnGestureListener) standardGestureDetector.listener).onScroll(motionEvent, motionEvent2, f, f2);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final void onShowPress(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                if (standardGestureDetector.canExecute(8)) {
                    ((StandardOnGestureListener) standardGestureDetector.listener).onShowPress(motionEvent);
                }
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(12) && ((StandardOnGestureListener) standardGestureDetector.listener).onSingleTapConfirmed(motionEvent);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public final boolean onSingleTapUp(MotionEvent motionEvent) {
                StandardGestureDetector standardGestureDetector = StandardGestureDetector.this;
                return standardGestureDetector.canExecute(5) && ((StandardOnGestureListener) standardGestureDetector.listener).onSingleTapUp(motionEvent);
            }
        });
    }

    @Override // org.maplibre.android.gestures.BaseGesture
    public final boolean analyzeEvent(MotionEvent motionEvent) {
        return this.gestureDetector.onTouchEvent(motionEvent);
    }
}
