package androidx.room.coroutines;

import androidx.collection.CircularArray;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pool {
    public final CircularArray availableConnections;
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
        CircularArray circularArray = new CircularArray(0);
        if (i < 1) {
            UriKt$$ExternalSyntheticBUOutline0.m("capacity must be >= 1");
            throw null;
        }
        if (i > 1073741824) {
            UriKt$$ExternalSyntheticBUOutline0.m("capacity must be <= 2^30");
            throw null;
        }
        i = Integer.bitCount(i) != 1 ? Integer.highestOneBit(i - 1) << 1 : i;
        circularArray.capacityBitmask = i - 1;
        circularArray.elements = new Object[i];
        this.availableConnections = circularArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:13:0x0047, B:15:0x004b, B:17:0x0051, B:20:0x0058, B:21:0x0072, B:23:0x0078, B:27:0x0090, B:28:0x0095, B:29:0x0096, B:30:0x009d), top: B:12:0x0047, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0096 A[Catch: all -> 0x008e, TryCatch #1 {all -> 0x008e, blocks: (B:13:0x0047, B:15:0x004b, B:17:0x0051, B:20:0x0058, B:21:0x0072, B:23:0x0078, B:27:0x0090, B:28:0x0095, B:29:0x0096, B:30:0x009d), top: B:12:0x0047, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object acquire(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof androidx.room.coroutines.Pool$acquire$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.room.coroutines.Pool$acquire$1 r0 = (androidx.room.coroutines.Pool$acquire$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.coroutines.Pool$acquire$1 r0 = new androidx.room.coroutines.Pool$acquire$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            androidx.room.coroutines.Pool r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L40
        L28:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r7
            r0.label = r3
            kotlinx.coroutines.sync.SemaphoreImpl r8 = r7.connectionPermits
            java.lang.Object r8 = r8.acquire(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r0) goto L40
            return r0
        L40:
            java.util.concurrent.locks.ReentrantLock r8 = r7.lock     // Catch: java.lang.Throwable -> L8c
            androidx.collection.CircularArray r0 = r7.availableConnections     // Catch: java.lang.Throwable -> L8c
            r8.lock()     // Catch: java.lang.Throwable -> L8c
            boolean r1 = r7.isClosed     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L96
            int r1 = r0.head     // Catch: java.lang.Throwable -> L8e
            int r4 = r0.tail     // Catch: java.lang.Throwable -> L8e
            if (r1 != r4) goto L72
            int r1 = r7.size     // Catch: java.lang.Throwable -> L8e
            int r4 = r7.capacity     // Catch: java.lang.Throwable -> L8e
            if (r1 < r4) goto L58
            goto L72
        L58:
            androidx.room.coroutines.ConnectionWithLock r1 = new androidx.room.coroutines.ConnectionWithLock     // Catch: java.lang.Throwable -> L8e
            kotlin.jvm.functions.Function0 r4 = r7.connectionFactory     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r4 = r4.invoke()     // Catch: java.lang.Throwable -> L8e
            androidx.sqlite.SQLiteConnection r4 = (androidx.sqlite.SQLiteConnection) r4     // Catch: java.lang.Throwable -> L8e
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L8e
            androidx.room.coroutines.ConnectionWithLock[] r4 = r7.connections     // Catch: java.lang.Throwable -> L8e
            int r5 = r7.size     // Catch: java.lang.Throwable -> L8e
            int r6 = r5 + 1
            r7.size = r6     // Catch: java.lang.Throwable -> L8e
            r4[r5] = r1     // Catch: java.lang.Throwable -> L8e
            r0.addLast(r1)     // Catch: java.lang.Throwable -> L8e
        L72:
            int r1 = r0.head     // Catch: java.lang.Throwable -> L8e
            int r4 = r0.tail     // Catch: java.lang.Throwable -> L8e
            if (r1 == r4) goto L90
            java.lang.Object r4 = r0.elements     // Catch: java.lang.Throwable -> L8e
            java.lang.Object[] r4 = (java.lang.Object[]) r4     // Catch: java.lang.Throwable -> L8e
            r5 = r4[r1]     // Catch: java.lang.Throwable -> L8e
            r4[r1] = r2     // Catch: java.lang.Throwable -> L8e
            int r1 = r1 + r3
            int r2 = r0.capacityBitmask     // Catch: java.lang.Throwable -> L8e
            r1 = r1 & r2
            r0.head = r1     // Catch: java.lang.Throwable -> L8e
            androidx.room.coroutines.ConnectionWithLock r5 = (androidx.room.coroutines.ConnectionWithLock) r5     // Catch: java.lang.Throwable -> L8e
            r8.unlock()     // Catch: java.lang.Throwable -> L8c
            return r5
        L8c:
            r8 = move-exception
            goto La2
        L8e:
            r0 = move-exception
            goto L9e
        L90:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L8e
            r0.<init>()     // Catch: java.lang.Throwable -> L8e
            throw r0     // Catch: java.lang.Throwable -> L8e
        L96:
            java.lang.String r0 = "Connection pool is closed"
            r1 = 21
            androidx.sqlite.SQLite.throwSQLiteException(r0, r1)     // Catch: java.lang.Throwable -> L8e
            throw r2     // Catch: java.lang.Throwable -> L8e
        L9e:
            r8.unlock()     // Catch: java.lang.Throwable -> L8c
            throw r0     // Catch: java.lang.Throwable -> L8c
        La2:
            kotlinx.coroutines.sync.SemaphoreImpl r7 = r7.connectionPermits
            r7.release()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.Pool.acquire(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
        CircularArray circularArray = this.availableConnections;
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
            int i = (circularArray.tail - circularArray.head) & circularArray.capacityBitmask;
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 >= 0) {
                    int i3 = circularArray.tail;
                    int i4 = circularArray.head;
                    int i5 = circularArray.capacityBitmask;
                    if (i2 < ((i3 - i4) & i5)) {
                        Object obj = ((Object[]) circularArray.elements)[(i4 + i2) & i5];
                        obj.getClass();
                        createListBuilder.add(obj);
                    }
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            ListBuilder build = IntOffsetKt.build(createListBuilder);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.capacity + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            SemaphoreImpl semaphoreImpl = this.connectionPermits;
            semaphoreImpl.getClass();
            sb2.append(Math.max(SemaphoreAndMutexImpl._availablePermits$volatile$FU.get(semaphoreImpl), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + build.getSize() + ")[" + CollectionsKt.joinToString$default(build, null, null, null, null, 63) + "], ");
            sb.append(")");
            sb.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.connections;
            int length = connectionWithLockArr.length;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i7];
                i6++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i6);
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
