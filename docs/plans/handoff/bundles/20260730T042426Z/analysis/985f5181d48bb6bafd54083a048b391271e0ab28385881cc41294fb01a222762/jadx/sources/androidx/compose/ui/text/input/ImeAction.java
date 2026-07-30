package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ImeAction.kt */
/* loaded from: classes.dex */
public final class ImeAction {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unspecified = m2196constructorimpl(-1);
    private static final int Default = m2196constructorimpl(1);
    private static final int None = m2196constructorimpl(0);
    private static final int Go = m2196constructorimpl(2);
    private static final int Search = m2196constructorimpl(3);
    private static final int Send = m2196constructorimpl(4);
    private static final int Previous = m2196constructorimpl(5);
    private static final int Next = m2196constructorimpl(6);
    private static final int Done = m2196constructorimpl(7);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ImeAction m2195boximpl(int i) {
        return new ImeAction(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2196constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2197equalsimpl(int i, Object obj) {
        return (obj instanceof ImeAction) && i == ((ImeAction) obj).m2201unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2198equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2199hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2197equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2199hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2201unboximpl() {
        return this.value;
    }

    private /* synthetic */ ImeAction(int i) {
        this.value = i;
    }

    public String toString() {
        return m2200toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2200toStringimpl(int i) {
        return m2198equalsimpl0(i, Unspecified) ? "Unspecified" : m2198equalsimpl0(i, None) ? "None" : m2198equalsimpl0(i, Default) ? "Default" : m2198equalsimpl0(i, Go) ? "Go" : m2198equalsimpl0(i, Search) ? "Search" : m2198equalsimpl0(i, Send) ? "Send" : m2198equalsimpl0(i, Previous) ? "Previous" : m2198equalsimpl0(i, Next) ? "Next" : m2198equalsimpl0(i, Done) ? "Done" : "Invalid";
    }

    /* compiled from: ImeAction.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-eUduSuo, reason: not valid java name */
        public final int m2210getUnspecifiedeUduSuo() {
            return ImeAction.Unspecified;
        }

        /* renamed from: getDefault-eUduSuo, reason: not valid java name */
        public final int m2202getDefaulteUduSuo() {
            return ImeAction.Default;
        }

        /* renamed from: getNone-eUduSuo, reason: not valid java name */
        public final int m2206getNoneeUduSuo() {
            return ImeAction.None;
        }

        /* renamed from: getGo-eUduSuo, reason: not valid java name */
        public final int m2204getGoeUduSuo() {
            return ImeAction.Go;
        }

        /* renamed from: getSearch-eUduSuo, reason: not valid java name */
        public final int m2208getSearcheUduSuo() {
            return ImeAction.Search;
        }

        /* renamed from: getSend-eUduSuo, reason: not valid java name */
        public final int m2209getSendeUduSuo() {
            return ImeAction.Send;
        }

        /* renamed from: getPrevious-eUduSuo, reason: not valid java name */
        public final int m2207getPreviouseUduSuo() {
            return ImeAction.Previous;
        }

        /* renamed from: getNext-eUduSuo, reason: not valid java name */
        public final int m2205getNexteUduSuo() {
            return ImeAction.Next;
        }

        /* renamed from: getDone-eUduSuo, reason: not valid java name */
        public final int m2203getDoneeUduSuo() {
            return ImeAction.Done;
        }
    }
}
