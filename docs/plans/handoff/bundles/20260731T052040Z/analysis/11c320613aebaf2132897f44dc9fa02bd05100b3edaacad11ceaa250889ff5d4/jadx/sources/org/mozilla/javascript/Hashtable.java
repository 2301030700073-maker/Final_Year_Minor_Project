package org.mozilla.javascript;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.Iterator$EL;
import j$.util.Map;
import j$.util.function.BiFunction$CC;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.function.BiFunction;
import org.mozilla.javascript.Hashtable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Hashtable implements Serializable, Iterable<Entry> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long serialVersionUID = -7151554912419543747L;
    private final HashMap<Object, Entry> map = new HashMap<>();
    private Entry first = null;
    private Entry last = null;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Iter implements Iterator<Entry> {
        private Entry pos;

        public Iter(Entry entry) {
            Entry makeDummy = Hashtable.makeDummy();
            makeDummy.next = entry;
            this.pos = makeDummy;
        }

        private void skipDeleted() {
            while (true) {
                Entry entry = this.pos.next;
                if (entry == null || !entry.deleted) {
                    return;
                } else {
                    this.pos = entry;
                }
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            skipDeleted();
            Entry entry = this.pos;
            return (entry == null || entry.next == null) ? false : true;
        }

        @Override // java.util.Iterator
        public Entry next() {
            Entry entry;
            skipDeleted();
            Entry entry2 = this.pos;
            if (entry2 == null || (entry = entry2.next) == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            }
            this.pos = entry;
            return entry;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Entry lambda$put$0(Entry entry, Object obj, Object obj2, Entry entry2) {
        if (entry2 != null) {
            entry2.value = obj;
            return entry2;
        }
        if (this.first == null) {
            this.last = entry;
            this.first = entry;
            return entry;
        }
        Entry entry3 = this.last;
        entry3.next = entry;
        entry.prev = entry3;
        this.last = entry;
        return entry;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Entry makeDummy() {
        Entry entry = new Entry();
        entry.clear();
        return entry;
    }

    public void clear() {
        Iterator$EL.forEachRemaining(iterator(), new Hashtable$$ExternalSyntheticLambda0());
        if (this.first != null) {
            Entry makeDummy = makeDummy();
            this.last.next = makeDummy;
            this.last = makeDummy;
            this.first = makeDummy;
        }
        this.map.clear();
    }

    @Deprecated
    public Object delete(Object obj) {
        Entry remove = this.map.remove(new Entry(obj, null));
        if (remove == null) {
            return null;
        }
        if (remove != this.first) {
            Entry entry = remove.prev;
            entry.next = remove.next;
            remove.prev = null;
            Entry entry2 = remove.next;
            if (entry2 != null) {
                entry2.prev = entry;
            } else {
                this.last = entry;
            }
        } else if (remove == this.last) {
            remove.clear();
            remove.prev = null;
        } else {
            Entry entry3 = remove.next;
            this.first = entry3;
            entry3.prev = null;
            Entry entry4 = entry3.next;
            if (entry4 != null) {
                entry4.prev = entry3;
            }
        }
        Object obj2 = remove.value;
        remove.clear();
        return obj2;
    }

    public boolean deleteEntry(Object obj) {
        Entry remove = this.map.remove(new Entry(obj, null));
        if (remove == null) {
            return false;
        }
        if (remove != this.first) {
            Entry entry = remove.prev;
            entry.next = remove.next;
            remove.prev = null;
            Entry entry2 = remove.next;
            if (entry2 != null) {
                entry2.prev = entry;
            } else {
                this.last = entry;
            }
        } else if (remove == this.last) {
            remove.clear();
            remove.prev = null;
        } else {
            Entry entry3 = remove.next;
            this.first = entry3;
            entry3.prev = null;
            Entry entry4 = entry3.next;
            if (entry4 != null) {
                entry4.prev = entry3;
            }
        }
        remove.clear();
        return true;
    }

    @Deprecated
    public Object get(Object obj) {
        Entry entry = this.map.get(new Entry(obj, null));
        if (entry == null) {
            return null;
        }
        return entry.value;
    }

    public Entry getEntry(Object obj) {
        return this.map.get(new Entry(obj, null));
    }

    public boolean has(Object obj) {
        return this.map.containsKey(new Entry(obj, null));
    }

    @Override // java.lang.Iterable
    public Iterator<Entry> iterator() {
        return new Iter(this.first);
    }

    public void put(Object obj, final Object obj2) {
        final Entry entry = new Entry(obj, obj2);
        Map.EL.compute(this.map, entry, new BiFunction() { // from class: org.mozilla.javascript.Hashtable$$ExternalSyntheticLambda1
            public /* synthetic */ BiFunction andThen(java.util.function.Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj3, Object obj4) {
                Hashtable.Entry lambda$put$0;
                lambda$put$0 = Hashtable.this.lambda$put$0(entry, obj2, obj3, (Hashtable.Entry) obj4);
                return lambda$put$0;
            }
        });
    }

    public int size() {
        return this.map.size();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Entry implements Serializable {
        private static final long serialVersionUID = 4086572107122965503L;
        boolean deleted;
        final int hashCode;
        Object key;
        Entry next;
        Entry prev;
        Object value;

        public Entry(Object obj, Object obj2) {
            if (obj instanceof Number) {
                if ((obj instanceof Double) || (obj instanceof BigInteger)) {
                    this.key = obj;
                } else {
                    this.key = Double.valueOf(((Number) obj).doubleValue());
                }
            } else if (obj instanceof ConsString) {
                this.key = obj.toString();
            } else {
                this.key = obj;
            }
            if (this.key == null) {
                this.hashCode = 0;
            } else if (obj.equals(ScriptRuntime.negativeZeroObj)) {
                this.hashCode = 0;
            } else {
                this.hashCode = this.key.hashCode();
            }
            this.value = obj2;
        }

        public void clear() {
            Object obj = Undefined.instance;
            this.key = obj;
            this.value = obj;
            this.deleted = true;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ScriptRuntime.sameZero(this.key, ((Entry) obj).key);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        public int hashCode() {
            return this.hashCode;
        }

        public Object key() {
            return this.key;
        }

        public Object value() {
            return this.value;
        }

        public Entry() {
            this.hashCode = 0;
        }
    }
}
