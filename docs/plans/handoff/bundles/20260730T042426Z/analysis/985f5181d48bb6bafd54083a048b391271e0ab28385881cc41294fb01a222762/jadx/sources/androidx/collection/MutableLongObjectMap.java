package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.ULong;
import kotlin.collections.ArraysKt;

/* compiled from: LongObjectMap.kt */
/* loaded from: classes.dex */
public final class MutableLongObjectMap extends LongObjectMap {
    private int growthLimit;

    public MutableLongObjectMap(int i) {
        super(null);
        if (!(i >= 0)) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(i));
    }

    private final void initializeStorage(int i) {
        int max = i > 0 ? Math.max(7, ScatterMapKt.normalizeCapacity(i)) : 0;
        this._capacity = max;
        initializeMetadata(max);
        this.keys = new long[max];
        this.values = new Object[max];
    }

    private final void initializeMetadata(int i) {
        long[] jArr;
        if (i == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            jArr = new long[((i + 15) & (-8)) >> 3];
            ArraysKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
        }
        this.metadata = jArr;
        int i2 = i >> 3;
        long j = 255 << ((i & 7) << 3);
        jArr[i2] = (jArr[i2] & (~j)) | j;
        initializeGrowth();
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(getCapacity()) - this._size;
    }

    public final void set(long j, Object obj) {
        int findAbsoluteInsertIndex = findAbsoluteInsertIndex(j);
        this.keys[findAbsoluteInsertIndex] = j;
        this.values[findAbsoluteInsertIndex] = obj;
    }

    public final void clear() {
        this._size = 0;
        long[] jArr = this.metadata;
        if (jArr != ScatterMapKt.EmptyGroup) {
            ArraysKt.fill$default(jArr, -9187201950435737472L, 0, 0, 6, (Object) null);
            long[] jArr2 = this.metadata;
            int i = this._capacity;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        ArraysKt.fill(this.values, (Object) null, 0, this._capacity);
        initializeGrowth();
    }

    private final int findAbsoluteInsertIndex(long j) {
        int m = LongObjectMap$$ExternalSyntheticBackport0.m(j) * (-862048943);
        int i = m ^ (m << 16);
        int i2 = i >>> 7;
        int i3 = i & 127;
        int i4 = this._capacity;
        int i5 = i2 & i4;
        int i6 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i7 = i5 >> 3;
            int i8 = (i5 & 7) << 3;
            long j2 = ((jArr[i7 + 1] << (64 - i8)) & ((-i8) >> 63)) | (jArr[i7] >>> i8);
            long j3 = i3;
            int i9 = i6;
            long j4 = j2 ^ (j3 * 72340172838076673L);
            for (long j5 = (~j4) & (j4 - 72340172838076673L) & (-9187201950435737472L); j5 != 0; j5 &= j5 - 1) {
                int numberOfTrailingZeros = ((Long.numberOfTrailingZeros(j5) >> 3) + i5) & i4;
                if (this.keys[numberOfTrailingZeros] == j) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j2) << 6) & j2 & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i2);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage();
                    findFirstAvailableSlot = findFirstAvailableSlot(i2);
                }
                this._size++;
                int i10 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i11 = findFirstAvailableSlot >> 3;
                long j6 = jArr2[i11];
                int i12 = (findFirstAvailableSlot & 7) << 3;
                this.growthLimit = i10 - (((j6 >> i12) & 255) == 128 ? 1 : 0);
                int i13 = this._capacity;
                long j7 = ((~(255 << i12)) & j6) | (j3 << i12);
                jArr2[i11] = j7;
                jArr2[(((findFirstAvailableSlot - 7) & i13) + (i13 & 7)) >> 3] = j7;
                return findFirstAvailableSlot;
            }
            i6 = i9 + 8;
            i5 = (i5 + i6) & i4;
        }
    }

    private final int findFirstAvailableSlot(int i) {
        int i2 = this._capacity;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i5 = i3 >> 3;
            int i6 = (i3 & 7) << 3;
            long j = ((jArr[i5 + 1] << (64 - i6)) & ((-i6) >> 63)) | (jArr[i5] >>> i6);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i3 + (Long.numberOfTrailingZeros(j2) >> 3)) & i2;
            }
            i4 += 8;
            i3 = (i3 + i4) & i2;
        }
    }

    private final void adjustStorage() {
        int compare;
        if (this._capacity > 8) {
            compare = Long.compare(ULong.m2701constructorimpl(ULong.m2701constructorimpl(this._size) * 32) ^ Long.MIN_VALUE, ULong.m2701constructorimpl(ULong.m2701constructorimpl(this._capacity) * 25) ^ Long.MIN_VALUE);
            if (compare <= 0) {
                dropDeletes();
                return;
            }
        }
        resizeStorage(ScatterMapKt.nextCapacity(this._capacity));
    }

    private final void dropDeletes() {
        long[] jArr;
        int i;
        int i2;
        long[] jArr2 = this.metadata;
        int i3 = this._capacity;
        long[] jArr3 = this.keys;
        Object[] objArr = this.values;
        ScatterMapKt.convertMetadataForCleanup(jArr2, i3);
        char c = 0;
        int i4 = 0;
        int i5 = -1;
        while (i4 != i3) {
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = (jArr2[i6] >> i7) & 255;
            if (j == 128) {
                i5 = i4;
                i4++;
            } else {
                if (j == 254) {
                    int m = LongObjectMap$$ExternalSyntheticBackport0.m(jArr3[i4]) * (-862048943);
                    int i8 = (m ^ (m << 16)) >>> 7;
                    int findFirstAvailableSlot = findFirstAvailableSlot(i8);
                    int i9 = i8 & i3;
                    if (((findFirstAvailableSlot - i9) & i3) / 8 == ((i4 - i9) & i3) / 8) {
                        jArr2[i6] = ((r10 & 127) << i7) | ((~(255 << i7)) & jArr2[i6]);
                        jArr2[ArraysKt.getLastIndex(jArr2)] = (jArr2[c] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i10 = findFirstAvailableSlot >> 3;
                        long j2 = jArr2[i10];
                        int i11 = (findFirstAvailableSlot & 7) << 3;
                        if (((j2 >> i11) & 255) == 128) {
                            int i12 = i4;
                            jArr = jArr3;
                            jArr2[i10] = (j2 & (~(255 << i11))) | ((r10 & 127) << i11);
                            jArr2[i6] = (jArr2[i6] & (~(255 << i7))) | (128 << i7);
                            jArr[findFirstAvailableSlot] = jArr[i12];
                            jArr[i12] = 0;
                            objArr[findFirstAvailableSlot] = objArr[i12];
                            objArr[i12] = null;
                            i2 = i12;
                            i5 = i2;
                            i = i3;
                        } else {
                            int i13 = i3;
                            jArr = jArr3;
                            int i14 = i4;
                            jArr2[i10] = ((r10 & 127) << i11) | (j2 & (~(255 << i11)));
                            if (i5 == -1) {
                                i = i13;
                                i5 = ScatterMapKt.findEmptySlot(jArr2, i14 + 1, i);
                            } else {
                                i = i13;
                            }
                            jArr[i5] = jArr[findFirstAvailableSlot];
                            jArr[findFirstAvailableSlot] = jArr[i14];
                            jArr[i14] = jArr[i5];
                            objArr[i5] = objArr[findFirstAvailableSlot];
                            objArr[findFirstAvailableSlot] = objArr[i14];
                            objArr[i14] = objArr[i5];
                            i2 = i14 - 1;
                        }
                        c = 0;
                        jArr2[ArraysKt.getLastIndex(jArr2)] = (jArr2[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i4 = i2 + 1;
                        i3 = i;
                        jArr3 = jArr;
                    }
                }
                i4++;
            }
        }
        initializeGrowth();
    }

    private final void resizeStorage(int i) {
        long[] jArr;
        MutableLongObjectMap mutableLongObjectMap = this;
        long[] jArr2 = mutableLongObjectMap.metadata;
        long[] jArr3 = mutableLongObjectMap.keys;
        Object[] objArr = mutableLongObjectMap.values;
        int i2 = mutableLongObjectMap._capacity;
        initializeStorage(i);
        long[] jArr4 = mutableLongObjectMap.metadata;
        long[] jArr5 = mutableLongObjectMap.keys;
        Object[] objArr2 = mutableLongObjectMap.values;
        int i3 = mutableLongObjectMap._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr2[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                long j = jArr3[i4];
                int m = LongObjectMap$$ExternalSyntheticBackport0.m(j) * (-862048943);
                int i5 = m ^ (m << 16);
                int findFirstAvailableSlot = mutableLongObjectMap.findFirstAvailableSlot(i5 >>> 7);
                long j2 = i5 & 127;
                int i6 = findFirstAvailableSlot >> 3;
                int i7 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                long j3 = (jArr4[i6] & (~(255 << i7))) | (j2 << i7);
                jArr4[i6] = j3;
                jArr4[(((findFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j3;
                jArr5[findFirstAvailableSlot] = j;
                objArr2[findFirstAvailableSlot] = objArr[i4];
            } else {
                jArr = jArr2;
            }
            i4++;
            mutableLongObjectMap = this;
            jArr2 = jArr;
        }
    }
}
