package net.thunderbird.core.ui.setting.dialog.ui;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.changelog.internal.ChangelogContract$Event$OnShowRecentChangesCheck;
import net.thunderbird.feature.changelog.internal.ChangelogContract$State;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DialogSettingViewKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ DialogSettingViewKt$$ExternalSyntheticLambda4(int i, MutableState mutableState, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                SettingValue settingValue = (SettingValue) obj;
                settingValue.getClass();
                function1.invoke(settingValue);
                mutableState.setValue(Boolean.FALSE);
                break;
            case 1:
                ((Boolean) obj).getClass();
                function1.invoke(new ChangelogContract$Event$OnShowRecentChangesCheck(((ChangelogContract$State) mutableState.getValue()).showRecentChanges));
                break;
            default:
                NotificationAction notificationAction = (NotificationAction) obj;
                notificationAction.getClass();
                if (!notificationAction.equals(NotificationAction.OpenNotificationCentre.INSTANCE)) {
                    function1.invoke(notificationAction);
                    break;
                } else {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                }
        }
        return unit;
    }
}
