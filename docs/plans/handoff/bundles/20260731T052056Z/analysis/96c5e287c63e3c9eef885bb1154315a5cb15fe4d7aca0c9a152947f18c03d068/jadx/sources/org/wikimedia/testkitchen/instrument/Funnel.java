package org.wikimedia.testkitchen.instrument;

import j$.time.Duration;
import okio.Options;
import org.wikimedia.testkitchen.SessionController;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Funnel {
    public int _sequence;
    public final String name;
    public final long startTime;
    public final String token;

    public Funnel(String str) {
        this.name = str;
        Duration duration = SessionController.SESSION_LENGTH;
        this.token = Options.Companion.generateSessionId();
        this.startTime = System.currentTimeMillis();
        this._sequence = 1;
    }
}
