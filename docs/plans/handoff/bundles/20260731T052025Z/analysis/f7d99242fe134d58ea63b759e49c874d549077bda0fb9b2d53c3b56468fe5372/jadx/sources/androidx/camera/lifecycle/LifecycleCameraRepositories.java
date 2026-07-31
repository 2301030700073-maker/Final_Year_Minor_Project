package androidx.camera.lifecycle;

import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LifecycleCameraRepositories {
    public static final LinkedHashMap repositoryMap = new LinkedHashMap();

    public static final LifecycleCameraRepository getInstance$camera_lifecycle(int i) {
        LifecycleCameraRepository lifecycleCameraRepository;
        LinkedHashMap linkedHashMap = repositoryMap;
        synchronized (linkedHashMap) {
            try {
                Integer valueOf = Integer.valueOf(i);
                Object obj = linkedHashMap.get(valueOf);
                if (obj == null) {
                    obj = new LifecycleCameraRepository();
                    linkedHashMap.put(valueOf, obj);
                }
                lifecycleCameraRepository = (LifecycleCameraRepository) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lifecycleCameraRepository;
    }
}
