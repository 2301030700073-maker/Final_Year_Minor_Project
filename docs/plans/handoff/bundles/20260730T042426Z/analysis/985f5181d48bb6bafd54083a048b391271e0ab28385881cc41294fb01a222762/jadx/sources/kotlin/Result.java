package kotlin;

import ch.qos.logback.core.CoreConstants;
import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Result.kt */
/* loaded from: classes.dex */
public final class Result implements Serializable {
    public static final Companion Companion = new Companion(null);
    private final Object value;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Result m2646boximpl(Object obj) {
        return new Result(obj);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static Object m2647constructorimpl(Object obj) {
        return obj;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2648equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof Result) && Intrinsics.areEqual(obj, ((Result) obj2).m2655unboximpl());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2649equalsimpl0(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2651hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean equals(Object obj) {
        return m2648equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2651hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ Object m2655unboximpl() {
        return this.value;
    }

    private /* synthetic */ Result(Object obj) {
        this.value = obj;
    }

    /* renamed from: isSuccess-impl, reason: not valid java name */
    public static final boolean m2653isSuccessimpl(Object obj) {
        return !(obj instanceof Failure);
    }

    /* renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m2652isFailureimpl(Object obj) {
        return obj instanceof Failure;
    }

    /* renamed from: exceptionOrNull-impl, reason: not valid java name */
    public static final Throwable m2650exceptionOrNullimpl(Object obj) {
        if (obj instanceof Failure) {
            return ((Failure) obj).exception;
        }
        return null;
    }

    public String toString() {
        return m2654toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2654toStringimpl(Object obj) {
        if (obj instanceof Failure) {
            return obj.toString();
        }
        return "Success(" + obj + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: Result.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Result.kt */
    public static final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable exception) {
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Failure) && Intrinsics.areEqual(this.exception, ((Failure) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + CoreConstants.RIGHT_PARENTHESIS_CHAR;
        }
    }
}
