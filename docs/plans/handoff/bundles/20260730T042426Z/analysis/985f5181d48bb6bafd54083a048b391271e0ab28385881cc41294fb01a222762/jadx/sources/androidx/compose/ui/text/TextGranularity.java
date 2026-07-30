package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: TextGranularity.kt */
/* loaded from: classes.dex */
public abstract class TextGranularity {
    public static final Companion Companion = new Companion(null);
    private static final int Character = m2102constructorimpl(0);
    private static final int Word = m2102constructorimpl(1);

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2102constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2103equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: TextGranularity.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getCharacter-DRrd7Zo, reason: not valid java name */
        public final int m2104getCharacterDRrd7Zo() {
            return TextGranularity.Character;
        }

        /* renamed from: getWord-DRrd7Zo, reason: not valid java name */
        public final int m2105getWordDRrd7Zo() {
            return TextGranularity.Word;
        }
    }
}
