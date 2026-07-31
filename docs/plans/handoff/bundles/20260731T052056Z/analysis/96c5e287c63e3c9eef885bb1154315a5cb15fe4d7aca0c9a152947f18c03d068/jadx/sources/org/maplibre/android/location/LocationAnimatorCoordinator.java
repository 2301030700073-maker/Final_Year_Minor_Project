package org.maplibre.android.location;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.location.Location;
import android.util.SparseArray;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okio.ByteString;
import okio.Path;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.location.MapLibreAnimator;
import org.maplibre.android.maps.MapView;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationAnimatorCoordinator {
    public boolean accuracyAnimationEnabled;
    public boolean compassAnimationEnabled;
    public float durationMultiplier;
    public Location previousLocation;
    public final MapView.AnonymousClass2 projection;
    public final SparseArray animatorArray = new SparseArray();
    public float previousAccuracyRadius = -1.0f;
    public float previousCompassBearing = -1.0f;
    public long locationUpdateTimestamp = -1;
    public final SparseArray listeners = new SparseArray();

    public LocationAnimatorCoordinator(MapView.AnonymousClass2 anonymousClass2, Path.Companion companion, ByteString.Companion companion2) {
        this.projection = anonymousClass2;
    }

    public static Float[] getBearingValues(Float f, Location[] locationArr) {
        int length = locationArr.length + 1;
        Float[] fArr = new Float[length];
        fArr[0] = Float.valueOf(((f.floatValue() % 360.0f) + 360.0f) % 360.0f);
        for (int i = 1; i < length; i++) {
            int i2 = i - 1;
            fArr[i] = Float.valueOf(UriUtil.shortestRotation(locationArr[i2].getBearing(), fArr[i2].floatValue()));
        }
        return fArr;
    }

    public final void cancelAnimator(int i) {
        MapLibreAnimator mapLibreAnimator = (MapLibreAnimator) this.animatorArray.get(i);
        if (mapLibreAnimator != null) {
            mapLibreAnimator.cancel();
            mapLibreAnimator.removeAllUpdateListeners();
            mapLibreAnimator.removeAllListeners();
        }
    }

    public final void createNewFloatAnimator(int i, Float[] fArr) {
        cancelAnimator(i);
        MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener = (MapLibreAnimator.AnimationsValueChangeListener) this.listeners.get(i);
        if (animationsValueChangeListener != null) {
            this.animatorArray.put(i, new MapLibreFloatAnimator(fArr, animationsValueChangeListener));
        }
    }

    public final void createNewLatLngAnimator(int i, LatLng[] latLngArr) {
        cancelAnimator(i);
        MapLibreAnimator.AnimationsValueChangeListener animationsValueChangeListener = (MapLibreAnimator.AnimationsValueChangeListener) this.listeners.get(i);
        if (animationsValueChangeListener != null) {
            this.animatorArray.put(i, new MapLibreLatLngAnimator(latLngArr, animationsValueChangeListener));
        }
    }

    public final void feedNewAccuracyRadius(float f, boolean z) {
        if (this.previousAccuracyRadius < RecyclerView.DECELERATION_RATE) {
            this.previousAccuracyRadius = f;
        }
        MapLibreAnimator mapLibreAnimator = (MapLibreAnimator) this.animatorArray.get(6);
        createNewFloatAnimator(mapLibreAnimator != null ? ((Float) mapLibreAnimator.getAnimatedValue()).floatValue() : this.previousAccuracyRadius, f, 6);
        playAnimators((z || !this.accuracyAnimationEnabled) ? 0L : 250L, 6);
        this.previousAccuracyRadius = f;
    }

    public final void playAnimators(long j, int... iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            Animator animator = (Animator) this.animatorArray.get(i);
            if (animator != null) {
                arrayList.add(animator);
            }
        }
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setInterpolator(linearInterpolator);
        animatorSet.setDuration(j);
        animatorSet.start();
    }

    public final void resetAllCameraAnimations(CameraPosition cameraPosition, boolean z) {
        SparseArray sparseArray = this.animatorArray;
        MapLibreFloatAnimator mapLibreFloatAnimator = (MapLibreFloatAnimator) sparseArray.get(5);
        if (mapLibreFloatAnimator != null) {
            float floatValue = ((Float) mapLibreFloatAnimator.target).floatValue();
            float f = (float) cameraPosition.bearing;
            createNewFloatAnimator(f, UriUtil.shortestRotation(floatValue, f), 5);
        }
        MapLibreFloatAnimator mapLibreFloatAnimator2 = (MapLibreFloatAnimator) sparseArray.get(4);
        if (mapLibreFloatAnimator2 != null) {
            float floatValue2 = ((Float) mapLibreFloatAnimator2.target).floatValue();
            if (z) {
                floatValue2 = RecyclerView.DECELERATION_RATE;
            }
            float f2 = (float) cameraPosition.bearing;
            createNewFloatAnimator(f2, UriUtil.shortestRotation(floatValue2, f2), 4);
        }
        MapLibreLatLngAnimator mapLibreLatLngAnimator = (MapLibreLatLngAnimator) sparseArray.get(1);
        boolean z2 = false;
        if (mapLibreLatLngAnimator != null) {
            LatLng latLng = (LatLng) mapLibreLatLngAnimator.target;
            LatLng latLng2 = cameraPosition.target;
            if (latLng2 != null) {
                createNewLatLngAnimator(1, new LatLng[]{latLng2, latLng});
                z2 = UriUtil.immediateAnimation(this.projection, latLng2, latLng);
            }
        }
        playAnimators(z2 ? 0L : 750L, 1, 4);
    }

    public final void createNewFloatAnimator(float f, float f2, int i) {
        createNewFloatAnimator(i, new Float[]{Float.valueOf(f), Float.valueOf(f2)});
    }
}
