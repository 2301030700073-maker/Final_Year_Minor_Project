package kotlinx.coroutines;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompletedContinuation {
    public final Throwable cancelCause;
    public final DisposeOnCancel cancelHandler;
    public final Object idempotentResume;
    public final Function3 onCancellation;
    public final Object result;

    public /* synthetic */ CompletedContinuation(Object obj, DisposeOnCancel disposeOnCancel, Function3 function3, Throwable th, int i) {
        this(obj, (i & 2) != 0 ? null : disposeOnCancel, (i & 4) != 0 ? null : function3, (Object) null, (i & 16) != 0 ? null : th);
    }

    public static CompletedContinuation copy$default(CompletedContinuation completedContinuation, DisposeOnCancel disposeOnCancel, Throwable th, int i) {
        Object obj = completedContinuation.result;
        if ((i & 2) != 0) {
            disposeOnCancel = completedContinuation.cancelHandler;
        }
        DisposeOnCancel disposeOnCancel2 = disposeOnCancel;
        Function3 function3 = completedContinuation.onCancellation;
        Object obj2 = completedContinuation.idempotentResume;
        if ((i & 16) != 0) {
            th = completedContinuation.cancelCause;
        }
        return new CompletedContinuation(obj, disposeOnCancel2, function3, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompletedContinuation)) {
            return false;
        }
        CompletedContinuation completedContinuation = (CompletedContinuation) obj;
        return Intrinsics.areEqual(this.result, completedContinuation.result) && Intrinsics.areEqual(this.cancelHandler, completedContinuation.cancelHandler) && Intrinsics.areEqual(this.onCancellation, completedContinuation.onCancellation) && Intrinsics.areEqual(this.idempotentResume, completedContinuation.idempotentResume) && Intrinsics.areEqual(this.cancelCause, completedContinuation.cancelCause);
    }

    public final int hashCode() {
        Object obj = this.result;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        DisposeOnCancel disposeOnCancel = this.cancelHandler;
        int hashCode2 = (hashCode + (disposeOnCancel == null ? 0 : disposeOnCancel.hashCode())) * 31;
        Function3 function3 = this.onCancellation;
        int hashCode3 = (hashCode2 + (function3 == null ? 0 : function3.hashCode())) * 31;
        Object obj2 = this.idempotentResume;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.cancelCause;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.result + ", cancelHandler=" + this.cancelHandler + ", onCancellation=" + this.onCancellation + ", idempotentResume=" + this.idempotentResume + ", cancelCause=" + this.cancelCause + ')';
    }

    public CompletedContinuation(Object obj, DisposeOnCancel disposeOnCancel, Function3 function3, Object obj2, Throwable th) {
        this.result = obj;
        this.cancelHandler = disposeOnCancel;
        this.onCancellation = function3;
        this.idempotentResume = obj2;
        this.cancelCause = th;
    }
}
