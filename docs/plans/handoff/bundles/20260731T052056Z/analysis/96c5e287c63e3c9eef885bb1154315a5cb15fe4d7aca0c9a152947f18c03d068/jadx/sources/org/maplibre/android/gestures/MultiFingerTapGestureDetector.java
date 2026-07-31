package org.maplibre.android.gestures;

import android.graphics.PointF;
import android.view.MotionEvent;
import java.util.Iterator;
import org.maplibre.android.maps.MapGestureDetector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiFingerTapGestureDetector extends MultiFingerGesture {
    public boolean invalidMovement;
    public int lastPointersDownCount;
    public float multiFingerTapMovementThreshold;
    public long multiFingerTapTimeThreshold;
    public boolean pointerLifted;

    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean analyzeEvent(MotionEvent motionEvent) {
        super.analyzeEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        boolean z = false;
        boolean z2 = true;
        if (actionMasked == 1) {
            if (canExecute(4)) {
                MapGestureDetector.TapGestureListener tapGestureListener = (MapGestureDetector.TapGestureListener) this.listener;
                int i = this.lastPointersDownCount;
                MapGestureDetector mapGestureDetector = MapGestureDetector.this;
                if (mapGestureDetector.uiSettings.zoomGesturesEnabled && i == 2) {
                    mapGestureDetector.transform.cancelTransitions();
                    mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
                    PointF pointF = mapGestureDetector.constantFocalPoint;
                    if (pointF == null) {
                        pointF = this.focalPoint;
                    }
                    mapGestureDetector.zoomAnimated(false, pointF, false);
                    z = true;
                }
            }
            reset();
            return z;
        }
        if (actionMasked != 2) {
            if (actionMasked == 5) {
                if (this.pointerLifted) {
                    this.invalidMovement = true;
                }
                this.lastPointersDownCount = this.pointerIdList.size();
                return false;
            }
            if (actionMasked == 6) {
                this.pointerLifted = true;
                return false;
            }
        } else if (!this.invalidMovement) {
            Iterator it = this.pointersDistanceMap.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                MultiFingerDistancesObject multiFingerDistancesObject = (MultiFingerDistancesObject) it.next();
                float abs = Math.abs(multiFingerDistancesObject.currFingersDiffX - multiFingerDistancesObject.prevFingersDiffX);
                float abs2 = Math.abs(multiFingerDistancesObject.currFingersDiffY - multiFingerDistancesObject.prevFingersDiffY);
                float f = this.multiFingerTapMovementThreshold;
                boolean z3 = abs > f || abs2 > f;
                this.invalidMovement = z3;
                if (z3) {
                    break;
                }
            }
            this.invalidMovement = z2;
            return false;
        }
        return false;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean canExecute(int i) {
        return this.lastPointersDownCount > 1 && !this.invalidMovement && this.gestureDuration < this.multiFingerTapTimeThreshold && super.canExecute(4);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final void reset() {
        this.lastPointersDownCount = 0;
        this.invalidMovement = false;
        this.pointerLifted = false;
    }
}
