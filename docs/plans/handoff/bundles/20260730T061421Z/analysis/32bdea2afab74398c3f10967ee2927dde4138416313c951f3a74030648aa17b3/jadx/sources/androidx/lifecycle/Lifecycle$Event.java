package androidx.lifecycle;

/* loaded from: classes.dex */
public enum Lifecycle$Event {
    ON_CREATE,
    ON_START,
    ON_RESUME,
    ON_PAUSE,
    ON_STOP,
    ON_DESTROY,
    ON_ANY;

    public static Lifecycle$Event g(Lifecycle$State lifecycle$State) {
        int ordinal = lifecycle$State.ordinal();
        if (ordinal == 1) {
            return ON_CREATE;
        }
        if (ordinal == 2) {
            return ON_START;
        }
        if (ordinal != 3) {
            return null;
        }
        return ON_RESUME;
    }

    public Lifecycle$State e() {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return Lifecycle$State.RESUMED;
                }
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return Lifecycle$State.DESTROYED;
                        }
                        throw new IllegalArgumentException(this + " has no target state");
                    }
                }
            }
            return Lifecycle$State.STARTED;
        }
        return Lifecycle$State.CREATED;
    }
}
