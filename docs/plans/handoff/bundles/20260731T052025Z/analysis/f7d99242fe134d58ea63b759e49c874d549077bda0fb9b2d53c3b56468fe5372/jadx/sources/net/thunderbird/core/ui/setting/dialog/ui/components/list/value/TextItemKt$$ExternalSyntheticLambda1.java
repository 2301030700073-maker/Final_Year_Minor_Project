package net.thunderbird.core.ui.setting.dialog.ui.components.list.value;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt__CharKt;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import okhttp3.Cookie;
import okhttp3.Handshake;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextItemKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ TextItemKt$$ExternalSyntheticLambda1(Object obj, Modifier modifier, Function1 function1, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = modifier;
        this.f$1 = function1;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CharsKt__CharKt.TextItem((SettingValue.Text) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Cookie.Companion.IconListItem((SettingValue.IconList) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                Handshake.Companion.SegmentedButtonItem((SettingValue.SegmentedButton) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                RangesKt.SelectItem((SettingValue.Select) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                Base64.SwitchItem((SettingValue.Switch) obj5, (Modifier) obj3, (Function1) obj4, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 5:
                ((Integer) obj2).intValue();
                Handshake.Companion.ScrollEventEffect((DefaultMessageListScope) obj5, (ImmutableList) obj4, (LazyListState) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                Base64.ChooseArchiveFolderDialogContent((SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj2).getClass();
                Base64.AccountAvatar((DisplayAccount) obj5, (Modifier) obj3, (Function1) obj4, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.BannerGlobalNotificationHostLayout((BannerGlobalVisual) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                CharsKt__CharKt.ResolvedNotificationActionButton((NotificationAction) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                ThundermailOAuthRedirectScreenKt.ThundermailOAuthRedirectScreen((ThundermailContract$State) obj5, (NavController$$ExternalSyntheticLambda0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ TextItemKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = i;
    }
}
