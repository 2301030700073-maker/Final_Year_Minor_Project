package org.maplibre.android.maps;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import androidx.collection.LongSparseArray;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import com.hcaptcha.sdk.HCaptcha;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.MultipartBody;
import org.maplibre.android.MapLibre;
import org.maplibre.android.annotations.Annotation;
import org.maplibre.android.annotations.Marker;
import org.maplibre.android.gestures.MoveGestureDetector;
import org.maplibre.android.gestures.MultiFingerTapGestureDetector;
import org.maplibre.android.gestures.RotateGestureDetector;
import org.maplibre.android.gestures.ShoveGestureDetector;
import org.maplibre.android.gestures.StandardGestureDetector;
import org.maplibre.android.gestures.StandardScaleGestureDetector;
import org.maplibre.android.location.LocationCameraController;
import org.maplibre.android.log.Logger;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.MapView;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MapGestureDetector {
    public final HCaptcha annotationManager;
    public final CameraChangeDispatcher cameraChangeDispatcher;
    public PointF constantFocalPoint;
    public boolean doubleTapRegistered;
    public FragmentNewsBinding gesturesManager;
    public final MapView.AnonymousClass2 projection;
    public ValueAnimator rotateAnimator;
    public ValueAnimator scaleAnimator;
    public final Transform transform;
    public final UiSettings uiSettings;
    public final CopyOnWriteArrayList onMapClickListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onMapLongClickListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onFlingListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onMoveListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onRotateListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onScaleListenerList = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList onShoveListenerList = new CopyOnWriteArrayList();
    public PointF doubleTapFocalPoint = new PointF();
    public final ArrayList scheduledAnimators = new ArrayList();
    public final Handler animationsTimeoutHandler = new Handler(Looper.getMainLooper());
    public final MapView.AnonymousClass4 cancelAnimatorsRunnable = new MapView.AnonymousClass4(1, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.maps.MapGestureDetector$2, reason: invalid class name */
    public final class AnonymousClass2 implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;
        public final /* synthetic */ PointF val$animationFocalPoint;

        public /* synthetic */ AnonymousClass2(Object obj, PointF pointF, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$animationFocalPoint = pointF;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i = this.$r8$classId;
            PointF pointF = this.val$animationFocalPoint;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((MapGestureDetector) obj).transform.setZoom(((Float) valueAnimator.getAnimatedValue()).floatValue(), pointF);
                    break;
                default:
                    Transform transform = MapGestureDetector.this.transform;
                    ((NativeMapView) transform.nativeMap).setBearing(transform.getRawBearing() + ((Float) valueAnimator.getAnimatedValue()).floatValue(), pointF.x, pointF.y, 0L);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MoveGestureListener implements MoveGestureDetector.OnMoveGestureListener {
        public MoveGestureListener() {
        }

        @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
        public final boolean onMove(MoveGestureDetector moveGestureDetector, float f, float f2) {
            if (Float.isNaN(f) || Float.isNaN(f2)) {
                Logger.e("MapGestureDetector", "Could not call onMove with parameters " + f + "," + f2);
                return true;
            }
            if (f != RecyclerView.DECELERATION_RATE || f2 != RecyclerView.DECELERATION_RATE) {
                MapGestureDetector mapGestureDetector = MapGestureDetector.this;
                mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
                if (!mapGestureDetector.uiSettings.horizontalScrollGesturesEnabled) {
                    f = 0.0f;
                }
                mapGestureDetector.transform.moveBy(-f, -f2, 0L);
                Iterator it = mapGestureDetector.onMoveListenerList.iterator();
                while (it.hasNext()) {
                    LocationCameraController.AnonymousClass6 anonymousClass6 = (LocationCameraController.AnonymousClass6) it.next();
                    LocationCameraController locationCameraController = LocationCameraController.this;
                    if (anonymousClass6.interrupt) {
                        if (moveGestureDetector.isInProgress) {
                            moveGestureDetector.interrupted = true;
                        }
                    } else if (locationCameraController.isLocationTracking() || locationCameraController.isBearingTracking()) {
                        locationCameraController.setCameraMode(8, null, null);
                        if (moveGestureDetector.isInProgress) {
                            moveGestureDetector.interrupted = true;
                        }
                    }
                }
            }
            return true;
        }

        @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
        public final boolean onMoveBegin(MoveGestureDetector moveGestureDetector) {
            RectF rectF;
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            if (!mapGestureDetector.uiSettings.scrollGesturesEnabled) {
                return false;
            }
            if (mapGestureDetector.noGesturesInProgress()) {
                mapGestureDetector.transform.cancelTransitions();
            }
            Iterator it = mapGestureDetector.onMoveListenerList.iterator();
            while (it.hasNext()) {
                LocationCameraController.AnonymousClass6 anonymousClass6 = (LocationCameraController.AnonymousClass6) it.next();
                LocationCameraController locationCameraController = LocationCameraController.this;
                if (!locationCameraController.options.trackingGesturesManagement || !locationCameraController.isLocationTracking()) {
                    locationCameraController.setCameraMode(8, null, null);
                } else if (moveGestureDetector.pointerIdList.size() > 1) {
                    RectF rectF2 = moveGestureDetector.moveThresholdRect;
                    if (rectF2 != null && !rectF2.equals(locationCameraController.options.trackingMultiFingerProtectedMoveArea)) {
                        moveGestureDetector.moveThresholdRect = locationCameraController.options.trackingMultiFingerProtectedMoveArea;
                        anonymousClass6.interrupt = true;
                    } else if (rectF2 == null && (rectF = locationCameraController.options.trackingMultiFingerProtectedMoveArea) != null) {
                        moveGestureDetector.moveThresholdRect = rectF;
                        anonymousClass6.interrupt = true;
                    }
                    float f = moveGestureDetector.moveThreshold;
                    float f2 = locationCameraController.options.trackingMultiFingerMoveThreshold;
                    if (f != f2) {
                        moveGestureDetector.moveThreshold = f2;
                        anonymousClass6.interrupt = true;
                    }
                } else {
                    float f3 = moveGestureDetector.moveThreshold;
                    float f4 = locationCameraController.options.trackingInitialMoveThreshold;
                    if (f3 != f4) {
                        moveGestureDetector.moveThreshold = f4;
                        anonymousClass6.interrupt = true;
                    }
                }
            }
            return true;
        }

        @Override // org.maplibre.android.gestures.MoveGestureDetector.OnMoveGestureListener
        public final void onMoveEnd(MoveGestureDetector moveGestureDetector) {
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            mapGestureDetector.dispatchCameraIdle();
            Iterator it = mapGestureDetector.onMoveListenerList.iterator();
            while (it.hasNext()) {
                LocationCameraController.AnonymousClass6 anonymousClass6 = (LocationCameraController.AnonymousClass6) it.next();
                LocationCameraController locationCameraController = LocationCameraController.this;
                if (locationCameraController.options.trackingGesturesManagement && !anonymousClass6.interrupt && locationCameraController.isLocationTracking()) {
                    moveGestureDetector.moveThreshold = locationCameraController.options.trackingInitialMoveThreshold;
                    moveGestureDetector.moveThresholdRect = null;
                }
                anonymousClass6.interrupt = false;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RotateGestureListener {
        public final float angularVelocityMultiplier;
        public final float defaultSpanSinceStartThreshold;
        public final float minimumAngularVelocity;
        public final float minimumScaleSpanWhenRotating;
        public final double rotateVelocityRatioThreshold;

        public RotateGestureListener(float f, double d, float f2, float f3, float f4) {
            this.minimumScaleSpanWhenRotating = f;
            this.angularVelocityMultiplier = f2;
            this.minimumAngularVelocity = f3;
            this.rotateVelocityRatioThreshold = d * 2.2000000000000003E-4d;
            this.defaultSpanSinceStartThreshold = f4;
        }

        public final void onRotate(RotateGestureDetector rotateGestureDetector, float f) {
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
            Transform transform = mapGestureDetector.transform;
            double rawBearing = transform.getRawBearing() + f;
            PointF pointF = mapGestureDetector.constantFocalPoint;
            if (pointF == null) {
                pointF = rotateGestureDetector.focalPoint;
            }
            ((NativeMapView) transform.nativeMap).setBearing(rawBearing, pointF.x, pointF.y, 0L);
            Iterator it = mapGestureDetector.onRotateListenerList.iterator();
            while (it.hasNext()) {
                ((LocationCameraController.AnonymousClass7) it.next()).getClass();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ScaleGestureListener {
        public final float minimumAngledGestureSpeed;
        public final float minimumGestureSpeed;
        public final float minimumVelocity;
        public boolean quickZoom;
        public final double scaleVelocityRatioThreshold;
        public double screenHeight;
        public float spanSinceLast;
        public double startZoom;

        public ScaleGestureListener(double d, float f, float f2, float f3) {
            this.minimumGestureSpeed = f;
            this.minimumAngledGestureSpeed = f2;
            this.minimumVelocity = f3;
            this.scaleVelocityRatioThreshold = d * 0.004d;
        }

        public final PointF getScaleFocalPoint(StandardScaleGestureDetector standardScaleGestureDetector) {
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            UiSettings uiSettings = mapGestureDetector.uiSettings;
            PointF pointF = mapGestureDetector.constantFocalPoint;
            return pointF != null ? pointF : this.quickZoom ? new PointF(uiSettings.projection.getWidth() / 2.0f, uiSettings.projection.getHeight() / 2.0f) : standardScaleGestureDetector.focalPoint;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ShoveGestureListener {
        public ShoveGestureListener() {
        }

        public final void onShove(float f) {
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
            Transform transform = mapGestureDetector.transform;
            ((NativeMapView) transform.nativeMap).setPitch(Math.max(0.0d, Math.min(60.0d, transform.getTilt() - (f * 0.1f))));
            Iterator it = mapGestureDetector.onShoveListenerList.iterator();
            if (it.hasNext()) {
                throw Modifier.CC.m(it);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TapGestureListener {
        public TapGestureListener() {
        }
    }

    public MapGestureDetector(Context context, Transform transform, MapView.AnonymousClass2 anonymousClass2, UiSettings uiSettings, HCaptcha hCaptcha, CameraChangeDispatcher cameraChangeDispatcher) {
        this.annotationManager = hCaptcha;
        this.transform = transform;
        this.projection = anonymousClass2;
        this.uiSettings = uiSettings;
        this.cameraChangeDispatcher = cameraChangeDispatcher;
        if (context != null) {
            initializeGesturesManager(new FragmentNewsBinding(context, true));
            initializeGestureListeners(context);
        }
    }

    public final void cancelAnimators() {
        this.animationsTimeoutHandler.removeCallbacksAndMessages(null);
        this.scheduledAnimators.clear();
        ValueAnimator valueAnimator = this.scaleAnimator;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.rotateAnimator;
        if (valueAnimator2 != null && valueAnimator2.isStarted()) {
            valueAnimator2.cancel();
        }
        dispatchCameraIdle();
    }

    public final ValueAnimator createScaleAnimator(double d, double d2, PointF pointF, long j) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat((float) d, (float) (d + d2));
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.addUpdateListener(new AnonymousClass2(this, pointF, 0));
        ofFloat.addListener(new Transition.AnonymousClass3(15, this));
        return ofFloat;
    }

    public final void dispatchCameraIdle() {
        if (noGesturesInProgress()) {
            this.transform.invalidateCameraPosition();
            this.cameraChangeDispatcher.onCameraIdle();
        }
    }

    public final void initializeGestureListeners(Context context) {
        StandardGestureListener standardGestureListener = new StandardGestureListener(context.getResources().getDimension(R.dimen.mapbox_defaultScaleSpanSinceStartThreshold));
        MoveGestureListener moveGestureListener = new MoveGestureListener();
        ScaleGestureListener scaleGestureListener = new ScaleGestureListener(context.getResources().getDimension(R.dimen.maplibre_density_constant), context.getResources().getDimension(R.dimen.maplibre_minimum_scale_speed), context.getResources().getDimension(R.dimen.maplibre_minimum_angled_scale_speed), context.getResources().getDimension(R.dimen.maplibre_minimum_scale_velocity));
        RotateGestureListener rotateGestureListener = new RotateGestureListener(context.getResources().getDimension(R.dimen.maplibre_minimum_scale_span_when_rotating), context.getResources().getDimension(R.dimen.maplibre_density_constant), context.getResources().getDimension(R.dimen.maplibre_angular_velocity_multiplier), context.getResources().getDimension(R.dimen.maplibre_minimum_angular_velocity), context.getResources().getDimension(R.dimen.mapbox_defaultScaleSpanSinceStartThreshold));
        ShoveGestureListener shoveGestureListener = new ShoveGestureListener();
        TapGestureListener tapGestureListener = new TapGestureListener();
        FragmentNewsBinding fragmentNewsBinding = this.gesturesManager;
        ((StandardGestureDetector) fragmentNewsBinding.gradientView).listener = standardGestureListener;
        ((MoveGestureDetector) fragmentNewsBinding.toolbarContainer).listener = moveGestureListener;
        ((StandardScaleGestureDetector) fragmentNewsBinding.headerImageView).listener = scaleGestureListener;
        ((RotateGestureDetector) fragmentNewsBinding.newsStoryItemsRecyclerview).listener = rotateGestureListener;
        ((ShoveGestureDetector) fragmentNewsBinding.storyTextView).listener = shoveGestureListener;
        ((MultiFingerTapGestureDetector) fragmentNewsBinding.toolbar).listener = tapGestureListener;
    }

    public final void initializeGesturesManager(FragmentNewsBinding fragmentNewsBinding) {
        HashSet hashSet = new HashSet();
        hashSet.add(3);
        hashSet.add(1);
        HashSet hashSet2 = new HashSet();
        hashSet2.add(3);
        hashSet2.add(2);
        HashSet hashSet3 = new HashSet();
        hashSet3.add(1);
        hashSet3.add(6);
        fragmentNewsBinding.getClass();
        List asList = Arrays.asList(hashSet, hashSet2, hashSet3);
        ArrayList arrayList = (ArrayList) fragmentNewsBinding.rootView;
        arrayList.clear();
        arrayList.addAll(asList);
        ((RotateGestureDetector) fragmentNewsBinding.newsStoryItemsRecyclerview).angleThreshold = 3.0f;
        MoveGestureDetector moveGestureDetector = (MoveGestureDetector) fragmentNewsBinding.toolbarContainer;
        moveGestureDetector.moveThreshold = moveGestureDetector.context.getResources().getDimension(R.dimen.maplibre_minimum_move_threshold);
        this.gesturesManager = fragmentNewsBinding;
    }

    public final boolean noGesturesInProgress() {
        UiSettings uiSettings = this.uiSettings;
        if (uiSettings.scrollGesturesEnabled && ((MoveGestureDetector) this.gesturesManager.toolbarContainer).isInProgress) {
            return false;
        }
        if (uiSettings.zoomGesturesEnabled && ((StandardScaleGestureDetector) this.gesturesManager.headerImageView).isInProgress) {
            return false;
        }
        if (uiSettings.rotateGesturesEnabled && ((RotateGestureDetector) this.gesturesManager.newsStoryItemsRecyclerview).isInProgress) {
            return false;
        }
        return (uiSettings.tiltGesturesEnabled && ((ShoveGestureDetector) this.gesturesManager.storyTextView).isInProgress) ? false : true;
    }

    public final void scheduleAnimator(ValueAnimator valueAnimator) {
        this.scheduledAnimators.add(valueAnimator);
        Handler handler = this.animationsTimeoutHandler;
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(this.cancelAnimatorsRunnable, 150L);
    }

    public final void zoomAnimated(boolean z, PointF pointF, boolean z2) {
        ValueAnimator valueAnimator = this.scaleAnimator;
        if (valueAnimator != null && valueAnimator.isStarted()) {
            valueAnimator.cancel();
        }
        ValueAnimator createScaleAnimator = createScaleAnimator(this.transform.getRawZoom(), z ? 1.0d : -1.0d, pointF, 300L);
        this.scaleAnimator = createScaleAnimator;
        if (z2) {
            createScaleAnimator.start();
        } else {
            scheduleAnimator(createScaleAnimator);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StandardGestureListener implements StandardGestureDetector.StandardOnGestureListener {
        public final float doubleTapMovementThreshold;

        public StandardGestureListener(float f) {
            this.doubleTapMovementThreshold = f;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            if (actionMasked == 0) {
                mapGestureDetector.doubleTapFocalPoint = new PointF(motionEvent.getX(), motionEvent.getY());
                MoveGestureDetector moveGestureDetector = (MoveGestureDetector) mapGestureDetector.gesturesManager.toolbarContainer;
                moveGestureDetector.isEnabled = false;
                if (moveGestureDetector.isInProgress) {
                    moveGestureDetector.interrupted = true;
                }
                mapGestureDetector.doubleTapRegistered = true;
            }
            if (motionEvent.getActionMasked() == 1) {
                float abs = Math.abs(motionEvent.getX() - mapGestureDetector.doubleTapFocalPoint.x);
                float abs2 = Math.abs(motionEvent.getY() - mapGestureDetector.doubleTapFocalPoint.y);
                float f = this.doubleTapMovementThreshold;
                if (abs <= f && abs2 <= f) {
                    UiSettings uiSettings = mapGestureDetector.uiSettings;
                    if (uiSettings.zoomGesturesEnabled && uiSettings.doubleTapGesturesEnabled) {
                        PointF pointF = mapGestureDetector.constantFocalPoint;
                        if (pointF != null) {
                            mapGestureDetector.doubleTapFocalPoint = pointF;
                        }
                        mapGestureDetector.zoomAnimated(true, mapGestureDetector.doubleTapFocalPoint, false);
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            double d;
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            Transform transform = mapGestureDetector.transform;
            UiSettings uiSettings = mapGestureDetector.uiSettings;
            if (!uiSettings.scrollGesturesEnabled || !uiSettings.flingVelocityAnimationEnabled) {
                return false;
            }
            float f3 = uiSettings.pixelRatio;
            double hypot = Math.hypot(f / f3, f2 / f3);
            uiSettings.getClass();
            if (hypot < 1000.0d) {
                return false;
            }
            double tilt = transform.getTilt();
            double d2 = tilt != 0.0d ? tilt / 10.0d : 0.0d;
            uiSettings.getClass();
            long j = (long) (((hypot / 7.0d) / (d2 + 1.5d)) + 150.0d);
            float f4 = j;
            double d3 = ((f * f4) * 0.28d) / 1000.0d;
            double d4 = ((f4 * f2) * 0.28d) / 1000.0d;
            if (uiSettings.horizontalScrollGesturesEnabled) {
                d = d3;
            } else {
                if (Math.abs(Math.toDegrees(Math.atan(d3 / d4))) > 75.0d) {
                    return false;
                }
                d = 0.0d;
            }
            transform.cancelTransitions();
            Iterator it = mapGestureDetector.onFlingListenerList.iterator();
            while (it.hasNext()) {
                LocationCameraController.this.setCameraMode(8, null, null);
            }
            mapGestureDetector.cameraChangeDispatcher.onCameraMoveStarted(1);
            mapGestureDetector.transform.moveBy(d, d4, j);
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            Iterator it = mapGestureDetector.onMapLongClickListenerList.iterator();
            while (it.hasNext() && !((MapLibreMap.OnMapLongClickListener) it.next()).onMapLongClick(mapGestureDetector.projection.fromScreenLocation(pointF))) {
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
            MapGestureDetector mapGestureDetector = MapGestureDetector.this;
            HCaptcha hCaptcha = mapGestureDetector.annotationManager;
            Object obj = hCaptcha.hCaptchaException;
            ArrayList arrayList = (ArrayList) hCaptcha.onOpenListeners;
            float f = pointF.x;
            float f2 = f - RecyclerView.DECELERATION_RATE;
            float f3 = pointF.y;
            RectF rectF = new RectF(f2, f3 - RecyclerView.DECELERATION_RATE, f + RecyclerView.DECELERATION_RATE, f3 + RecyclerView.DECELERATION_RATE);
            MultipartBody.Builder builder = (MultipartBody.Builder) hCaptcha.internalConfig;
            NativeMapView nativeMapView = (NativeMapView) ((NativeMap) builder.boundary);
            nativeMapView.getClass();
            float f4 = rectF.left;
            float f5 = nativeMapView.pixelRatio;
            long[] queryPointAnnotations = nativeMapView.queryPointAnnotations(new RectF(f4 / f5, rectF.top / f5, rectF.right / f5, rectF.bottom / f5));
            ArrayList arrayList2 = new ArrayList(queryPointAnnotations.length);
            for (long j : queryPointAnnotations) {
                arrayList2.add(Long.valueOf(j));
            }
            ArrayList arrayList3 = new ArrayList(queryPointAnnotations.length);
            LongSparseArray longSparseArray = (LongSparseArray) builder.type;
            ArrayList arrayList4 = new ArrayList();
            for (int i = 0; i < longSparseArray.size(); i++) {
                arrayList4.add((Annotation) longSparseArray.get(longSparseArray.keyAt(i)));
            }
            int size = arrayList4.size();
            for (int i2 = 0; i2 < size; i2++) {
                Annotation annotation = (Annotation) arrayList4.get(i2);
                if ((annotation instanceof Marker) && arrayList2.contains(Long.valueOf(annotation.id))) {
                    arrayList3.add((Marker) annotation);
                }
            }
            ArrayList arrayList5 = new ArrayList(arrayList3);
            MapLibreMap mapLibreMap = (MapLibreMap) hCaptcha.handler;
            new Rect();
            new RectF();
            new RectF();
            MapView.AnonymousClass2 anonymousClass2 = mapLibreMap.projection;
            float f6 = MapLibre.getApplicationContext().getResources().getDisplayMetrics().density;
            Iterator it = arrayList5.iterator();
            if (it.hasNext()) {
                anonymousClass2.toScreenLocation(((Marker) it.next()).getPosition());
                throw null;
            }
            if (-1 != -1) {
                Marker marker = (Marker) ((Annotation) ((LongSparseArray) ((IconManager) hCaptcha.activity).iconMap).get(-1L));
                if (arrayList.contains(marker)) {
                    if (arrayList.contains(marker)) {
                        if (marker.infoWindowShown) {
                            throw null;
                        }
                        arrayList.remove(marker);
                        return true;
                    }
                } else if (!arrayList.contains(marker)) {
                    hCaptcha.deselectMarkers();
                    if (marker == null || (TextUtils.isEmpty(null) && TextUtils.isEmpty(null))) {
                        arrayList.add(marker);
                        return true;
                    }
                    MapLibreMap mapLibreMap2 = (MapLibreMap) hCaptcha.handler;
                    MapView mapView = (MapView) hCaptcha.result;
                    Object obj2 = mapLibreMap2.annotationManager.onSuccessListeners;
                    mapView.getContext().getClass();
                    throw null;
                }
            } else {
                float dimension = MapLibre.getApplicationContext().getResources().getDimension(R.dimen.maplibre_eight_dp);
                float f7 = pointF.x;
                float f8 = pointF.y;
                RectF rectF2 = new RectF(f7 - dimension, f8 - dimension, f7 + dimension, f8 + dimension);
                MapView.AnonymousClass2 anonymousClass22 = (MapView.AnonymousClass2) hCaptcha.captchaVerifier;
                NativeMapView nativeMapView2 = (NativeMapView) ((NativeMap) anonymousClass22.val$cameraChangeDispatcher);
                nativeMapView2.getClass();
                float f9 = rectF2.left;
                float f10 = nativeMapView2.pixelRatio;
                long[] queryShapeAnnotations = nativeMapView2.queryShapeAnnotations(new RectF(f9 / f10, rectF2.top / f10, rectF2.right / f10, rectF2.bottom / f10));
                ArrayList arrayList6 = new ArrayList();
                for (long j2 : queryShapeAnnotations) {
                    Annotation annotation2 = (Annotation) ((LongSparseArray) anonymousClass22.this$0).get(j2);
                    if (annotation2 != null) {
                        arrayList6.add(annotation2);
                    }
                }
                if (arrayList6.size() > 0) {
                }
                if (mapGestureDetector.uiSettings.deselectMarkersOnTap) {
                    hCaptcha.deselectMarkers();
                }
                Iterator it2 = mapGestureDetector.onMapClickListenerList.iterator();
                while (it2.hasNext() && !((MapLibreMap.OnMapClickListener) it2.next()).onMapClick(mapGestureDetector.projection.fromScreenLocation(pointF))) {
                }
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            MapGestureDetector.this.transform.cancelTransitions();
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onShowPress(MotionEvent motionEvent) {
        }
    }
}
