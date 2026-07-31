package kotlinx.coroutines.selects;

import com.fsck.k9.mailstore.LocalStore;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SelectKt {
    public static final LocalStore.AnonymousClass8 NO_RESULT;
    public static final LocalStore.AnonymousClass8 PARAM_CLAUSE_0;
    public static final LocalStore.AnonymousClass8 STATE_CANCELLED;
    public static final LocalStore.AnonymousClass8 STATE_COMPLETED;
    public static final LocalStore.AnonymousClass8 STATE_REG;

    static {
        int i = 4;
        boolean z = false;
        STATE_REG = new LocalStore.AnonymousClass8(i, "STATE_REG", z);
        STATE_COMPLETED = new LocalStore.AnonymousClass8(i, "STATE_COMPLETED", z);
        STATE_CANCELLED = new LocalStore.AnonymousClass8(i, "STATE_CANCELLED", z);
        NO_RESULT = new LocalStore.AnonymousClass8(i, "NO_RESULT", z);
        PARAM_CLAUSE_0 = new LocalStore.AnonymousClass8(i, "PARAM_CLAUSE_0", z);
    }
}
