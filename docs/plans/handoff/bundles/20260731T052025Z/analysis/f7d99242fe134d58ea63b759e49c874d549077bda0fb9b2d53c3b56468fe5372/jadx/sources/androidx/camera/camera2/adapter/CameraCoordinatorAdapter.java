package androidx.camera.camera2.adapter;

import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraPipeImpl;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.core.InitializationException;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraUpdateException;
import androidx.camera.core.impl.InternalCameraPresenceListener;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Operation$State;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraCoordinatorAdapter implements InternalCameraPresenceListener {
    public final CameraDevicesImpl cameraDevices;
    public CameraRepository cameraRepository;
    public int concurrentMode;
    public boolean concurrentModeOn;
    public final Object lock;
    public final ArrayList pendingCameraIds;

    public CameraCoordinatorAdapter(CameraPipeImpl cameraPipeImpl, CameraDevicesImpl cameraDevicesImpl) {
        cameraDevicesImpl.getClass();
        this.cameraDevices = cameraDevicesImpl;
        this.lock = new Object();
        this.pendingCameraIds = new ArrayList();
    }

    public final int getCameraOperatingMode() {
        int i;
        synchronized (this.lock) {
            i = this.concurrentMode;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.camera.camera2.adapter.CameraCoordinatorAdapter] */
    public final void init(CameraRepository cameraRepository) {
        ?? r0;
        cameraRepository.getClass();
        synchronized (this.lock) {
            this.cameraRepository = cameraRepository;
        }
        ArrayList m26awaitCameraIdsSeavPBo$default = CameraDevices$CC.m26awaitCameraIdsSeavPBo$default(this.cameraDevices);
        if (m26awaitCameraIdsSeavPBo$default != null) {
            r0 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(m26awaitCameraIdsSeavPBo$default, 10));
            Iterator it = m26awaitCameraIdsSeavPBo$default.iterator();
            while (it.hasNext()) {
                r0.add(((CameraId) it.next()).value);
            }
        } else {
            r0 = EmptyList.INSTANCE;
        }
        onCamerasUpdated(r0);
    }

    @Override // androidx.camera.core.impl.InternalCameraPresenceListener
    public final void onCamerasUpdated(List list) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Set<Set> m28awaitConcurrentCameraIdsSeavPBo$default = CameraDevices$CC.m28awaitConcurrentCameraIdsSeavPBo$default(this.cameraDevices);
            if (m28awaitConcurrentCameraIdsSeavPBo$default == null) {
                m28awaitConcurrentCameraIdsSeavPBo$default = EmptySet.INSTANCE;
            }
            for (Set set : m28awaitConcurrentCameraIdsSeavPBo$default) {
                Set set2 = set;
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
                Iterator it = set2.iterator();
                while (it.hasNext()) {
                    arrayList.add(((CameraId) it.next()).value);
                }
                Set set3 = CollectionsKt.toSet(arrayList);
                if (list.containsAll(set3)) {
                    List list2 = CollectionsKt.toList(set);
                    if (list2.size() >= 2) {
                        String str = ((CameraId) list2.get(0)).value;
                        String str2 = ((CameraId) list2.get(1)).value;
                        try {
                            if (Operation$State.isBackwardCompatible(this.cameraDevices, str) && Operation$State.isBackwardCompatible(this.cameraDevices, str2)) {
                                linkedHashSet.add(set);
                                if (!linkedHashMap.containsKey(str)) {
                                    linkedHashMap.put(str, new ArrayList());
                                }
                                Object obj = linkedHashMap.get(str);
                                obj.getClass();
                                ((List) obj).add(str2);
                                if (!linkedHashMap.containsKey(str2)) {
                                    linkedHashMap.put(str2, new ArrayList());
                                }
                                Object obj2 = linkedHashMap.get(str2);
                                obj2.getClass();
                                ((List) obj2).add(str);
                            }
                        } catch (InitializationException e) {
                            if (Utf8.SafeProcessor.isWarnEnabled()) {
                                Log.w("CXCP", "Skipping incompatible concurrent pair: " + set + " due to " + e.getMessage());
                            }
                        }
                    }
                } else if (Utf8.SafeProcessor.isWarnEnabled()) {
                    Log.w("CXCP", "Failed to retrieve concurrent camera: " + set3 + " from " + list);
                }
            }
            synchronized (this.lock) {
            }
        } catch (Exception e2) {
            throw new CameraUpdateException("Failed to retrieve concurrent camera id info for camera-pipe.", e2);
        }
    }

    public final void tryStartConcurrentGraph() {
        synchronized (this.lock) {
        }
    }
}
