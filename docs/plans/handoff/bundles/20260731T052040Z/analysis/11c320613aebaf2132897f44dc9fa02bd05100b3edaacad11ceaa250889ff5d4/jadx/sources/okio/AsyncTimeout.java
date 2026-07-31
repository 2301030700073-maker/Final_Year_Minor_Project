package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class AsyncTimeout extends Timeout {
    public static final long IDLE_TIMEOUT_MILLIS;
    public static final long IDLE_TIMEOUT_NANOS;
    public static final Condition condition;
    public static AsyncTimeout idleSentinel;
    public static final ReentrantLock lock;
    public static final PriorityQueue queue;
    public int index = -1;
    public int state;
    public long timeoutAt;

    static {
        char c = 0;
        PriorityQueue priorityQueue = new PriorityQueue(c, c);
        priorityQueue.array = new AsyncTimeout[8];
        queue = priorityQueue;
        ReentrantLock reentrantLock = new ReentrantLock();
        lock = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        newCondition.getClass();
        condition = newCondition;
        IDLE_TIMEOUT_MILLIS = 60000L;
        IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    public final void enter() {
        long j = this.timeoutNanos;
        boolean z = this.hasDeadline;
        if (j != 0 || z) {
            ReentrantLock reentrantLock = lock;
            reentrantLock.lock();
            try {
                if (this.state != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.state = 1;
                Path.Companion.access$insertIntoQueue(this);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    public final boolean exit() {
        ReentrantLock reentrantLock = lock;
        reentrantLock.lock();
        try {
            int i = this.state;
            this.state = 0;
            if (i != 1) {
                return i == 2;
            }
            queue.remove(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException newTimeoutException(IOException iOException) {
        throw null;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Watchdog extends Thread {
        public final /* synthetic */ int $r8$classId = 0;

        public /* synthetic */ Watchdog(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock reentrantLock;
            AsyncTimeout awaitTimeout;
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    super.run();
                    return;
            }
            while (true) {
                try {
                    PriorityQueue priorityQueue = AsyncTimeout.queue;
                    reentrantLock = AsyncTimeout.lock;
                    reentrantLock.lock();
                    try {
                        awaitTimeout = Path.Companion.awaitTimeout();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                }
                if (awaitTimeout == AsyncTimeout.idleSentinel) {
                    AsyncTimeout.idleSentinel = null;
                    reentrantLock.unlock();
                    return;
                } else {
                    reentrantLock.unlock();
                    if (awaitTimeout != null) {
                        awaitTimeout.timedOut();
                    }
                }
            }
        }

        public /* synthetic */ Watchdog(String str, Runnable runnable) {
            super(runnable, str);
        }
    }

    public void timedOut() {
    }
}
