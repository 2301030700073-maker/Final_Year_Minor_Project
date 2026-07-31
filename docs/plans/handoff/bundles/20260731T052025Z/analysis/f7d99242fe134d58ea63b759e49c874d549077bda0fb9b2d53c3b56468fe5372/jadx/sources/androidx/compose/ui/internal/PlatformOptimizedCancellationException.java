package androidx.compose.ui.internal;

import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PlatformOptimizedCancellationException extends CancellationException {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PlatformOptimizedCancellationException(String str, int i) {
        super(str);
        this.$r8$classId = i;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        switch (this.$r8$classId) {
            case 0:
                setStackTrace(PlatformOptimizedCancellationException_jvmAndAndroidKt.EmptyStackTraceElements);
                break;
            case 1:
                setStackTrace(ClipboardUtils_androidKt.EmptyStackTraceElements);
                break;
            default:
                setStackTrace(Expect_jvmKt.EmptyStackTraceElements);
                break;
        }
        return this;
    }
}
