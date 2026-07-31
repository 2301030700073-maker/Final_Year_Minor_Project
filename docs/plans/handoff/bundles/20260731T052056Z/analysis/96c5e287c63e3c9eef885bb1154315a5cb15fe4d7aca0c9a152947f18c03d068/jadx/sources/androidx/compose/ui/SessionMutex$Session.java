package androidx.compose.ui;

import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionMutex$Session {
    public final Job job;
    public final Object value;

    public SessionMutex$Session(Job job, Object obj) {
        this.job = job;
        this.value = obj;
    }
}
