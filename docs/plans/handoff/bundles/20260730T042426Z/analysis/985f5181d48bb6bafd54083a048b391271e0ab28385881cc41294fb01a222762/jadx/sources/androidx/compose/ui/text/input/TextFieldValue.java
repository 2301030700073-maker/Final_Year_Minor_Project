package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.NonNullValueClassSaver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextFieldValue.kt */
/* loaded from: classes.dex */
public final class TextFieldValue {
    public static final Companion Companion = new Companion(null);
    private static final Saver Saver = SaverKt.Saver(new Function2() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope saverScope, TextFieldValue textFieldValue) {
            return CollectionsKt.arrayListOf(SaversKt.save(textFieldValue.getAnnotatedString(), SaversKt.getAnnotatedStringSaver(), saverScope), SaversKt.save(TextRange.m2113boximpl(textFieldValue.m2247getSelectiond9O1mEE()), SaversKt.getSaver(TextRange.Companion), saverScope));
        }
    }, new Function1() { // from class: androidx.compose.ui.text.input.TextFieldValue$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final TextFieldValue invoke(Object obj) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Saver annotatedStringSaver = SaversKt.getAnnotatedStringSaver();
            Boolean bool = Boolean.FALSE;
            TextRange textRange = null;
            AnnotatedString annotatedString = ((!Intrinsics.areEqual(obj2, bool) || (annotatedStringSaver instanceof NonNullValueClassSaver)) && obj2 != null) ? (AnnotatedString) annotatedStringSaver.restore(obj2) : null;
            Intrinsics.checkNotNull(annotatedString);
            Object obj3 = list.get(1);
            Saver saver = SaversKt.getSaver(TextRange.Companion);
            if ((!Intrinsics.areEqual(obj3, bool) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) {
                textRange = (TextRange) saver.restore(obj3);
            }
            Intrinsics.checkNotNull(textRange);
            return new TextFieldValue(annotatedString, textRange.m2129unboximpl(), (TextRange) null, 4, (DefaultConstructorMarker) null);
        }
    });
    private final AnnotatedString annotatedString;
    private final TextRange composition;
    private final long selection;

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j, textRange);
    }

    public /* synthetic */ TextFieldValue(String str, long j, TextRange textRange, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j, textRange);
    }

    private TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange) {
        this.annotatedString = annotatedString;
        this.selection = TextRangeKt.m2131coerceIn8ffj60Q(j, 0, getText().length());
        this.composition = textRange != null ? TextRange.m2113boximpl(TextRangeKt.m2131coerceIn8ffj60Q(textRange.m2129unboximpl(), 0, getText().length())) : null;
    }

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    public /* synthetic */ TextFieldValue(AnnotatedString annotatedString, long j, TextRange textRange, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, (i & 2) != 0 ? TextRange.Companion.m2130getZerod9O1mEE() : j, (i & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ TextFieldValue(String str, long j, TextRange textRange, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? TextRange.Companion.m2130getZerod9O1mEE() : j, (i & 4) != 0 ? null : textRange, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private TextFieldValue(java.lang.String r8, long r9, androidx.compose.ui.text.TextRange r11) {
        /*
            r7 = this;
            androidx.compose.ui.text.AnnotatedString r6 = new androidx.compose.ui.text.AnnotatedString
            r4 = 6
            r5 = 0
            r2 = 0
            r3 = 0
            r0 = r6
            r1 = r8
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r6
            r2 = r9
            r4 = r11
            r0.<init>(r1, r2, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextFieldValue.<init>(java.lang.String, long, androidx.compose.ui.text.TextRange):void");
    }

    public final String getText() {
        return this.annotatedString.getText();
    }

    /* renamed from: getSelection-d9O1mEE, reason: not valid java name */
    public final long m2247getSelectiond9O1mEE() {
        return this.selection;
    }

    /* renamed from: getComposition-MzsxiRA, reason: not valid java name */
    public final TextRange m2246getCompositionMzsxiRA() {
        return this.composition;
    }

    /* renamed from: copy-3r_uNRQ$default, reason: not valid java name */
    public static /* synthetic */ TextFieldValue m2244copy3r_uNRQ$default(TextFieldValue textFieldValue, AnnotatedString annotatedString, long j, TextRange textRange, int i, Object obj) {
        if ((i & 1) != 0) {
            annotatedString = textFieldValue.annotatedString;
        }
        if ((i & 2) != 0) {
            j = textFieldValue.selection;
        }
        if ((i & 4) != 0) {
            textRange = textFieldValue.composition;
        }
        return textFieldValue.m2245copy3r_uNRQ(annotatedString, j, textRange);
    }

    /* renamed from: copy-3r_uNRQ, reason: not valid java name */
    public final TextFieldValue m2245copy3r_uNRQ(AnnotatedString annotatedString, long j, TextRange textRange) {
        return new TextFieldValue(annotatedString, j, textRange, (DefaultConstructorMarker) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextFieldValue)) {
            return false;
        }
        TextFieldValue textFieldValue = (TextFieldValue) obj;
        return TextRange.m2118equalsimpl0(this.selection, textFieldValue.selection) && Intrinsics.areEqual(this.composition, textFieldValue.composition) && Intrinsics.areEqual(this.annotatedString, textFieldValue.annotatedString);
    }

    public int hashCode() {
        int hashCode = ((this.annotatedString.hashCode() * 31) + TextRange.m2126hashCodeimpl(this.selection)) * 31;
        TextRange textRange = this.composition;
        return hashCode + (textRange != null ? TextRange.m2126hashCodeimpl(textRange.m2129unboximpl()) : 0);
    }

    public String toString() {
        return "TextFieldValue(text='" + ((Object) this.annotatedString) + "', selection=" + ((Object) TextRange.m2128toStringimpl(this.selection)) + ", composition=" + this.composition + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* compiled from: TextFieldValue.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
