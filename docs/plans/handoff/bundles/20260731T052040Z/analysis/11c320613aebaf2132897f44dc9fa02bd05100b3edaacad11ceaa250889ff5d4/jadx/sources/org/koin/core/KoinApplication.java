package org.koin.core;

import androidx.compose.ui.Modifier;
import io.noties.markwon.RenderPropsImpl;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource$Monotonic$ValueTimeMark;
import okio.ByteString;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TokenData;
import org.koin.core.logger.EmptyLogger;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.registry.PropertyRegistry;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class KoinApplication {
    public final boolean allowOverride;
    public final Koin koin;

    public KoinApplication() {
        Koin koin = new Koin();
        EmptyLogger emptyLogger = new EmptyLogger(0);
        emptyLogger.level = Level.NONE;
        koin.logger = emptyLogger;
        koin.resolver = new TokenData(koin);
        koin.scopeRegistry = new ScopeRegistry(koin);
        koin.instanceRegistry = new Printer(koin);
        koin.propertyRegistry = new PropertyRegistry(koin);
        koin.extensionManager = new RenderPropsImpl(koin);
        koin.optionRegistry = new RenderPropsImpl(5);
        this.koin = koin;
        this.allowOverride = true;
    }

    public final void modules(List list) {
        Koin koin = this.koin;
        Level level = (Level) ((Logger) koin.logger).level;
        Level level2 = Level.INFO;
        int compareTo = level.compareTo(level2);
        boolean z = this.allowOverride;
        if (compareTo > 0) {
            koin.loadModules(list, z);
            return;
        }
        long read = MonotonicTimeSource.read();
        koin.loadModules(list, z);
        long m685elapsedNowUwyO8pc = TimeSource$Monotonic$ValueTimeMark.m685elapsedNowUwyO8pc(read);
        int size = ((ConcurrentHashMap) ((Printer) koin.instanceRegistry).accum).size();
        Logger logger = (Logger) koin.logger;
        StringBuilder m179m = Modifier.CC.m179m("Started ", size, " definitions in ");
        ByteString.Companion companion = Duration.Companion;
        m179m.append(Duration.m683toLongimpl(m685elapsedNowUwyO8pc, DurationUnit.MICROSECONDS) / 1000.0d);
        m179m.append(" ms");
        logger.display(level2, m179m.toString());
    }
}
