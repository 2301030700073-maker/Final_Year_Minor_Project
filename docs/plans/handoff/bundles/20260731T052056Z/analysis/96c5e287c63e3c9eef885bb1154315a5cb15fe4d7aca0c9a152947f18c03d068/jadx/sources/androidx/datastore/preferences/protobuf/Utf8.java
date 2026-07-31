package androidx.datastore.preferences.protobuf;

import androidx.compose.ui.Modifier;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Utf8 {
    public static final SafeProcessor processor;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SafeProcessor {
        public final /* synthetic */ int $r8$classId;
        public static final SmallSortedMap$EmptySet$1 ITERATOR = new SmallSortedMap$EmptySet$1();
        public static final SmallSortedMap$EmptySet$2 ITERABLE = new SmallSortedMap$EmptySet$2();

        public /* synthetic */ SafeProcessor(int i) {
            this.$r8$classId = i;
        }

        public static final String camelCaseToSnakeCase(String str) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (Character.isUpperCase(charAt)) {
                    sb.append("_");
                }
                sb.append(Character.toLowerCase(charAt));
            }
            return sb.toString();
        }

        public static String escapeBytes(ByteString$LiteralByteString byteString$LiteralByteString) {
            StringBuilder sb = new StringBuilder(byteString$LiteralByteString.size());
            for (int i = 0; i < byteString$LiteralByteString.size(); i++) {
                byte b = byteString$LiteralByteString.bytes[i];
                if (b == 34) {
                    sb.append("\\\"");
                } else if (b == 39) {
                    sb.append("\\'");
                } else if (b != 92) {
                    switch (b) {
                        case 7:
                            sb.append("\\a");
                            break;
                        case 8:
                            sb.append("\\b");
                            break;
                        case 9:
                            sb.append("\\t");
                            break;
                        case 10:
                            sb.append("\\n");
                            break;
                        case 11:
                            sb.append("\\v");
                            break;
                        case 12:
                            sb.append("\\f");
                            break;
                        case IMAGE_VALUE:
                            sb.append("\\r");
                            break;
                        default:
                            if (b < 32 || b > 126) {
                                sb.append('\\');
                                sb.append((char) (((b >>> 6) & 3) + 48));
                                sb.append((char) (((b >>> 3) & 7) + 48));
                                sb.append((char) ((b & 7) + 48));
                                break;
                            } else {
                                sb.append((char) b);
                                break;
                            }
                            break;
                    }
                } else {
                    sb.append("\\\\");
                }
            }
            return sb.toString();
        }

        public static void handleFourBytes(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) {
            if (!isNotTrailingByte(b2)) {
                if ((((b2 + 112) + (b << 28)) >> 30) == 0 && !isNotTrailingByte(b3) && !isNotTrailingByte(b4)) {
                    int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                    cArr[i] = (char) ((i2 >>> 10) + 55232);
                    cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                    return;
                }
            }
            throw InvalidProtocolBufferException.invalidUtf8();
        }

        public static void handleThreeBytes(byte b, byte b2, byte b3, char[] cArr, int i) {
            if (isNotTrailingByte(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || isNotTrailingByte(b3)))) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
        }

        public static void handleTwoBytes(byte b, byte b2, char[] cArr, int i) {
            if (b < -62 || isNotTrailingByte(b2)) {
                throw InvalidProtocolBufferException.invalidUtf8();
            }
            cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
        }

        public static boolean isNotTrailingByte(byte b) {
            return b > -65;
        }

        public static final void printField(StringBuilder sb, int i, String str, Object obj) {
            if (obj instanceof List) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    printField(sb, i, str, it.next());
                }
                return;
            }
            if (obj instanceof Map) {
                Iterator it2 = ((Map) obj).entrySet().iterator();
                while (it2.hasNext()) {
                    printField(sb, i, str, (Map.Entry) it2.next());
                }
                return;
            }
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                ByteString$LiteralByteString byteString$LiteralByteString = ByteString$LiteralByteString.EMPTY;
                sb.append(escapeBytes(new ByteString$LiteralByteString(((String) obj).getBytes(Internal.UTF_8))));
                sb.append('\"');
                return;
            }
            if (obj instanceof ByteString$LiteralByteString) {
                sb.append(": \"");
                sb.append(escapeBytes((ByteString$LiteralByteString) obj));
                sb.append('\"');
                return;
            }
            if (obj instanceof GeneratedMessageLite) {
                sb.append(" {");
                reflectivePrintWithIndent((GeneratedMessageLite) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
                return;
            }
            if (!(obj instanceof Map.Entry)) {
                sb.append(": ");
                sb.append(obj.toString());
                return;
            }
            sb.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i4 = i + 2;
            printField(sb, i4, "key", entry.getKey());
            printField(sb, i4, "value", entry.getValue());
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
        }

        /* JADX WARN: Code restructure failed: missing block: B:68:0x01a5, code lost:
        
            if (((java.lang.Integer) r11).intValue() == 0) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x01a7, code lost:
        
            r7 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x01b9, code lost:
        
            if (((java.lang.Float) r11).floatValue() == androidx.recyclerview.widget.RecyclerView.DECELERATION_RATE) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x01cb, code lost:
        
            if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L57;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void reflectivePrintWithIndent(androidx.datastore.preferences.protobuf.GeneratedMessageLite r18, java.lang.StringBuilder r19, int r20) {
            /*
                Method dump skipped, instructions count: 573
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.reflectivePrintWithIndent(androidx.datastore.preferences.protobuf.GeneratedMessageLite, java.lang.StringBuilder, int):void");
        }

        public static int unsafeIncompleteStateFor(long j, byte[] bArr, int i, int i2) {
            if (i2 == 0) {
                SafeProcessor safeProcessor = Utf8.processor;
                if (i > -12) {
                    return -1;
                }
                return i;
            }
            if (i2 == 1) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j));
            }
            if (i2 == 2) {
                return Utf8.incompleteStateFor(i, UnsafeUtil.getByte(bArr, j), UnsafeUtil.getByte(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* JADX WARN: Removed duplicated region for block: B:80:0x0180  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0184  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int encodeUtf8(java.lang.String r26, byte[] r27, int r28, int r29) {
            /*
                Method dump skipped, instructions count: 620
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.encodeUtf8(java.lang.String, byte[], int, int):int");
        }

        public final int partialIsValidUtf8(byte[] bArr, int i, int i2) {
            byte b;
            int i3;
            int i4;
            int i5 = i;
            byte b2 = -19;
            switch (this.$r8$classId) {
                case 0:
                    while (i5 < i2 && bArr[i5] >= 0) {
                        i5++;
                    }
                    if (i5 < i2) {
                        while (i5 < i2) {
                            int i6 = i5 + 1;
                            byte b3 = bArr[i5];
                            if (b3 >= 0) {
                                i5 = i6;
                            } else if (b3 < -32) {
                                if (i6 >= i2) {
                                    return b3;
                                }
                                if (b3 < -62) {
                                    return -1;
                                }
                                i5 += 2;
                                if (bArr[i6] > -65) {
                                    return -1;
                                }
                            } else if (b3 < -16) {
                                if (i6 >= i2 - 1) {
                                    return Utf8.incompleteStateFor(bArr, i6, i2);
                                }
                                int i7 = i5 + 2;
                                byte b4 = bArr[i6];
                                if (b4 > -65) {
                                    return -1;
                                }
                                if (b3 == -32 && b4 < -96) {
                                    return -1;
                                }
                                if (b3 == -19 && b4 >= -96) {
                                    return -1;
                                }
                                i5 += 3;
                                if (bArr[i7] > -65) {
                                    return -1;
                                }
                            } else {
                                if (i6 >= i2 - 2) {
                                    return Utf8.incompleteStateFor(bArr, i6, i2);
                                }
                                int i8 = i5 + 2;
                                byte b5 = bArr[i6];
                                if (b5 > -65 || (((b5 + 112) + (b3 << 28)) >> 30) != 0) {
                                    return -1;
                                }
                                int i9 = i5 + 3;
                                if (bArr[i8] > -65) {
                                    return -1;
                                }
                                i5 += 4;
                                if (bArr[i9] > -65) {
                                    return -1;
                                }
                            }
                        }
                    }
                    return 0;
                default:
                    int i10 = 2;
                    if ((i5 | i2 | (bArr.length - i2)) < 0) {
                        throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", Integer.valueOf(bArr.length), Integer.valueOf(i5), Integer.valueOf(i2)));
                    }
                    long j = i5;
                    int i11 = (int) (i2 - j);
                    if (i11 < 16) {
                        b = 0;
                        i3 = 0;
                    } else {
                        long j2 = j;
                        b = 0;
                        i3 = 0;
                        while (true) {
                            if (i3 < i11) {
                                long j3 = j2 + 1;
                                if (UnsafeUtil.getByte(bArr, j2) >= 0) {
                                    i3++;
                                    j2 = j3;
                                }
                            } else {
                                i3 = i11;
                            }
                        }
                    }
                    int i12 = i11 - i3;
                    long j4 = j + i3;
                    while (true) {
                        byte b6 = b;
                        while (true) {
                            if (i12 > 0) {
                                long j5 = j4 + 1;
                                byte b7 = UnsafeUtil.getByte(bArr, j4);
                                if (b7 >= 0) {
                                    i12--;
                                    b6 = b7;
                                    j4 = j5;
                                } else {
                                    b6 = b7;
                                    j4 = j5;
                                }
                            }
                        }
                        if (i12 == 0) {
                            return b;
                        }
                        int i13 = i12 - 1;
                        if (b6 < -32) {
                            if (i13 == 0) {
                                return b6;
                            }
                            i12 -= 2;
                            if (b6 < -62) {
                                return -1;
                            }
                            long j6 = j4 + 1;
                            if (UnsafeUtil.getByte(bArr, j4) > -65) {
                                return -1;
                            }
                            j4 = j6;
                            i4 = i10;
                        } else if (b6 >= -16) {
                            i4 = i10;
                            if (i13 < 3) {
                                return unsafeIncompleteStateFor(j4, bArr, b6, i13);
                            }
                            i12 -= 4;
                            long j7 = j4 + 1;
                            byte b8 = UnsafeUtil.getByte(bArr, j4);
                            if (b8 > -65 || (((b8 + 112) + (b6 << 28)) >> 30) != 0) {
                                return -1;
                            }
                            long j8 = j4 + 2;
                            if (UnsafeUtil.getByte(bArr, j7) > -65) {
                                return -1;
                            }
                            j4 += 3;
                            if (UnsafeUtil.getByte(bArr, j8) > -65) {
                                return -1;
                            }
                        } else {
                            if (i13 < i10) {
                                return unsafeIncompleteStateFor(j4, bArr, b6, i13);
                            }
                            i12 -= 3;
                            i4 = i10;
                            long j9 = j4 + 1;
                            byte b9 = UnsafeUtil.getByte(bArr, j4);
                            if (b9 > -65) {
                                return -1;
                            }
                            if (b6 == -32 && b9 < -96) {
                                return -1;
                            }
                            if (b6 == b2 && b9 >= -96) {
                                return -1;
                            }
                            j4 += 2;
                            if (UnsafeUtil.getByte(bArr, j9) > -65) {
                                return -1;
                            }
                        }
                        i10 = i4;
                        b2 = -19;
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i, int i2) {
            super(Modifier.CC.m(i, i2, "Unpaired surrogate at index ", " of "));
        }
    }

    static {
        processor = (UnsafeUtil.HAS_UNSAFE_ARRAY_OPERATIONS && UnsafeUtil.HAS_UNSAFE_BYTEBUFFER_OPERATIONS && !Android.isOnAndroidDevice()) ? new SafeProcessor(1) : new SafeProcessor(0);
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
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) < 65536) {
                                throw new UnpairedSurrogateException(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }

    public static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            if (b > -12) {
                return -1;
            }
            return b;
        }
        if (i3 == 1) {
            return incompleteStateFor(b, bArr[i]);
        }
        if (i3 == 2) {
            return incompleteStateFor(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    public static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }
}
