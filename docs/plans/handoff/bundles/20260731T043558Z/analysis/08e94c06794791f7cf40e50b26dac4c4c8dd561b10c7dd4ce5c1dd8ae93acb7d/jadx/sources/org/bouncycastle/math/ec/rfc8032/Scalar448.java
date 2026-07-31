package org.bouncycastle.math.ec.rfc8032;

import androidx.appcompat.app.AppCompatDelegate;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat448;

/* loaded from: classes6.dex */
abstract class Scalar448 {
    private static final int L4_0 = 43969588;
    private static final int L4_1 = 30366549;
    private static final int L4_2 = 163752818;
    private static final int L4_3 = 258169998;
    private static final int L4_4 = 96434764;
    private static final int L4_5 = 227822194;
    private static final int L4_6 = 149865618;
    private static final int L4_7 = 550336261;
    private static final int L_0 = 78101261;
    private static final int L_1 = 141809365;
    private static final int L_2 = 175155932;
    private static final int L_3 = 64542499;
    private static final int L_4 = 158326419;
    private static final int L_5 = 191173276;
    private static final int L_6 = 104575268;
    private static final int L_7 = 137584065;
    private static final long M26L = 67108863;
    private static final long M28L = 268435455;
    private static final long M32L = 4294967295L;
    private static final int SCALAR_BYTES = 57;
    static final int SIZE = 14;
    private static final int TARGET_LENGTH = 447;
    private static final int[] L = {-1420278541, 595116690, -1916432555, 560775794, -1361693040, -1001465015, 2093622249, -1, -1, -1, -1, -1, -1, LockFreeTaskQueueCore.MAX_CAPACITY_MASK};
    private static final int[] LSq = {463601321, -1045562440, 1239460018, -1189350089, -412821483, 1160071467, -1564970643, 1256291574, -1170454588, -240530412, 2118977290, -1845154869, -1618855054, -1019204973, 1437344377, -1849925303, 1189267370, 280387897, -680846520, -500732508, -1100672524, -1, -1, -1, -1, -1, -1, 268435455};

    Scalar448() {
    }

    static boolean checkVar(byte[] bArr, int[] iArr) {
        if (bArr[56] != 0) {
            return false;
        }
        decode(bArr, iArr);
        return !Nat.gte(14, iArr, L);
    }

    static void decode(byte[] bArr, int[] iArr) {
        Codec.decode32(bArr, 0, iArr, 0, 14);
    }

    static void getOrderWnafVar(int i, byte[] bArr) {
        Wnaf.getSignedVar(L, i, bArr);
    }

    static void multiply225Var(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[22];
        Nat.mul(iArr2, 0, 8, iArr, 0, 14, iArr4, 0);
        if (iArr2[7] < 0) {
            Nat.addTo(14, L, 0, iArr4, 8);
            Nat.subFrom(14, iArr, 0, iArr4, 8);
        }
        byte[] bArr = new byte[88];
        Codec.encode32(iArr4, 0, 22, bArr, 0);
        decode(reduce704(bArr), iArr3);
    }

