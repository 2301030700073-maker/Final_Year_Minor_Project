package net.thunderbird.feature.mail.message.list.ui.component.organism;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemTrailingElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NewMessageItemKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageListPreferences f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ NewMessageItemKt$$ExternalSyntheticLambda2(MessageListPreferences messageListPreferences, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = messageListPreferences;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        MessageListPreferences messageListPreferences = this.f$0;
        MessageItemTrailingElement messageItemTrailingElement = (MessageItemTrailingElement) obj;
        switch (i) {
            case 0:
                messageItemTrailingElement.getClass();
                if ((messageItemTrailingElement instanceof MessageItemTrailingElement.FavouriteIconButton) && messageListPreferences.showFavouriteButton) {
                    function1.invoke(Boolean.valueOf(((MessageItemTrailingElement.FavouriteIconButton) messageItemTrailingElement).favourite));
                    break;
                }
                break;
            case 1:
                messageItemTrailingElement.getClass();
                if ((messageItemTrailingElement instanceof MessageItemTrailingElement.FavouriteIconButton) && messageListPreferences.showFavouriteButton) {
                    function1.invoke(Boolean.valueOf(((MessageItemTrailingElement.FavouriteIconButton) messageItemTrailingElement).favourite));
                    break;
                }
                break;
            default:
                messageItemTrailingElement.getClass();
                if ((messageItemTrailingElement instanceof MessageItemTrailingElement.FavouriteIconButton) && messageListPreferences.showFavouriteButton) {
                    function1.invoke(Boolean.valueOf(((MessageItemTrailingElement.FavouriteIconButton) messageItemTrailingElement).favourite));
                    break;
                }
                break;
        }
        return unit;
    }
}
