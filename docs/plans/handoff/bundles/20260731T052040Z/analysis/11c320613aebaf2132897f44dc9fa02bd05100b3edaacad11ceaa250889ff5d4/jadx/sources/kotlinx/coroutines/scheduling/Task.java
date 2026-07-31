package kotlinx.coroutines.scheduling;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Task implements Runnable {
    public long submissionTime;
    public boolean taskContext;

    public Task(long j, boolean z) {
        this.submissionTime = j;
        this.taskContext = z;
    }
}