    static byte[] reduce704(byte[] bArr) {
        long decode24 = Codec.decode24(bArr, 60) << 4;
        long j = decode24 & 4294967295L;
        long decode32 = Codec.decode32(bArr, 70);
        long j2 = decode32 & 4294967295L;
        long decode322 = Codec.decode32(bArr, 84);
        long j3 = (decode322 & 4294967295L) >>> 28;
        long j4 = decode322 & M28L;
        long decode242 = ((Codec.decode24(bArr, 32) << 4) & 4294967295L) + (j3 * 43969588);
        long decode323 = (Codec.decode32(bArr, 35) & 4294967295L) + (j3 * 30366549);
        long decode243 = ((Codec.decode24(bArr, 39) << 4) & 4294967295L) + (j3 * 163752818);
        long decode324 = (Codec.decode32(bArr, 42) & 4294967295L) + (j3 * 258169998);
        long decode244 = ((Codec.decode24(bArr, 46) << 4) & 4294967295L) + (j3 * 96434764);
        long decode325 = (Codec.decode32(bArr, 49) & 4294967295L) + (j3 * 227822194);
        long decode245 = ((Codec.decode24(bArr, 53) << 4) & 4294967295L) + (j3 * 149865618);
        long decode326 = (Codec.decode32(bArr, 56) & 4294967295L) + (j3 * 550336261);
        long decode246 = ((Codec.decode24(bArr, 74) << 4) & 4294967295L) + (j2 >>> 28);
        long j5 = decode32 & M28L;
        long decode327 = (Codec.decode32(bArr, 77) & 4294967295L) + (decode246 >>> 28);
        long j6 = decode246 & M28L;
        long decode247 = ((Codec.decode24(bArr, 81) << 4) & 4294967295L) + (decode327 >>> 28);
        long j7 = decode327 & M28L;
        long j8 = j4 + (decode247 >>> 28);
        long j9 = decode247 & M28L;
        long decode328 = (Codec.decode32(bArr, 28) & 4294967295L) + (j8 * 43969588);
        long j10 = decode242 + (j8 * 30366549);
        long j11 = decode323 + (j8 * 163752818);
        long j12 = decode243 + (j8 * 258169998);
        long j13 = decode324 + (j8 * 96434764);
        long j14 = decode244 + (j8 * 227822194);
        long j15 = decode325 + (j8 * 149865618);
        long j16 = decode245 + (j8 * 550336261);
        long j17 = j15 + (j9 * 550336261);
        long decode329 = (Codec.decode32(bArr, 21) & 4294967295L) + (j7 * 43969588);
        long decode3210 = (Codec.decode32(bArr, 63) & 4294967295L) + (j >>> 28);
        long j18 = decode24 & M28L;
        long decode248 = ((Codec.decode24(bArr, 67) << 4) & 4294967295L) + (decode3210 >>> 28);
        long j19 = decode3210 & M28L;
        long j20 = j5 + (decode248 >>> 28);
        long j21 = decode248 & M28L;
        long j22 = j6 + (j20 >>> 28);
        long j23 = j20 & M28L;
        long decode249 = ((Codec.decode24(bArr, 18) << 4) & 4294967295L) + (j22 * 43969588);
        long j24 = j12 + (j9 * 96434764) + (j7 * 227822194) + (j22 * 149865618);
        long j25 = j13 + (j9 * 227822194) + (j7 * 149865618) + (j22 * 550336261);
        long decode3211 = (Codec.decode32(bArr, 14) & 4294967295L) + (j23 * 43969588);
        long decode2410 = ((Codec.decode24(bArr, 11) << 4) & 4294967295L) + (j21 * 43969588);
        long j26 = decode329 + (j22 * 30366549) + (j23 * 163752818) + (j21 * 258169998);
        long decode2411 = ((Codec.decode24(bArr, 25) << 4) & 4294967295L) + (j9 * 43969588) + (j7 * 30366549) + (j22 * 163752818) + (j23 * 258169998) + (j21 * 96434764);
        long j27 = decode328 + (j9 * 30366549) + (j7 * 163752818) + (j22 * 258169998) + (j23 * 96434764) + (j21 * 227822194);
        long j28 = j10 + (j9 * 163752818) + (j7 * 258169998) + (j22 * 96434764) + (j23 * 227822194) + (j21 * 149865618);
        long j29 = j11 + (j9 * 258169998) + (j7 * 96434764) + (j22 * 227822194) + (j23 * 149865618) + (j21 * 550336261);
        long j30 = j16 + (j17 >>> 28);
        long j31 = j17 & M28L;
        long j32 = decode326 + (j30 >>> 28);
        long j33 = j30 & M28L;
        long j34 = j18 + (j32 >>> 28);
        long j35 = j32 & M28L;
        long j36 = j19 + (j34 >>> 28);
        long j37 = j34 & M28L;
        long j38 = j30 & M26L;
        long j39 = (j35 * 4) + (j33 >>> 26) + 1;
        long decode3212 = (Codec.decode32(bArr, 0) & 4294967295L) + (78101261 * j39);
        long decode2412 = ((Codec.decode24(bArr, 4) << 4) & 4294967295L) + (43969588 * j37) + (141809365 * j39) + (decode3212 >>> 28);
        long j40 = decode3212 & M28L;
        long decode3213 = (Codec.decode32(bArr, 7) & 4294967295L) + (j36 * 43969588) + (30366549 * j37) + (175155932 * j39) + (decode2412 >>> 28);
        long j41 = decode2412 & M28L;
        long j42 = decode2410 + (j36 * 30366549) + (163752818 * j37) + (64542499 * j39) + (decode3213 >>> 28);
        long j43 = decode3213 & M28L;
        long j44 = decode3211 + (j21 * 30366549) + (j36 * 163752818) + (258169998 * j37) + (158326419 * j39) + (j42 >>> 28);
        long j45 = j42 & M28L;
        long j46 = decode249 + (j23 * 30366549) + (j21 * 163752818) + (j36 * 258169998) + (96434764 * j37) + (191173276 * j39) + (j44 >>> 28);
        long j47 = j44 & M28L;
        long j48 = j26 + (j36 * 96434764) + (227822194 * j37) + (104575268 * j39) + (j46 >>> 28);
        long j49 = j46 & M28L;
        long j50 = decode2411 + (j36 * 227822194) + (149865618 * j37) + (j39 * 137584065) + (j48 >>> 28);
        long j51 = j48 & M28L;
        long j52 = j27 + (j36 * 149865618) + (j37 * 550336261) + (j50 >>> 28);
        long j53 = j50 & M28L;
        long j54 = j28 + (j36 * 550336261) + (j52 >>> 28);
        long j55 = j52 & M28L;
        long j56 = j29 + (j54 >>> 28);
        long j57 = j54 & M28L;
        long j58 = j24 + (j23 * 550336261) + (j56 >>> 28);
        long j59 = j56 & M28L;
        long j60 = j25 + (j58 >>> 28);
        long j61 = j58 & M28L;
        long j62 = j14 + (j9 * 149865618) + (j7 * 550336261) + (j60 >>> 28);
        long j63 = j60 & M28L;
        long j64 = j31 + (j62 >>> 28);
        long j65 = j62 & M28L;
        long j66 = j38 + (j64 >>> 28);
        long j67 = j64 & M28L;
        long j68 = j66 & M26L;
        long j69 = (j66 >>> 26) - 1;
        long j70 = j40 - (j69 & 78101261);
        long j71 = (j41 - (j69 & 141809365)) + (j70 >> 28);
        long j72 = j70 & M28L;
        long j73 = (j43 - (j69 & 175155932)) + (j71 >> 28);
        long j74 = j71 & M28L;
        long j75 = (j45 - (j69 & 64542499)) + (j73 >> 28);
        long j76 = j73 & M28L;
        long j77 = (j47 - (j69 & 158326419)) + (j75 >> 28);
        long j78 = j75 & M28L;
        long j79 = (j49 - (j69 & 191173276)) + (j77 >> 28);
        long j80 = j77 & M28L;
        long j81 = (j51 - (j69 & 104575268)) + (j79 >> 28);
        long j82 = j79 & M28L;
        long j83 = (j53 - (j69 & 137584065)) + (j81 >> 28);
        long j84 = j81 & M28L;
        long j85 = j55 + (j83 >> 28);
        long j86 = j83 & M28L;
        long j87 = j57 + (j85 >> 28);
        long j88 = j85 & M28L;
        long j89 = j59 + (j87 >> 28);
        long j90 = j87 & M28L;
        long j91 = j61 + (j89 >> 28);
        long j92 = j89 & M28L;
        long j93 = j63 + (j91 >> 28);
        long j94 = j91 & M28L;
        long j95 = j65 + (j93 >> 28);
        long j96 = j93 & M28L;
        long j97 = j67 + (j95 >> 28);
        long j98 = j95 & M28L;
        long j99 = j97 & M28L;
        byte[] bArr2 = new byte[57];
        Codec.encode56(j72 | (j74 << 28), bArr2, 0);
        Codec.encode56(j76 | (j78 << 28), bArr2, 7);
        Codec.encode56(j80 | (j82 << 28), bArr2, 14);
        Codec.encode56(j84 | (j86 << 28), bArr2, 21);
        Codec.encode56(j88 | (j90 << 28), bArr2, 28);
        Codec.encode56((j94 << 28) | j92, bArr2, 35);
        Codec.encode56(j96 | (j98 << 28), bArr2, 42);
        Codec.encode56(j99 | ((j68 + (j97 >> 28)) << 28), bArr2, 49);
        return bArr2;
    }

