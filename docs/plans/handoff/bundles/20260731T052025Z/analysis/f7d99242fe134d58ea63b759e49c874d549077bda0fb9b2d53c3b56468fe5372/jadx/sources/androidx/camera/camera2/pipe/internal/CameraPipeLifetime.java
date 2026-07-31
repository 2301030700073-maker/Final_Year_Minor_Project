package androidx.camera.camera2.pipe.internal;

import android.util.Log;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraPipeLifetime {
    public final Object cameraLock;
    public final Job cameraPipeJob;
    public final ArrayList cameraShutdownActions;
    public final Object scopeLock;
    public final ArrayList scopeShutdownActions;
    public final Object threadLock;
    public final ArrayList threadShutdownActions;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ShutdownType {
        public static final /* synthetic */ ShutdownType[] $VALUES;
        public static final ShutdownType CAMERA;
        public static final ShutdownType SCOPE;
        public static final ShutdownType THREAD;

        static {
            ShutdownType shutdownType = new ShutdownType("CAMERA", 0);
            CAMERA = shutdownType;
            ShutdownType shutdownType2 = new ShutdownType("SCOPE", 1);
            SCOPE = shutdownType2;
            ShutdownType shutdownType3 = new ShutdownType("THREAD", 2);
            THREAD = shutdownType3;
            $VALUES = new ShutdownType[]{shutdownType, shutdownType2, shutdownType3};
        }

        public static ShutdownType valueOf(String str) {
            return (ShutdownType) Enum.valueOf(ShutdownType.class, str);
        }

        public static ShutdownType[] values() {
            return (ShutdownType[]) $VALUES.clone();
        }
    }

    public CameraPipeLifetime(Job job) {
        job.getClass();
        this.cameraPipeJob = job;
        this.cameraLock = new Object();
        this.cameraShutdownActions = new ArrayList();
        this.scopeLock = new Object();
        this.scopeShutdownActions = new ArrayList();
        this.threadLock = new Object();
        this.threadShutdownActions = new ArrayList();
    }

    public final boolean addCameraShutdownAction(Runnable runnable) {
        boolean add;
        synchronized (this.cameraLock) {
            add = this.cameraShutdownActions.add(runnable);
        }
        return add;
    }

    public final boolean addScopeShutdownAction(Runnable runnable) {
        boolean add;
        synchronized (this.scopeLock) {
            add = this.scopeShutdownActions.add(runnable);
        }
        return add;
    }

    public final void addShutdownAction(ShutdownType shutdownType, Runnable runnable) {
        boolean addCameraShutdownAction;
        int ordinal = shutdownType.ordinal();
        if (ordinal == 0) {
            addCameraShutdownAction = addCameraShutdownAction(runnable);
        } else if (ordinal == 1) {
            addCameraShutdownAction = addScopeShutdownAction(runnable);
        } else if (ordinal != 2) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        } else {
            synchronized (this.threadLock) {
                addCameraShutdownAction = this.threadShutdownActions.add(runnable);
            }
        }
        if (addCameraShutdownAction) {
            return;
        }
        Log.e("CXCP", "CameraPipeLifetime already shut down. This is unexpected. Executing " + shutdownType + " shutdown action immediately...");
        runnable.run();
    }

    public final void shutdown() {
        synchronized (this.cameraLock) {
            Log.d("CXCP", "Shutting down cameras...");
            Iterator it = this.cameraShutdownActions.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        shutdownScope();
        shutdownThread();
    }

    public final void shutdownScope() {
        synchronized (this.scopeLock) {
            try {
                Log.d("CXCP", "Shutting down scopes...");
                Iterator it = this.scopeShutdownActions.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void shutdownThread() {
        synchronized (this.threadLock) {
            Log.d("CXCP", "Shutting down threads...");
            Iterator it = this.threadShutdownActions.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }
}
