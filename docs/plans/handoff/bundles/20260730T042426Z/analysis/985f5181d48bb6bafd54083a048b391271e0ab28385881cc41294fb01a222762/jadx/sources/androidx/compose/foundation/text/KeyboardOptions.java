package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KeyboardOptions.kt */
/* loaded from: classes.dex */
public final class KeyboardOptions {
    public static final Companion Companion = new Companion(null);
    private static final KeyboardOptions Default = new KeyboardOptions(0, null, 0, 0, null, null, null, 127, null);
    private static final KeyboardOptions SecureTextField = new KeyboardOptions(0, Boolean.FALSE, KeyboardType.Companion.m2239getPasswordPjHm6EE(), 0, null, null, null, 121, null);
    private final Boolean autoCorrectEnabled;
    private final int capitalization;
    private final LocaleList hintLocales;
    private final int imeAction;
    private final int keyboardType;
    private final Boolean showKeyboardOnFocus;

    public /* synthetic */ KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bool, i2, i3, platformImeOptions, bool2, localeList);
    }

    private KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList) {
        this.capitalization = i;
        this.autoCorrectEnabled = bool;
        this.keyboardType = i2;
        this.imeAction = i3;
        this.showKeyboardOnFocus = bool2;
        this.hintLocales = localeList;
    }

    public /* synthetic */ KeyboardOptions(int i, Boolean bool, int i2, int i3, PlatformImeOptions platformImeOptions, Boolean bool2, LocaleList localeList, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? KeyboardCapitalization.Companion.m2225getUnspecifiedIUNYP9k() : i, (i4 & 2) != 0 ? null : bool, (i4 & 4) != 0 ? KeyboardType.Companion.m2242getUnspecifiedPjHm6EE() : i2, (i4 & 8) != 0 ? ImeAction.Companion.m2210getUnspecifiedeUduSuo() : i3, (i4 & 16) != 0 ? null : platformImeOptions, (i4 & 32) != 0 ? null : bool2, (i4 & 64) == 0 ? localeList : null, null);
    }

    /* compiled from: KeyboardOptions.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KeyboardOptions getDefault() {
            return KeyboardOptions.Default;
        }
    }

    private final boolean getAutoCorrectOrDefault() {
        Boolean bool = this.autoCorrectEnabled;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* renamed from: getCapitalizationOrDefault-IUNYP9k, reason: not valid java name */
    private final int m396getCapitalizationOrDefaultIUNYP9k() {
        KeyboardCapitalization m2215boximpl = KeyboardCapitalization.m2215boximpl(this.capitalization);
        int m2221unboximpl = m2215boximpl.m2221unboximpl();
        KeyboardCapitalization.Companion companion = KeyboardCapitalization.Companion;
        if (KeyboardCapitalization.m2218equalsimpl0(m2221unboximpl, companion.m2225getUnspecifiedIUNYP9k())) {
            m2215boximpl = null;
        }
        return m2215boximpl != null ? m2215boximpl.m2221unboximpl() : companion.m2223getNoneIUNYP9k();
    }

    /* renamed from: getKeyboardTypeOrDefault-PjHm6EE, reason: not valid java name */
    private final int m397getKeyboardTypeOrDefaultPjHm6EE() {
        KeyboardType m2227boximpl = KeyboardType.m2227boximpl(this.keyboardType);
        int m2233unboximpl = m2227boximpl.m2233unboximpl();
        KeyboardType.Companion companion = KeyboardType.Companion;
        if (KeyboardType.m2230equalsimpl0(m2233unboximpl, companion.m2242getUnspecifiedPjHm6EE())) {
            m2227boximpl = null;
        }
        return m2227boximpl != null ? m2227boximpl.m2233unboximpl() : companion.m2241getTextPjHm6EE();
    }

    /* renamed from: getImeActionOrDefault-eUduSuo$foundation_release, reason: not valid java name */
    public final int m398getImeActionOrDefaulteUduSuo$foundation_release() {
        ImeAction m2195boximpl = ImeAction.m2195boximpl(this.imeAction);
        int m2201unboximpl = m2195boximpl.m2201unboximpl();
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m2198equalsimpl0(m2201unboximpl, companion.m2210getUnspecifiedeUduSuo())) {
            m2195boximpl = null;
        }
        return m2195boximpl != null ? m2195boximpl.m2201unboximpl() : companion.m2202getDefaulteUduSuo();
    }

    private final LocaleList getHintLocalesOrDefault() {
        LocaleList localeList = this.hintLocales;
        return localeList == null ? LocaleList.Companion.getEmpty() : localeList;
    }

    public final ImeOptions toImeOptions$foundation_release(boolean z) {
        return new ImeOptions(z, m396getCapitalizationOrDefaultIUNYP9k(), getAutoCorrectOrDefault(), m397getKeyboardTypeOrDefaultPjHm6EE(), m398getImeActionOrDefaulteUduSuo$foundation_release(), null, getHintLocalesOrDefault(), null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyboardOptions)) {
            return false;
        }
        KeyboardOptions keyboardOptions = (KeyboardOptions) obj;
        if (!KeyboardCapitalization.m2218equalsimpl0(this.capitalization, keyboardOptions.capitalization) || !Intrinsics.areEqual(this.autoCorrectEnabled, keyboardOptions.autoCorrectEnabled) || !KeyboardType.m2230equalsimpl0(this.keyboardType, keyboardOptions.keyboardType) || !ImeAction.m2198equalsimpl0(this.imeAction, keyboardOptions.imeAction)) {
            return false;
        }
        keyboardOptions.getClass();
        return Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual(this.showKeyboardOnFocus, keyboardOptions.showKeyboardOnFocus) && Intrinsics.areEqual(this.hintLocales, keyboardOptions.hintLocales);
    }

    public int hashCode() {
        int m2219hashCodeimpl = KeyboardCapitalization.m2219hashCodeimpl(this.capitalization) * 31;
        Boolean bool = this.autoCorrectEnabled;
        int hashCode = (((((m2219hashCodeimpl + (bool != null ? bool.hashCode() : 0)) * 31) + KeyboardType.m2231hashCodeimpl(this.keyboardType)) * 31) + ImeAction.m2199hashCodeimpl(this.imeAction)) * 961;
        Boolean bool2 = this.showKeyboardOnFocus;
        int hashCode2 = (hashCode + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        LocaleList localeList = this.hintLocales;
        return hashCode2 + (localeList != null ? localeList.hashCode() : 0);
    }

    public String toString() {
        return "KeyboardOptions(capitalization=" + ((Object) KeyboardCapitalization.m2220toStringimpl(this.capitalization)) + ", autoCorrectEnabled=" + this.autoCorrectEnabled + ", keyboardType=" + ((Object) KeyboardType.m2232toStringimpl(this.keyboardType)) + ", imeAction=" + ((Object) ImeAction.m2200toStringimpl(this.imeAction)) + ", platformImeOptions=" + ((Object) null) + "showKeyboardOnFocus=" + this.showKeyboardOnFocus + ", hintLocales=" + this.hintLocales + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
