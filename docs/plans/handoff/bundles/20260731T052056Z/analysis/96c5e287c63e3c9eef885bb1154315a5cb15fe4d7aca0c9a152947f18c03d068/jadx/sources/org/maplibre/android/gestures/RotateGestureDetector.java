package org.maplibre.android.gestures;

import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.maplibre.android.location.LocationCameraController;
import org.maplibre.android.maps.MapGestureDetector;
import org.maplibre.android.maps.UiSettings;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RotateGestureDetector extends ProgressiveGesture {
    public static final HashSet handledTypes;
    public float angleThreshold;
    public float deltaSinceLast;
    public float deltaSinceStart;

    static {
        HashSet hashSet = new HashSet();
        handledTypes = hashSet;
        hashSet.add(2);
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean analyzeMovement() {
        ArrayList arrayList = this.pointerIdList;
        MultiFingerDistancesObject multiFingerDistancesObject = (MultiFingerDistancesObject) this.pointersDistanceMap.get(new PointerDistancePair((Integer) arrayList.get(0), (Integer) arrayList.get(1)));
        float degrees = (float) Math.toDegrees(Math.atan2(multiFingerDistancesObject.prevFingersDiffY, multiFingerDistancesObject.prevFingersDiffX) - Math.atan2(multiFingerDistancesObject.currFingersDiffY, multiFingerDistancesObject.currFingersDiffX));
        this.deltaSinceLast = degrees;
        this.deltaSinceStart += degrees;
        if (this.isInProgress && degrees != RecyclerView.DECELERATION_RATE) {
            ((MapGestureDetector.RotateGestureListener) this.listener).onRotate(this, degrees);
            return true;
        }
        if (canExecute(2)) {
            MapGestureDetector.RotateGestureListener rotateGestureListener = (MapGestureDetector.RotateGestureListener) this.listener;
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            UiSettings uiSettings = mapGestureDetector.uiSettings;
            if (uiSettings.rotateGesturesEnabled) {
                float abs = Math.abs(this.deltaSinceLast);
                double eventTime = this.currentEvent.getEventTime();
                double eventTime2 = this.previousEvent.getEventTime();
                if (eventTime != eventTime2) {
                    double d = abs / (eventTime - eventTime2);
                    float abs2 = Math.abs(this.deltaSinceStart);
                    if (d >= 0.04d && ((d <= 0.07d || abs2 >= 5.0f) && ((d <= 0.15d || abs2 >= 7.0f) && (d <= 0.5d || abs2 >= 15.0f)))) {
                        if (uiSettings.increaseScaleThresholdWhenRotating) {
                            StandardScaleGestureDetector standardScaleGestureDetector = (StandardScaleGestureDetector) mapGestureDetector.gesturesManager.headerImageView;
                            standardScaleGestureDetector.spanSinceStartThreshold = rotateGestureListener.minimumScaleSpanWhenRotating;
                            if (standardScaleGestureDetector.isInProgress) {
                                standardScaleGestureDetector.interrupted = true;
                            }
                        }
                        if (mapGestureDetector.noGesturesInProgress()) {
                            mapGestureDetector.transform.cancelTransitions();
                        }
                        Iterator it = mapGestureDetector.onRotateListenerList.iterator();
                        while (it.hasNext()) {
                            LocationCameraController locationCameraController = LocationCameraController.this;
                            if (locationCameraController.isBearingTracking()) {
                                locationCameraController.setCameraMode(8, null, null);
                            }
                        }
                        gestureStarted();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean canExecute(int i) {
        return Math.abs(this.deltaSinceStart) >= this.angleThreshold && super.canExecute(2);
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final void gestureStopped() {
        super.gestureStopped();
        if (this.deltaSinceLast == RecyclerView.DECELERATION_RATE) {
            this.velocityX = RecyclerView.DECELERATION_RATE;
            this.velocityY = RecyclerView.DECELERATION_RATE;
        }
        float f = this.velocityX;
        float f2 = this.velocityY;
        float abs = Math.abs((float) (((r3.y * f) + (f2 * r4)) / (Math.pow(this.focalPoint.y, 2.0d) + Math.pow(this.focalPoint.x, 2.0d))));
        if (this.deltaSinceLast < RecyclerView.DECELERATION_RATE) {
            abs = -abs;
        }
        MapGestureDetector.RotateGestureListener rotateGestureListener = (MapGestureDetector.RotateGestureListener) this.listener;
        float f3 = this.velocityX;
        float f4 = this.velocityY;
        MapGestureDetector mapGestureDetector = MapGestureDetector.this;
        UiSettings uiSettings = mapGestureDetector.uiSettings;
        if (uiSettings.increaseScaleThresholdWhenRotating) {
            ((StandardScaleGestureDetector) mapGestureDetector.gesturesManager.headerImageView).spanSinceStartThreshold = rotateGestureListener.defaultSpanSinceStartThreshold;
        }
        Iterator it = mapGestureDetector.onRotateListenerList.iterator();
        while (it.hasNext()) {
            ((LocationCameraController.AnonymousClass7) it.next()).getClass();
        }
        float max = Math.max(-30.0f, Math.min(30.0f, abs * rotateGestureListener.angularVelocityMultiplier));
        double abs2 = Math.abs(this.deltaSinceLast) / (Math.abs(f4) + Math.abs(f3));
        if (!uiSettings.rotateVelocityAnimationEnabled || Math.abs(max) < rotateGestureListener.minimumAngularVelocity || (((StandardScaleGestureDetector) mapGestureDetector.gesturesManager.headerImageView).isInProgress && abs2 < rotateGestureListener.rotateVelocityRatioThreshold)) {
            mapGestureDetector.dispatchCameraIdle();
            return;
        }
        long log = (long) ((Math.log((1.0d / Math.pow(2.718281828459045d, 2.0d)) + Math.abs(max)) + 2.0d) * 150.0d);
        PointF pointF = MapGestureDetector.this.constantFocalPoint;
        if (pointF == null) {
            pointF = this.focalPoint;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(max, RecyclerView.DECELERATION_RATE);
        ofFloat.setDuration(log);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new MapGestureDetector.AnonymousClass2(rotateGestureListener, pointF, 1));
        ofFloat.addListener(new Transition.AnonymousClass3(16, rotateGestureListener));
        mapGestureDetector.rotateAnimator = ofFloat;
        mapGestureDetector.scheduleAnimator(ofFloat);
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final HashSet provideHandledTypes() {
        return handledTypes;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final void reset() {
        this.deltaSinceStart = RecyclerView.DECELERATION_RATE;
    }
}
