package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class JobCancellationException extends CancellationException {
    public final transient JobSupport _job;

    public JobCancellationException(String str, Throwable th, JobSupport jobSupport) {
        super(str);
        this._job = jobSupport;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JobCancellationException)) {
            return false;
        }
        JobCancellationException jobCancellationException = (JobCancellationException) obj;
        if (!Intrinsics.areEqual(jobCancellationException.getMessage(), getMessage())) {
            return false;
        }
        Object obj2 = jobCancellationException._job;
        if (obj2 == null) {
            obj2 = NonCancellable.INSTANCE;
        }
        Object obj3 = this._job;
        if (obj3 == null) {
            obj3 = NonCancellable.INSTANCE;
        }
        return Intrinsics.areEqual(obj2, obj3) && Intrinsics.areEqual(jobCancellationException.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        String message = getMessage();
        message.getClass();
        int hashCode = message.hashCode() * 31;
        Object obj = this._job;
        if (obj == null) {
            obj = NonCancellable.INSTANCE;
        }
        int hashCode2 = (obj.hashCode() + hashCode) * 31;
        Throwable cause = getCause();
        return hashCode2 + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this._job;
        if (obj == null) {
            obj = NonCancellable.INSTANCE;
        }
        sb.append(obj);
        return sb.toString();
    }
}
