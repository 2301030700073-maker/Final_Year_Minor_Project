package org.maplibre.android.gestures;

import android.view.MotionEvent;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.maplibre.android.maps.MapGestureDetector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ShoveGestureDetector extends ProgressiveGesture {
    public static final HashSet handledTypes;
    public float deltaPixelsSinceStart;
    public float maxShoveAngle;
    public float pixelDeltaThreshold;

    static {
        HashSet hashSet = new HashSet();
        handledTypes = hashSet;
        hashSet.add(3);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean analyzeMovement() {
        MotionEvent motionEvent = this.previousEvent;
        ArrayList arrayList = this.pointerIdList;
        float y = motionEvent.getY(motionEvent.findPointerIndex(((Integer) arrayList.get(0)).intValue()));
        MotionEvent motionEvent2 = this.previousEvent;
        float y2 = (motionEvent2.getY(motionEvent2.findPointerIndex(((Integer) arrayList.get(1)).intValue())) + y) / 2.0f;
        MotionEvent motionEvent3 = this.currentEvent;
        float y3 = motionEvent3.getY(motionEvent3.findPointerIndex(((Integer) arrayList.get(0)).intValue()));
        MotionEvent motionEvent4 = this.currentEvent;
        float y4 = ((motionEvent4.getY(motionEvent4.findPointerIndex(((Integer) arrayList.get(1)).intValue())) + y3) / 2.0f) - y2;
        this.deltaPixelsSinceStart += y4;
        if (this.isInProgress && y4 != RecyclerView.DECELERATION_RATE) {
            ((MapGestureDetector.ShoveGestureListener) this.listener).onShove(y4);
            return true;
        }
        if (canExecute(3)) {
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            if (mapGestureDetector.uiSettings.tiltGesturesEnabled) {
                if (mapGestureDetector.noGesturesInProgress()) {
                    mapGestureDetector.transform.cancelTransitions();
                }
                MoveGestureDetector moveGestureDetector = (MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer;
                moveGestureDetector.isEnabled = false;
                if (moveGestureDetector.isInProgress) {
                    moveGestureDetector.interrupted = true;
                }
                Iterator it = mapGestureDetector.onShoveListenerList.iterator();
                if (it.hasNext()) {
                    throw Modifier.CC.m(it);
                }
                gestureStarted();
                return true;
            }
        }
        return false;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean canExecute(int i) {
        return Math.abs(this.deltaPixelsSinceStart) >= this.pixelDeltaThreshold && super.canExecute(3);
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final void gestureStopped() {
        super.gestureStopped();
        MapGestureDetector mapGestureDetector = MapGestureDetector.this;
        mapGestureDetector.dispatchCameraIdle();
        ((MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer).isEnabled = true;
        Iterator it = mapGestureDetector.onShoveListenerList.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean isSloppyGesture() {
        if (!super.isSloppyGesture()) {
            ArrayList arrayList = this.pointerIdList;
            MultiFingerDistancesObject multiFingerDistancesObject = (MultiFingerDistancesObject) this.pointersDistanceMap.get(new PointerDistancePair((Integer) arrayList.get(0), (Integer) arrayList.get(1)));
            double degrees = Math.toDegrees(Math.abs(Math.atan2(multiFingerDistancesObject.currFingersDiffY, multiFingerDistancesObject.currFingersDiffX)));
            double d = this.maxShoveAngle;
            if (degrees <= d || 180.0d - degrees <= d) {
                return false;
            }
        }
        return true;
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final HashSet provideHandledTypes() {
        return handledTypes;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final void reset() {
        this.deltaPixelsSinceStart = RecyclerView.DECELERATION_RATE;
    }
}
