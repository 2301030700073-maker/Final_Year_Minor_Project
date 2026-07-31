package androidx.room.coroutines;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    /* JADX WARN: Removed duplicated region for block: B:35:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquire(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            kotlin.collections.ArrayDeque r0 = r6.availableConnections
            boolean r1 = r7 instanceof androidx.room.coroutines.Pool$acquire$1
            if (r1 == 0) goto L15
            r1 = r7
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
            r1.<init>(r6, r7)
        L1a:
            java.lang.Object r7 = r1.result
            int r2 = r1.label
            r3 = 0
            kotlinx.coroutines.sync.SemaphoreImpl r4 = r6.connectionPermits
            r5 = 1
            if (r2 == 0) goto L30
            if (r2 != r5) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3e
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            r1.label = r5
            java.lang.Object r7 = r4.acquire(r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r1) goto L3e
            return r1
        L3e:
            java.util.concurrent.locks.ReentrantLock r7 = r6.lock     // Catch: java.lang.Throwable -> L78
            r7.lock()     // Catch: java.lang.Throwable -> L78
            boolean r1 = r6.isClosed     // Catch: java.lang.Throwable -> L7a
            if (r1 != 0) goto L7c
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L6e
            int r1 = r6.size     // Catch: java.lang.Throwable -> L7a
            int r2 = r6.capacity     // Catch: java.lang.Throwable -> L7a
            if (r1 < r2) goto L54
            goto L6e
        L54:
            androidx.room.coroutines.ConnectionWithLock r1 = new androidx.room.coroutines.ConnectionWithLock     // Catch: java.lang.Throwable -> L7a
            kotlin.jvm.functions.Function0 r2 = r6.connectionFactory     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r2 = r2.invoke()     // Catch: java.lang.Throwable -> L7a
            androidx.sqlite.SQLiteConnection r2 = (androidx.sqlite.SQLiteConnection) r2     // Catch: java.lang.Throwable -> L7a
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7a
            androidx.room.coroutines.ConnectionWithLock[] r2 = r6.connections     // Catch: java.lang.Throwable -> L7a
            int r3 = r6.size     // Catch: java.lang.Throwable -> L7a
            int r5 = r3 + 1
            r6.size = r5     // Catch: java.lang.Throwable -> L7a
            r2[r3] = r1     // Catch: java.lang.Throwable -> L7a
            r0.addLast(r1)     // Catch: java.lang.Throwable -> L7a
        L6e:
            java.lang.Object r6 = r0.removeLast()     // Catch: java.lang.Throwable -> L7a
            androidx.room.coroutines.ConnectionWithLock r6 = (androidx.room.coroutines.ConnectionWithLock) r6     // Catch: java.lang.Throwable -> L7a
            r7.unlock()     // Catch: java.lang.Throwable -> L78
            return r6
        L78:
            r6 = move-exception
            goto L88
        L7a:
            r6 = move-exception
            goto L84
        L7c:
            java.lang.String r6 = "Connection pool is closed"
            r0 = 21
            androidx.sqlite.SQLite.throwSQLiteException(r0, r6)     // Catch: java.lang.Throwable -> L7a
            throw r3     // Catch: java.lang.Throwable -> L7a
        L84:
            r7.unlock()     // Catch: java.lang.Throwable -> L78
            throw r6     // Catch: java.lang.Throwable -> L78
        L88:
            r4.release()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.acquire(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:13|14|(1:(1:34)(2:31|(1:33)))(1:16)|17|18|19|20|21|(1:23)(11:25|12|13|14|(0)(0)|17|18|19|20|21|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005d, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        r10 = r10;
        r9 = r9;
        r1 = r0;
        r0 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b A[Catch: all -> 0x006f, TryCatch #2 {all -> 0x006f, blocks: (B:14:0x0067, B:16:0x006b, B:31:0x0073, B:34:0x007a), top: B:13:0x0067 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Type inference failed for: r1v11, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0056 -> B:12:0x0058). Please report as a decompilation issue!!! */
    /* renamed from: acquireWithTimeout-KLykuaI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m468acquireWithTimeoutKLykuaI(long r7, androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2 r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r6 = this;
            boolean r0 = r10 instanceof androidx.room.coroutines.Pool$acquireWithTimeout$1
            if (r0 == 0) goto L13
            r0 = r10
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
            r0.<init>(r6, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L38
            if (r1 != r2) goto L32
            long r7 = r0.J$0
            java.lang.Object r9 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r9 = (kotlin.jvm.internal.Ref$ObjectRef) r9
            java.lang.Object r1 = r0.L$0
            kotlin.jvm.functions.Function0 r1 = (kotlin.jvm.functions.Function0) r1
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L30
            goto L58
        L30:
            r10 = move-exception
            goto L62
        L32:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r6)
            return r3
        L38:
            kotlin.ResultKt.throwOnFailure(r10)
        L3b:
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            androidx.room.coroutines.Pool$acquireWithTimeout$2 r1 = new androidx.room.coroutines.Pool$acquireWithTimeout$2     // Catch: java.lang.Throwable -> L5d
            r1.<init>(r10, r6, r3)     // Catch: java.lang.Throwable -> L5d
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L5d
            r0.L$1 = r10     // Catch: java.lang.Throwable -> L5d
            r0.J$0 = r7     // Catch: java.lang.Throwable -> L5d
            r0.label = r2     // Catch: java.lang.Throwable -> L5d
            java.lang.Object r1 = kotlinx.coroutines.JobKt.m686withTimeoutKLykuaI(r7, r1, r0)     // Catch: java.lang.Throwable -> L5d
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 != r4) goto L56
            return r4
        L56:
            r1 = r9
            r9 = r10
        L58:
            r10 = r9
            r9 = r1
            r1 = r0
            r0 = r3
            goto L67
        L5d:
            r1 = move-exception
            r5 = r1
            r1 = r9
            r9 = r10
            r10 = r5
        L62:
            r5 = r10
            r10 = r9
            r9 = r1
            r1 = r0
            r0 = r5
        L67:
            boolean r4 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L6f
            if (r4 == 0) goto L71
            r9.invoke()     // Catch: java.lang.Throwable -> L6f
            goto L78
        L6f:
            r7 = move-exception
            goto L7b
        L71:
            if (r0 != 0) goto L7a
            java.lang.Object r10 = r10.element     // Catch: java.lang.Throwable -> L6f
            if (r10 == 0) goto L78
            return r10
        L78:
            r0 = r1
            goto L3b
        L7a:
            throw r0     // Catch: java.lang.Throwable -> L6f
        L7b:
            java.lang.Object r8 = r10.element
            androidx.room.coroutines.ConnectionWithLock r8 = (androidx.room.coroutines.ConnectionWithLock) r8
            if (r8 == 0) goto L84
            r6.recycle(r8)
        L84:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.m468acquireWithTimeoutKLykuaI(long, androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
            ListBuilder createListBuilder = Jsoup.createListBuilder();
            int i = arrayDeque.size;
            for (int i2 = 0; i2 < i; i2++) {
                createListBuilder.add(arrayDeque.get(i2));
            }
            ListBuilder build = createListBuilder.build();
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.capacity + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            SemaphoreImpl semaphoreImpl = this.connectionPermits;
            semaphoreImpl.getClass();
            sb2.append(Math.max(SemaphoreAndMutexImpl._availablePermits$volatile$FU.get(semaphoreImpl), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + build.getSize() + ")[" + CollectionsKt.joinToString$default(build, null, null, null, null, 63) + ']');
            sb.append(")");
            sb.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.connections;
            int length = connectionWithLockArr.length;
            int i3 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i4];
                i3++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i3);
                sb3.append("] - ");
                sb3.append(connectionWithLock != null ? connectionWithLock.delegate.toString() : null);
                sb.append(sb3.toString());
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
        connectionWithLock.getClass();
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
