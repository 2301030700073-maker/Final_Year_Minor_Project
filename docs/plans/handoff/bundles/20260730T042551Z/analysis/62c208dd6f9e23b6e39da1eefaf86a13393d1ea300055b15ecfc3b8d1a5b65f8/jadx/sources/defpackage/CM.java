package defpackage;

/* loaded from: classes.dex */
public enum CM {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    /* renamed from: do, reason: not valid java name */
    public final boolean m263do() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
