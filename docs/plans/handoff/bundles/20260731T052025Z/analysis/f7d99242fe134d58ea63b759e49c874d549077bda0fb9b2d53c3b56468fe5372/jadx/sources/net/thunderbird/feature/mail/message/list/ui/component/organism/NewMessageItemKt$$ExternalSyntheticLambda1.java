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
import kotlin.jvm.functions.Function4;
import kotlinx.collections.immutable.PersistentMap;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.state.ComposedAddressUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NewMessageItemKt$$ExternalSyntheticLambda1 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageItemUi f$0;
    public final /* synthetic */ MessageListPreferences f$1;

    public /* synthetic */ NewMessageItemKt$$ExternalSyntheticLambda1(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, int i) {
        this.$r8$classId = i;
        this.f$0 = messageItemUi;
        this.f$1 = messageListPreferences;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i;
        AnnotatedString.Builder builder;
        int pushStyle;
        int i2;
        int i3;
        int i4 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MessageListPreferences messageListPreferences = this.f$1;
        MessageItemUi messageItemUi = this.f$0;
        switch (i4) {
            case 0:
                int i5 = 4;
                AnnotatedString annotatedString = (AnnotatedString) obj;
                PersistentMap persistentMap = (PersistentMap) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                persistentMap.getClass();
                if ((intValue & 6) == 0) {
                    if (!((GapComposer) composer).changed(annotatedString)) {
                        i5 = 2;
                    }
                    i = intValue | i5;
                } else {
                    i = intValue;
                }
                if ((intValue & 48) == 0) {
                    i |= ((GapComposer) composer).changed(persistentMap) ? 32 : 16;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(i & 1, (i & 147) != 146)) {
                    ComposedAddressUi composedAddressUi = messageItemUi.senders;
                    String str = messageItemUi.subject;
                    builder = new AnnotatedString.Builder();
                    pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(str);
                        builder.pop(pushStyle);
                        MessageBodyContentKt.MessageItemSenderSubjectSecondLine(composedAddressUi, builder.toAnnotatedString(), !messageListPreferences.senderAboveSubject, null, annotatedString, persistentMap, gapComposer, (i << 12) & 516096);
                    } finally {
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                AnnotatedString annotatedString2 = (AnnotatedString) obj;
                int i6 = 4;
                PersistentMap persistentMap2 = (PersistentMap) obj2;
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                persistentMap2.getClass();
                if ((intValue2 & 6) == 0) {
                    if (!((GapComposer) composer2).changed(annotatedString2)) {
                        i6 = 2;
                    }
                    i2 = intValue2 | i6;
                } else {
                    i2 = intValue2;
                }
                if ((intValue2 & 48) == 0) {
                    i2 |= ((GapComposer) composer2).changed(persistentMap2) ? 32 : 16;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                    MessageBodyContentKt.MessageItemSenderSubjectSecondLine(messageItemUi.senders, new AnnotatedString(messageItemUi.subject), !messageListPreferences.senderAboveSubject, null, annotatedString2, persistentMap2, gapComposer2, (i2 << 12) & 516096);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            default:
                AnnotatedString annotatedString3 = (AnnotatedString) obj;
                PersistentMap persistentMap3 = (PersistentMap) obj2;
                Composer composer3 = (Composer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                persistentMap3.getClass();
                if ((intValue3 & 6) == 0) {
                    i3 = (((GapComposer) composer3).changed(annotatedString3) ? 4 : 2) | intValue3;
                } else {
                    i3 = intValue3;
                }
                if ((intValue3 & 48) == 0) {
                    i3 |= ((GapComposer) composer3).changed(persistentMap3) ? 32 : 16;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                    ComposedAddressUi composedAddressUi2 = messageItemUi.senders;
                    String str2 = messageItemUi.subject;
                    builder = new AnnotatedString.Builder();
                    pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                    try {
                        builder.append(str2);
                        builder.pop(pushStyle);
                        MessageBodyContentKt.MessageItemSenderSubjectSecondLine(composedAddressUi2, builder.toAnnotatedString(), !messageListPreferences.senderAboveSubject, null, annotatedString3, persistentMap3, gapComposer3, (i3 << 12) & 516096);
                    } finally {
                    }
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
        }
    }
}
