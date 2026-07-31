package net.thunderbird.feature.mail.message.list.ui.component.organism;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NewMessageItemKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageItemUi f$0;
    public final /* synthetic */ MessageListPreferences f$1;

    public /* synthetic */ NewMessageItemKt$$ExternalSyntheticLambda0(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, int i) {
        this.$r8$classId = i;
        this.f$0 = messageItemUi;
        this.f$1 = messageListPreferences;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AnnotatedString.Builder builder;
        int pushStyle;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageListPreferences messageListPreferences = this.f$1;
        MessageItemUi messageItemUi = this.f$0;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    ComposedAddressUi composedAddressUi = messageItemUi.senders;
                    String str = messageItemUi.subject;
                    builder = new AnnotatedString.Builder();
                    pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(str);
                        builder.pop(pushStyle);
                        MessageBodyContentKt.MessageItemSenderSubjectFirstLine(composedAddressUi, builder.toAnnotatedString(), messageListPreferences.senderAboveSubject, null, false, gapComposer, 0, 24);
                    } finally {
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    MessageBodyContentKt.MessageItemSenderSubjectFirstLine(messageItemUi.senders, new AnnotatedString(messageItemUi.subject), messageListPreferences.senderAboveSubject, null, true, gapComposer2, 24576, 8);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            default:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    ComposedAddressUi composedAddressUi2 = messageItemUi.senders;
                    String str2 = messageItemUi.subject;
                    builder = new AnnotatedString.Builder();
                    pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(str2);
                        builder.pop(pushStyle);
                        MessageBodyContentKt.MessageItemSenderSubjectFirstLine(composedAddressUi2, builder.toAnnotatedString(), messageListPreferences.senderAboveSubject, null, false, gapComposer3, 0, 24);
                    } finally {
                    }
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
        }
    }
}
