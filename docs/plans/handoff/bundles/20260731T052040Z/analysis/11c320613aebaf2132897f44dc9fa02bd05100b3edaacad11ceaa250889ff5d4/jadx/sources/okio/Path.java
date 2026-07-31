package okio;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import j$.time.Instant;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocket;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okio.AsyncTimeout;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.util.SliderStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Path implements Comparable {
    public static final String DIRECTORY_SEPARATOR;
    public final ByteString bytes;

    static {
        String str = File.separator;
        str.getClass();
        DIRECTORY_SEPARATOR = str;
    }

    public Path(ByteString byteString) {
        byteString.getClass();
        this.bytes = byteString;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Path path = (Path) obj;
        path.getClass();
        return this.bytes.compareTo(path.bytes);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).bytes, this.bytes);
    }

    public final ArrayList getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        ByteString byteString = this.bytes;
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < byteString.getSize$okio() && byteString.internalGet$okio(access$rootLength) == 92) {
            access$rootLength++;
        }
        int size$okio = byteString.getSize$okio();
        int i = access$rootLength;
        while (access$rootLength < size$okio) {
            if (byteString.internalGet$okio(access$rootLength) == 47 || byteString.internalGet$okio(access$rootLength) == 92) {
                arrayList.add(byteString.substring(i, access$rootLength));
                i = access$rootLength + 1;
            }
            access$rootLength++;
        }
        if (i < byteString.getSize$okio()) {
            arrayList.add(byteString.substring(i, byteString.getSize$okio()));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.bytes.hashCode();
    }

    public final String name() {
        ByteString byteString = okio.internal.Path.SLASH;
        ByteString byteString2 = this.bytes;
        int lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString);
        if (lastIndexOf$default == -1) {
            lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, okio.internal.Path.BACKSLASH);
        }
        if (lastIndexOf$default != -1) {
            byteString2 = ByteString.substring$default(byteString2, lastIndexOf$default + 1, 0, 2);
        } else if (volumeLetter() != null && byteString2.getSize$okio() == 2) {
            byteString2 = ByteString.EMPTY;
        }
        return byteString2.utf8();
    }

    public final Path parent() {
        ByteString byteString = okio.internal.Path.DOT;
        ByteString byteString2 = this.bytes;
        if (Intrinsics.areEqual(byteString2, byteString)) {
            return null;
        }
        ByteString byteString3 = okio.internal.Path.SLASH;
        if (Intrinsics.areEqual(byteString2, byteString3)) {
            return null;
        }
        ByteString byteString4 = okio.internal.Path.BACKSLASH;
        if (Intrinsics.areEqual(byteString2, byteString4)) {
            return null;
        }
        ByteString byteString5 = okio.internal.Path.DOT_DOT;
        byteString2.getClass();
        byteString5.getClass();
        if (byteString2.rangeEquals(byteString2.getSize$okio() - byteString5.getSize$okio(), byteString5, byteString5.getSize$okio()) && (byteString2.getSize$okio() == 2 || byteString2.rangeEquals(byteString2.getSize$okio() - 3, byteString3, 1) || byteString2.rangeEquals(byteString2.getSize$okio() - 3, byteString4, 1))) {
            return null;
        }
        int lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString3);
        if (lastIndexOf$default == -1) {
            lastIndexOf$default = ByteString.lastIndexOf$default(byteString2, byteString4);
        }
        if (lastIndexOf$default == 2 && volumeLetter() != null) {
            if (byteString2.getSize$okio() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(byteString2, 0, 3, 1));
        }
        if (lastIndexOf$default == 1) {
            byteString4.getClass();
            if (byteString2.rangeEquals(0, byteString4, byteString4.getSize$okio())) {
                return null;
            }
        }
        if (lastIndexOf$default != -1 || volumeLetter() == null) {
            return lastIndexOf$default == -1 ? new Path(byteString) : lastIndexOf$default == 0 ? new Path(ByteString.substring$default(byteString2, 0, 1, 1)) : new Path(ByteString.substring$default(byteString2, 0, lastIndexOf$default, 1));
        }
        if (byteString2.getSize$okio() == 2) {
            return null;
        }
        return new Path(ByteString.substring$default(byteString2, 0, 2, 1));
    }

    public final Path relativeTo(Path path) {
        path.getClass();
        ByteString byteString = path.bytes;
        int access$rootLength = okio.internal.Path.access$rootLength(this);
        ByteString byteString2 = this.bytes;
        Path path2 = access$rootLength == -1 ? null : new Path(byteString2.substring(0, access$rootLength));
        int access$rootLength2 = okio.internal.Path.access$rootLength(path);
        if (!Intrinsics.areEqual(path2, access$rootLength2 != -1 ? new Path(byteString.substring(0, access$rootLength2)) : null)) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + path).toString());
        }
        ArrayList segmentsBytes = getSegmentsBytes();
        ArrayList segmentsBytes2 = path.getSegmentsBytes();
        int min = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < min && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i == min && byteString2.getSize$okio() == byteString.getSize$okio()) {
            return Companion.get(".");
        }
        if (segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(okio.internal.Path.DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + path).toString());
        }
        if (Intrinsics.areEqual(byteString, okio.internal.Path.DOT)) {
            return this;
        }
        Buffer buffer = new Buffer();
        ByteString slash = okio.internal.Path.getSlash(path);
        if (slash == null && (slash = okio.internal.Path.getSlash(this)) == null) {
            slash = okio.internal.Path.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i2 = i; i2 < size; i2++) {
            buffer.m713write(okio.internal.Path.DOT_DOT);
            buffer.m713write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i < size2) {
            buffer.m713write((ByteString) segmentsBytes.get(i));
            buffer.m713write(slash);
            i++;
        }
        return okio.internal.Path.toPath(buffer, false);
    }

    public final Path resolve(String str) {
        str.getClass();
        Buffer buffer = new Buffer();
        buffer.m717writeUtf8(str);
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(buffer, false), false);
    }

    public final File toFile() {
        return new File(this.bytes.utf8());
    }

    public final String toString() {
        return this.bytes.utf8();
    }

    public final Character volumeLetter() {
        ByteString byteString = okio.internal.Path.SLASH;
        ByteString byteString2 = this.bytes;
        if (ByteString.indexOf$default(byteString2, byteString) != -1 || byteString2.getSize$okio() < 2 || byteString2.internalGet$okio(1) != 58) {
            return null;
        }
        char internalGet$okio = (char) byteString2.internalGet$okio(0);
        if (('a' > internalGet$okio || internalGet$okio >= '{') && ('A' > internalGet$okio || internalGet$okio >= '[')) {
            return null;
        }
        return Character.valueOf(internalGet$okio);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion implements Function, Predicate, DeferredSocketAdapter.Factory, SliderStrategy {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Companion(int i) {
            this.$r8$classId = i;
        }

        public static final void access$insertIntoQueue(AsyncTimeout asyncTimeout) {
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            if (AsyncTimeout.idleSentinel == null) {
                AsyncTimeout.idleSentinel = new AsyncTimeout();
                AsyncTimeout.Watchdog watchdog = new AsyncTimeout.Watchdog("Okio Watchdog");
                watchdog.setDaemon(true);
                watchdog.start();
            }
            long nanoTime = System.nanoTime();
            long j = asyncTimeout.timeoutNanos;
            boolean z = asyncTimeout.hasDeadline;
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.timeoutAt = nanoTime + j;
            } else {
                if (!z) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m();
                    return;
                }
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            }
            PriorityQueue priorityQueue2 = AsyncTimeout.queue;
            int i = priorityQueue2.size + 1;
            priorityQueue2.size = i;
            AsyncTimeout[] asyncTimeoutArr = (AsyncTimeout[]) priorityQueue2.array;
            if (i == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
                ArraysKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 14);
                priorityQueue2.array = asyncTimeoutArr2;
            }
            priorityQueue2.heapifyUp(i, asyncTimeout);
            if (asyncTimeout.index == 1) {
                AsyncTimeout.condition.signal();
            }
        }

        public static AsyncTimeout awaitTimeout() {
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            AsyncTimeout asyncTimeout = ((AsyncTimeout[]) priorityQueue.array)[1];
            if (asyncTimeout == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.condition.await(AsyncTimeout.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
                if (((AsyncTimeout[]) priorityQueue.array)[1] != null || System.nanoTime() - nanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return AsyncTimeout.idleSentinel;
            }
            long nanoTime2 = asyncTimeout.timeoutAt - System.nanoTime();
            if (nanoTime2 > 0) {
                AsyncTimeout.condition.await(nanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.remove(asyncTimeout);
            asyncTimeout.state = 2;
            return asyncTimeout;
        }

        public static FeedGroupIcon feedGroupIconOf(int i) {
            EnumEntriesList enumEntriesList = FeedGroupIcon.$ENTRIES;
            enumEntriesList.getClass();
            UIntArray.Iterator iterator = new UIntArray.Iterator(enumEntriesList, 5);
            while (iterator.hasNext()) {
                FeedGroupIcon feedGroupIcon = (FeedGroupIcon) iterator.next();
                if (feedGroupIcon.getId() == i) {
                    return feedGroupIcon;
                }
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("Collection contains no element matching the predicate.");
            return null;
        }

        public static Path get(String str) {
            str.getClass();
            ByteString byteString = okio.internal.Path.SLASH;
            Buffer buffer = new Buffer();
            buffer.m717writeUtf8(str);
            return okio.internal.Path.toPath(buffer, false);
        }

        public static OffsetDateTime offsetDateTimeFromTimestamp(Long l) {
            if (l != null) {
                return OffsetDateTime.ofInstant(Instant.ofEpochMilli(l.longValue()), ZoneOffset.UTC);
            }
            return null;
        }

        public static Long offsetDateTimeToTimestamp(OffsetDateTime offsetDateTime) {
            OffsetDateTime withOffsetSameInstant;
            Instant instant;
            if (offsetDateTime == null || (withOffsetSameInstant = offsetDateTime.withOffsetSameInstant(ZoneOffset.UTC)) == null || (instant = withOffsetSameInstant.toInstant()) == null) {
                return null;
            }
            return Long.valueOf(instant.toEpochMilli());
        }

        public static StreamType streamTypeOf(String str) {
            str.getClass();
            return StreamType.valueOf(str);
        }

        @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
        public SocketAdapter create(SSLSocket sSLSocket) {
            Class<?> cls = sSLSocket.getClass();
            Class<?> cls2 = cls;
            while (!cls2.getSimpleName().equals("OpenSSLSocketImpl")) {
                cls2 = cls2.getSuperclass();
                if (cls2 == null) {
                    throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
                }
            }
            return new AndroidSocketAdapter(cls2);
        }

        @Override // okhttp3.internal.platform.android.DeferredSocketAdapter.Factory
        public boolean matchesSocket(SSLSocket sSLSocket) {
            return StringsKt__StringsJVMKt.startsWith(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public boolean test(Object obj) {
            return true;
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 1:
                    return "IdentityFunction";
                default:
                    return super.toString();
            }
        }

        @Override // org.schabi.newpipe.util.SliderStrategy
        public double valueOf(int i) {
            return Math.pow(2.0d, Cookie.Companion.clamp(i - 12, -12, 12) / 12.0d);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public Object apply(Object obj) {
            return obj;
        }
    }
}
