package kotlin.time;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Clock {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class System implements Clock {
        public static final System INSTANCE = new System();

        @Override // kotlin.time.Clock
        public final Instant now() {
            return InstantJvmKt.systemClock.now();
        }
    }

    Instant now();
}
