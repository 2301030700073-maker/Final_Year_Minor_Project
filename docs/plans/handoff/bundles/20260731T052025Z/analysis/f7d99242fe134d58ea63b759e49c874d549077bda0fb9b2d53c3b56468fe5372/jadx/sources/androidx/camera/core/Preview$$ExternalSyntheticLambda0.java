package androidx.camera.core;

import androidx.camera.lifecycle.AutoValue_LifecycleCameraRepository_Key;
import androidx.camera.lifecycle.LifecycleCamera;
import androidx.camera.lifecycle.LifecycleCameraRepository;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Preview$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Preview$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    private final void run$androidx$camera$core$ImageAnalysisNonBlockingAnalyzer$CacheAnalyzingImageProxy$$ExternalSyntheticLambda1() {
        ImageAnalysisNonBlockingAnalyzer imageAnalysisNonBlockingAnalyzer = (ImageAnalysisNonBlockingAnalyzer) this.f$0;
        synchronized (imageAnalysisNonBlockingAnalyzer.mLock) {
            try {
                imageAnalysisNonBlockingAnalyzer.mPostedImage = null;
                ImageProxy imageProxy = imageAnalysisNonBlockingAnalyzer.mCachedImage;
                if (imageProxy != null) {
                    imageAnalysisNonBlockingAnalyzer.mCachedImage = null;
                    imageAnalysisNonBlockingAnalyzer.onValidImageAvailable(imageProxy);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void run$androidx$camera$lifecycle$LifecycleCameraProviderImpl$$ExternalSyntheticLambda0() {
        LockableDatabase lockableDatabase = (LockableDatabase) this.f$0;
        if (((CameraX) lockableDatabase.storageFilesProvider) != null) {
            lockableDatabase.unbindAll();
            LifecycleCameraRepository lifecycleCameraRepository = (LifecycleCameraRepository) lockableDatabase.inTransaction;
            lifecycleCameraRepository.getClass();
            Set<AutoValue_LifecycleCameraRepository_Key> set = (HashSet) lockableDatabase.generalSettingsManager;
            synchronized (lifecycleCameraRepository.mLock) {
                if (set == null) {
                    try {
                        set = lifecycleCameraRepository.mCameraMap.keySet();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                for (AutoValue_LifecycleCameraRepository_Key autoValue_LifecycleCameraRepository_Key : set) {
                    if (lifecycleCameraRepository.mCameraMap.containsKey(autoValue_LifecycleCameraRepository_Key)) {
                        lifecycleCameraRepository.unregisterCamera((LifecycleCamera) lifecycleCameraRepository.mCameraMap.get(autoValue_LifecycleCameraRepository_Key));
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x026c A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1682
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.Preview$$ExternalSyntheticLambda0.run():void");
    }
}
