package net.thunderbird.core.android.logging;

import android.content.ContentResolver;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LogcatLogFileWriter {
    public final ContentResolver contentResolver;
    public final CoroutineDispatcher coroutineDispatcher;
    public final RealProcessExecutor processExecutor;

    public LogcatLogFileWriter(ContentResolver contentResolver, RealProcessExecutor realProcessExecutor) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.contentResolver = contentResolver;
        this.processExecutor = realProcessExecutor;
        this.coroutineDispatcher = defaultIoScheduler;
    }
}
