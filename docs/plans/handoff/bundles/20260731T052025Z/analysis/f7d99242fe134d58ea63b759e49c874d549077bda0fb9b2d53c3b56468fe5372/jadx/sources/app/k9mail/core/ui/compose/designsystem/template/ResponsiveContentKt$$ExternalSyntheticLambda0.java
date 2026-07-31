package app.k9mail.core.ui.compose.designsystem.template;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageConversationCounterBadgeColor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ResponsiveContentKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ ResponsiveContentKt$$ExternalSyntheticLambda0(int i, MessageConversationCounterBadgeColor messageConversationCounterBadgeColor, Modifier modifier, int i2, int i3) {
        this.$r8$classId = 2;
        this.f$2 = i;
        this.f$1 = messageConversationCounterBadgeColor;
        this.f$0 = modifier;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$3;
        int i3 = this.f$2;
        Modifier modifier = this.f$0;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ScaffoldKt.ResponsiveContent(modifier, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                ScaffoldKt.ResponsiveWidthContainer(modifier, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(i3 | 1), i2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                MessageBodyContentKt.MessageConversationCounterBadge(this.f$2, (MessageConversationCounterBadgeColor) obj3, this.f$0, this.f$3, (Composer) obj, updateChangedFlags);
                break;
        }
        return unit;
    }

    public /* synthetic */ ResponsiveContentKt$$ExternalSyntheticLambda0(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = modifier;
        this.f$1 = composableLambdaImpl;
        this.f$2 = i;
        this.f$3 = i2;
    }
}
