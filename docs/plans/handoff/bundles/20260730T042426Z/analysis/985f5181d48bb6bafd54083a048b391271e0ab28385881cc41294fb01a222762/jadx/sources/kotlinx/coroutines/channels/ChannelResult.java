package kotlinx.coroutines.channels;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Channel.kt */
/* loaded from: classes2.dex */
public final class ChannelResult {
    public static final Companion Companion = new Companion(null);
    private static final Failed failed = new Failed();
    private final Object holder;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ChannelResult m2834boximpl(Object obj) {
        return new ChannelResult(obj);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Object m2835constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2836equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ChannelResult) && Intrinsics.areEqual(obj, ((ChannelResult) obj2).m2843unboximpl());
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2839hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        return m2836equalsimpl(this.holder, obj);
    }

    public int hashCode() {
        return m2839hashCodeimpl(this.holder);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m2843unboximpl() {
        return this.holder;
    }

    private /* synthetic */ ChannelResult(Object obj) {
        this.holder = obj;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m2841isSuccessimpl(Object obj) {
        return !(obj instanceof Failed);
    }

    /* renamed from: isClosed-impl, reason: not valid java name */
    public static final boolean m2840isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* renamed from: getOrNull-impl, reason: not valid java name */
    public static final Object m2838getOrNullimpl(Object obj) {
        if (obj instanceof Failed) {
            return null;
        }
        return obj;
    }

    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m2837exceptionOrNullimpl(Object obj) {
        Closed closed = obj instanceof Closed ? (Closed) obj : null;
        if (closed != null) {
            return closed.cause;
        }
        return null;
    }

    /* compiled from: Channel.kt */
    public static class Failed {
        public String toString() {
            return "Failed";
        }
    }

    /* compiled from: Channel.kt */
    public static final class Closed extends Failed {
        public final Throwable cause;

        public Closed(Throwable th) {
            this.cause = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) obj).cause);
        }

        public int hashCode() {
            Throwable th = this.cause;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.ChannelResult.Failed
        public String toString() {
            return "Closed(" + this.cause + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
    }

    /* compiled from: Channel.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: success-JP2dKIU, reason: not valid java name */
        public final Object m2846successJP2dKIU(Object obj) {
            return ChannelResult.m2835constructorimpl(obj);
        }

        /* renamed from: failure-PtdJZtk, reason: not valid java name */
        public final Object m2845failurePtdJZtk() {
            return ChannelResult.m2835constructorimpl(ChannelResult.failed);
        }

        /* renamed from: closed-JP2dKIU, reason: not valid java name */
        public final Object m2844closedJP2dKIU(Throwable th) {
            return ChannelResult.m2835constructorimpl(new Closed(th));
        }
    }

    public String toString() {
        return m2842toStringimpl(this.holder);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2842toStringimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).toString();
        }
        return "Value(" + obj + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
