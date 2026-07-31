package okio.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.viewpager.widget.ViewPager;
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
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;
import okio.Path;
import okio.RealBufferedSource;
import okio.SegmentedByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ZipFilesKt {
    public static final char[] HEX_DIGIT_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final int access$decodeHexDigit(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unexpected hex digit: ", c);
        return 0;
    }

    public static final LinkedHashMap buildIndex(ArrayList arrayList) {
        String str = Path.DIRECTORY_SEPARATOR;
        Path path = Path.Companion.get("/");
        LinkedHashMap mutableMapOf = MapsKt__MapsKt.mutableMapOf(new Pair(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532)));
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(arrayList, new ViewPager.AnonymousClass1(25))) {
            if (((ZipEntry) mutableMapOf.put(zipEntry.canonicalPath, zipEntry)) == null) {
                while (true) {
                    Path path2 = zipEntry.canonicalPath;
                    Path parent = path2.parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) mutableMapOf.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.children.add(path2);
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        mutableMapOf.put(parent, zipEntry3);
                        zipEntry3.children.add(path2);
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return mutableMapOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d6, code lost:
    
        if (r0 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d8, code lost:
    
        if (r15 != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00da, code lost:
    
        r5.addLast(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00dd, code lost:
    
        r3 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e1, code lost:
    
        r3 = r1;
        r1 = r2;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x013c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x013d, code lost:
    
        r9 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object collectRecursively(kotlin.sequences.SequenceBuilderIterator r25, okio.FileSystem r26, kotlin.collections.ArrayDeque r27, okio.Path r28, boolean r29, boolean r30, kotlin.coroutines.jvm.internal.BaseContinuationImpl r31) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ZipFilesKt.collectRecursively(kotlin.sequences.SequenceBuilderIterator, okio.FileSystem, kotlin.collections.ArrayDeque, okio.Path, boolean, boolean, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final String getHex(int i) {
        CharsKt__CharKt.checkRadix(16);
        String num = Integer.toString(i, 16);
        num.getClass();
        return "0x".concat(num);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01a7 A[Catch: all -> 0x0148, TRY_LEAVE, TryCatch #3 {all -> 0x0148, blocks: (B:3:0x000a, B:5:0x0018, B:6:0x0020, B:26:0x0078, B:28:0x0082, B:72:0x0147, B:82:0x0140, B:83:0x014c, B:108:0x01a7, B:114:0x01b4, B:117:0x01a2, B:11:0x01c0, B:15:0x01cc, B:16:0x01d3, B:133:0x01d4, B:134:0x01d7, B:135:0x01d8, B:136:0x01ed, B:106:0x019d, B:30:0x008b, B:32:0x0094, B:35:0x00a5, B:50:0x012a, B:64:0x0123, B:65:0x012e, B:66:0x0133, B:8:0x0029, B:19:0x0032, B:25:0x0059, B:130:0x01b8, B:131:0x01bd, B:78:0x013b), top: B:2:0x000a, inners: #0, #5, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01b4 A[Catch: all -> 0x0148, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0148, blocks: (B:3:0x000a, B:5:0x0018, B:6:0x0020, B:26:0x0078, B:28:0x0082, B:72:0x0147, B:82:0x0140, B:83:0x014c, B:108:0x01a7, B:114:0x01b4, B:117:0x01a2, B:11:0x01c0, B:15:0x01cc, B:16:0x01d3, B:133:0x01d4, B:134:0x01d7, B:135:0x01d8, B:136:0x01ed, B:106:0x019d, B:30:0x008b, B:32:0x0094, B:35:0x00a5, B:50:0x012a, B:64:0x0123, B:65:0x012e, B:66:0x0133, B:8:0x0029, B:19:0x0032, B:25:0x0059, B:130:0x01b8, B:131:0x01bd, B:78:0x013b), top: B:2:0x000a, inners: #0, #5, #9, #13 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.ZipFileSystem openZip(okio.Path r24, okio.FileSystem r25, kotlin.jvm.functions.Function1 r26) {
        /*
            Method dump skipped, instructions count: 505
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unsupported zip: general purpose bit flag=".concat(getHex(i)));
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: filename contains 0x00");
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
        readExtra(realBufferedSource, readShortLe6, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                RealBufferedSource realBufferedSource2 = realBufferedSource;
                if (intValue == 1) {
                    Ref$BooleanRef ref$BooleanRef2 = Ref$BooleanRef.this;
                    if (ref$BooleanRef2.element) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: zip64 extra repeated");
                        return null;
                    }
                    ref$BooleanRef2.element = true;
                    if (longValue < j2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: zip64 extra too short");
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: NTFS extra too short");
                        return null;
                    }
                    realBufferedSource2.skip(4L);
                    ZipFilesKt.readExtra(realBufferedSource2, (int) (longValue - 4), new ZipFilesKt$$ExternalSyntheticLambda1(ref$ObjectRef, realBufferedSource2, ref$ObjectRef2, ref$ObjectRef3));
                }
                return Unit.INSTANCE;
            }
        });
        if (j2 > 0 && !ref$BooleanRef.element) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: zip64 extra required but absent");
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: truncated header in extra field");
                return;
            }
            int readShortLe = realBufferedSource.readShortLe() & 65535;
            long readShortLe2 = realBufferedSource.readShortLe() & 65535;
            long j2 = j - 4;
            if (j2 < readShortLe2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4("bad zip: truncated value in extra field");
                return;
            }
            realBufferedSource.require(readShortLe2);
            long j3 = buffer.size;
            function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
            long j4 = (buffer.size + readShortLe2) - j3;
            if (j4 < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4(CameraDevices$CC.m("unsupported zip: too many bytes processed for ", readShortLe));
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("unsupported zip: general purpose bit flag=".concat(getHex(i)));
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
        readExtra(realBufferedSource, readShortLe2, new ZipFilesKt$$ExternalSyntheticLambda1(realBufferedSource, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3));
        return new ZipEntry(zipEntry.canonicalPath, zipEntry.isDirectory, zipEntry.comment, zipEntry.crc, zipEntry.compressedSize, zipEntry.size, zipEntry.compressionMethod, zipEntry.offset, zipEntry.dosLastModifiedAtDate, zipEntry.dosLastModifiedAtTime, zipEntry.ntfsLastModifiedAtFiletime, zipEntry.ntfsLastAccessedAtFiletime, zipEntry.ntfsCreatedAtFiletime, (Integer) ref$ObjectRef.element, (Integer) ref$ObjectRef2.element, (Integer) ref$ObjectRef3.element);
    }

    public static final int segment(SegmentedByteString segmentedByteString, int i) {
        int i2;
        int[] iArr = segmentedByteString.directory;
        int i3 = i + 1;
        int length = segmentedByteString.segments.length;
        iArr.getClass();
        int i4 = length - 1;
        int i5 = 0;
        while (true) {
            if (i5 <= i4) {
                i2 = (i5 + i4) >>> 1;
                int i6 = iArr[i2];
                if (i6 >= i3) {
                    if (i6 <= i3) {
                        break;
                    }
                    i4 = i2 - 1;
                } else {
                    i5 = i2 + 1;
                }
            } else {
                i2 = (-i5) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }
}
