package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: IntIntMap.kt */
/* loaded from: classes.dex */
public final class MutableIntIntMap extends IntIntMap {
    private int growthLimit;

    public /* synthetic */ MutableIntIntMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    public MutableIntIntMap(int i) {
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
        this.keys = new int[max];
        this.values = new int[max];
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

    public final void set(int i, int i2) {
        int findInsertIndex = findInsertIndex(i);
        if (findInsertIndex < 0) {
            findInsertIndex = ~findInsertIndex;
        }
        this.keys[findInsertIndex] = i;
        this.values[findInsertIndex] = i2;
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
        initializeGrowth();
    }

    private final int findInsertIndex(int i) {
        int i2 = (-862048943) * i;
        int i3 = i2 ^ (i2 << 16);
        int i4 = i3 >>> 7;
        int i5 = i3 & 127;
        int i6 = this._capacity;
        int i7 = i4 & i6;
        int i8 = 0;
        while (true) {
            long[] jArr = this.metadata;
            int i9 = i7 >> 3;
            int i10 = (i7 & 7) << 3;
            long j = ((jArr[i9 + 1] << (64 - i10)) & ((-i10) >> 63)) | (jArr[i9] >>> i10);
            long j2 = i5;
            int i11 = i8;
            long j3 = j ^ (j2 * 72340172838076673L);
            for (long j4 = (~j3) & (j3 - 72340172838076673L) & (-9187201950435737472L); j4 != 0; j4 &= j4 - 1) {
                int numberOfTrailingZeros = (i7 + (Long.numberOfTrailingZeros(j4) >> 3)) & i6;
                if (this.keys[numberOfTrailingZeros] == i) {
                    return numberOfTrailingZeros;
                }
            }
            if ((((~j) << 6) & j & (-9187201950435737472L)) != 0) {
                int findFirstAvailableSlot = findFirstAvailableSlot(i4);
                if (this.growthLimit == 0 && ((this.metadata[findFirstAvailableSlot >> 3] >> ((findFirstAvailableSlot & 7) << 3)) & 255) != 254) {
                    adjustStorage();
                    findFirstAvailableSlot = findFirstAvailableSlot(i4);
                }
                this._size++;
                int i12 = this.growthLimit;
                long[] jArr2 = this.metadata;
                int i13 = findFirstAvailableSlot >> 3;
                long j5 = jArr2[i13];
                int i14 = (findFirstAvailableSlot & 7) << 3;
                this.growthLimit = i12 - (((j5 >> i14) & 255) == 128 ? 1 : 0);
                int i15 = this._capacity;
                long j6 = ((~(255 << i14)) & j5) | (j2 << i14);
                jArr2[i13] = j6;
                jArr2[(((findFirstAvailableSlot - 7) & i15) + (i15 & 7)) >> 3] = j6;
                return ~findFirstAvailableSlot;
            }
            i8 = i11 + 8;
            i7 = (i7 + i8) & i6;
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
        int[] iArr;
        int i;
        int i2;
        long[] jArr = this.metadata;
        int i3 = this._capacity;
        int[] iArr2 = this.keys;
        int[] iArr3 = this.values;
        ScatterMapKt.convertMetadataForCleanup(jArr, i3);
        char c = 0;
        int i4 = 0;
        int i5 = -1;
        while (i4 != i3) {
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j = (jArr[i6] >> i7) & 255;
            if (j == 128) {
                i5 = i4;
                i4++;
            } else {
                if (j == 254) {
                    int i8 = iArr2[i4] * (-862048943);
                    int i9 = (i8 ^ (i8 << 16)) >>> 7;
                    int findFirstAvailableSlot = findFirstAvailableSlot(i9);
                    int i10 = i9 & i3;
                    if (((findFirstAvailableSlot - i10) & i3) / 8 == ((i4 - i10) & i3) / 8) {
                        jArr[i6] = ((r10 & 127) << i7) | ((~(255 << i7)) & jArr[i6]);
                        jArr[ArraysKt.getLastIndex(jArr)] = (jArr[c] & 72057594037927935L) | Long.MIN_VALUE;
                    } else {
                        int i11 = findFirstAvailableSlot >> 3;
                        long j2 = jArr[i11];
                        int i12 = (findFirstAvailableSlot & 7) << 3;
                        if (((j2 >> i12) & 255) == 128) {
                            int i13 = i4;
                            iArr = iArr2;
                            jArr[i11] = (j2 & (~(255 << i12))) | ((r10 & 127) << i12);
                            jArr[i6] = (jArr[i6] & (~(255 << i7))) | (128 << i7);
                            iArr[findFirstAvailableSlot] = iArr[i13];
                            iArr[i13] = 0;
                            iArr3[findFirstAvailableSlot] = iArr3[i13];
                            iArr3[i13] = 0;
                            i2 = i13;
                            i5 = i2;
                            i = i3;
                        } else {
                            int i14 = i3;
                            iArr = iArr2;
                            int i15 = i4;
                            jArr[i11] = ((r10 & 127) << i12) | (j2 & (~(255 << i12)));
                            if (i5 == -1) {
                                i = i14;
                                i5 = ScatterMapKt.findEmptySlot(jArr, i15 + 1, i);
                            } else {
                                i = i14;
                            }
                            iArr[i5] = iArr[findFirstAvailableSlot];
                            iArr[findFirstAvailableSlot] = iArr[i15];
                            iArr[i15] = iArr[i5];
                            iArr3[i5] = iArr3[findFirstAvailableSlot];
                            iArr3[findFirstAvailableSlot] = iArr3[i15];
                            iArr3[i15] = iArr3[i5];
                            i2 = i15 - 1;
                        }
                        c = 0;
                        jArr[ArraysKt.getLastIndex(jArr)] = (jArr[0] & 72057594037927935L) | Long.MIN_VALUE;
                        i4 = i2 + 1;
                        i3 = i;
                        iArr2 = iArr;
                    }
                }
                i4++;
            }
        }
        initializeGrowth();
    }

    private final void resizeStorage(int i) {
        long[] jArr;
        MutableIntIntMap mutableIntIntMap = this;
        long[] jArr2 = mutableIntIntMap.metadata;
        int[] iArr = mutableIntIntMap.keys;
        int[] iArr2 = mutableIntIntMap.values;
        int i2 = mutableIntIntMap._capacity;
        initializeStorage(i);
        long[] jArr3 = mutableIntIntMap.metadata;
        int[] iArr3 = mutableIntIntMap.keys;
        int[] iArr4 = mutableIntIntMap.values;
        int i3 = mutableIntIntMap._capacity;
        int i4 = 0;
        while (i4 < i2) {
            if (((jArr2[i4 >> 3] >> ((i4 & 7) << 3)) & 255) < 128) {
                int i5 = iArr[i4];
                int i6 = (-862048943) * i5;
                int i7 = i6 ^ (i6 << 16);
                int findFirstAvailableSlot = mutableIntIntMap.findFirstAvailableSlot(i7 >>> 7);
                long j = i7 & 127;
                int i8 = findFirstAvailableSlot >> 3;
                int i9 = (findFirstAvailableSlot & 7) << 3;
                jArr = jArr2;
                long j2 = (jArr3[i8] & (~(255 << i9))) | (j << i9);
                jArr3[i8] = j2;
                jArr3[(((findFirstAvailableSlot - 7) & i3) + (i3 & 7)) >> 3] = j2;
                iArr3[findFirstAvailableSlot] = i5;
                iArr4[findFirstAvailableSlot] = iArr2[i4];
            } else {
                jArr = jArr2;
            }
            i4++;
            mutableIntIntMap = this;
            jArr2 = jArr;
        }
    }
}
