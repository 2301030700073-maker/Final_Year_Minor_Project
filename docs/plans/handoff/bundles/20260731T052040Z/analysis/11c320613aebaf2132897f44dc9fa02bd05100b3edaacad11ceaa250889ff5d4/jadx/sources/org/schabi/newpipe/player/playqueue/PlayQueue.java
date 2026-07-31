package org.schabi.newpipe.player.playqueue;

import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.player.playqueue.PlayQueueEvent;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class PlayQueue implements Serializable {
    public static final /* synthetic */ int $r8$clinit = 0;
    private List<PlayQueueItem> backup;
    public transient Flowable broadcastReceiver;
    public transient boolean disposed;
    public transient PublishSubject eventBroadcast;
    private final List<PlayQueueItem> history;
    private final AtomicInteger queueIndex;
    private List<PlayQueueItem> streams;

    static {
        int i = MainActivity.$r8$clinit;
    }

    public PlayQueue(int i, List list) {
        ArrayList arrayList = new ArrayList();
        this.history = arrayList;
        this.disposed = false;
        ArrayList arrayList2 = new ArrayList(list);
        this.streams = arrayList2;
        if (arrayList2.size() > i) {
            arrayList.add(this.streams.get(i));
        }
        this.queueIndex = new AtomicInteger(i);
    }

    public final synchronized void append(List list) {
        try {
            ArrayList arrayList = new ArrayList(list);
            if (isShuffled()) {
                this.backup.addAll(arrayList);
                Collections.shuffle(arrayList);
            }
            if (!this.streams.isEmpty()) {
                if (this.streams.get(r3.size() - 1).isAutoQueued() && !((PlayQueueItem) arrayList.get(0)).isAutoQueued()) {
                    this.streams.remove(r3.size() - 1);
                }
            }
            this.streams.addAll(arrayList);
            broadcast(new PlayQueueEvent.AppendEvent(arrayList.size()));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void broadcast(PlayQueueEvent playQueueEvent) {
        PublishSubject publishSubject = this.eventBroadcast;
        if (publishSubject != null) {
            publishSubject.onNext(playQueueEvent);
        }
    }

    public void dispose() {
        PublishSubject publishSubject = this.eventBroadcast;
        if (publishSubject != null) {
            publishSubject.onComplete();
        }
        this.eventBroadcast = null;
        this.broadcastReceiver = null;
        this.disposed = true;
    }

    public final void enqueueNext(PlayQueueItem playQueueItem, boolean z) {
        int i = this.queueIndex.get();
        if (z && playQueueItem.isSameItem(getItem(i + 1))) {
            return;
        }
        Object[] objArr = {playQueueItem};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        append(DesugarCollections.unmodifiableList(arrayList));
        move(this.streams.size() - 1, i + 1);
    }

    public final boolean equalStreams(PlayQueue playQueue) {
        if (playQueue == null || this.streams.size() != playQueue.streams.size()) {
            return false;
        }
        for (int i = 0; i < this.streams.size(); i++) {
            if (!this.streams.get(i).isSameItem(playQueue.streams.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equalStreamsAndIndex(PlayQueue playQueue) {
        return equalStreams(playQueue) && playQueue.queueIndex.get() == this.queueIndex.get();
    }

    public final synchronized void error() {
        try {
            int i = this.queueIndex.get();
            this.queueIndex.incrementAndGet();
            if (this.streams.size() > this.queueIndex.get()) {
                this.history.add(this.streams.get(this.queueIndex.get()));
            }
            broadcast(new PlayQueueEvent.ErrorEvent(i, this.queueIndex.get()));
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void fetch();

    public final int getIndex() {
        return this.queueIndex.get();
    }

    public final PlayQueueItem getItem(int i) {
        if (i < 0 || i >= this.streams.size()) {
            return null;
        }
        return this.streams.get(i);
    }

    public final List getStreams() {
        return DesugarCollections.unmodifiableList(this.streams);
    }

    public final int indexOf(PlayQueueItem playQueueItem) {
        return this.streams.indexOf(playQueueItem);
    }

    public abstract boolean isComplete();

    public final boolean isEmpty() {
        return this.streams.isEmpty();
    }

    public final boolean isShuffled() {
        return this.backup != null;
    }

    public final synchronized void move(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return;
        }
        try {
            if (i < this.streams.size() && i2 < this.streams.size()) {
                int i3 = this.queueIndex.get();
                if (i == i3) {
                    this.queueIndex.set(i2);
                } else if (i < i3 && i2 >= i3) {
                    this.queueIndex.decrementAndGet();
                } else if (i > i3 && i2 <= i3) {
                    this.queueIndex.incrementAndGet();
                }
                PlayQueueItem remove = this.streams.remove(i);
                remove.setAutoQueued(false);
                this.streams.add(i2, remove);
                broadcast(new PlayQueueEvent.MoveEvent(i, i2));
            }
        } finally {
        }
    }

    public final synchronized void offsetIndex(int i) {
        setIndex(this.queueIndex.get() + i);
    }

    public final synchronized boolean previous() {
        if (this.history.size() <= 1) {
            return false;
        }
        List<PlayQueueItem> list = this.history;
        list.remove(list.size() - 1);
        List<PlayQueueItem> list2 = this.history;
        setIndex(this.streams.indexOf(list2.remove(list2.size() - 1)));
        return true;
    }

    public final synchronized void remove(int i) {
        if (i < this.streams.size() && i >= 0) {
            removeInternal(i);
            broadcast(new PlayQueueEvent.RemoveEvent(i, this.queueIndex.get()));
        }
    }

    public final synchronized void removeInternal(int i) {
        try {
            int i2 = this.queueIndex.get();
            int size = this.streams.size();
            if (i2 > i) {
                this.queueIndex.decrementAndGet();
            } else if (i2 >= size) {
                this.queueIndex.set(i2 % (size - 1));
            } else if (i2 == i && i2 == size - 1) {
                this.queueIndex.set(0);
            }
            List<PlayQueueItem> list = this.backup;
            if (list != null) {
                list.remove(getItem(i));
            }
            this.history.remove(this.streams.remove(i));
            if (this.streams.size() > this.queueIndex.get()) {
                this.history.add(this.streams.get(this.queueIndex.get()));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x003b A[Catch: all -> 0x002c, TryCatch #0 {all -> 0x002c, blocks: (B:3:0x0001, B:6:0x0034, B:8:0x003b, B:9:0x0048, B:14:0x000c, B:17:0x0015, B:20:0x001e, B:23:0x0026, B:24:0x002e), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void setIndex(int r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            java.util.concurrent.atomic.AtomicInteger r0 = r3.queueIndex     // Catch: java.lang.Throwable -> L2c
            int r0 = r0.get()     // Catch: java.lang.Throwable -> L2c
            r1 = 0
            if (r4 >= 0) goto Lc
        La:
            r4 = r1
            goto L34
        Lc:
            java.util.List<org.schabi.newpipe.player.playqueue.PlayQueueItem> r2 = r3.streams     // Catch: java.lang.Throwable -> L2c
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L2c
            if (r4 >= r2) goto L15
            goto L34
        L15:
            java.util.List<org.schabi.newpipe.player.playqueue.PlayQueueItem> r2 = r3.streams     // Catch: java.lang.Throwable -> L2c
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L1e
            goto La
        L1e:
            boolean r1 = r3.isComplete()     // Catch: java.lang.Throwable -> L2c
            java.util.List<org.schabi.newpipe.player.playqueue.PlayQueueItem> r2 = r3.streams
            if (r1 == 0) goto L2e
            int r1 = r2.size()     // Catch: java.lang.Throwable -> L2c
            int r4 = r4 % r1
            goto L34
        L2c:
            r4 = move-exception
            goto L52
        L2e:
            int r4 = r2.size()     // Catch: java.lang.Throwable -> L2c
            int r4 = r4 + (-1)
        L34:
            java.util.concurrent.atomic.AtomicInteger r1 = r3.queueIndex     // Catch: java.lang.Throwable -> L2c
            r1.set(r4)     // Catch: java.lang.Throwable -> L2c
            if (r0 == r4) goto L48
            java.util.List<org.schabi.newpipe.player.playqueue.PlayQueueItem> r1 = r3.history     // Catch: java.lang.Throwable -> L2c
            java.util.List<org.schabi.newpipe.player.playqueue.PlayQueueItem> r2 = r3.streams     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r2 = r2.get(r4)     // Catch: java.lang.Throwable -> L2c
            org.schabi.newpipe.player.playqueue.PlayQueueItem r2 = (org.schabi.newpipe.player.playqueue.PlayQueueItem) r2     // Catch: java.lang.Throwable -> L2c
            r1.add(r2)     // Catch: java.lang.Throwable -> L2c
        L48:
            org.schabi.newpipe.player.playqueue.PlayQueueEvent$SelectEvent r1 = new org.schabi.newpipe.player.playqueue.PlayQueueEvent$SelectEvent     // Catch: java.lang.Throwable -> L2c
            r1.<init>(r0, r4)     // Catch: java.lang.Throwable -> L2c
            r3.broadcast(r1)     // Catch: java.lang.Throwable -> L2c
            monitor-exit(r3)
            return
        L52:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2c
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.playqueue.PlayQueue.setIndex(int):void");
    }

    public final synchronized void setRecovery(int i, long j) {
        if (i >= 0) {
            if (i < this.streams.size()) {
                this.streams.get(i).setRecoveryPosition(j);
                broadcast(new PlayQueueEvent.RecoveryEvent(i, j));
            }
        }
    }

    public final synchronized void shuffle() {
        try {
            if (this.backup == null) {
                this.backup = new ArrayList(this.streams);
            }
            if (this.streams.size() <= 2) {
                return;
            }
            int i = this.queueIndex.get();
            PlayQueueItem item = getItem();
            Collections.shuffle(this.streams);
            this.streams.remove(item);
            this.streams.add(0, item);
            this.queueIndex.set(0);
            this.history.add(item);
            broadcast(new PlayQueueEvent.ReorderEvent(i, 0));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int size() {
        return this.streams.size();
    }

    public final synchronized void unshuffle() {
        try {
            if (this.backup == null) {
                return;
            }
            int i = this.queueIndex.get();
            PlayQueueItem item = getItem();
            List<PlayQueueItem> list = this.backup;
            this.streams = list;
            this.backup = null;
            int indexOf = list.indexOf(item);
            AtomicInteger atomicInteger = this.queueIndex;
            if (indexOf != -1) {
                atomicInteger.set(indexOf);
            } else {
                atomicInteger.set(0);
            }
            if (this.streams.size() > this.queueIndex.get()) {
                this.history.add(this.streams.get(this.queueIndex.get()));
            }
            broadcast(new PlayQueueEvent.ReorderEvent(i, this.queueIndex.get()));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final PlayQueueItem getItem() {
        return getItem(this.queueIndex.get());
    }
}
