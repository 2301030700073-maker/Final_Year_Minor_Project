package net.thunderbird.core.common.exception;

import androidx.lifecycle.BlockRunner$cancel$1;
import com.fsck.k9.Core$special$$inlined$inject$default$4;
import java.lang.Thread;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.legacy.Log;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.qualifier.StringQualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExceptionHandler implements Thread.UncaughtExceptionHandler, KoinComponent {
    public final Thread.UncaughtExceptionHandler defaultHandler;
    public final Lazy syncDebugFileLogSink$delegate = ResultKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Core$special$$inlined$inject$default$4(this, new StringQualifier("syncDebug"), 3));

    public ExceptionHandler(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.defaultHandler = uncaughtExceptionHandler;
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        thread.getClass();
        th.getClass();
        Log.e("UncaughtException", th.toString(), th);
        JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new BlockRunner$cancel$1(this, null, 21));
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.defaultHandler;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }
}