    static byte[] reduce912(byte[] bArr) {
        long decode32 = Codec.decode32(bArr, 84);
        long j = decode32 & 4294967295L;
        long decode322 = Codec.decode32(bArr, 91);
        long j2 = decode322 & 4294967295L;
        long decode323 = Codec.decode32(bArr, 98);
        long j3 = decode323 & 4294967295L;
        long decode324 = Codec.decode32(bArr, 105);
        long j4 = decode324 & 4294967295L;
        long decode16 = Codec.decode16(bArr, 112) & 4294967295L;
        long decode24 = ((Codec.decode24(bArr, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY) << 4) & 4294967295L) + (j4 >>> 28);
        long j5 = decode324 & M28L;
        long decode242 = ((Codec.decode24(bArr, 74) << 4) & 4294967295L) + (decode16 * 227822194) + (decode24 * 149865618);
        long decode325 = (Codec.decode32(bArr, 77) & 4294967295L) + (decode16 * 149865618) + (decode24 * 550336261);
        long decode326 = (Codec.decode32(bArr, 49) & 4294967295L) + (j5 * 43969588);
        long decode243 = ((Codec.decode24(bArr, 53) << 4) & 4294967295L) + (decode24 * 43969588) + (j5 * 30366549);
        long decode327 = (Codec.decode32(bArr, 56) & 4294967295L) + (decode16 * 43969588) + (decode24 * 30366549) + (j5 * 163752818);
        long decode244 = ((Codec.decode24(bArr, 60) << 4) & 4294967295L) + (decode16 * 30366549) + (decode24 * 163752818) + (j5 * 258169998);
        long decode328 = (Codec.decode32(bArr, 63) & 4294967295L) + (decode16 * 163752818) + (decode24 * 258169998) + (j5 * 96434764);
        long decode245 = ((Codec.decode24(bArr, 67) << 4) & 4294967295L) + (decode16 * 258169998) + (decode24 * 96434764) + (j5 * 227822194);
        long decode329 = (Codec.decode32(bArr, 70) & 4294967295L) + (decode16 * 96434764) + (decode24 * 227822194) + (j5 * 149865618);
        long decode246 = ((Codec.decode24(bArr, 102) << 4) & 4294967295L) + (j3 >>> 28);
        long j6 = decode323 & M28L;
        long decode247 = ((Codec.decode24(bArr, 46) << 4) & 4294967295L) + (decode246 * 43969588);
        long j7 = decode245 + (decode246 * 149865618);
        long j8 = decode329 + (decode246 * 550336261);
        long decode3210 = (Codec.decode32(bArr, 42) & 4294967295L) + (j6 * 43969588);
        long j9 = decode326 + (decode246 * 30366549) + (j6 * 163752818);
        long j10 = decode243 + (decode246 * 163752818) + (j6 * 258169998);
        long j11 = decode327 + (decode246 * 258169998) + (j6 * 96434764);
        long j12 = decode244 + (decode246 * 96434764) + (j6 * 227822194);
        long j13 = decode328 + (decode246 * 227822194) + (j6 * 149865618);
        long decode248 = ((Codec.decode24(bArr, 95) << 4) & 4294967295L) + (j2 >>> 28);
        long j14 = decode322 & M28L;
        long decode249 = ((Codec.decode24(bArr, 39) << 4) & 4294967295L) + (decode248 * 43969588);
        long j15 = j13 + (decode248 * 550336261);
        long decode3211 = (Codec.decode32(bArr, 35) & 4294967295L) + (j14 * 43969588);
        long j16 = decode3210 + (decode248 * 30366549) + (j14 * 163752818);
        long j17 = decode247 + (j6 * 30366549) + (decode248 * 163752818) + (j14 * 258169998);
        long j18 = j9 + (decode248 * 258169998) + (j14 * 96434764);
        long j19 = j10 + (decode248 * 96434764) + (j14 * 227822194);
        long j20 = j11 + (decode248 * 227822194) + (j14 * 149865618);
        long j21 = j12 + (decode248 * 149865618) + (j14 * 550336261);
        long decode2410 = ((Codec.decode24(bArr, 88) << 4) & 4294967295L) + (j >>> 28);
        long j22 = decode32 & M28L;
        long j23 = decode242 + (j5 * 550336261) + (j8 >>> 28);
        long j24 = j8 & M28L;
        long j25 = decode325 + (j23 >>> 28);
        long j26 = j23 & M28L;
        long decode2411 = ((Codec.decode24(bArr, 81) << 4) & 4294967295L) + (decode16 * 550336261) + (j25 >>> 28);
        long j27 = j25 & M28L;
        long j28 = j22 + (decode2411 >>> 28);
        long j29 = decode2411 & M28L;
        long decode2412 = ((Codec.decode24(bArr, 25) << 4) & 4294967295L) + (j29 * 43969588);
        long decode3212 = (Codec.decode32(bArr, 28) & 4294967295L) + (j28 * 43969588) + (j29 * 30366549);
        long decode2413 = ((Codec.decode24(bArr, 32) << 4) & 4294967295L) + (decode2410 * 43969588) + (j28 * 30366549) + (j29 * 163752818);
        long j30 = decode3211 + (decode2410 * 30366549) + (j28 * 163752818) + (j29 * 258169998);
        long j31 = decode249 + (j14 * 30366549) + (decode2410 * 163752818) + (j28 * 258169998) + (j29 * 96434764);
        long j32 = j16 + (decode2410 * 258169998) + (j28 * 96434764) + (j29 * 227822194);
        long j33 = j17 + (decode2410 * 96434764) + (j28 * 227822194) + (j29 * 149865618);
        long j34 = j18 + (decode2410 * 227822194) + (j28 * 149865618) + (j29 * 550336261);
        long decode3213 = (Codec.decode32(bArr, 21) & 4294967295L) + (j27 * 43969588);
        long j35 = j15 + (j21 >>> 28);
        long j36 = j21 & M28L;
        long j37 = j7 + (j6 * 550336261) + (j35 >>> 28);
        long j38 = j35 & M28L;
        long j39 = j24 + (j37 >>> 28);
        long j40 = j37 & M28L;
        long j41 = j26 + (j39 >>> 28);
        long j42 = j39 & M28L;
        long decode3214 = (Codec.decode32(bArr, 14) & 4294967295L) + (j42 * 43969588);
        long decode2414 = ((Codec.decode24(bArr, 18) << 4) & 4294967295L) + (j41 * 43969588) + (j42 * 30366549);
        long j43 = decode3213 + (j41 * 30366549) + (j42 * 163752818);
        long j44 = decode2412 + (j27 * 30366549) + (j41 * 163752818) + (j42 * 258169998);
        long j45 = decode3212 + (j27 * 163752818) + (j41 * 258169998) + (j42 * 96434764);
        long j46 = decode2413 + (j27 * 258169998) + (j41 * 96434764) + (j42 * 227822194);
        long j47 = j30 + (j27 * 96434764) + (j41 * 227822194) + (j42 * 149865618);
        long j48 = j31 + (j27 * 227822194) + (j41 * 149865618) + (j42 * 550336261);
        long decode2415 = ((Codec.decode24(bArr, 11) << 4) & 4294967295L) + (j40 * 43969588);
        long j49 = decode3214 + (j40 * 30366549);
        long j50 = decode2414 + (j40 * 163752818);
        long j51 = j43 + (j40 * 258169998);
        long j52 = j44 + (j40 * 96434764);
        long j53 = j45 + (j40 * 227822194);
        long j54 = j46 + (j40 * 149865618);
        long j55 = j47 + (j40 * 550336261);
        long j56 = j19 + (decode2410 * 149865618) + (j28 * 550336261) + (j34 >>> 28);
        long j57 = j34 & M28L;
        long j58 = j20 + (decode2410 * 550336261) + (j56 >>> 28);
        long j59 = j56 & M28L;
        long j60 = j36 + (j58 >>> 28);
        long j61 = j58 & M28L;
        long j62 = j38 + (j60 >>> 28);
        long j63 = j60 & M28L;
        long j64 = j53 + (j62 * 149865618);
        long j65 = j54 + (j62 * 550336261);
        long j66 = j56 & M26L;
        long j67 = (j61 * 4) + (j59 >>> 26) + 1;
        long decode3215 = (Codec.decode32(bArr, 0) & 4294967295L) + (78101261 * j67);
        long decode3216 = (Codec.decode32(bArr, 7) & 4294967295L) + (j62 * 43969588) + (30366549 * j63) + (175155932 * j67);
        long j68 = decode2415 + (j62 * 30366549) + (163752818 * j63) + (64542499 * j67);
        long j69 = j49 + (j62 * 163752818) + (258169998 * j63) + (158326419 * j67);
        long j70 = j50 + (j62 * 258169998) + (96434764 * j63) + (191173276 * j67);
        long j71 = j51 + (j62 * 96434764) + (227822194 * j63) + (104575268 * j67);
        long j72 = j52 + (j62 * 227822194) + (149865618 * j63) + (j67 * 137584065);
        long decode2416 = ((Codec.decode24(bArr, 4) << 4) & 4294967295L) + (43969588 * j63) + (141809365 * j67) + (decode3215 >>> 28);
        long j73 = decode3215 & M28L;
        long j74 = decode3216 + (decode2416 >>> 28);
        long j75 = decode2416 & M28L;
        long j76 = j68 + (j74 >>> 28);
        long j77 = j74 & M28L;
        long j78 = j69 + (j76 >>> 28);
        long j79 = j76 & M28L;
        long j80 = j70 + (j78 >>> 28);
        long j81 = j78 & M28L;
        long j82 = j71 + (j80 >>> 28);
        long j83 = j80 & M28L;
        long j84 = j72 + (j82 >>> 28);
        long j85 = j82 & M28L;
        long j86 = j64 + (j63 * 550336261) + (j84 >>> 28);
        long j87 = j84 & M28L;
        long j88 = j65 + (j86 >>> 28);
        long j89 = j86 & M28L;
        long j90 = j55 + (j88 >>> 28);
        long j91 = j88 & M28L;
        long j92 = j48 + (j90 >>> 28);
        long j93 = j90 & M28L;
        long j94 = j32 + (j27 * 149865618) + (j41 * 550336261) + (j92 >>> 28);
        long j95 = j92 & M28L;
        long j96 = j33 + (j27 * 550336261) + (j94 >>> 28);
        long j97 = j94 & M28L;
        long j98 = j57 + (j96 >>> 28);
        long j99 = j96 & M28L;
        long j100 = j66 + (j98 >>> 28);
        long j101 = j98 & M28L;
        long j102 = j100 & M26L;
        long j103 = (j100 >>> 26) - 1;
        long j104 = j73 - (j103 & 78101261);
        long j105 = (j75 - (j103 & 141809365)) + (j104 >> 28);
        long j106 = j104 & M28L;
        long j107 = (j77 - (j103 & 175155932)) + (j105 >> 28);
        long j108 = j105 & M28L;
        long j109 = (j79 - (j103 & 64542499)) + (j107 >> 28);
        long j110 = j107 & M28L;
        long j111 = (j81 - (j103 & 158326419)) + (j109 >> 28);
        long j112 = j109 & M28L;
        long j113 = (j83 - (j103 & 191173276)) + (j111 >> 28);
        long j114 = j111 & M28L;
        long j115 = (j85 - (j103 & 104575268)) + (j113 >> 28);
        long j116 = j113 & M28L;
        long j117 = (j87 - (j103 & 137584065)) + (j115 >> 28);
        long j118 = j115 & M28L;
        long j119 = j89 + (j117 >> 28);
        long j120 = j117 & M28L;
        long j121 = j91 + (j119 >> 28);
        long j122 = j119 & M28L;
        long j123 = j93 + (j121 >> 28);
        long j124 = j121 & M28L;
        long j125 = j95 + (j123 >> 28);
        long j126 = j123 & M28L;
        long j127 = j97 + (j125 >> 28);
        long j128 = j125 & M28L;
        long j129 = j99 + (j127 >> 28);
        long j130 = j127 & M28L;
        long j131 = j101 + (j129 >> 28);
        long j132 = j129 & M28L;
        long j133 = j102 + (j131 >> 28);
        long j134 = j131 & M28L;
        byte[] bArr2 = new byte[57];
        Codec.encode56((j108 << 28) | j106, bArr2, 0);
        Codec.encode56((j112 << 28) | j110, bArr2, 7);
        Codec.encode56(j114 | (j116 << 28), bArr2, 14);
        Codec.encode56(j118 | (j120 << 28), bArr2, 21);
        Codec.encode56(j122 | (j124 << 28), bArr2, 28);
        Codec.encode56(j126 | (j128 << 28), bArr2, 35);
        Codec.encode56(j130 | (j132 << 28), bArr2, 42);
        Codec.encode56((j133 << 28) | j134, bArr2, 49);
        return bArr2;
    }

