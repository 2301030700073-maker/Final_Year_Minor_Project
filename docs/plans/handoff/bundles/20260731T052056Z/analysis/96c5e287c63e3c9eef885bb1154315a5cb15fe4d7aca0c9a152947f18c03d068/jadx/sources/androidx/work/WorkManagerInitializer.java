package androidx.work;

import androidx.startup.Initializer;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("WrkMgrInitializer");

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        r1 = r4.getApplicationContext();
        r2 = androidx.work.impl.WorkManagerImpl.sDefaultInstance;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r2 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        r2 = androidx.work.Operation$State.createWorkManager(r1, r0);
        androidx.work.impl.WorkManagerImpl.sDefaultInstance = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        androidx.work.impl.WorkManagerImpl.sDelegatedInstance = r2;
     */
    @Override // androidx.startup.Initializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object create(android.content.Context r4) {
        /*
            r3 = this;
            androidx.work.Logger$LogcatLogger r3 = androidx.work.Logger$LogcatLogger.get()
            java.lang.String r0 = androidx.work.WorkManagerInitializer.TAG
            java.lang.String r1 = "Initializing WorkManager with default configuration."
            r3.debug(r0, r1)
            androidx.work.SystemClock r3 = new androidx.work.SystemClock
            r3.<init>()
            androidx.work.Configuration r0 = new androidx.work.Configuration
            r0.<init>(r3)
            r4.getClass()
            java.lang.Object r3 = androidx.work.impl.WorkManagerImpl.sLock
            monitor-enter(r3)
            androidx.work.impl.WorkManagerImpl r1 = androidx.work.impl.WorkManagerImpl.sDelegatedInstance     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L2e
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.impl.WorkManagerImpl.sDefaultInstance     // Catch: java.lang.Throwable -> L2c
            if (r2 != 0) goto L24
            goto L2e
        L24:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2c
            java.lang.String r0 = "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L2c
            throw r4     // Catch: java.lang.Throwable -> L2c
        L2c:
            r4 = move-exception
            goto L46
        L2e:
            if (r1 != 0) goto L40
            android.content.Context r1 = r4.getApplicationContext()     // Catch: java.lang.Throwable -> L2c
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.impl.WorkManagerImpl.sDefaultInstance     // Catch: java.lang.Throwable -> L2c
            if (r2 != 0) goto L3e
            androidx.work.impl.WorkManagerImpl r2 = androidx.work.Operation$State.createWorkManager(r1, r0)     // Catch: java.lang.Throwable -> L2c
            androidx.work.impl.WorkManagerImpl.sDefaultInstance = r2     // Catch: java.lang.Throwable -> L2c
        L3e:
            androidx.work.impl.WorkManagerImpl.sDelegatedInstance = r2     // Catch: java.lang.Throwable -> L2c
        L40:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2c
            androidx.work.impl.WorkManagerImpl r3 = androidx.work.impl.WorkManagerImpl.getInstance$1(r4)
            return r3
        L46:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2c
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.WorkManagerInitializer.create(android.content.Context):java.lang.Object");
    }

    @Override // androidx.startup.Initializer
    public final List dependencies() {
        return Collections.EMPTY_LIST;
    }
}
