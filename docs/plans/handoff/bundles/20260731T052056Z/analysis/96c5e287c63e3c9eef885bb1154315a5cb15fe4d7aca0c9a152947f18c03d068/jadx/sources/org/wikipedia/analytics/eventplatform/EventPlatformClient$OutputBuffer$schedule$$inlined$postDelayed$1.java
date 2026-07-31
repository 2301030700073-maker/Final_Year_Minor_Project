package org.wikipedia.analytics.eventplatform;

import org.wikipedia.analytics.eventplatform.EventPlatformClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EventPlatformClient$OutputBuffer$schedule$$inlined$postDelayed$1 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        EventPlatformClient.OutputBuffer.sendAllScheduled();
    }
}
