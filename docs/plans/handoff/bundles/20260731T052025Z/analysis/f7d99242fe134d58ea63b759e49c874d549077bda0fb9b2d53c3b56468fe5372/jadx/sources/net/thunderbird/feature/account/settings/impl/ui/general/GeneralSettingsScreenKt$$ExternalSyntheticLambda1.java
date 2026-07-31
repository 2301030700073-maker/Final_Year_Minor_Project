package net.thunderbird.feature.account.settings.impl.ui.general;

import android.net.Uri;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.validation.input.IntegerInputField;
import net.thunderbird.core.validation.input.StringInputField;
import net.thunderbird.feature.account.profile.AccountProfile;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Event;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class GeneralSettingsScreenKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GeneralSettingsViewModel f$0;

    public /* synthetic */ GeneralSettingsScreenKt$$ExternalSyntheticLambda1(GeneralSettingsViewModel generalSettingsViewModel, int i) {
        this.$r8$classId = i;
        this.f$0 = generalSettingsViewModel;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object value;
        Object value2;
        GeneralSettingsContract$State generalSettingsContract$State;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        GeneralSettingsViewModel generalSettingsViewModel = this.f$0;
        switch (i) {
            case 0:
                Uri uri = (Uri) obj;
                if (uri != null) {
                    generalSettingsViewModel.event(new GeneralSettingsContract$Event.OnAvatarImagePicked(Util.toKmpUri(uri)));
                    break;
                }
                break;
            case 1:
                String str = (String) obj;
                StateFlowImpl stateFlowImpl = generalSettingsViewModel._state;
                do {
                    value = stateFlowImpl.getValue();
                } while (!stateFlowImpl.compareAndSet(value, GeneralSettingsContract$State.copy$default((GeneralSettingsContract$State) value, str, null, null, null, 62)));
            default:
                AccountProfile accountProfile = (AccountProfile) obj;
                StateFlowImpl stateFlowImpl2 = generalSettingsViewModel._state;
                do {
                    value2 = stateFlowImpl2.getValue();
                    generalSettingsContract$State = (GeneralSettingsContract$State) value2;
                    StringInputField stringInputField = generalSettingsContract$State.name;
                } while (!stateFlowImpl2.compareAndSet(value2, GeneralSettingsContract$State.copy$default(generalSettingsContract$State, null, StringInputField.updateValue(accountProfile.name), new IntegerInputField(6, Integer.valueOf(accountProfile.color)), accountProfile.avatar, 41)));
        }
        return unit;
    }
}
