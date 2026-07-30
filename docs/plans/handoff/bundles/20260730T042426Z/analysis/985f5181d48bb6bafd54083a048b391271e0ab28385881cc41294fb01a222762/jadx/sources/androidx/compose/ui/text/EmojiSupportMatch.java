package androidx.compose.ui.text;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: EmojiSupportMatch.android.kt */
/* loaded from: classes.dex */
public final class EmojiSupportMatch {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Default = m2046constructorimpl(0);
    private static final int None = m2046constructorimpl(1);
    private static final int All = m2046constructorimpl(2);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ EmojiSupportMatch m2045boximpl(int i) {
        return new EmojiSupportMatch(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2046constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2047equalsimpl(int i, Object obj) {
        return (obj instanceof EmojiSupportMatch) && i == ((EmojiSupportMatch) obj).m2051unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2048equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2049hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2047equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2049hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2051unboximpl() {
        return this.value;
    }

    private /* synthetic */ EmojiSupportMatch(int i) {
        this.value = i;
    }

    public String toString() {
        return m2050toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2050toStringimpl(int i) {
        if (i == Default) {
            return "EmojiSupportMatch.Default";
        }
        if (i == None) {
            return "EmojiSupportMatch.None";
        }
        if (i == All) {
            return "EmojiSupportMatch.All";
        }
        return "Invalid(value=" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: EmojiSupportMatch.android.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getDefault-_3YsG6Y, reason: not valid java name */
        public final int m2053getDefault_3YsG6Y() {
            return EmojiSupportMatch.Default;
        }

        /* renamed from: getNone-_3YsG6Y, reason: not valid java name */
        public final int m2054getNone_3YsG6Y() {
            return EmojiSupportMatch.None;
        }

        /* renamed from: getAll-_3YsG6Y, reason: not valid java name */
        public final int m2052getAll_3YsG6Y() {
            return EmojiSupportMatch.All;
        }
    }
}
