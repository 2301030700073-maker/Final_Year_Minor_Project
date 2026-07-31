package coil3.network;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.ByteString;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class ByteStringNetworkRequestBody implements NetworkRequestBody {
    private final ByteString bytes;

    private /* synthetic */ ByteStringNetworkRequestBody(ByteString byteString) {
        this.bytes = byteString;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ByteStringNetworkRequestBody m863boximpl(ByteString byteString) {
        return new ByteStringNetworkRequestBody(byteString);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m865equalsimpl(ByteString byteString, Object obj) {
        return (obj instanceof ByteStringNetworkRequestBody) && Intrinsics.areEqual(byteString, ((ByteStringNetworkRequestBody) obj).m870unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m866equalsimpl0(ByteString byteString, ByteString byteString2) {
        return Intrinsics.areEqual(byteString, byteString2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m867hashCodeimpl(ByteString byteString) {
        return byteString.hashCode();
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m868toStringimpl(ByteString byteString) {
        return "ByteStringNetworkRequestBody(bytes=" + byteString + ")";
    }

    /* renamed from: writeTo-impl, reason: not valid java name */
    public static Object m869writeToimpl(ByteString byteString, BufferedSink bufferedSink, Continuation continuation) {
        bufferedSink.write(byteString);
        return Unit.INSTANCE;
    }

    public boolean equals(Object obj) {
        return m865equalsimpl(this.bytes, obj);
    }

    public int hashCode() {
        return m867hashCodeimpl(this.bytes);
    }

    public String toString() {
        return m868toStringimpl(this.bytes);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ ByteString m870unboximpl() {
        return this.bytes;
    }

    @Override // coil3.network.NetworkRequestBody
    public Object writeTo(BufferedSink bufferedSink, Continuation continuation) {
        return m869writeToimpl(this.bytes, bufferedSink, continuation);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static ByteString m864constructorimpl(ByteString byteString) {
        return byteString;
    }
}
