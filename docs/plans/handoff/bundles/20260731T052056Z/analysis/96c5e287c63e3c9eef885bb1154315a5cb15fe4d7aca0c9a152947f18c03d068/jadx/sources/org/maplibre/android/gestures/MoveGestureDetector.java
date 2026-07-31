package org.maplibre.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MoveGestureDetector extends ProgressiveGesture {
    public static final HashSet handledTypes;
    public final HashMap moveDistancesObjectMap;
    public float moveThreshold;
    public RectF moveThresholdRect;
    public PointF previousFocalPoint;
    public boolean resetFocal;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnMoveGestureListener {
        boolean onMove(MoveGestureDetector moveGestureDetector, float f, float f2);

        boolean onMoveBegin(MoveGestureDetector moveGestureDetector);

        void onMoveEnd(MoveGestureDetector moveGestureDetector);
    }

    static {
        HashSet hashSet = new HashSet();
        handledTypes = hashSet;
        hashSet.add(13);
    }

    public MoveGestureDetector(Context context, FragmentNewsBinding fragmentNewsBinding) {
        super(context, fragmentNewsBinding);
        this.moveDistancesObjectMap = new HashMap();
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture, org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean analyzeEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        HashMap hashMap = this.moveDistancesObjectMap;
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                hashMap.clear();
            } else if (actionMasked == 3) {
                hashMap.clear();
            } else if (actionMasked != 5) {
                if (actionMasked == 6) {
                    this.resetFocal = true;
                    hashMap.remove(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())));
                }
            }
            return super.analyzeEvent(motionEvent);
        }
        this.resetFocal = true;
        hashMap.put(Integer.valueOf(motionEvent.getPointerId(motionEvent.getActionIndex())), new MoveDistancesObject(motionEvent.getX(motionEvent.getActionIndex()), motionEvent.getY(motionEvent.getActionIndex())));
        return super.analyzeEvent(motionEvent);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean analyzeMovement() {
        Iterator it = this.pointerIdList.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int intValue = num.intValue();
            MoveDistancesObject moveDistancesObject = (MoveDistancesObject) this.moveDistancesObjectMap.get(num);
            MotionEvent motionEvent = this.currentEvent;
            float x = motionEvent.getX(motionEvent.findPointerIndex(intValue));
            MotionEvent motionEvent2 = this.currentEvent;
            float y = motionEvent2.getY(motionEvent2.findPointerIndex(intValue));
            float f = moveDistancesObject.currX;
            moveDistancesObject.currX = x;
            moveDistancesObject.distanceXSinceStart = moveDistancesObject.initialX - x;
            moveDistancesObject.distanceYSinceStart = moveDistancesObject.initialY - y;
        }
        if (!this.isInProgress) {
            if (!canExecute(13) || !((OnMoveGestureListener) this.listener).onMoveBegin(this)) {
                return false;
            }
            gestureStarted();
            this.previousFocalPoint = this.focalPoint;
            this.resetFocal = false;
            return true;
        }
        PointF pointF = this.focalPoint;
        PointF pointF2 = this.previousFocalPoint;
        float f2 = pointF2.x - pointF.x;
        float f3 = pointF2.y - pointF.y;
        this.previousFocalPoint = pointF;
        if (!this.resetFocal) {
            return ((OnMoveGestureListener) this.listener).onMove(this, f2, f3);
        }
        this.resetFocal = false;
        return ((OnMoveGestureListener) this.listener).onMove(this, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
    
        if (r1.contains(r4.x, r4.y) != false) goto L20;
     */
    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean canExecute(int r5) {
        /*
            r4 = this;
            r5 = 13
            boolean r5 = super.canExecute(r5)
            r0 = 0
            if (r5 == 0) goto L50
            java.util.HashMap r5 = r4.moveDistancesObjectMap
            java.util.Collection r5 = r5.values()
            java.util.Iterator r5 = r5.iterator()
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L50
            java.lang.Object r5 = r5.next()
            org.maplibre.android.gestures.MoveDistancesObject r5 = (org.maplibre.android.gestures.MoveDistancesObject) r5
            float r1 = r5.distanceXSinceStart
            float r1 = java.lang.Math.abs(r1)
            float r2 = r4.moveThreshold
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            r2 = 1
            if (r1 >= 0) goto L3b
            float r5 = r5.distanceYSinceStart
            float r5 = java.lang.Math.abs(r5)
            float r1 = r4.moveThreshold
            int r5 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r5 < 0) goto L39
            goto L3b
        L39:
            r5 = r0
            goto L3c
        L3b:
            r5 = r2
        L3c:
            android.graphics.RectF r1 = r4.moveThresholdRect
            if (r1 == 0) goto L4d
            android.graphics.PointF r4 = r4.focalPoint
            float r3 = r4.x
            float r4 = r4.y
            boolean r4 = r1.contains(r3, r4)
            if (r4 == 0) goto L4d
            goto L50
        L4d:
            if (r5 == 0) goto L50
            return r2
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.gestures.MoveGestureDetector.canExecute(int):boolean");
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final void gestureStopped() {
        super.gestureStopped();
        ((OnMoveGestureListener) this.listener).onMoveEnd(this);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final int getRequiredPointersCount() {
        return 1;
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final HashSet provideHandledTypes() {
        return handledTypes;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final void reset() {
    }
}
