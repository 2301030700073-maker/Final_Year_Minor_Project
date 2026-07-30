package androidx.compose.ui.text.style;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: LineBreak.android.kt */
/* loaded from: classes.dex */
public final class LineBreak {
    public static final Companion Companion = new Companion(null);
    private static final int Heading;
    private static final int Paragraph;
    private static final int Simple;
    private static final int Unspecified;
    private final int mask;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LineBreak m2295boximpl(int i) {
        return new LineBreak(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2296constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2297equalsimpl(int i, Object obj) {
        return (obj instanceof LineBreak) && i == ((LineBreak) obj).m2304unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2298equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2302hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2297equalsimpl(this.mask, obj);
    }

    public int hashCode() {
        return m2302hashCodeimpl(this.mask);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2304unboximpl() {
        return this.mask;
    }

    private /* synthetic */ LineBreak(int i) {
        this.mask = i;
    }

    /* renamed from: getStrategy-fcGXIks, reason: not valid java name */
    public static final int m2299getStrategyfcGXIks(int i) {
        int unpackByte1;
        unpackByte1 = LineBreak_androidKt.unpackByte1(i);
        return Strategy.m2307constructorimpl(unpackByte1);
    }

    /* renamed from: getStrictness-usljTpc, reason: not valid java name */
    public static final int m2300getStrictnessusljTpc(int i) {
        int unpackByte2;
        unpackByte2 = LineBreak_androidKt.unpackByte2(i);
        return Strictness.m2313constructorimpl(unpackByte2);
    }

    /* renamed from: getWordBreak-jp8hJ3c, reason: not valid java name */
    public static final int m2301getWordBreakjp8hJ3c(int i) {
        int unpackByte3;
        unpackByte3 = LineBreak_androidKt.unpackByte3(i);
        return WordBreak.m2320constructorimpl(unpackByte3);
    }

    public String toString() {
        return m2303toStringimpl(this.mask);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2303toStringimpl(int i) {
        return "LineBreak(strategy=" + ((Object) Strategy.m2309toStringimpl(m2299getStrategyfcGXIks(i))) + ", strictness=" + ((Object) Strictness.m2315toStringimpl(m2300getStrictnessusljTpc(i))) + ", wordBreak=" + ((Object) WordBreak.m2322toStringimpl(m2301getWordBreakjp8hJ3c(i))) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: LineBreak.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getSimple-rAG3T2k, reason: not valid java name */
        public final int m2305getSimplerAG3T2k() {
            return LineBreak.Simple;
        }

        /* renamed from: getUnspecified-rAG3T2k, reason: not valid java name */
        public final int m2306getUnspecifiedrAG3T2k() {
            return LineBreak.Unspecified;
        }
    }

    static {
        int packBytes;
        int packBytes2;
        int packBytes3;
        Strategy.Companion companion = Strategy.Companion;
        int m2312getSimplefcGXIks = companion.m2312getSimplefcGXIks();
        Strictness.Companion companion2 = Strictness.Companion;
        int m2318getNormalusljTpc = companion2.m2318getNormalusljTpc();
        WordBreak.Companion companion3 = WordBreak.Companion;
        packBytes = LineBreak_androidKt.packBytes(m2312getSimplefcGXIks, m2318getNormalusljTpc, companion3.m2323getDefaultjp8hJ3c());
        Simple = m2296constructorimpl(packBytes);
        packBytes2 = LineBreak_androidKt.packBytes(companion.m2310getBalancedfcGXIks(), companion2.m2317getLooseusljTpc(), companion3.m2324getPhrasejp8hJ3c());
        Heading = m2296constructorimpl(packBytes2);
        packBytes3 = LineBreak_androidKt.packBytes(companion.m2311getHighQualityfcGXIks(), companion2.m2319getStrictusljTpc(), companion3.m2323getDefaultjp8hJ3c());
        Paragraph = m2296constructorimpl(packBytes3);
        Unspecified = m2296constructorimpl(0);
    }

    /* compiled from: LineBreak.android.kt */
    public static final class Strategy {
        public static final Companion Companion = new Companion(null);
        private static final int Simple = m2307constructorimpl(1);
        private static final int HighQuality = m2307constructorimpl(2);
        private static final int Balanced = m2307constructorimpl(3);
        private static final int Unspecified = m2307constructorimpl(0);

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m2307constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2308equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* compiled from: LineBreak.android.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getSimple-fcGXIks, reason: not valid java name */
            public final int m2312getSimplefcGXIks() {
                return Strategy.Simple;
            }

            /* renamed from: getHighQuality-fcGXIks, reason: not valid java name */
            public final int m2311getHighQualityfcGXIks() {
                return Strategy.HighQuality;
            }

            /* renamed from: getBalanced-fcGXIks, reason: not valid java name */
            public final int m2310getBalancedfcGXIks() {
                return Strategy.Balanced;
            }
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m2309toStringimpl(int i) {
            return m2308equalsimpl0(i, Simple) ? "Strategy.Simple" : m2308equalsimpl0(i, HighQuality) ? "Strategy.HighQuality" : m2308equalsimpl0(i, Balanced) ? "Strategy.Balanced" : m2308equalsimpl0(i, Unspecified) ? "Strategy.Unspecified" : "Invalid";
        }
    }

    /* compiled from: LineBreak.android.kt */
    public static final class Strictness {
        public static final Companion Companion = new Companion(null);
        private static final int Default = m2313constructorimpl(1);
        private static final int Loose = m2313constructorimpl(2);
        private static final int Normal = m2313constructorimpl(3);
        private static final int Strict = m2313constructorimpl(4);
        private static final int Unspecified = m2313constructorimpl(0);

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m2313constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2314equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* compiled from: LineBreak.android.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getDefault-usljTpc, reason: not valid java name */
            public final int m2316getDefaultusljTpc() {
                return Strictness.Default;
            }

            /* renamed from: getLoose-usljTpc, reason: not valid java name */
            public final int m2317getLooseusljTpc() {
                return Strictness.Loose;
            }

            /* renamed from: getNormal-usljTpc, reason: not valid java name */
            public final int m2318getNormalusljTpc() {
                return Strictness.Normal;
            }

            /* renamed from: getStrict-usljTpc, reason: not valid java name */
            public final int m2319getStrictusljTpc() {
                return Strictness.Strict;
            }
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m2315toStringimpl(int i) {
            return m2314equalsimpl0(i, Default) ? "Strictness.None" : m2314equalsimpl0(i, Loose) ? "Strictness.Loose" : m2314equalsimpl0(i, Normal) ? "Strictness.Normal" : m2314equalsimpl0(i, Strict) ? "Strictness.Strict" : m2314equalsimpl0(i, Unspecified) ? "Strictness.Unspecified" : "Invalid";
        }
    }

    /* compiled from: LineBreak.android.kt */
    public static final class WordBreak {
        public static final Companion Companion = new Companion(null);
        private static final int Default = m2320constructorimpl(1);
        private static final int Phrase = m2320constructorimpl(2);
        private static final int Unspecified = m2320constructorimpl(0);

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m2320constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m2321equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* compiled from: LineBreak.android.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getDefault-jp8hJ3c, reason: not valid java name */
            public final int m2323getDefaultjp8hJ3c() {
                return WordBreak.Default;
            }

            /* renamed from: getPhrase-jp8hJ3c, reason: not valid java name */
            public final int m2324getPhrasejp8hJ3c() {
                return WordBreak.Phrase;
            }
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m2322toStringimpl(int i) {
            return m2321equalsimpl0(i, Default) ? "WordBreak.None" : m2321equalsimpl0(i, Phrase) ? "WordBreak.Phrase" : m2321equalsimpl0(i, Unspecified) ? "WordBreak.Unspecified" : "Invalid";
        }
    }
}
