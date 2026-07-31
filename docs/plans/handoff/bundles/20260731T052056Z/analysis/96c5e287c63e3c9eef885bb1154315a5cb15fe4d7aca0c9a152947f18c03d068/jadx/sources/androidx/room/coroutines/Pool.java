package androidx.room.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.Room;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Pool {
    public final ArrayDeque availableConnections;
    public final int capacity;
    public final Function0 connectionFactory;
    public final SemaphoreImpl connectionPermits;
    public final ConnectionWithLock[] connections;
    public boolean isClosed;
    public final ReentrantLock lock = new ReentrantLock();
    public int size;

    public Pool(int i, Function0 function0) {
        this.capacity = i;
        this.connectionFactory = function0;
        this.connections = new ConnectionWithLock[i];
        int i2 = SemaphoreKt.MAX_SPIN_CYCLES;
        this.connectionPermits = new SemaphoreImpl(i);
        this.availableConnections = new ArrayDeque(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047 A[Catch: all -> 0x007a, TryCatch #1 {all -> 0x007a, blocks: (B:13:0x0043, B:15:0x0047, B:17:0x004d, B:20:0x0054, B:21:0x006e, B:25:0x007c, B:26:0x0083), top: B:12:0x0043, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007c A[Catch: all -> 0x007a, TRY_ENTER, TryCatch #1 {all -> 0x007a, blocks: (B:13:0x0043, B:15:0x0047, B:17:0x004d, B:20:0x0054, B:21:0x006e, B:25:0x007c, B:26:0x0083), top: B:12:0x0043, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquire(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            kotlin.collections.ArrayDeque r0 = r7.availableConnections
            boolean r1 = r8 instanceof androidx.room.coroutines.Pool$acquire$1
            if (r1 == 0) goto L15
            r1 = r8
            androidx.room.coroutines.Pool$acquire$1 r1 = (androidx.room.coroutines.Pool$acquire$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.room.coroutines.Pool$acquire$1 r1 = new androidx.room.coroutines.Pool$acquire$1
            r1.<init>(r7, r8)
        L1a:
            java.lang.Object r8 = r1.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.label
            r4 = 0
            kotlinx.coroutines.sync.SemaphoreImpl r5 = r7.connectionPermits
            r6 = 1
            if (r3 == 0) goto L32
            if (r3 != r6) goto L2c
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3e
        L2c:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r4
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            r1.label = r6
            java.lang.Object r8 = r5.acquire(r1)
            if (r8 != r2) goto L3e
            return r2
        L3e:
            java.util.concurrent.locks.ReentrantLock r8 = r7.lock     // Catch: java.lang.Throwable -> L78
            r8.lock()     // Catch: java.lang.Throwable -> L78
            boolean r1 = r7.isClosed     // Catch: java.lang.Throwable -> L7a
            if (r1 != 0) goto L7c
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L6e
            int r1 = r7.size     // Catch: java.lang.Throwable -> L7a
            int r2 = r7.capacity     // Catch: java.lang.Throwable -> L7a
            if (r1 < r2) goto L54
            goto L6e
        L54:
            androidx.room.coroutines.ConnectionWithLock r1 = new androidx.room.coroutines.ConnectionWithLock     // Catch: java.lang.Throwable -> L7a
            kotlin.jvm.functions.Function0 r2 = r7.connectionFactory     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r2 = r2.invoke()     // Catch: java.lang.Throwable -> L7a
            androidx.sqlite.SQLiteConnection r2 = (androidx.sqlite.SQLiteConnection) r2     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7a
            androidx.room.coroutines.ConnectionWithLock[] r2 = r7.connections     // Catch: java.lang.Throwable -> L7a
            int r3 = r7.size     // Catch: java.lang.Throwable -> L7a
            int r4 = r3 + 1
            r7.size = r4     // Catch: java.lang.Throwable -> L7a
            r2[r3] = r1     // Catch: java.lang.Throwable -> L7a
            r0.addLast(r1)     // Catch: java.lang.Throwable -> L7a
        L6e:
            java.lang.Object r7 = r0.removeLast()     // Catch: java.lang.Throwable -> L7a
            androidx.room.coroutines.ConnectionWithLock r7 = (androidx.room.coroutines.ConnectionWithLock) r7     // Catch: java.lang.Throwable -> L7a
            r8.unlock()     // Catch: java.lang.Throwable -> L78
            return r7
        L78:
            r7 = move-exception
            goto L88
        L7a:
            r7 = move-exception
            goto L84
        L7c:
            java.lang.String r7 = "Connection pool is closed"
            r0 = 21
            coil3.util.ContextsKt.throwSQLiteException(r0, r7)     // Catch: java.lang.Throwable -> L7a
            throw r4     // Catch: java.lang.Throwable -> L7a
        L84:
            r8.unlock()     // Catch: java.lang.Throwable -> L78
            throw r7     // Catch: java.lang.Throwable -> L78
        L88:
            r5.release()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.acquire(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:9|(2:10|11)|12|13|14|(1:(1:37)(2:34|(1:36)))(1:16)|17|18|19|20|(2:27|28)(2:22|(1:24)(10:26|12|13|14|(0)(0)|17|18|19|20|(0)(0)))) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0076, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
    
        r14 = r14;
        r13 = r13;
        r2 = r0;
        r0 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0081 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:14:0x007d, B:16:0x0081, B:34:0x0089, B:37:0x0090), top: B:13:0x007d }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056 A[Catch: all -> 0x0076, TryCatch #1 {all -> 0x0076, blocks: (B:20:0x003e, B:22:0x0056, B:27:0x0069, B:28:0x0070), top: B:19:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069 A[Catch: all -> 0x0076, TryCatch #1 {all -> 0x0076, blocks: (B:20:0x003e, B:22:0x0056, B:27:0x0069, B:28:0x0070), top: B:19:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r2v11, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0062 -> B:12:0x0064). Please report as a decompilation issue!!! */
    /* renamed from: acquireWithTimeout-KLykuaI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m761acquireWithTimeoutKLykuaI(long r11, androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2 r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof androidx.room.coroutines.Pool$acquireWithTimeout$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = (androidx.room.coroutines.Pool$acquireWithTimeout$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquireWithTimeout$1 r0 = new androidx.room.coroutines.Pool$acquireWithTimeout$1
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L36
            if (r2 != r3) goto L30
            long r11 = r0.J$0
            kotlin.jvm.internal.Ref$ObjectRef r13 = r0.L$1
            kotlin.jvm.functions.Function0 r2 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L2e
            goto L64
        L2e:
            r14 = move-exception
            goto L78
        L30:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r4
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
        L39:
            kotlin.jvm.internal.Ref$ObjectRef r14 = new kotlin.jvm.internal.Ref$ObjectRef
            r14.<init>()
            coil3.RealImageLoader$execute$2 r2 = new coil3.RealImageLoader$execute$2     // Catch: java.lang.Throwable -> L76
            r5 = 2
            r2.<init>(r14, r10, r4, r5)     // Catch: java.lang.Throwable -> L76
            r0.L$0 = r13     // Catch: java.lang.Throwable -> L76
            r0.L$1 = r14     // Catch: java.lang.Throwable -> L76
            r0.J$0 = r11     // Catch: java.lang.Throwable -> L76
            r0.label = r3     // Catch: java.lang.Throwable -> L76
            long r5 = kotlinx.coroutines.AwaitKt.m860toDelayMillisLRDsOJo(r11)     // Catch: java.lang.Throwable -> L76
            r7 = 0
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 <= 0) goto L69
            kotlinx.coroutines.TimeoutCoroutine r7 = new kotlinx.coroutines.TimeoutCoroutine     // Catch: java.lang.Throwable -> L76
            r7.<init>(r5, r0)     // Catch: java.lang.Throwable -> L76
            java.lang.Object r2 = kotlinx.coroutines.AwaitKt.setupTimeout(r7, r2)     // Catch: java.lang.Throwable -> L76
            if (r2 != r1) goto L62
            return r1
        L62:
            r2 = r13
            r13 = r14
        L64:
            r14 = r13
            r13 = r2
            r2 = r0
            r0 = r4
            goto L7d
        L69:
            kotlinx.coroutines.TimeoutCancellationException r2 = new kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L76
            java.lang.String r5 = "Timed out immediately"
            r2.<init>(r5, r4)     // Catch: java.lang.Throwable -> L76
            throw r2     // Catch: java.lang.Throwable -> L76
        L71:
            r9 = r2
            r2 = r13
            r13 = r14
            r14 = r9
            goto L78
        L76:
            r2 = move-exception
            goto L71
        L78:
            r9 = r14
            r14 = r13
            r13 = r2
            r2 = r0
            r0 = r9
        L7d:
            boolean r5 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L85
            if (r5 == 0) goto L87
            r13.invoke()     // Catch: java.lang.Throwable -> L85
            goto L8e
        L85:
            r11 = move-exception
            goto L91
        L87:
            if (r0 != 0) goto L90
            java.lang.Object r14 = r14.element     // Catch: java.lang.Throwable -> L85
            if (r14 == 0) goto L8e
            return r14
        L8e:
            r0 = r2
            goto L39
        L90:
            throw r0     // Catch: java.lang.Throwable -> L85
        L91:
            java.lang.Object r12 = r14.element
            androidx.room.coroutines.ConnectionWithLock r12 = (androidx.room.coroutines.ConnectionWithLock) r12
            if (r12 == 0) goto L9a
            r10.recycle(r12)
        L9a:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.m761acquireWithTimeoutKLykuaI(long, androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isClosed = true;
            for (ConnectionWithLock connectionWithLock : this.connections) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void dump(StringBuilder sb) {
        ArrayDeque arrayDeque = this.availableConnections;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            ListBuilder createListBuilder = Room.createListBuilder();
            int i = arrayDeque.size;
            for (int i2 = 0; i2 < i; i2++) {
                createListBuilder.add(arrayDeque.get(i2));
            }
            ListBuilder build = Room.build(createListBuilder);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.capacity + ", ");
            sb.append("permits=" + Math.max(ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this.connectionPermits, SemaphoreAndMutexImpl._availablePermits$volatile$FU$offset), 0) + ", ");
            sb.append("queue=(size=" + build.getSize() + ")[" + CollectionsKt.joinToString$default(build, null, null, null, null, 63) + ']');
            sb.append(")");
            sb.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.connections;
            int length = connectionWithLockArr.length;
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i4];
                i3++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("\t\t[");
                sb2.append(i3);
                sb2.append("] - ");
                sb2.append(connectionWithLock != null ? connectionWithLock.delegate.toString() : null);
                sb.append(sb2.toString());
                sb.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.dump(sb);
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void recycle(ConnectionWithLock connectionWithLock) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.availableConnections.addLast(connectionWithLock);
            reentrantLock.unlock();
            this.connectionPermits.release();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
