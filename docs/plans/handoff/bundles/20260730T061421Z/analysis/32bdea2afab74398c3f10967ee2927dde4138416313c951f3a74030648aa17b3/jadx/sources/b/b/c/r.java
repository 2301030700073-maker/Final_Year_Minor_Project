package b.b.c;

import android.content.res.Resources;
import java.lang.Thread;

/* loaded from: classes.dex */
public class r implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Thread.UncaughtExceptionHandler f317a;

    public r(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f317a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String message;
        boolean z = false;
        if ((th instanceof Resources.NotFoundException) && (message = th.getMessage()) != null && (message.contains("drawable") || message.contains("Drawable"))) {
            z = true;
        }
        if (!z) {
            this.f317a.uncaughtException(thread, th);
            return;
        }
        Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
        notFoundException.initCause(th.getCause());
        notFoundException.setStackTrace(th.getStackTrace());
        this.f317a.uncaughtException(thread, notFoundException);
    }
}
