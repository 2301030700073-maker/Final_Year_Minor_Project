package androidx.arch.core.internal;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SafeIterableMap implements Iterable {
    public Entry mEnd;
    public final WeakHashMap mIterators = new WeakHashMap();
    public int mSize = 0;
    public Entry mStart;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AscendingIterator extends SupportRemove implements Iterator {
        public Entry mExpectedEnd;
        public Entry mNext;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mNext != null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Entry entry = this.mNext;
            Entry entry2 = this.mExpectedEnd;
            this.mNext = (entry == entry2 || entry2 == null) ? null : entry.mNext;
            return entry;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void supportRemove(Entry entry) {
            Entry entry2 = null;
            if (this.mExpectedEnd == entry && entry == this.mNext) {
                this.mNext = null;
                this.mExpectedEnd = null;
            }
            Entry entry3 = this.mExpectedEnd;
            if (entry3 == entry) {
                this.mExpectedEnd = entry3.mPrevious;
            }
            Entry entry4 = this.mNext;
            if (entry4 == entry) {
                Entry entry5 = this.mExpectedEnd;
                if (entry4 != entry5 && entry5 != null) {
                    entry2 = entry4.mNext;
                }
                this.mNext = entry2;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Entry implements Map.Entry {
        public final Object mKey;
        public Entry mNext;
        public Entry mPrevious;
        public final LiveData.ObserverWrapper mValue;

        public Entry(Object obj, LiveData.ObserverWrapper observerWrapper) {
            this.mKey = obj;
            this.mValue = observerWrapper;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.mKey.equals(entry.mKey) && this.mValue.equals(entry.mValue);
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.mKey;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.mValue;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.mValue.hashCode() ^ this.mKey.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.mKey + "=" + this.mValue;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class IteratorWithAdditions extends SupportRemove implements Iterator {
        public boolean mBeforeStart = true;
        public Entry mCurrent;

        public IteratorWithAdditions() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.mBeforeStart) {
                return SafeIterableMap.this.mStart != null;
            }
            Entry entry = this.mCurrent;
            return (entry == null || entry.mNext == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (this.mBeforeStart) {
                this.mBeforeStart = false;
                this.mCurrent = SafeIterableMap.this.mStart;
            } else {
                Entry entry = this.mCurrent;
                this.mCurrent = entry != null ? entry.mNext : null;
            }
            return this.mCurrent;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void supportRemove(Entry entry) {
            Entry entry2 = this.mCurrent;
            if (entry == entry2) {
                Entry entry3 = entry2.mPrevious;
                this.mCurrent = entry3;
                this.mBeforeStart = entry3 == null;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SupportRemove {
        public abstract void supportRemove(Entry entry);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r1.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((androidx.arch.core.internal.SafeIterableMap.AscendingIterator) r6).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof androidx.arch.core.internal.SafeIterableMap
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            androidx.arch.core.internal.SafeIterableMap r6 = (androidx.arch.core.internal.SafeIterableMap) r6
            int r1 = r5.mSize
            int r3 = r6.mSize
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            androidx.arch.core.internal.SafeIterableMap$AscendingIterator r1 = (androidx.arch.core.internal.SafeIterableMap.AscendingIterator) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            androidx.arch.core.internal.SafeIterableMap$AscendingIterator r3 = (androidx.arch.core.internal.SafeIterableMap.AscendingIterator) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            androidx.arch.core.internal.SafeIterableMap$AscendingIterator r6 = (androidx.arch.core.internal.SafeIterableMap.AscendingIterator) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            return r0
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.arch.core.internal.SafeIterableMap.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            AscendingIterator ascendingIterator = (AscendingIterator) it;
            if (!ascendingIterator.hasNext()) {
                return i;
            }
            i += ((Map.Entry) ascendingIterator.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Entry entry = this.mStart;
        Entry entry2 = this.mEnd;
        AscendingIterator ascendingIterator = new AscendingIterator();
        ascendingIterator.mExpectedEnd = entry2;
        ascendingIterator.mNext = entry;
        this.mIterators.put(ascendingIterator, Boolean.FALSE);
        return ascendingIterator;
    }

    public final Object putIfAbsent(Observer observer, LiveData.ObserverWrapper observerWrapper) {
        Entry entry = this.mStart;
        while (entry != null && !entry.mKey.equals(observer)) {
            entry = entry.mNext;
        }
        if (entry != null) {
            return entry.mValue;
        }
        Entry entry2 = new Entry(observer, observerWrapper);
        this.mSize++;
        Entry entry3 = this.mEnd;
        if (entry3 == null) {
            this.mStart = entry2;
            this.mEnd = entry2;
            return null;
        }
        entry3.mNext = entry2;
        entry2.mPrevious = entry3;
        this.mEnd = entry2;
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            AscendingIterator ascendingIterator = (AscendingIterator) it;
            if (!ascendingIterator.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) ascendingIterator.next()).toString());
            if (ascendingIterator.hasNext()) {
                sb.append(", ");
            }
        }
    }
}
