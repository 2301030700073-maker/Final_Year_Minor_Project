package com.google.protobuf;

import androidx.work.OperationKt;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Utf8 {
    public static final OperationKt processor;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SafeProcessor extends OperationKt {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ SafeProcessor(int i) {
            this.$r8$classId = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
        @Override // androidx.work.OperationKt
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.String decodeUtf8(byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.SafeProcessor.decodeUtf8(byte[], int, int):java.lang.String");
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:?, code lost:
        
            return r11 + r8;
         */
        @Override // androidx.work.OperationKt
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int encodeUtf8(java.lang.String r9, byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.SafeProcessor.encodeUtf8(java.lang.String, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.work.OperationKt
        public final boolean isValidUtf8(byte[] bArr, int i, int i2) {
            byte b;
            int i3;
            boolean z;
            int i4 = i;
            switch (this.$r8$classId) {
                case 0:
                    while (i4 < i2 && bArr[i4] >= 0) {
                        i4++;
                    }
                    if (i4 < i2) {
                        while (i4 < i2) {
                            int i5 = i4 + 1;
                            byte b2 = bArr[i4];
                            if (b2 < 0) {
                                if (b2 < -32) {
                                    if (i5 < i2 && b2 >= -62) {
                                        i4 += 2;
                                        if (bArr[i5] > -65) {
                                        }
                                    }
                                    return false;
                                }
                                if (b2 >= -16) {
                                    if (i5 < i2 - 2) {
                                        int i6 = i4 + 2;
                                        byte b3 = bArr[i5];
                                        if (b3 <= -65 && (((b3 + 112) + (b2 << 28)) >> 30) == 0) {
                                            int i7 = i4 + 3;
                                            if (bArr[i6] <= -65) {
                                                i4 += 4;
                                                if (bArr[i7] > -65) {
                                                }
                                            }
                                        }
                                    }
                                    return false;
                                }
                                if (i5 < i2 - 1) {
                                    int i8 = i4 + 2;
                                    byte b4 = bArr[i5];
                                    if (b4 <= -65 && ((b2 != -32 || b4 >= -96) && (b2 != -19 || b4 < -96))) {
                                        i4 += 3;
                                        if (bArr[i8] > -65) {
                                        }
                                    }
                                }
                                return false;
                            }
                            i4 = i5;
                        }
                    }
                    return true;
                default:
                    if ((i4 | i2 | (bArr.length - i2)) < 0) {
                        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i4), Integer.valueOf(i2)));
                    }
                    long j = i4;
                    int i9 = i2 - i4;
                    if (i9 < 16) {
                        b = 0;
                        i3 = 0;
                        z = true;
                    } else {
                        int i10 = 8 - (((int) j) & 7);
                        long j2 = j;
                        b = 0;
                        i3 = 0;
                        z = true;
                        while (true) {
                            if (i3 < i10) {
                                long j3 = j2 + 1;
                                if (UnsafeUtil.getByte(bArr, j2) >= 0) {
                                    i3++;
                                    j2 = j3;
                                }
                            } else {
                                while (true) {
                                    int i11 = i3 + 8;
                                    if (i11 <= i9 && (UnsafeUtil.MEMORY_ACCESSOR.getLong(UnsafeUtil.BYTE_ARRAY_BASE_OFFSET + j2, bArr) & (-9187201950435737472L)) == 0) {
                                        j2 += 8;
                                        i3 = i11;
                                    }
                                }
                                while (true) {
                                    if (i3 < i9) {
                                        long j4 = j2 + 1;
                                        if (UnsafeUtil.getByte(bArr, j2) >= 0) {
                                            i3++;
                                            j2 = j4;
                                        }
                                    } else {
                                        i3 = i9;
                                    }
                                }
                            }
                        }
                    }
                    int i12 = i9 - i3;
                    long j5 = j + i3;
                    while (true) {
                        byte b5 = b;
                        while (true) {
                            if (i12 > 0) {
                                long j6 = j5 + 1;
                                byte b6 = UnsafeUtil.getByte(bArr, j5);
                                if (b6 >= 0) {
                                    i12--;
                                    j5 = j6;
                                    b5 = b6;
                                } else {
                                    j5 = j6;
                                    b5 = b6;
                                }
                            }
                        }
                        if (i12 == 0) {
                            return z;
                        }
                        int i13 = i12 - 1;
                        if (b5 < -32) {
                            if (i13 != 0) {
                                i12 -= 2;
                                if (b5 >= -62) {
                                    long j7 = j5 + 1;
                                    if (UnsafeUtil.getByte(bArr, j5) <= -65) {
                                        j5 = j7;
                                    }
                                }
                            }
                        } else if (b5 < -16) {
                            if (i13 >= 2) {
                                i12 -= 3;
                                long j8 = j5 + 1;
                                byte b7 = UnsafeUtil.getByte(bArr, j5);
                                if (b7 <= -65 && ((b5 != -32 || b7 >= -96) && (b5 != -19 || b7 < -96))) {
                                    j5 += 2;
                                    if (UnsafeUtil.getByte(bArr, j8) > -65) {
                                    }
                                }
                            }
                        } else if (i13 >= 3) {
                            i12 -= 4;
                            long j9 = j5 + 1;
                            byte b8 = UnsafeUtil.getByte(bArr, j5);
                            if (b8 <= -65 && (((b8 + 112) + (b5 << 28)) >> 30) == 0) {
                                long j10 = 2 + j5;
                                if (UnsafeUtil.getByte(bArr, j9) <= -65) {
                                    j5 += 3;
                                    if (UnsafeUtil.getByte(bArr, j10) > -65) {
                                    }
                                }
                            }
                        }
                    }
                    return b;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UnpairedSurrogateException extends Exception {
    }

    static {
        processor = (!Android.isOnAndroidDevice() && UnsafeUtil.HAS_UNSAFE_ARRAY_OPERATIONS && UnsafeUtil.HAS_UNSAFE_BYTEBUFFER_OPERATIONS) ? new SafeProcessor(1) : new SafeProcessor(0);
    }

    public static int encodedLength(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                try {
                    int length2 = str.length();
                    while (i2 < length2) {
                        char charAt2 = str.charAt(i2);
                        if (charAt2 < 2048) {
                            i += (127 - charAt2) >>> 31;
                        } else {
                            i += 2;
                            if (55296 <= charAt2 && charAt2 <= 57343) {
                                if (Character.codePointAt(str, i2) < 65536) {
                                    throw new UnpairedSurrogateException("Unpaired surrogate at index " + i2 + " of " + length2);
                                }
                                i2++;
                            }
                        }
                        i2++;
                    }
                    i3 += i;
                } catch (UnpairedSurrogateException unused) {
                    return str.getBytes(StandardCharsets.UTF_8).length;
                }
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }
}
