package org.koin.android.error;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MissingAndroidContextException extends Throwable {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MissingAndroidContextException(String str, int i) {
        super(str);
        this.$r8$classId = i;
    }

    private final synchronized Throwable fillInStackTrace$androidx$concurrent$futures$AbstractResolvableFuture$Failure$1() {
        return this;
    }

    private final synchronized Throwable fillInStackTrace$androidx$concurrent$futures$CallbackToFutureAdapter$FutureGarbageCollectedException() {
        return this;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable fillInStackTrace() {
        switch (this.$r8$classId) {
            case 1:
                fillInStackTrace$androidx$concurrent$futures$AbstractResolvableFuture$Failure$1();
                return this;
            case 2:
                fillInStackTrace$androidx$concurrent$futures$CallbackToFutureAdapter$FutureGarbageCollectedException();
                return this;
            default:
                return super.fillInStackTrace();
        }
    }
}
