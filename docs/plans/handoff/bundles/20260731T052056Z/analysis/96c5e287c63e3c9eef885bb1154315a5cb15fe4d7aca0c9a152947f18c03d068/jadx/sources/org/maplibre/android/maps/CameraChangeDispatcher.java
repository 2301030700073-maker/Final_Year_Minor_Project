package org.maplibre.android.maps;

import androidx.preference.PreferenceFragmentCompat;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import org.maplibre.android.maps.MapLibreMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CameraChangeDispatcher implements MapLibreMap.OnCameraMoveListener, MapLibreMap.OnCameraIdleListener {
    public final PreferenceFragmentCompat.AnonymousClass1 handler;
    public boolean idle;
    public int moveStartedReason;
    public final CopyOnWriteArrayList onCameraIdle;
    public final CopyOnWriteArrayList onCameraMove;
    public final CopyOnWriteArrayList onCameraMoveCanceled;
    public final CopyOnWriteArrayList onCameraMoveStarted;

    public CameraChangeDispatcher() {
        PreferenceFragmentCompat.AnonymousClass1 anonymousClass1 = new PreferenceFragmentCompat.AnonymousClass1(3);
        anonymousClass1.this$0 = new WeakReference(this);
        this.handler = anonymousClass1;
        this.idle = true;
        this.onCameraMoveStarted = new CopyOnWriteArrayList();
        this.onCameraMoveCanceled = new CopyOnWriteArrayList();
        this.onCameraMove = new CopyOnWriteArrayList();
        this.onCameraIdle = new CopyOnWriteArrayList();
    }

    @Override // org.maplibre.android.maps.MapLibreMap.OnCameraIdleListener
    public final void onCameraIdle() {
        this.handler.scheduleMessage(3);
    }

    @Override // org.maplibre.android.maps.MapLibreMap.OnCameraMoveListener
    public final void onCameraMove() {
        this.handler.scheduleMessage(1);
    }

    public final void onCameraMoveStarted(int i) {
        this.moveStartedReason = i;
        this.handler.scheduleMessage(0);
    }
}
