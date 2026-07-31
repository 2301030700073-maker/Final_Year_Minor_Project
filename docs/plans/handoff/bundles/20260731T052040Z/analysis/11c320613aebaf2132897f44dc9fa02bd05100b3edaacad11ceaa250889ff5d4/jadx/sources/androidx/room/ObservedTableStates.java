package androidx.room;

import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ObservedTableStates {
    public volatile boolean inProgressSync;
    public volatile boolean needsSync;
    public final boolean[] tableObservedState;
    public final long[] tableObserversCount;
    public final ReentrantLock lock = new ReentrantLock();
    public final ReentrantLock onSyncLock = new ReentrantLock();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ObserveOp {
        public static final /* synthetic */ ObserveOp[] $VALUES;
        public static final ObserveOp ADD;
        public static final ObserveOp NO_OP;
        public static final ObserveOp REMOVE;

        static {
            ObserveOp observeOp = new ObserveOp("NO_OP", 0);
            NO_OP = observeOp;
            ObserveOp observeOp2 = new ObserveOp("ADD", 1);
            ADD = observeOp2;
            ObserveOp observeOp3 = new ObserveOp("REMOVE", 2);
            REMOVE = observeOp3;
            $VALUES = new ObserveOp[]{observeOp, observeOp2, observeOp3};
        }

        public static ObserveOp valueOf(String str) {
            return (ObserveOp) Enum.valueOf(ObserveOp.class, str);
        }

        public static ObserveOp[] values() {
            return (ObserveOp[]) $VALUES.clone();
        }
    }

    public ObservedTableStates(int i) {
        this.tableObserversCount = new long[i];
        this.tableObservedState = new boolean[i];
    }
}
