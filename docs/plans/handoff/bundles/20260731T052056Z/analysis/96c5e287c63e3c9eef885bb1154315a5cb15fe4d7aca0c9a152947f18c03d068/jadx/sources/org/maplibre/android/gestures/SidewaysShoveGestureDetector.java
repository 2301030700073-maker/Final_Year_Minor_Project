package org.maplibre.android.gestures;

import android.view.MotionEvent;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashSet;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SidewaysShoveGestureDetector extends ProgressiveGesture {
    public static final HashSet handledTypes;
    public float deltaPixelsSinceStart;
    public float maxShoveAngle;
    public float pixelDeltaThreshold;

    static {
        HashSet hashSet = new HashSet();
        handledTypes = hashSet;
        hashSet.add(14);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean analyzeMovement() {
        MotionEvent motionEvent = this.previousEvent;
        ArrayList arrayList = this.pointerIdList;
        float x = motionEvent.getX(motionEvent.findPointerIndex(((Integer) arrayList.get(0)).intValue()));
        MotionEvent motionEvent2 = this.previousEvent;
        float x2 = (motionEvent2.getX(motionEvent2.findPointerIndex(((Integer) arrayList.get(1)).intValue())) + x) / 2.0f;
        MotionEvent motionEvent3 = this.currentEvent;
        float x3 = motionEvent3.getX(motionEvent3.findPointerIndex(((Integer) arrayList.get(0)).intValue()));
        MotionEvent motionEvent4 = this.currentEvent;
        float x4 = ((motionEvent4.getX(motionEvent4.findPointerIndex(((Integer) arrayList.get(1)).intValue())) + x3) / 2.0f) - x2;
        this.deltaPixelsSinceStart += x4;
        if (this.isInProgress && x4 != RecyclerView.DECELERATION_RATE) {
            throw Animation.CC.m(this.listener);
        }
        if (canExecute(14)) {
            throw Animation.CC.m(this.listener);
        }
        return false;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean canExecute(int i) {
        return Math.abs(this.deltaPixelsSinceStart) >= this.pixelDeltaThreshold && super.canExecute(14);
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final void gestureStopped() {
        super.gestureStopped();
        throw Animation.CC.m(this.listener);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean isSloppyGesture() {
        if (!super.isSloppyGesture()) {
            ArrayList arrayList = this.pointerIdList;
            MultiFingerDistancesObject multiFingerDistancesObject = (MultiFingerDistancesObject) this.pointersDistanceMap.get(new PointerDistancePair((Integer) arrayList.get(0), (Integer) arrayList.get(1)));
            if (Math.abs(Math.toDegrees(Math.abs(Math.atan2(multiFingerDistancesObject.currFingersDiffY, multiFingerDistancesObject.currFingersDiffX))) - 90.0d) <= this.maxShoveAngle) {
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
