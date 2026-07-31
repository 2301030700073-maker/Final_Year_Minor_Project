package net.thunderbird.feature.mail.message.list.ui.component.molecule;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemConfiguration;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageBodyContentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ MessageItemConfiguration f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ ComposableLambdaImpl f$3;

    public /* synthetic */ MessageBodyContentKt$$ExternalSyntheticLambda0(String str, MessageItemConfiguration messageItemConfiguration, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.f$0 = str;
        this.f$1 = messageItemConfiguration;
        this.f$2 = modifier;
        this.f$3 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                MessageBodyContentKt.MessageBodyContent(Updater.updateChangedFlags(1), (Composer) obj, this.f$3, this.f$2, this.f$0, this.f$1);
                break;
            default:
                ((Integer) obj2).getClass();
                MessageBodyContentKt.AdaptiveMessageItemHeaderRow(Updater.updateChangedFlags(1), (Composer) obj, this.f$3, this.f$2, this.f$0, this.f$1);
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageBodyContentKt$$ExternalSyntheticLambda0(MessageItemConfiguration messageItemConfiguration, String str, ComposableLambdaImpl composableLambdaImpl, Modifier modifier, int i) {
        this.f$1 = messageItemConfiguration;
        this.f$0 = str;
        this.f$3 = composableLambdaImpl;
        this.f$2 = modifier;
    }
}
