package androidx.lifecycle;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Lifecycle$Event {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Lifecycle$Event[] $VALUES;
    public static final Companion Companion;
    public static final Lifecycle$Event ON_ANY;
    public static final Lifecycle$Event ON_CREATE;
    public static final Lifecycle$Event ON_DESTROY;
    public static final Lifecycle$Event ON_PAUSE;
    public static final Lifecycle$Event ON_RESUME;
    public static final Lifecycle$Event ON_START;
    public static final Lifecycle$Event ON_STOP;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Lifecycle$State.values().length];
                try {
                    iArr[Lifecycle$State.CREATED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Lifecycle$State.STARTED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Lifecycle$State.RESUMED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Lifecycle$State.DESTROYED.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Lifecycle$State.INITIALIZED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public static Lifecycle$Event downFrom(Lifecycle$State lifecycle$State) {
            lifecycle$State.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[lifecycle$State.ordinal()];
            if (i == 1) {
                return Lifecycle$Event.ON_DESTROY;
            }
            if (i == 2) {
                return Lifecycle$Event.ON_STOP;
            }
            if (i != 3) {
                return null;
            }
            return Lifecycle$Event.ON_PAUSE;
        }

        public static Lifecycle$Event upFrom(Lifecycle$State lifecycle$State) {
            lifecycle$State.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[lifecycle$State.ordinal()];
            if (i == 1) {
                return Lifecycle$Event.ON_START;
            }
            if (i == 2) {
                return Lifecycle$Event.ON_RESUME;
            }
            if (i != 5) {
                return null;
            }
            return Lifecycle$Event.ON_CREATE;
        }

        public static Lifecycle$Event upTo(Lifecycle$State lifecycle$State) {
            lifecycle$State.getClass();
            int i = WhenMappings.$EnumSwitchMapping$0[lifecycle$State.ordinal()];
            if (i == 1) {
                return Lifecycle$Event.ON_CREATE;
            }
            if (i == 2) {
                return Lifecycle$Event.ON_START;
            }
            if (i != 3) {
                return null;
            }
            return Lifecycle$Event.ON_RESUME;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle$Event.values().length];
            try {
                iArr[Lifecycle$Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle$Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle$Event.ON_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle$Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle$Event.ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Lifecycle$Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Lifecycle$Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        Lifecycle$Event lifecycle$Event = new Lifecycle$Event("ON_CREATE", 0);
        ON_CREATE = lifecycle$Event;
        Lifecycle$Event lifecycle$Event2 = new Lifecycle$Event("ON_START", 1);
        ON_START = lifecycle$Event2;
        Lifecycle$Event lifecycle$Event3 = new Lifecycle$Event("ON_RESUME", 2);
        ON_RESUME = lifecycle$Event3;
        Lifecycle$Event lifecycle$Event4 = new Lifecycle$Event("ON_PAUSE", 3);
        ON_PAUSE = lifecycle$Event4;
        Lifecycle$Event lifecycle$Event5 = new Lifecycle$Event("ON_STOP", 4);
        ON_STOP = lifecycle$Event5;
        Lifecycle$Event lifecycle$Event6 = new Lifecycle$Event("ON_DESTROY", 5);
        ON_DESTROY = lifecycle$Event6;
        Lifecycle$Event lifecycle$Event7 = new Lifecycle$Event("ON_ANY", 6);
        ON_ANY = lifecycle$Event7;
        Lifecycle$Event[] lifecycle$EventArr = {lifecycle$Event, lifecycle$Event2, lifecycle$Event3, lifecycle$Event4, lifecycle$Event5, lifecycle$Event6, lifecycle$Event7};
        $VALUES = lifecycle$EventArr;
        $ENTRIES = new EnumEntriesList(lifecycle$EventArr);
        Companion = new Companion();
    }

    public static Lifecycle$Event valueOf(String str) {
        return (Lifecycle$Event) Enum.valueOf(Lifecycle$Event.class, str);
    }

    public static Lifecycle$Event[] values() {
        return (Lifecycle$Event[]) $VALUES.clone();
    }

    public final Lifecycle$State getTargetState() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
            case 2:
                return Lifecycle$State.CREATED;
            case 3:
            case 4:
                return Lifecycle$State.STARTED;
            case 5:
                return Lifecycle$State.RESUMED;
            case 6:
                return Lifecycle$State.DESTROYED;
            case 7:
                throw new IllegalArgumentException(this + " has no target state");
            default:
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
        }
    }
}
