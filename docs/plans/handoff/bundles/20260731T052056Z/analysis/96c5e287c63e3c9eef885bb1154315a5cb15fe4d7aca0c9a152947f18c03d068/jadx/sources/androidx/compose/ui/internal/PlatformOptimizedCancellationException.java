package androidx.compose.ui.internal;

import androidx.compose.foundation.internal.ClipboardUtils;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PlatformOptimizedCancellationException extends CancellationException {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PlatformOptimizedCancellationException(int i, String str) {
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
                setStackTrace(ClipboardUtils.EmptyStackTraceElements);
                break;
            default:
                setStackTrace(Expect_jvmKt.EmptyStackTraceElements);
                break;
        }
        return this;
    }
}
