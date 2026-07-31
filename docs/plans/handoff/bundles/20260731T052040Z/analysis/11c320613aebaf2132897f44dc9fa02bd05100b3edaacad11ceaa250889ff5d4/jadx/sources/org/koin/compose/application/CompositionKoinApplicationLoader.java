package org.koin.compose.application;

import androidx.compose.runtime.RememberObserver;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.koin.core.Koin;
import org.koin.core.KoinApplication;
import org.koin.core.context.GlobalContext;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompositionKoinApplicationLoader implements RememberObserver {
    public Koin koin;
    public final KoinApplication koinApplication;

    public CompositionKoinApplicationLoader(KoinApplication koinApplication) {
        this.koinApplication = koinApplication;
        start();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        Logger logger;
        Logger logger2;
        Koin koin = this.koin;
        if (koin != null && (logger2 = (Logger) koin.logger) != null) {
            logger2.log(Level.WARNING, "CompositionKoinApplicationLoader - onAbandoned - " + this);
        }
        Koin koin2 = this.koin;
        if (koin2 != null && (logger = (Logger) koin2.logger) != null) {
            logger.log(Level.WARNING, "CompositionKoinApplicationLoader - stop");
        }
        this.koin = null;
        synchronized (GlobalContext.INSTANCE) {
            try {
                Koin koin3 = GlobalContext._koin;
                if (koin3 != null) {
                    koin3.close();
                }
                GlobalContext._koin = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        Logger logger;
        Koin koin = this.koin;
        if (koin != null && (logger = (Logger) koin.logger) != null) {
            logger.log(Level.DEBUG, "CompositionKoinApplicationLoader - onForgotten - " + this);
        }
        this.koin = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        start();
    }

    public final void start() {
        KoinApplication koinApplication;
        Koin koin = GlobalContext._koin;
        if (koin != null || (koinApplication = this.koinApplication) == null) {
            if (koin == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Can't start Koin context, no koinApplication argument found nor existing context");
                return;
            }
            if (koin == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("KoinApplication has not been started");
                return;
            }
            this.koin = koin;
            Logger logger = (Logger) koin.logger;
            String str = this + " -> re-attach Koin instance " + this.koin;
            logger.getClass();
            logger.log(Level.DEBUG, str);
            return;
        }
        try {
            synchronized (GlobalContext.INSTANCE) {
                if (GlobalContext._koin != null) {
                    throw new ClosedScopeException("A Koin Application has already been started");
                }
                Koin koin2 = koinApplication.koin;
                GlobalContext._koin = koin2;
                koin2.createEagerInstances();
            }
            Koin koin3 = koinApplication.koin;
            this.koin = koin3;
            koin3.getClass();
            Logger logger2 = (Logger) koin3.logger;
            String str2 = this + " -> attach Koin instance " + this.koin;
            logger2.getClass();
            logger2.log(Level.DEBUG, str2);
        } catch (Exception e) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(e, "Can't start Koin from Compose context - ");
        }
    }
}
