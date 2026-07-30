package com.facebook.internal;

import com.facebook.internal.WorkQueue;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3206kJ;
import defpackage.C3344mh;
import defpackage.C3756th;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class WorkQueue {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkNode pendingJobs;
    private int runningCount;
    private WorkNode runningJobs;
    private final ReentrantLock workLock;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: assert, reason: not valid java name */
        public final void m5449assert(boolean z) {
            if (!z) {
                throw new C3344mh("Validation failed");
            }
        }
    }

    public interface WorkItem {
        boolean cancel();

        boolean isRunning();

        void moveToFront();
    }

    public final class WorkNode implements WorkItem {
        private final Runnable callback;
        private boolean isRunning;
        private WorkNode next;
        private WorkNode prev;
        final /* synthetic */ WorkQueue this$0;

        public WorkNode(WorkQueue workQueue, Runnable runnable) {
            C0173Do.m401try(workQueue, "this$0");
            C0173Do.m401try(runnable, "callback");
            this.this$0 = workQueue;
            this.callback = runnable;
        }

        public final WorkNode addToList(WorkNode workNode, boolean z) {
            Companion companion = WorkQueue.Companion;
            companion.m5449assert(this.next == null);
            companion.m5449assert(this.prev == null);
            if (workNode == null) {
                this.prev = this;
                this.next = this;
                workNode = this;
            } else {
                this.next = workNode;
                WorkNode workNode2 = workNode.prev;
                this.prev = workNode2;
                if (workNode2 != null) {
                    workNode2.next = this;
                }
                WorkNode workNode3 = this.next;
                if (workNode3 != null) {
                    workNode3.prev = workNode2 == null ? null : workNode2.next;
                }
            }
            return z ? this : workNode;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean cancel() {
            ReentrantLock reentrantLock = this.this$0.workLock;
            WorkQueue workQueue = this.this$0;
            reentrantLock.lock();
            try {
                if (isRunning()) {
                    C3206kJ c3206kJ = C3206kJ.f13965do;
                    reentrantLock.unlock();
                    return false;
                }
                workQueue.pendingJobs = removeFromList(workQueue.pendingJobs);
                reentrantLock.unlock();
                return true;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        public final Runnable getCallback() {
            return this.callback;
        }

        public final WorkNode getNext() {
            return this.next;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean isRunning() {
            return this.isRunning;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public void moveToFront() {
            ReentrantLock reentrantLock = this.this$0.workLock;
            WorkQueue workQueue = this.this$0;
            reentrantLock.lock();
            try {
                if (!isRunning()) {
                    workQueue.pendingJobs = removeFromList(workQueue.pendingJobs);
                    workQueue.pendingJobs = addToList(workQueue.pendingJobs, true);
                }
                C3206kJ c3206kJ = C3206kJ.f13965do;
            } finally {
                reentrantLock.unlock();
            }
        }

        public final WorkNode removeFromList(WorkNode workNode) {
            Companion companion = WorkQueue.Companion;
            companion.m5449assert(this.next != null);
            companion.m5449assert(this.prev != null);
            if (workNode == this && (workNode = this.next) == this) {
                workNode = null;
            }
            WorkNode workNode2 = this.next;
            if (workNode2 != null) {
                workNode2.prev = this.prev;
            }
            WorkNode workNode3 = this.prev;
            if (workNode3 != null) {
                workNode3.next = workNode2;
            }
            this.prev = null;
            this.next = null;
            return workNode;
        }

        public void setRunning(boolean z) {
            this.isRunning = z;
        }

        public final void verify(boolean z) {
            WorkNode workNode;
            WorkNode workNode2;
            Companion companion = WorkQueue.Companion;
            WorkNode workNode3 = this.prev;
            if (workNode3 == null || (workNode = workNode3.next) == null) {
                workNode = this;
            }
            companion.m5449assert(workNode == this);
            WorkNode workNode4 = this.next;
            if (workNode4 == null || (workNode2 = workNode4.prev) == null) {
                workNode2 = this;
            }
            companion.m5449assert(workNode2 == this);
            companion.m5449assert(isRunning() == z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WorkQueue() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WorkQueue(int i) {
        this(i, null, 2, 0 == true ? 1 : 0);
    }

    public WorkQueue(int i, Executor executor) {
        C0173Do.m401try(executor, "executor");
        this.maxConcurrent = i;
        this.executor = executor;
        this.workLock = new ReentrantLock();
    }

    public static /* synthetic */ WorkItem addActiveWorkItem$default(WorkQueue workQueue, Runnable runnable, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return workQueue.addActiveWorkItem(runnable, z);
    }

    private final void execute(final WorkNode workNode) {
        this.executor.execute(new Runnable() { // from class: com.facebook.internal.new
            @Override // java.lang.Runnable
            public final void run() {
                WorkQueue.m5448execute$lambda2(WorkQueue.WorkNode.this, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: execute$lambda-2, reason: not valid java name */
    public static final void m5448execute$lambda2(WorkNode workNode, WorkQueue workQueue) {
        C0173Do.m401try(workNode, "$node");
        C0173Do.m401try(workQueue, "this$0");
        try {
            workNode.getCallback().run();
        } finally {
            workQueue.finishItemAndStartNew(workNode);
        }
    }

    private final void finishItemAndStartNew(WorkNode workNode) {
        WorkNode workNode2;
        this.workLock.lock();
        if (workNode != null) {
            this.runningJobs = workNode.removeFromList(this.runningJobs);
            this.runningCount--;
        }
        if (this.runningCount < this.maxConcurrent) {
            workNode2 = this.pendingJobs;
            if (workNode2 != null) {
                this.pendingJobs = workNode2.removeFromList(workNode2);
                this.runningJobs = workNode2.addToList(this.runningJobs, false);
                this.runningCount++;
                workNode2.setRunning(true);
            }
        } else {
            workNode2 = null;
        }
        this.workLock.unlock();
        if (workNode2 != null) {
            execute(workNode2);
        }
    }

    private final void startItem() {
        finishItemAndStartNew(null);
    }

    public final WorkItem addActiveWorkItem(Runnable runnable) {
        C0173Do.m401try(runnable, "callback");
        return addActiveWorkItem$default(this, runnable, false, 2, null);
    }

    public final WorkItem addActiveWorkItem(Runnable runnable, boolean z) {
        C0173Do.m401try(runnable, "callback");
        WorkNode workNode = new WorkNode(this, runnable);
        ReentrantLock reentrantLock = this.workLock;
        reentrantLock.lock();
        try {
            this.pendingJobs = workNode.addToList(this.pendingJobs, z);
            C3206kJ c3206kJ = C3206kJ.f13965do;
            reentrantLock.unlock();
            startItem();
            return workNode;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void validate() {
        ReentrantLock reentrantLock = this.workLock;
        reentrantLock.lock();
        try {
            WorkNode workNode = this.runningJobs;
            int i = 0;
            if (workNode != null) {
                while (workNode != null) {
                    workNode.verify(true);
                    i++;
                    workNode = workNode.getNext();
                    if (workNode == this.runningJobs) {
                    }
                }
                throw new IllegalStateException("Required value was null.".toString());
            }
            Companion.m5449assert(this.runningCount == i);
            C3206kJ c3206kJ = C3206kJ.f13965do;
        } finally {
            reentrantLock.unlock();
        }
    }

    public /* synthetic */ WorkQueue(int i, Executor executor, int i2, C2819gd c2819gd) {
        this((i2 & 1) != 0 ? 8 : i, (i2 & 2) != 0 ? C3756th.m8304new() : executor);
    }
}
