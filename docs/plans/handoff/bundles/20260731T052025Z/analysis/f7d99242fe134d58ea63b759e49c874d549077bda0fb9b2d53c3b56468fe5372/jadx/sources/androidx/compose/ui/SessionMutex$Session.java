package androidx.compose.ui;

import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SessionMutex$Session {
    public final Job job;
    public final Object value;

    public SessionMutex$Session(Job job, Object obj) {
        this.job = job;
        this.value = obj;
    }
}
