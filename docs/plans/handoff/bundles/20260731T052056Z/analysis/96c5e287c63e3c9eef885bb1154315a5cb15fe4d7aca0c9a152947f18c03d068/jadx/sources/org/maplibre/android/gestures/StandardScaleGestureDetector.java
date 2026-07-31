package org.maplibre.android.gestures;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import java.util.HashSet;
import java.util.Iterator;
import org.maplibre.android.maps.MapGestureDetector;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.views.SwipeableListView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StandardScaleGestureDetector extends ProgressiveGesture {
    public static final HashSet handledTypes;
    public float currentSpan;
    public float currentSpanX;
    public float currentSpanY;
    public final GestureDetector innerGestureDetector;
    public boolean isScalingOut;
    public float previousSpan;
    public boolean quickScale;
    public PointF quickScaleFocalPoint;
    public float scaleFactor;
    public float spanDeltaSinceStart;
    public float spanSinceStartThreshold;
    public float startSpan;

    static {
        HashSet hashSet = new HashSet();
        handledTypes = hashSet;
        hashSet.add(1);
        hashSet.add(15);
    }

    public StandardScaleGestureDetector(Context context, FragmentNewsBinding fragmentNewsBinding) {
        super(context, fragmentNewsBinding);
        this.innerGestureDetector = new GestureDetector(context, new SwipeableListView.ViewGestureListener(2, this));
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture, org.maplibre.android.gestures.MultiFingerGesture, org.maplibre.android.gestures.BaseGesture
    public final boolean analyzeEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.quickScale) {
            if (actionMasked == 5 || actionMasked == 3) {
                boolean z = this.isInProgress;
                if (!z) {
                    this.quickScale = false;
                } else if (z) {
                    this.interrupted = true;
                }
            } else if (!this.isInProgress && actionMasked == 1) {
                this.quickScale = false;
            }
        }
        return this.innerGestureDetector.onTouchEvent(motionEvent) | super.analyzeEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0256  */
    @Override // org.maplibre.android.gestures.MultiFingerGesture
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean analyzeMovement() {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.maplibre.android.gestures.StandardScaleGestureDetector.analyzeMovement():boolean");
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final void gestureStopped() {
        super.gestureStopped();
        MapGestureDetector.ScaleGestureListener scaleGestureListener = (MapGestureDetector.ScaleGestureListener) this.listener;
        float f = this.velocityX;
        float f2 = this.velocityY;
        boolean z = scaleGestureListener.quickZoom;
        MapGestureDetector mapGestureDetector = MapGestureDetector.this;
        FragmentNewsBinding fragmentNewsBinding = mapGestureDetector.gesturesManager;
        if (z) {
            ((MoveGestureDetector) fragmentNewsBinding.toolbarContainer).isEnabled = true;
        } else {
            ((RotateGestureDetector) fragmentNewsBinding.newsStoryItemsRecyclerview).isEnabled = true;
        }
        Iterator it = mapGestureDetector.onScaleListenerList.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
        float abs = Math.abs(f2) + Math.abs(f);
        if (!mapGestureDetector.uiSettings.scaleVelocityAnimationEnabled || abs < scaleGestureListener.minimumVelocity || scaleGestureListener.spanSinceLast / abs < scaleGestureListener.scaleVelocityRatioThreshold) {
            mapGestureDetector.dispatchCameraIdle();
        } else {
            boolean z2 = this.isScalingOut;
            double max = Math.max(0.0d, Math.min(2.5d, abs * 2.5d * 1.0E-4d));
            if (z2) {
                max = -max;
            }
            double d = max;
            mapGestureDetector.scaleAnimator = mapGestureDetector.createScaleAnimator(mapGestureDetector.transform.getRawZoom(), d, scaleGestureListener.getScaleFocalPoint(this), (long) ((Math.log((1.0d / Math.pow(2.718281828459045d, 2.0d)) + Math.abs(d)) + 2.0d) * 150.0d));
            mapGestureDetector.scheduleAnimator(mapGestureDetector.scaleAnimator);
        }
        this.quickScale = false;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final int getRequiredPointersCount() {
        return (!this.isInProgress || this.quickScale) ? 1 : 2;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final boolean isSloppyGesture() {
        if (super.isSloppyGesture()) {
            return true;
        }
        return !this.quickScale && this.pointerIdList.size() < 2;
    }

    @Override // org.maplibre.android.gestures.ProgressiveGesture
    public final HashSet provideHandledTypes() {
        return handledTypes;
    }

    @Override // org.maplibre.android.gestures.MultiFingerGesture
    public final void reset() {
        this.startSpan = RecyclerView.DECELERATION_RATE;
        this.spanDeltaSinceStart = RecyclerView.DECELERATION_RATE;
        this.currentSpan = RecyclerView.DECELERATION_RATE;
        this.previousSpan = RecyclerView.DECELERATION_RATE;
        this.scaleFactor = 1.0f;
    }
}
