package kotlin.collections;

import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UArraySorting.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", "", "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class UArraySortingKt {
    /* renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m2563partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte m2179getw2LRezQ = UByteArray.m2179getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = m2179getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m2179getw2LRezQ(bArr, i) & 255, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m2179getw2LRezQ(bArr, i2) & 255, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte m2179getw2LRezQ2 = UByteArray.m2179getw2LRezQ(bArr, i);
                UByteArray.m2184setVurrAj0(bArr, i, UByteArray.m2179getw2LRezQ(bArr, i2));
                UByteArray.m2184setVurrAj0(bArr, i2, m2179getw2LRezQ2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m2567quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m2563partition4UcCI2c = m2563partition4UcCI2c(bArr, i, i2);
        int i3 = m2563partition4UcCI2c - 1;
        if (i < i3) {
            m2567quickSort4UcCI2c(bArr, i, i3);
        }
        if (m2563partition4UcCI2c < i2) {
            m2567quickSort4UcCI2c(bArr, m2563partition4UcCI2c, i2);
        }
    }

    /* renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m2564partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short m2442getMh2AYeg = UShortArray.m2442getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                i3 = m2442getMh2AYeg & 65535;
                if (Intrinsics.compare(UShortArray.m2442getMh2AYeg(sArr, i) & 65535, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m2442getMh2AYeg(sArr, i2) & 65535, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short m2442getMh2AYeg2 = UShortArray.m2442getMh2AYeg(sArr, i);
                UShortArray.m2447set01HTLdE(sArr, i, UShortArray.m2442getMh2AYeg(sArr, i2));
                UShortArray.m2447set01HTLdE(sArr, i2, m2442getMh2AYeg2);
                i++;
                i2--;
            }
        }
        return i;
    }

    /* renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m2568quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m2564partitionAa5vz7o = m2564partitionAa5vz7o(sArr, i, i2);
        int i3 = m2564partitionAa5vz7o - 1;
        if (i < i3) {
            m2568quickSortAa5vz7o(sArr, i, i3);
        }
        if (m2564partitionAa5vz7o < i2) {
            m2568quickSortAa5vz7o(sArr, m2564partitionAa5vz7o, i2);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0012 */
    /* JADX WARN: Incorrect condition in loop: B:8:0x001f */
    /* renamed from: partition-oBK06Vg, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int m2565partitionoBK06Vg(int[] r3, int r4, int r5) {
        /*
            int r0 = r4 + r5
            int r0 = r0 / 2
            int r0 = kotlin.UIntArray.m2258getpVg5ArA(r3, r0)
        L8:
            if (r4 > r5) goto L39
        La:
            int r1 = kotlin.UIntArray.m2258getpVg5ArA(r3, r4)
            int r1 = kotlin.UByte$$ExternalSyntheticBackport0.m$2(r1, r0)
            if (r1 >= 0) goto L17
            int r4 = r4 + 1
            goto La
        L17:
            int r1 = kotlin.UIntArray.m2258getpVg5ArA(r3, r5)
            int r1 = kotlin.UByte$$ExternalSyntheticBackport0.m$2(r1, r0)
            if (r1 <= 0) goto L24
            int r5 = r5 + (-1)
            goto L17
        L24:
            if (r4 > r5) goto L8
            int r1 = kotlin.UIntArray.m2258getpVg5ArA(r3, r4)
            int r2 = kotlin.UIntArray.m2258getpVg5ArA(r3, r5)
            kotlin.UIntArray.m2263setVXSXFK8(r3, r4, r2)
            kotlin.UIntArray.m2263setVXSXFK8(r3, r5, r1)
            int r4 = r4 + 1
            int r5 = r5 + (-1)
            goto L8
        L39:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.UArraySortingKt.m2565partitionoBK06Vg(int[], int, int):int");
    }

    /* renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m2569quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m2565partitionoBK06Vg = m2565partitionoBK06Vg(iArr, i, i2);
        int i3 = m2565partitionoBK06Vg - 1;
        if (i < i3) {
            m2569quickSortoBK06Vg(iArr, i, i3);
        }
        if (m2565partitionoBK06Vg < i2) {
            m2569quickSortoBK06Vg(iArr, m2565partitionoBK06Vg, i2);
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0012 */
    /* JADX WARN: Incorrect condition in loop: B:8:0x001f */
    /* renamed from: partition--nroSd4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int m2562partitionnroSd4(long[] r6, int r7, int r8) {
        /*
            int r0 = r7 + r8
            int r0 = r0 / 2
            long r0 = kotlin.ULongArray.m2337getsVKNKU(r6, r0)
        L8:
            if (r7 > r8) goto L39
        La:
            long r2 = kotlin.ULongArray.m2337getsVKNKU(r6, r7)
            int r2 = kotlin.UByte$$ExternalSyntheticBackport0.m(r2, r0)
            if (r2 >= 0) goto L17
            int r7 = r7 + 1
            goto La
        L17:
            long r2 = kotlin.ULongArray.m2337getsVKNKU(r6, r8)
            int r2 = kotlin.UByte$$ExternalSyntheticBackport0.m(r2, r0)
            if (r2 <= 0) goto L24
            int r8 = r8 + (-1)
            goto L17
        L24:
            if (r7 > r8) goto L8
            long r2 = kotlin.ULongArray.m2337getsVKNKU(r6, r7)
            long r4 = kotlin.ULongArray.m2337getsVKNKU(r6, r8)
            kotlin.ULongArray.m2342setk8EXiF4(r6, r7, r4)
            kotlin.ULongArray.m2342setk8EXiF4(r6, r8, r2)
            int r7 = r7 + 1
            int r8 = r8 + (-1)
            goto L8
        L39:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.UArraySortingKt.m2562partitionnroSd4(long[], int, int):int");
    }

    /* renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m2566quickSortnroSd4(long[] jArr, int i, int i2) {
        int m2562partitionnroSd4 = m2562partitionnroSd4(jArr, i, i2);
        int i3 = m2562partitionnroSd4 - 1;
        if (i < i3) {
            m2566quickSortnroSd4(jArr, i, i3);
        }
        if (m2562partitionnroSd4 < i2) {
            m2566quickSortnroSd4(jArr, m2562partitionnroSd4, i2);
        }
    }

    /* renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m2571sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2567quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m2572sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2568quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m2573sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2569quickSortoBK06Vg(array, i, i2 - 1);
    }

    /* renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m2570sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m2566quickSortnroSd4(array, i, i2 - 1);
    }
}
