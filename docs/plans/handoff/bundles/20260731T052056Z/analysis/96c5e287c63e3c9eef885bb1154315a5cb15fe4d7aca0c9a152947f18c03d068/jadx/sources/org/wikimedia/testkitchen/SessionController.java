package org.wikimedia.testkitchen;

import j$.time.Duration;
import j$.time.Instant;
import okio.Options;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionController {
    public static final Duration SESSION_LENGTH = Duration.ofMinutes(30);
    public String sessionId;
    public Instant sessionTouched;

    public final synchronized boolean sessionExpired() {
        return Duration.between(this.sessionTouched, Instant.now()).compareTo(SESSION_LENGTH) >= 0;
    }

    public final synchronized void touchSession() {
        try {
            if (sessionExpired()) {
                this.sessionId = Options.Companion.generateSessionId();
            }
            Instant now = Instant.now();
            now.getClass();
            this.sessionTouched = now;
        } catch (Throwable th) {
            throw th;
        }
    }
}
