package app.k9mail.feature.account.common.ui.item;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItem;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda0(int i, BannerInlineVisual bannerInlineVisual, Function1 function1, Function0 function0, Modifier modifier, int i2) {
        this.$r8$classId = 3;
        this.f$4 = i;
        this.f$0 = bannerInlineVisual;
        this.f$2 = function1;
        this.f$3 = function0;
        this.f$1 = modifier;
        this.f$5 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        int i3 = this.f$5;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                ActionBar.ListItem((LazyItemScopeImpl) obj4, this.f$1, (PaddingValues) obj3, (ComposableLambdaImpl) function, (Composer) obj, updateChangedFlags, this.f$5);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                TopAppBarKt.TopAppBar((String) obj4, this.f$1, (Function2) obj3, (Function3) function, (Composer) obj, updateChangedFlags2, this.f$5);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i3 | 1);
                NotificationListItemKt.NotificationActionsListItem((NotificationListItem) obj4, this.f$4, (NotificationActionsReorderController) obj3, (Function1) function, this.f$1, (Composer) obj, updateChangedFlags3);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i3 | 1);
                InAppNotificationHostKt.BannerInlineItem(this.f$4, (BannerInlineVisual) obj4, (Function1) obj3, (Function0) function, this.f$1, (Composer) obj, updateChangedFlags4);
                break;
        }
        return unit;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda0(NotificationListItem notificationListItem, int i, NotificationActionsReorderController notificationActionsReorderController, Function1 function1, Modifier modifier, int i2) {
        this.$r8$classId = 2;
        this.f$0 = notificationListItem;
        this.f$4 = i;
        this.f$2 = notificationActionsReorderController;
        this.f$3 = function1;
        this.f$1 = modifier;
        this.f$5 = i2;
    }

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda0(Object obj, Modifier modifier, Object obj2, Function3 function3, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$1 = modifier;
        this.f$2 = obj2;
        this.f$3 = function3;
        this.f$4 = i;
        this.f$5 = i2;
    }
}
