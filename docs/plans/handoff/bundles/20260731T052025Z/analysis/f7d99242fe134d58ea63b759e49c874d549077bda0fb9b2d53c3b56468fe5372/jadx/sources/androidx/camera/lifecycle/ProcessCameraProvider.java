package androidx.camera.lifecycle;

import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedFuture;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ProcessCameraProvider {
    public static final ProcessCameraProvider sAppInstance;
    public final LockableDatabase lifecycleCameraProvider;

    static {
        LockableDatabase lockableDatabase = new LockableDatabase();
        lockableDatabase.mDb = new Object();
        lockableDatabase.mWriteLock = ImmediateFuture$ImmediateFailedFuture.NULL_FUTURE;
        lockableDatabase.mSchemaDefinition = new HashMap();
        lockableDatabase.generalSettingsManager = new HashSet();
        sAppInstance = new ProcessCameraProvider(lockableDatabase);
    }

    public ProcessCameraProvider(LockableDatabase lockableDatabase) {
        this.lifecycleCameraProvider = lockableDatabase;
    }
}
