package net.thunderbird.core.logging.composite;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.core.logging.DefaultLogLevelManager;
import net.thunderbird.core.logging.LogEvent;
import net.thunderbird.core.logging.LogLevel;
import net.thunderbird.core.logging.LogLevelProvider;
import net.thunderbird.core.logging.LogSink;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultCompositeLogSink implements CompositeLogSink {
    public final LogLevelProvider logLevelProvider;
    public final Headers.Builder manager;

    public DefaultCompositeLogSink(LogLevelProvider logLevelProvider, Headers.Builder builder, List list) {
        this.logLevelProvider = logLevelProvider;
        this.manager = builder;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LogSink logSink = (LogSink) it.next();
            logSink.getClass();
            ArrayList arrayList = builder.namesAndValues;
            if (!arrayList.contains(logSink)) {
                arrayList.add(logSink);
            }
        }
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final /* bridge */ boolean canLog(LogLevel logLevel) {
        return Sink$CC.$default$canLog(this, logLevel);
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final LogLevel getLevel() {
        return (LogLevel) ((DefaultLogLevelManager) this.logLevelProvider).logLevel.getValue();
    }

    @Override // net.thunderbird.core.logging.LogSink
    public final void log(LogEvent logEvent) {
        LogLevel logLevel = logEvent.level;
        if (Sink$CC.$default$canLog(this, logLevel)) {
            for (LogSink logSink : CollectionsKt.toList(this.manager.namesAndValues)) {
                if (logSink.canLog(logLevel)) {
                    logSink.log(logEvent);
                }
            }
        }
    }
}
