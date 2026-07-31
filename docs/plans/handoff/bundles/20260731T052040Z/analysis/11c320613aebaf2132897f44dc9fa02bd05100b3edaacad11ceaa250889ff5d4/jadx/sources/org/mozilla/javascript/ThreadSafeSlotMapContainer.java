package org.mozilla.javascript;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import java.util.Iterator;
import java.util.concurrent.locks.StampedLock;
import org.mozilla.javascript.SlotMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
class ThreadSafeSlotMapContainer extends SlotMapContainer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final StampedLock lock;

    public ThreadSafeSlotMapContainer() {
        this.lock = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m0m();
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public void add(Slot slot) {
        long writeLock = this.lock.writeLock();
        try {
            checkMapSize();
            this.map.add(slot);
        } finally {
            this.lock.unlockWrite(writeLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer
    public void checkMapSize() {
        super.checkMapSize();
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public <S extends Slot> S compute(Object obj, int i, SlotMap.SlotComputer<S> slotComputer) {
        long writeLock = this.lock.writeLock();
        try {
            return (S) this.map.compute(obj, i, slotComputer);
        } finally {
            this.lock.unlockWrite(writeLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer
    public int dirtySize() {
        return this.map.size();
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public boolean isEmpty() {
        long tryOptimisticRead = this.lock.tryOptimisticRead();
        boolean isEmpty = this.map.isEmpty();
        if (this.lock.validate(tryOptimisticRead)) {
            return isEmpty;
        }
        long readLock = this.lock.readLock();
        try {
            return this.map.isEmpty();
        } finally {
            this.lock.unlockRead(readLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer, java.lang.Iterable
    public Iterator<Slot> iterator() {
        return this.map.iterator();
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public Slot modify(Object obj, int i, int i2) {
        long writeLock = this.lock.writeLock();
        try {
            checkMapSize();
            return this.map.modify(obj, i, i2);
        } finally {
            this.lock.unlockWrite(writeLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public Slot query(Object obj, int i) {
        long tryOptimisticRead = this.lock.tryOptimisticRead();
        Slot query = this.map.query(obj, i);
        if (this.lock.validate(tryOptimisticRead)) {
            return query;
        }
        long readLock = this.lock.readLock();
        try {
            return this.map.query(obj, i);
        } finally {
            this.lock.unlockRead(readLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer
    public long readLock() {
        return this.lock.readLock();
    }

    @Override // org.mozilla.javascript.SlotMapContainer, org.mozilla.javascript.SlotMap
    public int size() {
        long tryOptimisticRead = this.lock.tryOptimisticRead();
        int size = this.map.size();
        if (this.lock.validate(tryOptimisticRead)) {
            return size;
        }
        long readLock = this.lock.readLock();
        try {
            return this.map.size();
        } finally {
            this.lock.unlockRead(readLock);
        }
    }

    @Override // org.mozilla.javascript.SlotMapContainer
    public void unlockRead(long j) {
        this.lock.unlockRead(j);
    }

    public ThreadSafeSlotMapContainer(int i) {
        super(i);
        this.lock = OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m0m();
    }
}
