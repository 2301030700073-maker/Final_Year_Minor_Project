package okio.internal;

import androidx.compose.ui.Modifier;
import androidx.viewpager.widget.ViewPager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Buffer;
import okio.FileSystem;
import okio.JvmFileHandle;
import okio.Path;
import okio.RealBufferedSource;
import okio.SegmentedByteString;
import okio.ZipFileSystem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }

    public static final LinkedHashMap buildIndex(ArrayList arrayList) {
        String str = Path.DIRECTORY_SEPARATOR;
        Path path = Path.Companion.get("/");
        Pair[] pairArr = {new Pair(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(1));
        MapsKt__MapsKt.putAll(linkedHashMap, pairArr);
        for (ZipEntry zipEntry : CollectionsKt.sortedWith(arrayList, new ViewPager.AnonymousClass1(11))) {
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

    public static final String getHex(int i) {
        CharsKt.checkRadix(16);
        String num = Integer.toString(i, 16);
        num.getClass();
        return "0x".concat(num);
    }

    public static final ZipFileSystem openZip(Path path, FileSystem fileSystem, Function1 function1) {
        Throwable th;
        Throwable th2;
        Throwable th3;
        int readIntLe;
        fileSystem.getClass();
        JvmFileHandle openReadOnly = fileSystem.openReadOnly(path);
        try {
            long size = openReadOnly.size();
            long j = size - 22;
            if (j < 0) {
                throw new IOException("not a zip: size=" + openReadOnly.size());
            }
            long max = Math.max(size - 65558, 0L);
            do {
                RealBufferedSource realBufferedSource = new RealBufferedSource(openReadOnly.source(j));
                try {
                    if (realBufferedSource.readIntLe() == 101010256) {
                        int readShortLe = realBufferedSource.readShortLe() & 65535;
                        int readShortLe2 = realBufferedSource.readShortLe() & 65535;
                        long readShortLe3 = realBufferedSource.readShortLe() & 65535;
                        if (readShortLe3 != (realBufferedSource.readShortLe() & 65535) || readShortLe != 0 || readShortLe2 != 0) {
                            throw new IOException("unsupported zip: spanned");
                        }
                        realBufferedSource.skip(4L);
                        int readShortLe4 = realBufferedSource.readShortLe() & 65535;
                        EocdRecord eocdRecord = new EocdRecord(readShortLe3, 4294967295L & realBufferedSource.readIntLe(), readShortLe4);
                        realBufferedSource.readUtf8(readShortLe4);
                        realBufferedSource.close();
                        long j2 = j - 20;
                        if (j2 > 0) {
                            realBufferedSource = new RealBufferedSource(openReadOnly.source(j2));
                            try {
                                if (realBufferedSource.readIntLe() == 117853008) {
                                    int readIntLe2 = realBufferedSource.readIntLe();
                                    long readLongLe = realBufferedSource.readLongLe();
                                    if (realBufferedSource.readIntLe() != 1 || readIntLe2 != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    realBufferedSource = new RealBufferedSource(openReadOnly.source(readLongLe));
                                    try {
                                        readIntLe = realBufferedSource.readIntLe();
                                    } catch (Throwable th4) {
                                        try {
                                        } catch (Throwable th5) {
                                            ResultKt.addSuppressed(th4, th5);
                                        }
                                        th3 = th4;
                                    }
                                    if (readIntLe != 101075792) {
                                        throw new IOException("bad zip: expected " + getHex(101075792) + " but was " + getHex(readIntLe));
                                    }
                                    realBufferedSource.skip(12L);
                                    int readIntLe3 = realBufferedSource.readIntLe();
                                    int readIntLe4 = realBufferedSource.readIntLe();
                                    long readLongLe2 = realBufferedSource.readLongLe();
                                    if (readLongLe2 != realBufferedSource.readLongLe() || readIntLe3 != 0 || readIntLe4 != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    realBufferedSource.skip(8L);
                                    try {
                                        th3 = null;
                                    } catch (Throwable th6) {
                                        th3 = th6;
                                    }
                                    eocdRecord = new EocdRecord(readLongLe2, realBufferedSource.readLongLe(), readShortLe4);
                                    if (th3 != null) {
                                        throw th3;
                                    }
                                }
                                try {
                                    th2 = null;
                                } catch (Throwable th7) {
                                    th2 = th7;
                                }
                            } catch (Throwable th8) {
                                try {
                                } catch (Throwable th9) {
                                    ResultKt.addSuppressed(th8, th9);
                                }
                                th2 = th8;
                            }
                            if (th2 != null) {
                                throw th2;
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        realBufferedSource = new RealBufferedSource(openReadOnly.source(eocdRecord.centralDirectoryOffset));
                        try {
                            long j3 = eocdRecord.entryCount;
                            for (long j4 = 0; j4 < j3; j4++) {
                                ZipEntry readCentralDirectoryZipEntry = readCentralDirectoryZipEntry(realBufferedSource);
                                if (readCentralDirectoryZipEntry.offset >= eocdRecord.centralDirectoryOffset) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (((Boolean) function1.invoke(readCentralDirectoryZipEntry)).booleanValue()) {
                                    arrayList.add(readCentralDirectoryZipEntry);
                                }
                            }
                            try {
                                th = null;
                            } catch (Throwable th10) {
                                th = th10;
                            }
                        } catch (Throwable th11) {
                            try {
                            } catch (Throwable th12) {
                                ResultKt.addSuppressed(th11, th12);
                            }
                            th = th11;
                        }
                        if (th != null) {
                            throw th;
                        }
                        ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, buildIndex(arrayList));
                        try {
                            openReadOnly.close();
                        } catch (Throwable unused) {
                        }
                        return zipFileSystem;
                    }
                    realBufferedSource.close();
                    j--;
                } finally {
                    realBufferedSource.close();
                }
            } while (j >= max);
            throw new IOException("not a zip: end of central directory signature not found");
        } finally {
        }
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("unsupported zip: general purpose bit flag=".concat(getHex(i)));
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
        if (StringsKt.contains$default((CharSequence) readUtf8, (char) 0)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: filename contains 0x00");
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
        readExtra(realBufferedSource, readShortLe6, new Function2() { // from class: okio.internal.ZipFilesKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int intValue = ((Integer) obj).intValue();
                long longValue = ((Long) obj2).longValue();
                RealBufferedSource realBufferedSource2 = realBufferedSource;
                if (intValue == 1) {
                    Ref$BooleanRef ref$BooleanRef2 = Ref$BooleanRef.this;
                    if (ref$BooleanRef2.element) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: zip64 extra repeated");
                        return null;
                    }
                    ref$BooleanRef2.element = true;
                    if (longValue < j2) {
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: zip64 extra too short");
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
                        _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: NTFS extra too short");
                        return null;
                    }
                    realBufferedSource2.skip(4L);
                    ZipFilesKt.readExtra(realBufferedSource2, (int) (longValue - 4), new ZipFilesKt$$ExternalSyntheticLambda1(ref$ObjectRef, realBufferedSource2, ref$ObjectRef2, ref$ObjectRef3));
                }
                return Unit.INSTANCE;
            }
        });
        if (j2 > 0 && !ref$BooleanRef.element) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: zip64 extra required but absent");
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: truncated header in extra field");
                return;
            }
            int readShortLe = realBufferedSource.readShortLe() & 65535;
            long readShortLe2 = realBufferedSource.readShortLe() & 65535;
            long j2 = j - 4;
            if (j2 < readShortLe2) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3("bad zip: truncated value in extra field");
                return;
            }
            realBufferedSource.require(readShortLe2);
            long j3 = buffer.size;
            function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
            long j4 = (buffer.size + readShortLe2) - j3;
            if (j4 < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3(Modifier.CC.m(readShortLe, "unsupported zip: too many bytes processed for "));
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("unsupported zip: general purpose bit flag=".concat(getHex(i)));
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
