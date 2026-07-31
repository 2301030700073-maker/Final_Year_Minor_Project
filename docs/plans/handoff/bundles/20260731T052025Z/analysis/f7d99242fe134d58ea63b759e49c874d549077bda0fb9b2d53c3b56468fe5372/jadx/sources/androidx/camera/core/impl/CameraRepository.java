package androidx.camera.core.impl;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.camera.core.CameraUnavailableException;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.InitializationException;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import androidx.compose.ui.node.NodeChain;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.datastore.preferences.protobuf.Utf8;
import com.fsck.k9.sasl.OAuthBearer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraRepository implements InternalCameraPresenceListener {
    public NodeChain mCameraFactory;
    public CallbackToFutureAdapter$Completer mDeinitCompleter;
    public ListenableFuture mDeinitFuture;
    public final Object mCamerasLock = new Object();
    public final LinkedHashMap mCameras = new LinkedHashMap();
    public final HashSet mReleasingCameras = new HashSet();

    public final ListenableFuture deinit() {
        synchronized (this.mCamerasLock) {
            try {
                boolean isEmpty = this.mCameras.isEmpty();
                ListenableFuture listenableFuture = this.mDeinitFuture;
                if (isEmpty) {
                    if (listenableFuture == null) {
                        listenableFuture = ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;
                    }
                    return listenableFuture;
                }
                if (listenableFuture == null) {
                    listenableFuture = OAuthBearer.getFuture(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(6, this));
                    this.mDeinitFuture = listenableFuture;
                }
                this.mReleasingCameras.addAll(this.mCameras.values());
                for (CameraInternal cameraInternal : this.mCameras.values()) {
                    cameraInternal.release().addListener(new CameraX$$ExternalSyntheticLambda2(16, this, cameraInternal), Util.directExecutor());
                }
                this.mCameras.clear();
                return listenableFuture;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final CameraInternal getCamera(String str) {
        CameraInternal cameraInternal;
        synchronized (this.mCamerasLock) {
            try {
                cameraInternal = (CameraInternal) this.mCameras.get(str);
                if (cameraInternal == null) {
                    throw new IllegalArgumentException("Invalid camera: " + str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cameraInternal;
    }

    public final LinkedHashSet getCameras() {
        LinkedHashSet linkedHashSet;
        synchronized (this.mCamerasLock) {
            linkedHashSet = new LinkedHashSet(this.mCameras.values());
        }
        return linkedHashSet;
    }

    public final void init(NodeChain nodeChain) {
        this.mCameraFactory = nodeChain;
        synchronized (this.mCamerasLock) {
            try {
                for (String str : nodeChain.getAvailableCameraIds()) {
                    Utf8.SafeProcessor.d("CameraRepository", "Added camera: " + str);
                    CameraInternal cameraInternal = (CameraInternal) this.mCameras.put(str, nodeChain.getCamera(str));
                    if (cameraInternal != null) {
                        cameraInternal.release();
                    }
                }
            } catch (CameraUnavailableException e) {
                throw new InitializationException(e);
            }
        }
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void onCamerasUpdated(List list) {
        HashSet hashSet;
        HashMap hashMap = new HashMap();
        synchronized (this.mCamerasLock) {
            hashSet = new HashSet(list);
            hashSet.removeAll(this.mCameras.keySet());
        }
        try {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                hashMap.put(str, this.mCameraFactory.getCamera(str));
            }
            synchronized (this.mCamerasLock) {
                try {
                    HashSet hashSet2 = new HashSet(this.mCameras.keySet());
                    hashSet2.removeAll(list);
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = hashSet2.iterator();
                    while (it2.hasNext()) {
                        arrayList.add((CameraInternal) this.mCameras.get((String) it2.next()));
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    Iterator it3 = ((ArrayList) list).iterator();
                    while (it3.hasNext()) {
                        String str2 = (String) it3.next();
                        if (this.mCameras.containsKey(str2)) {
                            linkedHashMap.put(str2, (CameraInternal) this.mCameras.get(str2));
                        } else {
                            linkedHashMap.put(str2, (CameraInternal) hashMap.get(str2));
                        }
                    }
                    this.mCameras.clear();
                    this.mCameras.putAll(linkedHashMap);
                    Iterator it4 = arrayList.iterator();
                    while (it4.hasNext()) {
                        CameraInternal cameraInternal = (CameraInternal) it4.next();
                        if (cameraInternal != null) {
                            cameraInternal.onRemoved();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraUnavailableException e) {
            throw new CameraUpdateException("Failed to create CameraInternal", e);
        }
    }
}
