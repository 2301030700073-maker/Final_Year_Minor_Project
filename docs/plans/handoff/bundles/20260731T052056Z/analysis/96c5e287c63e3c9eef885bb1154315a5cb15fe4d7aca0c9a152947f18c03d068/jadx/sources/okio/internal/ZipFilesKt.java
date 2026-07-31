package okio.internal;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.DiffUtil;
import coil3.util.UtilsKt;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import okio.RealBufferedSource;
import okio.SegmentedByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ZipFilesKt {
    public static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final LinkedHashMap buildIndex(ArrayList arrayList) {
        String str = Path.DIRECTORY_SEPARATOR;
        Path path = Path.Companion.get("/");
        Pair[] pairArr = {new Pair(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(1));
        MapsKt__MapsKt.putAll(linkedHashMap, pairArr);
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(arrayList, new DiffUtil.AnonymousClass1(17))) {
            if (((ZipEntry) linkedHashMap.put(zipEntry.canonicalPath, zipEntry)) == null) {
                while (true) {
                    Path path2 = zipEntry.canonicalPath;
                    Path parent = path2.parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) linkedHashMap.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.children.add(path2);
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        linkedHashMap.put(parent, zipEntry3);
                        zipEntry3.children.add(path2);
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static final long commonIndexOf(RealBufferedSource realBufferedSource, ByteString byteString, int i, long j, long j2) {
        ByteString byteString2;
        Buffer buffer = realBufferedSource.bufferField;
        byteString.getClass();
        long j3 = i;
        HttpUrl.Companion.checkOffsetAndCount(byteString.getSize$okio(), 0L, j3);
        if (realBufferedSource.closed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("closed");
            return 0L;
        }
        long j4 = j;
        int i2 = i;
        ByteString byteString3 = byteString;
        loop0: while (true) {
            long commonIndexOf = Buffer.commonIndexOf(buffer, byteString3, j4, j2, i2);
            long j5 = j4;
            if (commonIndexOf == -1) {
                long j6 = buffer.size;
                long j7 = (j6 - j3) + 1;
                if (j7 >= j2) {
                    break;
                }
                if (j6 >= j2) {
                    int max = (int) Math.max(1L, (j6 - j2) + 1);
                    int min = ((int) Math.min(j3, (buffer.size - j5) + 1)) - 1;
                    if (max > min) {
                        break;
                    }
                    while (true) {
                        byteString2 = byteString;
                        if (!buffer.rangeEquals(buffer.size - min, byteString2, min)) {
                            if (min == max) {
                                break loop0;
                            }
                            min--;
                        } else {
                            break;
                        }
                    }
                } else {
                    byteString2 = byteString;
                }
                if (realBufferedSource.source.read(buffer, 8192L) == -1) {
                    break;
                }
                i2 = i;
                j4 = Math.max(j5, j7);
                byteString3 = byteString2;
            } else {
                return commonIndexOf;
            }
        }
        return -1L;
    }

    public static final int decodeHexDigit(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }

    public static final String getHex(int i) {
        UtilsKt.checkRadix(16);
        String num = Integer.toString(i, 16);
        num.getClass();
        return "0x".concat(num);
    }

    public static boolean keepPath(Path path) {
        return !StringsKt__StringsJVMKt.endsWith(path.name(), ".class", true);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01aa A[Catch: all -> 0x014b, TRY_LEAVE, TryCatch #4 {all -> 0x014b, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:26:0x007b, B:28:0x0085, B:72:0x014a, B:82:0x0143, B:83:0x014f, B:108:0x01aa, B:114:0x01b7, B:117:0x01a5, B:11:0x01c3, B:15:0x01cf, B:16:0x01d6, B:133:0x01d7, B:134:0x01da, B:135:0x01db, B:136:0x01f0, B:78:0x013e, B:106:0x01a0, B:30:0x008e, B:32:0x0097, B:35:0x00a8, B:50:0x012d, B:64:0x0126, B:65:0x0131, B:66:0x0136, B:8:0x002c, B:19:0x0035, B:25:0x005c, B:130:0x01bb, B:131:0x01c0), top: B:2:0x000d, inners: #0, #1, #6, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01b7 A[Catch: all -> 0x014b, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x014b, blocks: (B:3:0x000d, B:5:0x001b, B:6:0x0023, B:26:0x007b, B:28:0x0085, B:72:0x014a, B:82:0x0143, B:83:0x014f, B:108:0x01aa, B:114:0x01b7, B:117:0x01a5, B:11:0x01c3, B:15:0x01cf, B:16:0x01d6, B:133:0x01d7, B:134:0x01da, B:135:0x01db, B:136:0x01f0, B:78:0x013e, B:106:0x01a0, B:30:0x008e, B:32:0x0097, B:35:0x00a8, B:50:0x012d, B:64:0x0126, B:65:0x0131, B:66:0x0136, B:8:0x002c, B:19:0x0035, B:25:0x005c, B:130:0x01bb, B:131:0x01c0), top: B:2:0x000d, inners: #0, #1, #6, #10 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.ZipFileSystem openZip(okio.Path r24, okio.FileSystem r25, kotlin.jvm.functions.Function1 r26) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ZipFilesKt.openZip(okio.Path, okio.FileSystem, kotlin.jvm.functions.Function1):okio.ZipFileSystem");
    }

    public static final ZipEntry readCentralDirectoryZipEntry(final RealBufferedSource realBufferedSource) {
        int readIntLe = realBufferedSource.readIntLe();
        if (readIntLe != 33639248) {
            throw new IOException("bad zip: expected " + getHex(33639248) + " but was " + getHex(readIntLe));
        }
        realBufferedSource.skip(4L);
        short readShortLe = realBufferedSource.readShortLe();
        int i = readShortLe & 65535;
        if ((readShortLe & 1) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unsupported zip: general purpose bit flag=".concat(getHex(i)));
            return null;
        }
        int readShortLe2 = realBufferedSource.readShortLe() & 65535;
        int readShortLe3 = realBufferedSource.readShortLe() & 65535;
        int readShortLe4 = realBufferedSource.readShortLe() & 65535;
        long readIntLe2 = realBufferedSource.readIntLe() & 4294967295L;
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.element = realBufferedSource.readIntLe() & 4294967295L;
        final Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        ref$LongRef2.element = realBufferedSource.readIntLe() & 4294967295L;
        int readShortLe5 = realBufferedSource.readShortLe() & 65535;
        int readShortLe6 = realBufferedSource.readShortLe() & 65535;
        int readShortLe7 = realBufferedSource.readShortLe() & 65535;
        realBufferedSource.skip(8L);
        final Ref$LongRef ref$LongRef3 = new Ref$LongRef();
        ref$LongRef3.element = realBufferedSource.readIntLe() & 4294967295L;
        String readUtf8 = realBufferedSource.readUtf8(readShortLe5);
        if (StringsKt.contains$default(readUtf8, (char) 0)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: filename contains 0x00");
            return null;
        }
        long j = ref$LongRef2.element == 4294967295L ? 8L : 0L;
        if (ref$LongRef.element == 4294967295L) {
            j += 8;
        }
        if (ref$LongRef3.element == 4294967295L) {
            j += 8;
        }
        final long j2 = j;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        readExtra(realBufferedSource, readShortLe6, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                RealBufferedSource realBufferedSource2 = realBufferedSource;
                if (intValue == 1) {
                    Ref$BooleanRef ref$BooleanRef2 = Ref$BooleanRef.this;
                    if (ref$BooleanRef2.element) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: zip64 extra repeated");
                        return null;
                    }
                    ref$BooleanRef2.element = true;
                    if (longValue < j2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: zip64 extra too short");
                        return null;
                    }
                    Ref$LongRef ref$LongRef4 = ref$LongRef2;
                    long j3 = ref$LongRef4.element;
                    if (j3 == 4294967295L) {
                        j3 = realBufferedSource2.readLongLe();
                    }
                    ref$LongRef4.element = j3;
                    Ref$LongRef ref$LongRef5 = ref$LongRef;
                    ref$LongRef5.element = ref$LongRef5.element == 4294967295L ? realBufferedSource2.readLongLe() : 0L;
                    Ref$LongRef ref$LongRef6 = ref$LongRef3;
                    ref$LongRef6.element = ref$LongRef6.element == 4294967295L ? realBufferedSource2.readLongLe() : 0L;
                } else if (intValue == 10) {
                    if (longValue < 4) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: NTFS extra too short");
                        return null;
                    }
                    realBufferedSource2.skip(4L);
                    ZipFilesKt.readExtra(realBufferedSource2, (int) (longValue - 4), new ZipFilesKt$$ExternalSyntheticLambda0(ref$ObjectRef, realBufferedSource2, ref$ObjectRef2, ref$ObjectRef3));
                }
                return Unit.INSTANCE;
            }
        });
        if (j2 > 0 && !ref$BooleanRef.element) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: zip64 extra required but absent");
            return null;
        }
        String readUtf82 = realBufferedSource.readUtf8(readShortLe7);
        String str = Path.DIRECTORY_SEPARATOR;
        return new ZipEntry(Path.Companion.get("/").resolve(readUtf8), StringsKt__StringsJVMKt.endsWith(readUtf8, "/", false), readUtf82, readIntLe2, ref$LongRef.element, ref$LongRef2.element, readShortLe2, ref$LongRef3.element, readShortLe4, readShortLe3, (Long) ref$ObjectRef.element, (Long) ref$ObjectRef2.element, (Long) ref$ObjectRef3.element, 57344);
    }

    public static final void readExtra(RealBufferedSource realBufferedSource, int i, Function2 function2) {
        Buffer buffer = realBufferedSource.bufferField;
        long j = i;
        while (j != 0) {
            if (j < 4) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: truncated header in extra field");
                return;
            }
            int readShortLe = realBufferedSource.readShortLe() & 65535;
            long readShortLe2 = realBufferedSource.readShortLe() & 65535;
            long j2 = j - 4;
            if (j2 < readShortLe2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("bad zip: truncated value in extra field");
                return;
            }
            realBufferedSource.require(readShortLe2);
            long j3 = buffer.size;
            function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
            long j4 = (buffer.size + readShortLe2) - j3;
            if (j4 < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2(Animation.CC.m(readShortLe, "unsupported zip: too many bytes processed for "));
                return;
            } else {
                if (j4 > 0) {
                    buffer.skip(j4);
                }
                j = j2 - readShortLe2;
            }
        }
    }

    public static final ZipEntry readOrSkipLocalHeader(RealBufferedSource realBufferedSource, ZipEntry zipEntry) {
        int readIntLe = realBufferedSource.readIntLe();
        if (readIntLe != 67324752) {
            throw new IOException("bad zip: expected " + getHex(67324752) + " but was " + getHex(readIntLe));
        }
        realBufferedSource.skip(2L);
        short readShortLe = realBufferedSource.readShortLe();
        int i = readShortLe & 65535;
        if ((readShortLe & 1) != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unsupported zip: general purpose bit flag=".concat(getHex(i)));
            return null;
        }
        realBufferedSource.skip(18L);
        int readShortLe2 = realBufferedSource.readShortLe() & 65535;
        realBufferedSource.skip(realBufferedSource.readShortLe() & 65535);
        if (zipEntry == null) {
            realBufferedSource.skip(readShortLe2);
            return null;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        readExtra(realBufferedSource, readShortLe2, new ZipFilesKt$$ExternalSyntheticLambda0(realBufferedSource, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3));
        return new ZipEntry(zipEntry.canonicalPath, zipEntry.isDirectory, zipEntry.comment, zipEntry.crc, zipEntry.compressedSize, zipEntry.size, zipEntry.compressionMethod, zipEntry.offset, zipEntry.dosLastModifiedAtDate, zipEntry.dosLastModifiedAtTime, zipEntry.ntfsLastModifiedAtFiletime, zipEntry.ntfsLastAccessedAtFiletime, zipEntry.ntfsCreatedAtFiletime, (Integer) ref$ObjectRef.element, (Integer) ref$ObjectRef2.element, (Integer) ref$ObjectRef3.element);
    }

    public static final int segment(SegmentedByteString segmentedByteString, int i) {
        int i2;
        int[] iArr = segmentedByteString.directory;
        int i3 = i + 1;
        int length = segmentedByteString.segments.length - 1;
        int i4 = 0;
        while (true) {
            if (i4 <= length) {
                i2 = (i4 + length) >>> 1;
                int i5 = iArr[i2];
                if (i5 >= i3) {
                    if (i5 <= i3) {
                        break;
                    }
                    length = i2 - 1;
                } else {
                    i4 = i2 + 1;
                }
            } else {
                i2 = (-i4) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }
}
