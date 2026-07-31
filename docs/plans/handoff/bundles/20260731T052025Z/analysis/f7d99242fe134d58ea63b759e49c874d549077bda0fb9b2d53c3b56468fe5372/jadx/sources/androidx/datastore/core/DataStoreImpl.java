package androidx.datastore.core;

import androidx.collection.internal.Lock;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.room.ObservedTableVersions;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences$getAccountFlow$1;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl implements DataStore {
    public int collectorCounter;
    public StandaloneCoroutine collectorJob;
    public final MutexImpl collectorMutex;
    public final SynchronizedLazyImpl coordinator$delegate;
    public final ObservedTableVersions inMemoryCache;
    public final Dispatcher readAndInit;
    public final CoroutineScope scope;
    public final FileStorage storage;
    public final SynchronizedLazyImpl storageConnectionDelegate;
    public final Dispatcher writeActor;

    public DataStoreImpl(FileStorage fileStorage, List list, Lock lock, CoroutineScope coroutineScope) {
        this.storage = fileStorage;
        this.scope = coroutineScope;
        Continuation continuation = null;
        final int i = 0;
        new SafeFlow(i, new Preferences$getAccountFlow$1(this, continuation, 3));
        this.collectorMutex = new MutexImpl();
        this.inMemoryCache = new ObservedTableVersions();
        this.readAndInit = new Dispatcher(this, list);
        this.storageConnectionDelegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.datastore.core.DataStoreImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ DataStoreImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                DataStoreImpl dataStoreImpl = this.f$0;
                switch (i2) {
                    case 0:
                        FileStorage fileStorage2 = dataStoreImpl.storage;
                        File canonicalFile = ((File) fileStorage2.produceFile.invoke()).getCanonicalFile();
                        synchronized (FileStorage.activeFilesLock) {
                            String absolutePath = canonicalFile.getAbsolutePath();
                            LinkedHashSet linkedHashSet = FileStorage.activeFiles;
                            if (linkedHashSet.contains(absolutePath)) {
                                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                            }
                            absolutePath.getClass();
                            linkedHashSet.add(absolutePath);
                        }
                        return new FileStorageConnection(canonicalFile, fileStorage2.serializer, (SingleProcessCoordinator) fileStorage2.coordinatorProducer.invoke(canonicalFile), new ImageLoader$Builder$$ExternalSyntheticLambda1(12, canonicalFile));
                    default:
                        return ((FileStorageConnection) dataStoreImpl.storageConnectionDelegate.getValue()).coordinator;
                }
            }
        });
        final int i2 = 1;
        this.coordinator$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: androidx.datastore.core.DataStoreImpl$$ExternalSyntheticLambda0
            public final /* synthetic */ DataStoreImpl f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                DataStoreImpl dataStoreImpl = this.f$0;
                switch (i22) {
                    case 0:
                        FileStorage fileStorage2 = dataStoreImpl.storage;
                        File canonicalFile = ((File) fileStorage2.produceFile.invoke()).getCanonicalFile();
                        synchronized (FileStorage.activeFilesLock) {
                            String absolutePath = canonicalFile.getAbsolutePath();
                            LinkedHashSet linkedHashSet = FileStorage.activeFiles;
                            if (linkedHashSet.contains(absolutePath)) {
                                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                            }
                            absolutePath.getClass();
                            linkedHashSet.add(absolutePath);
                        }
                        return new FileStorageConnection(canonicalFile, fileStorage2.serializer, (SingleProcessCoordinator) fileStorage2.coordinatorProducer.invoke(canonicalFile), new ImageLoader$Builder$$ExternalSyntheticLambda1(12, canonicalFile));
                    default:
                        return ((FileStorageConnection) dataStoreImpl.storageConnectionDelegate.getValue()).coordinator;
                }
            }
        });
        this.writeActor = new Dispatcher(coroutineScope, new DiskLruCache$$ExternalSyntheticLambda0(16, this), new K9KoinModuleKt$$ExternalSyntheticLambda2(23), new BlockRunner$maybeRun$1(this, continuation, 9));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0049 A[Catch: all -> 0x0051, TryCatch #0 {all -> 0x0051, blocks: (B:11:0x0041, B:13:0x0049, B:15:0x004d, B:16:0x0053), top: B:10:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$decrementCollector(androidx.datastore.core.DataStoreImpl r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof androidx.datastore.core.DataStoreImpl$decrementCollector$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$decrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$decrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$decrementCollector$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L28
            kotlinx.coroutines.sync.MutexImpl r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L41
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.sync.MutexImpl r5 = r4.collectorMutex
            r0.L$0 = r5
            r0.label = r2
            java.lang.Object r0 = r5.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L40
            return r1
        L40:
            r0 = r5
        L41:
            int r5 = r4.collectorCounter     // Catch: java.lang.Throwable -> L51
            int r5 = r5 + (-1)
            r4.collectorCounter = r5     // Catch: java.lang.Throwable -> L51
            if (r5 != 0) goto L55
            kotlinx.coroutines.StandaloneCoroutine r5 = r4.collectorJob     // Catch: java.lang.Throwable -> L51
            if (r5 == 0) goto L53
            r5.cancel(r3)     // Catch: java.lang.Throwable -> L51
            goto L53
        L51:
            r4 = move-exception
            goto L5b
        L53:
            r4.collectorJob = r3     // Catch: java.lang.Throwable -> L51
        L55:
            r0.unlock(r3)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L5b:
            r0.unlock(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$decrementCollector(androidx.datastore.core.DataStoreImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$handleUpdate(androidx.datastore.core.DataStoreImpl r7, androidx.datastore.core.Message$Update r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            boolean r0 = r9 instanceof androidx.datastore.core.DataStoreImpl$handleUpdate$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.datastore.core.DataStoreImpl$handleUpdate$1 r0 = (androidx.datastore.core.DataStoreImpl$handleUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$handleUpdate$1 r0 = new androidx.datastore.core.DataStoreImpl$handleUpdate$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            kotlinx.coroutines.CompletableDeferredImpl r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L28
            goto L5d
        L28:
            r8 = move-exception
            goto L58
        L2a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.CompletableDeferredImpl r9 = r8.ack
            kotlin.coroutines.CoroutineContext r1 = r8.callerContext     // Catch: java.lang.Throwable -> L56
            kotlin.coroutines.CoroutineContext r4 = r0.getContext()     // Catch: java.lang.Throwable -> L56
            kotlin.coroutines.CoroutineContext r1 = r1.plus(r4)     // Catch: java.lang.Throwable -> L56
            androidx.lifecycle.BlockRunner$maybeRun$1 r4 = new androidx.lifecycle.BlockRunner$maybeRun$1     // Catch: java.lang.Throwable -> L56
            r5 = 7
            r4.<init>(r7, r8, r2, r5)     // Catch: java.lang.Throwable -> L56
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L56
            r0.label = r3     // Catch: java.lang.Throwable -> L56
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r1, r4, r0)     // Catch: java.lang.Throwable -> L56
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L52
            return r8
        L52:
            r6 = r9
            r9 = r7
            r7 = r6
            goto L5d
        L56:
            r8 = move-exception
            r7 = r9
        L58:
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
        L5d:
            java.lang.Throwable r8 = kotlin.Result.m979exceptionOrNullimpl(r9)
            if (r8 != 0) goto L67
            r7.makeCompleting$kotlinx_coroutines_core(r9)
            goto L6a
        L67:
            r7.completeExceptionally(r8)
        L6a:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$handleUpdate(androidx.datastore.core.DataStoreImpl, androidx.datastore.core.Message$Update, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0048 A[Catch: all -> 0x0057, TRY_LEAVE, TryCatch #0 {all -> 0x0057, blocks: (B:11:0x0041, B:13:0x0048), top: B:10:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$incrementCollector(androidx.datastore.core.DataStoreImpl r4, kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            boolean r0 = r5 instanceof androidx.datastore.core.DataStoreImpl$incrementCollector$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = (androidx.datastore.core.DataStoreImpl$incrementCollector$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$incrementCollector$1 r0 = new androidx.datastore.core.DataStoreImpl$incrementCollector$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L28
            kotlinx.coroutines.sync.MutexImpl r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L41
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.sync.MutexImpl r5 = r4.collectorMutex
            r0.L$0 = r5
            r0.label = r2
            java.lang.Object r0 = r5.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L40
            return r1
        L40:
            r0 = r5
        L41:
            int r5 = r4.collectorCounter     // Catch: java.lang.Throwable -> L57
            int r5 = r5 + r2
            r4.collectorCounter = r5     // Catch: java.lang.Throwable -> L57
            if (r5 != r2) goto L59
            kotlinx.coroutines.CoroutineScope r5 = r4.scope     // Catch: java.lang.Throwable -> L57
            androidx.datastore.core.DataStoreImpl$data$1$1 r1 = new androidx.datastore.core.DataStoreImpl$data$1$1     // Catch: java.lang.Throwable -> L57
            r1.<init>(r4, r3, r2)     // Catch: java.lang.Throwable -> L57
            r2 = 3
            kotlinx.coroutines.StandaloneCoroutine r5 = kotlinx.coroutines.JobKt.launch$default(r5, r3, r3, r1, r2)     // Catch: java.lang.Throwable -> L57
            r4.collectorJob = r5     // Catch: java.lang.Throwable -> L57
            goto L59
        L57:
            r4 = move-exception
            goto L5f
        L59:
            r0.unlock(r3)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L5f:
            r0.unlock(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$incrementCollector(androidx.datastore.core.DataStoreImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
    
        if (r1.runIfNeeded(r0) != r4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005b, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0046, code lost:
    
        if (r7 == r4) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$readAndInitOrPropagateAndThrowFailure(androidx.datastore.core.DataStoreImpl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L39
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2e
            int r0 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2c
            goto L5c
        L2c:
            r7 = move-exception
            goto L63
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            r6 = 0
            return r6
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L49
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.datastore.core.SingleProcessCoordinator r7 = r6.getCoordinator()
            r0.label = r3
            java.lang.Integer r7 = r7.getVersion()
            if (r7 != r4) goto L49
            goto L5b
        L49:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            okhttp3.Dispatcher r1 = r6.readAndInit     // Catch: java.lang.Throwable -> L5f
            r0.I$0 = r7     // Catch: java.lang.Throwable -> L5f
            r0.label = r2     // Catch: java.lang.Throwable -> L5f
            java.lang.Object r6 = r1.runIfNeeded(r0)     // Catch: java.lang.Throwable -> L5f
            if (r6 != r4) goto L5c
        L5b:
            return r4
        L5c:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L5f:
            r0 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
        L63:
            androidx.room.ObservedTableVersions r6 = r6.inMemoryCache
            androidx.datastore.core.ReadException r1 = new androidx.datastore.core.ReadException
            r1.<init>(r7, r0)
            r6.tryUpdate(r1)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$readAndInitOrPropagateAndThrowFailure(androidx.datastore.core.DataStoreImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
    
        if (r11 == r7) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a1, code lost:
    
        if (r11 == r7) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x005c, code lost:
    
        if (r11 == r7) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$readDataAndUpdateCache(androidx.datastore.core.DataStoreImpl r9, boolean r10, kotlin.coroutines.Continuation r11) {
        /*
            androidx.room.ObservedTableVersions r0 = r9.inMemoryCache
            boolean r1 = r11 instanceof androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1
            if (r1 == 0) goto L15
            r1 = r11
            androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1 r1 = (androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1 r1 = new androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$1
            r1.<init>(r9, r11)
        L1a:
            java.lang.Object r11 = r1.result
            int r2 = r1.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r2 == 0) goto L43
            if (r2 == r5) goto L3b
            if (r2 == r4) goto L37
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r11)
            goto La4
        L31:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r6
        L37:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L8c
        L3b:
            boolean r10 = r1.Z$0
            androidx.datastore.core.State r2 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5f
        L43:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.datastore.core.State r2 = r0.getCurrentState()
            boolean r11 = r2 instanceof androidx.datastore.core.UnInitialized
            if (r11 != 0) goto Lb8
            androidx.datastore.core.SingleProcessCoordinator r11 = r9.getCoordinator()
            r1.L$0 = r2
            r1.Z$0 = r10
            r1.label = r5
            java.lang.Integer r11 = r11.getVersion()
            if (r11 != r7) goto L5f
            goto La3
        L5f:
            java.lang.Number r11 = (java.lang.Number) r11
            int r11 = r11.intValue()
            boolean r5 = r2 instanceof androidx.datastore.core.Data
            if (r5 == 0) goto L6f
            r8 = r2
            androidx.datastore.core.Data r8 = (androidx.datastore.core.Data) r8
            int r8 = r8.version
            goto L70
        L6f:
            r8 = -1
        L70:
            if (r5 == 0) goto L75
            if (r11 != r8) goto L75
            return r2
        L75:
            if (r10 == 0) goto L8f
            androidx.datastore.core.SingleProcessCoordinator r10 = r9.getCoordinator()
            androidx.datastore.core.FileReadScope$readData$2 r11 = new androidx.datastore.core.FileReadScope$readData$2
            r2 = 6
            r11.<init>(r9, r6, r2)
            r1.L$0 = r6
            r1.label = r4
            java.lang.Object r11 = r10.lock(r11, r1)
            if (r11 != r7) goto L8c
            goto La3
        L8c:
            kotlin.Pair r11 = (kotlin.Pair) r11
            goto La6
        L8f:
            androidx.datastore.core.SingleProcessCoordinator r10 = r9.getCoordinator()
            androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4 r11 = new androidx.datastore.core.DataStoreImpl$readDataAndUpdateCache$4
            r2 = 0
            r11.<init>(r9, r8, r6, r2)
            r1.L$0 = r6
            r1.label = r3
            java.lang.Object r11 = r10.tryLock(r11, r1)
            if (r11 != r7) goto La4
        La3:
            return r7
        La4:
            kotlin.Pair r11 = (kotlin.Pair) r11
        La6:
            java.lang.Object r9 = r11.first
            androidx.datastore.core.State r9 = (androidx.datastore.core.State) r9
            java.lang.Object r10 = r11.second
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto Lb7
            r0.tryUpdate(r9)
        Lb7:
            return r9
        Lb8:
            java.lang.String r9 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$readDataAndUpdateCache(androidx.datastore.core.DataStoreImpl, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x011c, code lost:
    
        if (r0 != r10) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd A[Catch: CorruptionException -> 0x009e, TryCatch #1 {CorruptionException -> 0x009e, blocks: (B:39:0x0099, B:40:0x011f, B:43:0x00a5, B:44:0x0104, B:47:0x00af, B:48:0x00e8, B:51:0x00b6, B:53:0x00cd, B:54:0x00d1, B:60:0x00c0, B:63:0x00f4), top: B:8:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$readDataOrHandleCorruption(androidx.datastore.core.DataStoreImpl r11, boolean r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.access$readDataOrHandleCorruption(androidx.datastore.core.DataStoreImpl, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final SingleProcessCoordinator getCoordinator() {
        return (SingleProcessCoordinator) this.coordinator$delegate.getValue();
    }

    public final Object readDataFromFileOrDefault(ContinuationImpl continuationImpl) {
        return ((FileStorageConnection) this.storageConnectionDelegate.getValue()).readScope(new DataStoreImpl$data$1$5(3, (Continuation) null), continuationImpl);
    }

    @Override // androidx.datastore.core.DataStore
    public final Object updateData(Function2 function2, ContinuationImpl continuationImpl) {
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) continuationImpl.getContext().get(UpdatingDataContextElement$Companion$Key.INSTANCE);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.checkNotUpdating(this);
        }
        return JobKt.withContext(new UpdatingDataContextElement(updatingDataContextElement, this), new Preferences$getAccountFlow$1(this, function2, null, 4), continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData$datastore_core(java.lang.Object r10, boolean r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.datastore.core.DataStoreImpl$writeData$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = (androidx.datastore.core.DataStoreImpl$writeData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.DataStoreImpl$writeData$1 r0 = new androidx.datastore.core.DataStoreImpl$writeData$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            kotlin.jvm.internal.Ref$IntRef r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L55
        L27:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            r9 = 0
            return r9
        L2e:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.jvm.internal.Ref$IntRef r4 = new kotlin.jvm.internal.Ref$IntRef
            r4.<init>()
            kotlin.SynchronizedLazyImpl r12 = r9.storageConnectionDelegate
            java.lang.Object r12 = r12.getValue()
            androidx.datastore.core.FileStorageConnection r12 = (androidx.datastore.core.FileStorageConnection) r12
            androidx.datastore.core.DataStoreImpl$writeData$2 r3 = new androidx.datastore.core.DataStoreImpl$writeData$2
            r8 = 0
            r5 = r9
            r6 = r10
            r7 = r11
            r3.<init>(r4, r5, r6, r7, r8)
            r0.L$0 = r4
            r0.label = r2
            java.lang.Object r9 = r12.writeScope(r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r10) goto L54
            return r10
        L54:
            r9 = r4
        L55:
            int r9 = r9.element
            java.lang.Integer r10 = new java.lang.Integer
            r10.<init>(r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl.writeData$datastore_core(java.lang.Object, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
