package net.thunderbird.core.preference.display.visualSettings.message.list;

import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda31;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0;
import com.fsck.k9.preferences.K9StorageEditor;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.DefaultPreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeBroker;
import net.thunderbird.core.preference.PreferenceChangeSubscriber;
import net.thunderbird.core.preference.PreferenceScope;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageListPreferencesManager implements PreferenceChangeSubscriber {
    public final Logger logger;
    public final StateFlowImpl preferences;
    public final InMemoryStorage storage;
    public final K9StorageEditor storageEditor;

    public DefaultMessageListPreferencesManager(Logger logger, InMemoryStorage inMemoryStorage, K9StorageEditor k9StorageEditor, PreferenceChangeBroker preferenceChangeBroker) {
        this.logger = logger;
        this.storage = inMemoryStorage;
        this.storageEditor = k9StorageEditor;
        ((DefaultPreferenceChangeBroker) preferenceChangeBroker).subscribe(this);
        this.preferences = FlowKt.MutableStateFlow(loadPreferences());
    }

    public final Object getConfig() {
        return (DisplayMessageListSettings) this.preferences.getValue();
    }

    public final DisplayMessageListSettings loadPreferences() {
        MessageListDateTimeFormat messageListDateTimeFormat;
        InMemoryStorage inMemoryStorage = this.storage;
        boolean z = inMemoryStorage.getBoolean("colorizeMissingContactPictures", true);
        boolean z2 = inMemoryStorage.getBoolean("changeRegisteredNameColor", true);
        boolean z3 = inMemoryStorage.getBoolean("isUseBackgroundAsUnreadIndicator", false);
        boolean z4 = inMemoryStorage.getBoolean("showCorrespondentNames", true);
        boolean z5 = inMemoryStorage.getBoolean("showContactName", false);
        boolean z6 = inMemoryStorage.getBoolean("showContactPicture", true);
        int i = inMemoryStorage.getInt("messageListPreviewLines", 2);
        UiDensity uiDensity = DisplayMessageListSettingsKt.MESSAGE_LIST_SETTINGS_DEFAULT_UI_DENSITY;
        String stringOrNull = inMemoryStorage.getStringOrNull("messageListDensity");
        if (stringOrNull != null) {
            try {
                UiDensity valueOf = UiDensity.valueOf(stringOrNull);
                if (valueOf != null) {
                    uiDensity = valueOf;
                }
            } catch (IllegalArgumentException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [messageListDensity] value [" + stringOrNull + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(UiDensity.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(UiDensity.values(), null, null, null, null, 63)), (Throwable) e);
                return null;
            }
        }
        int i2 = inMemoryStorage.getInt("registeredNameColor", -15690763);
        MessageListDateTimeFormat messageListDateTimeFormat2 = DisplayMessageListSettingsKt.MESSAGE_LIST_SETTINGS_DEFAULT_DATE_TIME_FORMAT;
        String stringOrNull2 = inMemoryStorage.getStringOrNull("messageListDateTimeFormat");
        if (stringOrNull2 != null) {
            try {
                MessageListDateTimeFormat valueOf2 = MessageListDateTimeFormat.valueOf(stringOrNull2);
                if (valueOf2 != null) {
                    messageListDateTimeFormat = valueOf2;
                    return new DisplayMessageListSettings(z4, z5, z6, z2, z, z3, i, uiDensity, i2, messageListDateTimeFormat);
                }
            } catch (IllegalArgumentException e2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ("Unable to convert stored key [messageListDateTimeFormat] value [" + stringOrNull2 + "] "), (Object) ("to enum of type " + Reflection.getOrCreateKotlinClass(MessageListDateTimeFormat.class).getQualifiedName() + "."), (Object) "Valid values: ".concat(ArraysKt___ArraysKt.joinToString$default(MessageListDateTimeFormat.values(), null, null, null, null, 63)), (Throwable) e2);
                return null;
            }
        }
        messageListDateTimeFormat = messageListDateTimeFormat2;
        return new DisplayMessageListSettings(z4, z5, z6, z2, z, z3, i, uiDensity, i2, messageListDateTimeFormat);
    }

    @Override // net.thunderbird.core.preference.PreferenceChangeSubscriber
    public final void receive(PreferenceScope preferenceScope) {
        StateFlowImpl stateFlowImpl;
        Object value;
        preferenceScope.getClass();
        if (preferenceScope == PreferenceScope.ALL || preferenceScope == PreferenceScope.DISPLAY_VISUAL_MESSAGE_LIST) {
            do {
                stateFlowImpl = this.preferences;
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, loadPreferences()));
        }
    }

    public final void save(Object obj) {
        StateFlowImpl stateFlowImpl;
        Object value;
        DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) obj;
        displayMessageListSettings.getClass();
        DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0 defaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0 = new DefaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0(displayMessageListSettings, 1);
        Logger logger = this.logger;
        Sink$CC.debug$default(logger, "DefaultMessageListPreferencesManager", null, defaultGeneralSettingsManager$generalSettings$8$$ExternalSyntheticLambda0, 2);
        boolean z = displayMessageListSettings.isChangeContactNameColor;
        K9StorageEditor k9StorageEditor = this.storageEditor;
        k9StorageEditor.putBoolean("changeRegisteredNameColor", z);
        k9StorageEditor.putBoolean("colorizeMissingContactPictures", displayMessageListSettings.isColorizeMissingContactPictures);
        k9StorageEditor.putBoolean("showContactPicture", displayMessageListSettings.isShowContactPicture);
        k9StorageEditor.putBoolean("isUseBackgroundAsUnreadIndicator", displayMessageListSettings.isUseBackgroundAsUnreadIndicator);
        k9StorageEditor.putBoolean("showContactName", displayMessageListSettings.isShowContactName);
        k9StorageEditor.putBoolean("showCorrespondentNames", displayMessageListSettings.isShowCorrespondentNames);
        k9StorageEditor.putInt("messageListPreviewLines", displayMessageListSettings.previewLines);
        k9StorageEditor.putInt("registeredNameColor", displayMessageListSettings.contactNameColor);
        k9StorageEditor.putString("messageListDensity", displayMessageListSettings.uiDensity.name());
        k9StorageEditor.putString("messageListDateTimeFormat", displayMessageListSettings.dateTimeFormat.name());
        Sink$CC.verbose$default(logger, "DefaultMessageListPreferencesManager", null, new AccountSetupNavHostKt$$ExternalSyntheticLambda31(k9StorageEditor.commit(), 6), 2);
        do {
            stateFlowImpl = this.preferences;
            value = stateFlowImpl.getValue();
        } while (!stateFlowImpl.compareAndSet(value, displayMessageListSettings));
    }
}
