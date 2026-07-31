package okhttp3.internal.concurrent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Task {
    public final boolean cancelable;
    public final String name;
    public long nextExecuteNanoTime;
    public TaskQueue queue;

    public Task(String str) {
        str.getClass();
        this.name = str;
        this.cancelable = true;
        this.nextExecuteNanoTime = -1L;
    }

    public abstract long runOnce();

    public final String toString() {
        return this.name;
    }
}
