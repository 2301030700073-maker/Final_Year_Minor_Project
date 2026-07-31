package okio;

import android.os.Process;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        IDLE_TIMEOUT_NANOS = 60000000000L;
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
                ReadingListFragment.MultiSelectCallback.insertIntoQueue(this);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Watchdog extends Thread {
        public final /* synthetic */ int $r8$classId = 1;

        public /* synthetic */ Watchdog(Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ReentrantLock reentrantLock;
            AsyncTimeout awaitTimeout;
            switch (this.$r8$classId) {
                case 0:
                    break;
                default:
                    Process.setThreadPriority(10);
                    super.run();
                    return;
            }
            while (true) {
                try {
                    reentrantLock = AsyncTimeout.lock;
                    reentrantLock.lock();
                    try {
                        awaitTimeout = ReadingListFragment.MultiSelectCallback.awaitTimeout();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    continue;
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

        public /* synthetic */ Watchdog(String str) {
            super(str);
        }
    }

    public void timedOut() {
    }
}
