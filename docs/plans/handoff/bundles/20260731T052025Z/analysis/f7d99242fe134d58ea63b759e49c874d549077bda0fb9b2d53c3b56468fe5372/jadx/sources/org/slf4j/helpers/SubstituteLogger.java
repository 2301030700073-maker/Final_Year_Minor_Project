package org.slf4j.helpers;

import java.lang.reflect.Method;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import javax.net.ssl.SSLException;
import org.slf4j.Logger;
import org.slf4j.event.EventRecodingLogger;
import org.slf4j.event.SubstituteLoggingEvent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubstituteLogger implements Logger {
    public volatile Logger _delegate;
    public final boolean createdPostInitialization;
    public Boolean delegateEventAware;
    public final Queue eventQueue;
    public EventRecodingLogger eventRecodingLogger;
    public Method logMethodCache;
    public final String name;

    public SubstituteLogger(String str, LinkedBlockingQueue linkedBlockingQueue, boolean z) {
        this.name = str;
        this.eventQueue = linkedBlockingQueue;
        this.createdPostInitialization = z;
    }

    @Override // org.slf4j.Logger
    public final void debug(String str, SSLException sSLException) {
        delegate().debug(str, sSLException);
    }

    public final Logger delegate() {
        if (this._delegate != null) {
            return this._delegate;
        }
        if (this.createdPostInitialization) {
            return NOPLogger.NOP_LOGGER;
        }
        if (this.eventRecodingLogger == null) {
            Queue queue = this.eventQueue;
            EventRecodingLogger eventRecodingLogger = new EventRecodingLogger();
            eventRecodingLogger.logger = this;
            eventRecodingLogger.name = this.name;
            eventRecodingLogger.eventQueue = queue;
            this.eventRecodingLogger = eventRecodingLogger;
        }
        return this.eventRecodingLogger;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && SubstituteLogger.class == obj.getClass() && this.name.equals(((SubstituteLogger) obj).name);
    }

    @Override // org.slf4j.Logger
    public final String getName() {
        return this.name;
    }

    public final int hashCode() {
        return this.name.hashCode();
    }

    @Override // org.slf4j.Logger
    public final boolean isDebugEnabled() {
        return delegate().isDebugEnabled();
    }

    public final boolean isDelegateEventAware() {
        Boolean bool = this.delegateEventAware;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.logMethodCache = this._delegate.getClass().getMethod("log", SubstituteLoggingEvent.class);
            this.delegateEventAware = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.delegateEventAware = Boolean.FALSE;
        }
        return this.delegateEventAware.booleanValue();
    }
}
