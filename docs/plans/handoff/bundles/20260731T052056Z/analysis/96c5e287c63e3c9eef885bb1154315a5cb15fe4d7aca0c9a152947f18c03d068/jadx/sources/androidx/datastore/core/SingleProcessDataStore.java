package androidx.datastore.core;

import androidx.collection.internal.Lock;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import coil3.ImageLoader$Builder;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SingleProcessDataStore implements DataStore {
    public static final LinkedHashSet activeFiles = new LinkedHashSet();
    public static final Object activeFilesLock = new Object();
    public final ImageLoader$Builder actor;
    public final Lock corruptionHandler;
    public final SafeFlow data;
    public List initTasks;
    public final Function0 produceFile;
    public final Serializer serializer;
    public final String SCRATCH_SUFFIX = ".tmp";
    public final SynchronizedLazyImpl file$delegate = new SynchronizedLazyImpl(new LayoutNode$_foldedChildren$1(17, this));
    public final StateFlowImpl downstreamFlow = StateFlowKt.MutableStateFlow(UnInitialized.INSTANCE);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Message {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Read extends Message {
            public final State lastState;

            public Read(State state) {
                this.lastState = state;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Update extends Message {
            public final CompletableDeferredImpl ack;
            public final CoroutineContext callerContext;
            public final State lastState;
            public final Function2 transform;

            public Update(Function2 function2, CompletableDeferredImpl completableDeferredImpl, State state, CoroutineContext coroutineContext) {
                function2.getClass();
                coroutineContext.getClass();
                this.transform = function2;
                this.ack = completableDeferredImpl;
                this.lastState = state;
                this.callerContext = coroutineContext;
            }
        }
    }

    public SingleProcessDataStore(Function0 function0, Serializer serializer, List list, Lock lock, CoroutineScope coroutineScope) {
        this.produceFile = function0;
        this.serializer = serializer;
        this.corruptionHandler = lock;
        Continuation continuation = null;
        int i = 0;
        this.data = new SafeFlow(i, new SingleProcessDataStore$data$1(this, continuation, i));
        this.initTasks = CollectionsKt.toList(list);
        this.actor = new ImageLoader$Builder(coroutineScope, new NodeChainKt$fillVector$1(28, this), new SingleProcessDataStore$data$1(this, continuation, 1));
    }

    @Override // androidx.datastore.core.DataStore
    public final Flow getData() {
        return this.data;
    }

    public final File getFile() {
        return (File) this.file$delegate.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x009e, code lost:
    
        if (r9 != r1) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004b  */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object handleUpdate(androidx.datastore.core.SingleProcessDataStore.Message.Update r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.handleUpdate(androidx.datastore.core.SingleProcessDataStore$Message$Update, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInit(kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.readAndInit(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, kotlin.Unit] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateAndThrowFailure$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            androidx.datastore.core.SingleProcessDataStore r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2a
            goto L40
        L2a:
            r6 = move-exception
            goto L43
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L2a
            r0.label = r4     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r5 = r5.readAndInit(r0)     // Catch: java.lang.Throwable -> L2a
            if (r5 != r1) goto L40
            return r1
        L40:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L43:
            kotlinx.coroutines.flow.StateFlowImpl r5 = r5.downstreamFlow
            androidx.datastore.core.ReadException r0 = new androidx.datastore.core.ReadException
            r0.<init>(r6)
            r5.getClass()
            r5.updateState(r3, r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.readAndInitOrPropagateAndThrowFailure(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:0|1|(2:3|(7:5|6|7|(1:(2:10|11)(2:17|18))(3:19|20|(1:22))|12|13|14))|25|6|7|(0)(0)|12|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002a, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        r5 = r5.downstreamFlow;
        r0 = new androidx.datastore.core.ReadException(r6);
        r5.getClass();
        r5.updateState(null, r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readAndInitOrPropagateFailure(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readAndInitOrPropagateFailure$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            androidx.datastore.core.SingleProcessDataStore r5 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2a
            goto L4d
        L2a:
            r6 = move-exception
            goto L40
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5     // Catch: java.lang.Throwable -> L2a
            r0.label = r4     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r5 = r5.readAndInit(r0)     // Catch: java.lang.Throwable -> L2a
            if (r5 != r1) goto L4d
            return r1
        L40:
            kotlinx.coroutines.flow.StateFlowImpl r5 = r5.downstreamFlow
            androidx.datastore.core.ReadException r0 = new androidx.datastore.core.ReadException
            r0.<init>(r6)
            r5.getClass()
            r5.updateState(r3, r0)
        L4d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.readAndInitOrPropagateFailure(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.datastore.core.SingleProcessDataStore$readData$1] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.datastore.core.SingleProcessDataStore] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readData(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.datastore.core.SingleProcessDataStore$readData$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readData$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readData$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readData$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            java.io.FileInputStream r6 = r0.L$1
            androidx.datastore.core.SingleProcessDataStore r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2c
            goto L53
        L2c:
            r7 = move-exception
            goto L5e
        L2e:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r7)
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L64
            java.io.File r2 = r6.getFile()     // Catch: java.io.FileNotFoundException -> L64
            r7.<init>(r2)     // Catch: java.io.FileNotFoundException -> L64
            androidx.datastore.core.Serializer r2 = r6.serializer     // Catch: java.lang.Throwable -> L59
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L59
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L59
            r0.label = r4     // Catch: java.lang.Throwable -> L59
            java.lang.Object r0 = r2.readFrom(r7)     // Catch: java.lang.Throwable -> L59
            if (r0 != r1) goto L4f
            return r1
        L4f:
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L53:
            kotlin.ResultKt.closeFinally(r6, r3)     // Catch: java.io.FileNotFoundException -> L57
            return r7
        L57:
            r6 = move-exception
            goto L67
        L59:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L5e:
            throw r7     // Catch: java.lang.Throwable -> L5f
        L5f:
            r1 = move-exception
            kotlin.ResultKt.closeFinally(r6, r7)     // Catch: java.io.FileNotFoundException -> L57
            throw r1     // Catch: java.io.FileNotFoundException -> L57
        L64:
            r7 = move-exception
            r0 = r6
            r6 = r7
        L67:
            java.io.File r7 = r0.getFile()
            boolean r7 = r7.exists()
            if (r7 != 0) goto L78
            androidx.datastore.core.Serializer r6 = r0.serializer
            java.lang.Object r6 = r6.getDefaultValue()
            return r6
        L78:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.readData(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object readDataOrHandleCorruption(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = (androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1 r0 = new androidx.datastore.core.SingleProcessDataStore$readDataOrHandleCorruption$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L65
            if (r2 == r4) goto L5b
            r5 = 3
            if (r2 == r3) goto L3c
            if (r2 != r5) goto L35
            java.lang.Object r5 = r0.L$1
            java.lang.Object r0 = r0.L$0
            androidx.datastore.core.CorruptionException r0 = (androidx.datastore.core.CorruptionException) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L33
            return r5
        L33:
            r5 = move-exception
            goto L57
        L35:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L3c:
            java.lang.Object r2 = r0.L$1
            androidx.datastore.core.CorruptionException r2 = (androidx.datastore.core.CorruptionException) r2
            java.lang.Object r3 = r0.L$0
            androidx.datastore.core.SingleProcessDataStore r3 = (androidx.datastore.core.SingleProcessDataStore) r3
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r2     // Catch: java.io.IOException -> L55
            r0.L$1 = r6     // Catch: java.io.IOException -> L55
            r0.label = r5     // Catch: java.io.IOException -> L55
            java.lang.Object r5 = r3.writeData$datastore_core(r6, r0)     // Catch: java.io.IOException -> L55
            if (r5 != r1) goto L54
            goto L72
        L54:
            return r6
        L55:
            r5 = move-exception
            r0 = r2
        L57:
            kotlin.ExceptionsKt.addSuppressed(r0, r5)
            throw r0
        L5b:
            java.lang.Object r5 = r0.L$0
            androidx.datastore.core.SingleProcessDataStore r5 = (androidx.datastore.core.SingleProcessDataStore) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: androidx.datastore.core.CorruptionException -> L63
            return r6
        L63:
            r6 = move-exception
            goto L74
        L65:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.L$0 = r5     // Catch: androidx.datastore.core.CorruptionException -> L63
            r0.label = r4     // Catch: androidx.datastore.core.CorruptionException -> L63
            java.lang.Object r5 = r5.readData(r0)     // Catch: androidx.datastore.core.CorruptionException -> L63
            if (r5 != r1) goto L73
        L72:
            return r1
        L73:
            return r5
        L74:
            androidx.collection.internal.Lock r1 = r5.corruptionHandler
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r3
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.readDataOrHandleCorruption(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object transformAndWrite(kotlin.jvm.functions.Function2 r10, kotlin.coroutines.CoroutineContext r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = (androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1 r0 = new androidx.datastore.core.SingleProcessDataStore$transformAndWrite$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            java.lang.String r3 = "Data in DataStore was mutated but DataStore is only compatible with Immutable types."
            r4 = 0
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L45
            if (r2 == r6) goto L39
            if (r2 != r5) goto L33
            java.lang.Object r9 = r0.L$1
            androidx.datastore.core.SingleProcessDataStore r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L9f
        L33:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r7
        L39:
            java.lang.Object r9 = r0.L$2
            java.lang.Object r10 = r0.L$1
            androidx.datastore.core.Data r10 = (androidx.datastore.core.Data) r10
            androidx.datastore.core.SingleProcessDataStore r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L79
        L45:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlinx.coroutines.flow.StateFlowImpl r12 = r9.downstreamFlow
            java.lang.Object r12 = r12.getValue()
            androidx.datastore.core.Data r12 = (androidx.datastore.core.Data) r12
            java.lang.Object r2 = r12.value
            if (r2 == 0) goto L59
            int r2 = r2.hashCode()
            goto L5a
        L59:
            r2 = r4
        L5a:
            int r8 = r12.hashCode
            if (r2 != r8) goto Lb7
            java.lang.Object r2 = r12.value
            androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1 r8 = new androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1
            r8.<init>(r10, r2, r7)
            r0.L$0 = r9
            r0.L$1 = r12
            r0.L$2 = r2
            r0.label = r6
            java.lang.Object r10 = kotlinx.coroutines.AwaitKt.withContext(r11, r8, r0)
            if (r10 != r1) goto L74
            goto L9c
        L74:
            r11 = r12
            r12 = r10
            r10 = r11
            r11 = r9
            r9 = r2
        L79:
            java.lang.Object r2 = r10.value
            if (r2 == 0) goto L82
            int r2 = r2.hashCode()
            goto L83
        L82:
            r2 = r4
        L83:
            int r10 = r10.hashCode
            if (r2 != r10) goto Lb3
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r12)
            if (r10 == 0) goto L8e
            return r9
        L8e:
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r7
            r0.label = r5
            java.lang.Object r9 = r11.writeData$datastore_core(r12, r0)
            if (r9 != r1) goto L9d
        L9c:
            return r1
        L9d:
            r10 = r11
            r9 = r12
        L9f:
            kotlinx.coroutines.flow.StateFlowImpl r10 = r10.downstreamFlow
            androidx.datastore.core.Data r11 = new androidx.datastore.core.Data
            if (r9 == 0) goto La9
            int r4 = r9.hashCode()
        La9:
            r11.<init>(r4, r9)
            r10.getClass()
            r10.updateState(r7, r11)
            return r9
        Lb3:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            return r7
        Lb7:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.transformAndWrite(kotlin.jvm.functions.Function2, kotlin.coroutines.CoroutineContext, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.datastore.core.DataStore
    public final Object updateData(Function2 function2, ContinuationImpl continuationImpl) {
        CompletableDeferredImpl CompletableDeferred$default = AwaitKt.CompletableDeferred$default();
        this.actor.offer(new Message.Update(function2, CompletableDeferred$default, (State) this.downstreamFlow.getValue(), continuationImpl.getContext()));
        return CompletableDeferred$default.awaitInternal(continuationImpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0 A[Catch: IOException -> 0x00b7, TryCatch #0 {IOException -> 0x00b7, blocks: (B:14:0x0092, B:18:0x00a0, B:19:0x00b6, B:26:0x00bf, B:27:0x00c2, B:23:0x00bd), top: B:7:0x0024, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, kotlin.coroutines.intrinsics.CoroutineSingletons] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.File, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.File] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object writeData$datastore_core(java.lang.Object r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            java.lang.String r0 = "Unable to rename "
            boolean r1 = r11 instanceof androidx.datastore.core.SingleProcessDataStore$writeData$1
            if (r1 == 0) goto L15
            r1 = r11
            androidx.datastore.core.SingleProcessDataStore$writeData$1 r1 = (androidx.datastore.core.SingleProcessDataStore$writeData$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.datastore.core.SingleProcessDataStore$writeData$1 r1 = new androidx.datastore.core.SingleProcessDataStore$writeData$1
            r1.<init>(r9, r11)
        L1a:
            java.lang.Object r11 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.label
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            r5 = 0
            r6 = 1
            if (r3 == 0) goto L3d
            if (r3 != r6) goto L37
            java.io.FileOutputStream r9 = r1.L$4
            java.io.FileOutputStream r10 = r1.L$2
            java.io.File r2 = r1.L$1
            androidx.datastore.core.SingleProcessDataStore r1 = r1.L$0
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L34
            goto L8b
        L34:
            r9 = move-exception
            goto Lbd
        L37:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            return r5
        L3d:
            kotlin.ResultKt.throwOnFailure(r11)
            java.io.File r11 = r9.getFile()
            java.io.File r3 = r11.getCanonicalFile()
            java.io.File r3 = r3.getParentFile()
            if (r3 != 0) goto L4f
            goto L58
        L4f:
            r3.mkdirs()
            boolean r3 = r3.isDirectory()
            if (r3 == 0) goto Lce
        L58:
            java.io.File r11 = new java.io.File
            java.io.File r3 = r9.getFile()
            java.lang.String r3 = r3.getAbsolutePath()
            java.lang.String r7 = r9.SCRATCH_SUFFIX
            java.lang.String r3 = kotlin.jvm.internal.Intrinsics.stringPlus(r3, r7)
            r11.<init>(r3)
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.io.IOException -> Lc3
            r3.<init>(r11)     // Catch: java.io.IOException -> Lc3
            androidx.datastore.core.Serializer r7 = r9.serializer     // Catch: java.lang.Throwable -> Lba
            androidx.datastore.core.SingleProcessDataStore$UncloseableOutputStream r8 = new androidx.datastore.core.SingleProcessDataStore$UncloseableOutputStream     // Catch: java.lang.Throwable -> Lba
            r8.<init>(r3)     // Catch: java.lang.Throwable -> Lba
            r1.L$0 = r9     // Catch: java.lang.Throwable -> Lba
            r1.L$1 = r11     // Catch: java.lang.Throwable -> Lba
            r1.L$2 = r3     // Catch: java.lang.Throwable -> Lba
            r1.L$4 = r3     // Catch: java.lang.Throwable -> Lba
            r1.label = r6     // Catch: java.lang.Throwable -> Lba
            r7.writeTo(r10, r8)     // Catch: java.lang.Throwable -> Lba
            if (r4 != r2) goto L87
            return r2
        L87:
            r1 = r9
            r2 = r11
            r9 = r3
            r10 = r9
        L8b:
            java.io.FileDescriptor r9 = r9.getFD()     // Catch: java.lang.Throwable -> L34
            r9.sync()     // Catch: java.lang.Throwable -> L34
            kotlin.ResultKt.closeFinally(r10, r5)     // Catch: java.io.IOException -> Lb7
            java.io.File r9 = r1.getFile()     // Catch: java.io.IOException -> Lb7
            boolean r9 = r2.renameTo(r9)     // Catch: java.io.IOException -> Lb7
            if (r9 == 0) goto La0
            return r4
        La0:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.io.IOException -> Lb7
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.io.IOException -> Lb7
            r10.<init>(r0)     // Catch: java.io.IOException -> Lb7
            r10.append(r2)     // Catch: java.io.IOException -> Lb7
            java.lang.String r11 = ".This likely means that there are multiple instances of DataStore for this file. Ensure that you are only creating a single instance of datastore for this file."
            r10.append(r11)     // Catch: java.io.IOException -> Lb7
            java.lang.String r10 = r10.toString()     // Catch: java.io.IOException -> Lb7
            r9.<init>(r10)     // Catch: java.io.IOException -> Lb7
            throw r9     // Catch: java.io.IOException -> Lb7
        Lb7:
            r9 = move-exception
            r11 = r2
            goto Lc4
        Lba:
            r9 = move-exception
            r2 = r11
            r10 = r3
        Lbd:
            throw r9     // Catch: java.lang.Throwable -> Lbe
        Lbe:
            r11 = move-exception
            kotlin.ResultKt.closeFinally(r10, r9)     // Catch: java.io.IOException -> Lb7
            throw r11     // Catch: java.io.IOException -> Lb7
        Lc3:
            r9 = move-exception
        Lc4:
            boolean r10 = r11.exists()
            if (r10 == 0) goto Lcd
            r11.delete()
        Lcd:
            throw r9
        Lce:
            java.lang.String r9 = "Unable to create parent directories of "
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r9, r11)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.SingleProcessDataStore.writeData$datastore_core(java.lang.Object, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UncloseableOutputStream extends OutputStream {
        public final FileOutputStream fileOutputStream;

        public UncloseableOutputStream(FileOutputStream fileOutputStream) {
            this.fileOutputStream = fileOutputStream;
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
            this.fileOutputStream.flush();
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            bArr.getClass();
            this.fileOutputStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            this.fileOutputStream.write(i);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            bArr.getClass();
            this.fileOutputStream.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }
}
