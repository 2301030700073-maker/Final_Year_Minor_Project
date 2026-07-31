package kotlin.reflect.jvm.internal.impl.name;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class State {
    private static final /* synthetic */ State[] $VALUES;
    public static final State AFTER_DOT;
    public static final State BEGINNING;
    public static final State MIDDLE;

    static {
        State state = new State("BEGINNING", 0);
        BEGINNING = state;
        State state2 = new State("MIDDLE", 1);
        MIDDLE = state2;
        State state3 = new State("AFTER_DOT", 2);
        AFTER_DOT = state3;
        $VALUES = new State[]{state, state2, state3};
    }

    public static State valueOf(String str) {
        return (State) Enum.valueOf(State.class, str);
    }

    public static State[] values() {
        return (State[]) $VALUES.clone();
    }
}
