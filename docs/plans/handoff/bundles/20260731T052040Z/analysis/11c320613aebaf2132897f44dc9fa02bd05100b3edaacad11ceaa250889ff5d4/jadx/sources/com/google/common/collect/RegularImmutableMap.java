package com.google.common.collect;

import com.google.common.collect.ImmutableMapEntry;
import com.google.common.collect.ImmutableMapEntrySet;
import j$.util.Objects;
import java.util.Map;
import java.util.function.BiConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RegularImmutableMap extends ImmutableMap {
    public static final RegularImmutableMap EMPTY = new RegularImmutableMap(ImmutableMap.EMPTY_ENTRY_ARRAY, null, 0);
    private static final long serialVersionUID = 0;
    public final transient Map.Entry[] entries;
    public final transient int mask;
    public final transient ImmutableMapEntry[] table;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class BucketOverflowException extends Exception {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class KeySet extends IndexedImmutableSet {
        private final RegularImmutableMap map;

        public KeySet(RegularImmutableMap regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // com.google.common.collect.IndexedImmutableSet
        public final Object get(int i) {
            return this.map.entries[i].getKey();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.map.entries.length;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Values extends ImmutableList {
        final RegularImmutableMap map;

        public Values(RegularImmutableMap regularImmutableMap) {
            this.map = regularImmutableMap;
        }

        @Override // java.util.List
        public final Object get(int i) {
            return this.map.entries[i].getValue();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.map.entries.length;
        }
    }

    public RegularImmutableMap(Map.Entry[] entryArr, ImmutableMapEntry[] immutableMapEntryArr, int i) {
        this.entries = entryArr;
        this.table = immutableMapEntryArr;
        this.mask = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
    
        if ((r2 instanceof com.google.common.collect.ImmutableMapEntry.NonTerminalImmutableMapEntry) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.common.collect.ImmutableMap fromEntryArray(int r6, java.util.Map.Entry[] r7) {
        /*
            int r0 = r7.length
            okio.Okio.checkPositionIndex(r6, r0)
            if (r6 != 0) goto L9
            com.google.common.collect.RegularImmutableMap r6 = com.google.common.collect.RegularImmutableMap.EMPTY
            return r6
        L9:
            com.google.common.collect.ImmutableMap r6 = fromEntryArrayCheckingBucketOverflow(r6, r7)     // Catch: com.google.common.collect.RegularImmutableMap.BucketOverflowException -> Le
            return r6
        Le:
            java.util.HashMap r0 = com.google.common.collect.Maps.newHashMapWithExpectedSize(r6)
            r1 = 0
        L13:
            if (r1 >= r6) goto L64
            r2 = r7[r1]
            j$.util.Objects.requireNonNull(r2)
            java.lang.Object r3 = r2.getKey()
            java.lang.Object r4 = r2.getValue()
            boolean r5 = r2 instanceof com.google.common.collect.ImmutableMapEntry
            if (r5 == 0) goto L2d
            com.google.common.collect.ImmutableMapEntry r2 = (com.google.common.collect.ImmutableMapEntry) r2
            boolean r5 = r2 instanceof com.google.common.collect.ImmutableMapEntry.NonTerminalImmutableMapEntry
            if (r5 != 0) goto L2d
            goto L32
        L2d:
            com.google.common.collect.ImmutableMapEntry r2 = new com.google.common.collect.ImmutableMapEntry
            r2.<init>(r3, r4)
        L32:
            r7[r1] = r2
            java.lang.Object r3 = r2.key
            java.lang.Object r2 = r2.getValue()
            java.lang.Object r2 = r0.put(r3, r2)
            if (r2 != 0) goto L43
            int r1 = r1 + 1
            goto L13
        L43:
            r6 = r7[r1]
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r7 = r7[r1]
            java.lang.Object r7 = r7.getKey()
            r0.append(r7)
            java.lang.String r7 = "="
            r0.append(r7)
            r0.append(r2)
            java.lang.String r7 = r0.toString()
            java.lang.IllegalArgumentException r6 = com.google.common.collect.ImmutableMap.conflictException(r6, r7)
            throw r6
        L64:
            com.google.common.collect.JdkBackedImmutableMap r1 = new com.google.common.collect.JdkBackedImmutableMap
            com.google.common.collect.ImmutableList r6 = com.google.common.collect.ImmutableList.asImmutableList(r6, r7)
            r1.<init>(r0, r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.RegularImmutableMap.fromEntryArray(int, java.util.Map$Entry[]):com.google.common.collect.ImmutableMap");
    }

    public static ImmutableMap fromEntryArrayCheckingBucketOverflow(int i, Map.Entry[] entryArr) {
        ImmutableMapEntry nonTerminalImmutableMapEntry;
        Map.Entry[] entryArr2 = i == entryArr.length ? entryArr : new ImmutableMapEntry[i];
        int max = Math.max(i, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > ((int) (1.2d * highestOneBit)) && (highestOneBit = highestOneBit << 1) <= 0) {
            highestOneBit = 1073741824;
        }
        ImmutableMapEntry[] immutableMapEntryArr = new ImmutableMapEntry[highestOneBit];
        int i2 = highestOneBit - 1;
        for (int i3 = i - 1; i3 >= 0; i3--) {
            Map.Entry entry = entryArr[i3];
            Objects.requireNonNull(entry);
            Object key = entry.getKey();
            Object value = entry.getValue();
            Maps.checkEntryNotNull(key, value);
            int smear = Maps.smear(key.hashCode()) & i2;
            ImmutableMapEntry immutableMapEntry = immutableMapEntryArr[smear];
            int i4 = 0;
            for (ImmutableMapEntry immutableMapEntry2 = immutableMapEntry; immutableMapEntry2 != null; immutableMapEntry2 = immutableMapEntry2.getNextInKeyBucket()) {
                if (immutableMapEntry2.key.equals(key)) {
                    throw ImmutableMap.conflictException(immutableMapEntry2, key + "=" + value);
                }
                i4++;
                if (i4 > 8) {
                    throw new BucketOverflowException();
                }
            }
            if (immutableMapEntry == null) {
                if (entry instanceof ImmutableMapEntry) {
                    nonTerminalImmutableMapEntry = (ImmutableMapEntry) entry;
                    if (!(nonTerminalImmutableMapEntry instanceof ImmutableMapEntry.NonTerminalImmutableMapEntry)) {
                    }
                }
                nonTerminalImmutableMapEntry = new ImmutableMapEntry(key, value);
            } else {
                nonTerminalImmutableMapEntry = new ImmutableMapEntry.NonTerminalImmutableMapEntry(key, value, immutableMapEntry);
            }
            immutableMapEntryArr[smear] = nonTerminalImmutableMapEntry;
            entryArr2[i3] = nonTerminalImmutableMapEntry;
        }
        return new RegularImmutableMap(entryArr2, immutableMapEntryArr, i2);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createEntrySet() {
        Map.Entry[] entryArr = this.entries;
        return new ImmutableMapEntrySet.RegularEntrySet(this, ImmutableList.asImmutableList(entryArr.length, entryArr));
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet createKeySet() {
        return new KeySet(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection createValues() {
        return new Values(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map, j$.util.Map
    public final void forEach(BiConsumer biConsumer) {
        biConsumer.getClass();
        for (Map.Entry entry : this.entries) {
            biConsumer.accept(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        ImmutableMapEntry[] immutableMapEntryArr;
        if (obj == null || (immutableMapEntryArr = this.table) == null) {
            return null;
        }
        for (ImmutableMapEntry immutableMapEntry = immutableMapEntryArr[this.mask & Maps.smear(obj.hashCode())]; immutableMapEntry != null; immutableMapEntry = immutableMapEntry.getNextInKeyBucket()) {
            if (obj.equals(immutableMapEntry.key)) {
                return immutableMapEntry.value;
            }
        }
        return null;
    }

    @Override // java.util.Map
    public final int size() {
        return this.entries.length;
    }
}
