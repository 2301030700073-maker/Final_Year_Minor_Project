package coil3.network;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class SourceResponseBody implements NetworkResponseBody {
    private final BufferedSource source;

    private /* synthetic */ SourceResponseBody(BufferedSource bufferedSource) {
        this.source = bufferedSource;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SourceResponseBody m872boximpl(BufferedSource bufferedSource) {
        return new SourceResponseBody(bufferedSource);
    }

    /* renamed from: close-impl, reason: not valid java name */
    public static void m873closeimpl(BufferedSource bufferedSource) {
        bufferedSource.close();
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m875equalsimpl(BufferedSource bufferedSource, Object obj) {
        return (obj instanceof SourceResponseBody) && Intrinsics.areEqual(bufferedSource, ((SourceResponseBody) obj).m881unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m876equalsimpl0(BufferedSource bufferedSource, BufferedSource bufferedSource2) {
        return Intrinsics.areEqual(bufferedSource, bufferedSource2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m877hashCodeimpl(BufferedSource bufferedSource) {
        return bufferedSource.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m878toStringimpl(BufferedSource bufferedSource) {
        return "SourceResponseBody(source=" + bufferedSource + ")";
    }

    /* renamed from: writeTo-impl, reason: not valid java name */
    public static Object m880writeToimpl(BufferedSource bufferedSource, FileSystem fileSystem, Path path, Continuation continuation) {
        RealBufferedSink buffer = Okio.buffer(fileSystem.sink(path, false));
        try {
            new Long(bufferedSource.readAll(buffer));
            try {
                buffer.close();
                th = null;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                buffer.close();
            } catch (Throwable th3) {
                ResultKt.addSuppressed(th, th3);
            }
        }
        if (th == null) {
            return Unit.INSTANCE;
        }
        throw th;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        m873closeimpl(this.source);
    }

    public boolean equals(Object obj) {
        return m875equalsimpl(this.source, obj);
    }

    public int hashCode() {
        return m877hashCodeimpl(this.source);
    }

    public String toString() {
        return m878toStringimpl(this.source);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ BufferedSource m881unboximpl() {
        return this.source;
    }

    @Override // coil3.network.NetworkResponseBody
    public Object writeTo(BufferedSink bufferedSink, Continuation continuation) {
        return m879writeToimpl(this.source, bufferedSink, continuation);
    }

    @Override // coil3.network.NetworkResponseBody
    public Object writeTo(FileSystem fileSystem, Path path, Continuation continuation) {
        return m880writeToimpl(this.source, fileSystem, path, continuation);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static BufferedSource m874constructorimpl(BufferedSource bufferedSource) {
        return bufferedSource;
    }

    /* renamed from: writeTo-impl, reason: not valid java name */
    public static Object m879writeToimpl(BufferedSource bufferedSource, BufferedSink bufferedSink, Continuation continuation) {
        bufferedSource.readAll(bufferedSink);
        return Unit.INSTANCE;
    }
}