    static boolean reduceBasisVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int i;
        int i2;
        int[] iArr4;
        int[] iArr5 = new int[28];
        System.arraycopy(LSq, 0, iArr5, 0, 28);
        int[] iArr6 = new int[28];
        Nat448.square(iArr, iArr6);
        iArr6[0] = iArr6[0] + 1;
        int[] iArr7 = new int[28];
        int[] iArr8 = L;
        Nat448.mul(iArr8, iArr, iArr7);
        int[] iArr9 = new int[28];
        int[] iArr10 = new int[8];
        System.arraycopy(iArr8, 0, iArr10, 0, 8);
        int[] iArr11 = new int[8];
        System.arraycopy(iArr, 0, iArr11, 0, 8);
        int[] iArr12 = new int[8];
        iArr12[0] = 1;
        int[] iArr13 = new int[8];
        int[] iArr14 = iArr10;
        int[] iArr15 = iArr11;
        int i3 = 27;
        int i4 = 1788;
        int bitLengthPositive = ScalarUtil.getBitLengthPositive(27, iArr6);
        while (bitLengthPositive > TARGET_LENGTH) {
            int i5 = i4 - 1;
            if (i5 < 0) {
                return false;
            }
            int bitLength = ScalarUtil.getBitLength(i3, iArr7) - bitLengthPositive;
            int i6 = bitLength & (~(bitLength >> 31));
            if (iArr7[i3] < 0) {
                i = bitLengthPositive;
                ScalarUtil.addShifted_NP(i3, i6, iArr5, iArr6, iArr7, iArr9);
                int[] iArr16 = iArr15;
                ScalarUtil.addShifted_UV(7, i6, iArr14, iArr13, iArr16, iArr12);
                iArr4 = iArr16;
                i2 = i3;
            } else {
                i = bitLengthPositive;
                ScalarUtil.subShifted_NP(i3, i6, iArr5, iArr6, iArr7, iArr9);
                i2 = i3;
                iArr4 = iArr15;
                ScalarUtil.subShifted_UV(7, i6, iArr14, iArr13, iArr4, iArr12);
            }
            if (ScalarUtil.lessThan(i2, iArr5, iArr6)) {
                int i7 = i >>> 5;
                i3 = i7;
                bitLengthPositive = ScalarUtil.getBitLengthPositive(i7, iArr5);
                iArr15 = iArr14;
                iArr14 = iArr4;
                int[] iArr17 = iArr13;
                iArr13 = iArr12;
                iArr12 = iArr17;
                int[] iArr18 = iArr6;
                iArr6 = iArr5;
                iArr5 = iArr18;
            } else {
                iArr15 = iArr4;
                i3 = i2;
                bitLengthPositive = i;
            }
            i4 = i5;
        }
        System.arraycopy(iArr15, 0, iArr2, 0, 8);
        System.arraycopy(iArr12, 0, iArr3, 0, 8);
        return true;
    }

    static void toSignedDigits(int i, int[] iArr, int[] iArr2) {
        iArr2[14] = (1 << (i - 448)) + Nat.cadd(14, 1 & (~iArr[0]), iArr, L, iArr2);
        Nat.shiftDownBit(15, iArr2, 0);
    }
}
