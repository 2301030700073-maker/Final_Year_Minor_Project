package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: KeyboardCapitalization.kt */
/* loaded from: classes.dex */
public final class KeyboardCapitalization {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unspecified = m2216constructorimpl(-1);
    private static final int None = m2216constructorimpl(0);
    private static final int Characters = m2216constructorimpl(1);
    private static final int Words = m2216constructorimpl(2);
    private static final int Sentences = m2216constructorimpl(3);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyboardCapitalization m2215boximpl(int i) {
        return new KeyboardCapitalization(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2216constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2217equalsimpl(int i, Object obj) {
        return (obj instanceof KeyboardCapitalization) && i == ((KeyboardCapitalization) obj).m2221unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2218equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2219hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2217equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2219hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2221unboximpl() {
        return this.value;
    }

    private /* synthetic */ KeyboardCapitalization(int i) {
        this.value = i;
    }

    public String toString() {
        return m2220toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2220toStringimpl(int i) {
        return m2218equalsimpl0(i, Unspecified) ? "Unspecified" : m2218equalsimpl0(i, None) ? "None" : m2218equalsimpl0(i, Characters) ? "Characters" : m2218equalsimpl0(i, Words) ? "Words" : m2218equalsimpl0(i, Sentences) ? "Sentences" : "Invalid";
    }

    /* compiled from: KeyboardCapitalization.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-IUNYP9k, reason: not valid java name */
        public final int m2225getUnspecifiedIUNYP9k() {
            return KeyboardCapitalization.Unspecified;
        }

        /* renamed from: getNone-IUNYP9k, reason: not valid java name */
        public final int m2223getNoneIUNYP9k() {
            return KeyboardCapitalization.None;
        }

        /* renamed from: getCharacters-IUNYP9k, reason: not valid java name */
        public final int m2222getCharactersIUNYP9k() {
            return KeyboardCapitalization.Characters;
        }

        /* renamed from: getWords-IUNYP9k, reason: not valid java name */
        public final int m2226getWordsIUNYP9k() {
            return KeyboardCapitalization.Words;
        }

        /* renamed from: getSentences-IUNYP9k, reason: not valid java name */
        public final int m2224getSentencesIUNYP9k() {
            return KeyboardCapitalization.Sentences;
        }
    }
}
