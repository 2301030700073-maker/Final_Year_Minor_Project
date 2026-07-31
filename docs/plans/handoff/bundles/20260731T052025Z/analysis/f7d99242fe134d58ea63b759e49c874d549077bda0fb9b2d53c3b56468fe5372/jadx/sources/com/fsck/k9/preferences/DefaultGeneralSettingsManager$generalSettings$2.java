package com.fsck.k9.preferences;

import android.util.Log;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import de.cketti.changelog.ChangeLog;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.featureflag.FeatureFlag;
import net.thunderbird.core.featureflag.FeatureFlagKey;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.preference.network.NetworkSettings;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.preference.privacy.PrivacySettings;
import net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadPreferencesSideEffect;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultGeneralSettingsManager$generalSettings$2 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public /* synthetic */ Object L$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultGeneralSettingsManager$generalSettings$2(Object obj, Continuation continuation, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.L$1 = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        int i2 = 3;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$2 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 0);
                defaultGeneralSettingsManager$generalSettings$2.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$2.L$1 = (PrivacySettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$2.invokeSuspend(unit);
            case 1:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$22 = new DefaultGeneralSettingsManager$generalSettings$2((QuotedMessagePresenter) this.L$1, (Continuation) obj3, 1);
                defaultGeneralSettingsManager$generalSettings$22.L$0 = (Throwable) obj2;
                defaultGeneralSettingsManager$generalSettings$22.invokeSuspend(unit);
                return unit;
            case 2:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$23 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 2);
                defaultGeneralSettingsManager$generalSettings$23.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$23.L$1 = (NetworkSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$23.invokeSuspend(unit);
            case 3:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$24 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, i2);
                defaultGeneralSettingsManager$generalSettings$24.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$24.L$1 = (InteractionSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$24.invokeSuspend(unit);
            case 4:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$25 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 4);
                defaultGeneralSettingsManager$generalSettings$25.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$25.L$1 = (NotificationPreference) obj2;
                return defaultGeneralSettingsManager$generalSettings$25.invokeSuspend(unit);
            case 5:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$26 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 5);
                defaultGeneralSettingsManager$generalSettings$26.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$26.L$1 = (DisplaySettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$26.invokeSuspend(unit);
            case 6:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$27 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 6);
                defaultGeneralSettingsManager$generalSettings$27.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$27.L$1 = (DisplayCoreSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$27.invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$28 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 7);
                defaultGeneralSettingsManager$generalSettings$28.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$28.L$1 = (DisplayInboxSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$28.invokeSuspend(unit);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$29 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 8);
                defaultGeneralSettingsManager$generalSettings$29.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$29.L$1 = (DisplayVisualSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$29.invokeSuspend(unit);
            case 9:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$210 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 9);
                defaultGeneralSettingsManager$generalSettings$210.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$210.L$1 = (DisplayMiscSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$210.invokeSuspend(unit);
            case 10:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$211 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 10);
                defaultGeneralSettingsManager$generalSettings$211.L$0 = (List) obj;
                defaultGeneralSettingsManager$generalSettings$211.L$1 = (Map) obj2;
                return defaultGeneralSettingsManager$generalSettings$211.invokeSuspend(unit);
            case 11:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$212 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 11);
                defaultGeneralSettingsManager$generalSettings$212.L$0 = (DisplayVisualSettings) obj;
                defaultGeneralSettingsManager$generalSettings$212.L$1 = (DisplayMessageListSettings) obj2;
                return defaultGeneralSettingsManager$generalSettings$212.invokeSuspend(unit);
            case BasicTextKt.ShiftMeta /* 12 */:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$213 = new DefaultGeneralSettingsManager$generalSettings$2(i2, (Continuation) obj3, 12);
                defaultGeneralSettingsManager$generalSettings$213.L$0 = (GeneralSettings) obj;
                defaultGeneralSettingsManager$generalSettings$213.L$1 = (ChangeLog) obj2;
                return defaultGeneralSettingsManager$generalSettings$213.invokeSuspend(unit);
            default:
                DefaultGeneralSettingsManager$generalSettings$2 defaultGeneralSettingsManager$generalSettings$214 = new DefaultGeneralSettingsManager$generalSettings$2((LoadPreferencesSideEffect) this.L$1, (Continuation) obj3, 13);
                defaultGeneralSettingsManager$generalSettings$214.L$0 = (Throwable) obj2;
                defaultGeneralSettingsManager$generalSettings$214.invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GeneralSettings generalSettings = (GeneralSettings) this.L$0;
                PrivacySettings privacySettings = (PrivacySettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings, null, null, null, privacySettings, null, null, 111);
            case 1:
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                Log.e("PipePresenceSrc", "Error in camera ID flow collection.", th);
                QuotedMessagePresenter quotedMessagePresenter = (QuotedMessagePresenter) this.L$1;
                if (((AtomicBoolean) quotedMessagePresenter.quotedTextFormat).get()) {
                    quotedMessagePresenter.updateState(null, th);
                } else {
                    new Integer(Log.d("PipePresenceSrc", "Ignoring error because monitoring is stopped."));
                }
                return unit;
            case 2:
                GeneralSettings generalSettings2 = (GeneralSettings) this.L$0;
                NetworkSettings networkSettings = (NetworkSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings2, networkSettings, null, null, null, null, null, 125);
            case 3:
                GeneralSettings generalSettings3 = (GeneralSettings) this.L$0;
                InteractionSettings interactionSettings = (InteractionSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings3, null, null, null, null, null, interactionSettings, 63);
            case 4:
                GeneralSettings generalSettings4 = (GeneralSettings) this.L$0;
                NotificationPreference notificationPreference = (NotificationPreference) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings4, null, notificationPreference, null, null, null, null, 123);
            case 5:
                GeneralSettings generalSettings5 = (GeneralSettings) this.L$0;
                DisplaySettings displaySettings = (DisplaySettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings5, null, null, displaySettings, null, null, null, 119);
            case 6:
                GeneralSettings generalSettings6 = (GeneralSettings) this.L$0;
                DisplayCoreSettings displayCoreSettings = (DisplayCoreSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings6, null, null, DisplaySettings.copy$default(generalSettings6.display, displayCoreSettings, null, null, null, 14), null, null, null, 119);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                GeneralSettings generalSettings7 = (GeneralSettings) this.L$0;
                DisplayInboxSettings displayInboxSettings = (DisplayInboxSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings7, null, null, DisplaySettings.copy$default(generalSettings7.display, null, displayInboxSettings, null, null, 13), null, null, null, 119);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                GeneralSettings generalSettings8 = (GeneralSettings) this.L$0;
                DisplayVisualSettings displayVisualSettings = (DisplayVisualSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings8, null, null, DisplaySettings.copy$default(generalSettings8.display, null, null, displayVisualSettings, null, 11), null, null, null, 119);
            case 9:
                GeneralSettings generalSettings9 = (GeneralSettings) this.L$0;
                DisplayMiscSettings displayMiscSettings = (DisplayMiscSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return GeneralSettings.copy$default(generalSettings9, null, null, DisplaySettings.copy$default(generalSettings9.display, null, null, null, displayMiscSettings, 7), null, null, null, 119);
            case 10:
                List list = (List) this.L$0;
                Map map = (Map) this.L$1;
                ResultKt.throwOnFailure(obj);
                int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                if (mapCapacity < 16) {
                    mapCapacity = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                for (Object obj2 : list) {
                    linkedHashMap.put(new FeatureFlagKey(((FeatureFlag) obj2).key), obj2);
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt__MapsKt.mapCapacity(map.size()));
                for (Map.Entry entry : map.entrySet()) {
                    linkedHashMap2.put(entry.getKey(), new FeatureFlag(((FeatureFlagKey) entry.getKey()).key, ((Boolean) entry.getValue()).booleanValue()));
                }
                return MapsKt__MapsKt.plus(linkedHashMap, linkedHashMap2);
            case 11:
                DisplayVisualSettings displayVisualSettings2 = (DisplayVisualSettings) this.L$0;
                DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) this.L$1;
                ResultKt.throwOnFailure(obj);
                return DisplayVisualSettings.copy$default(displayVisualSettings2, null, false, false, null, false, displayMessageListSettings, false, false, false, false, false, 2015);
            case BasicTextKt.ShiftMeta /* 12 */:
                GeneralSettings generalSettings10 = (GeneralSettings) this.L$0;
                ChangeLog changeLog = (ChangeLog) this.L$1;
                ResultKt.throwOnFailure(obj);
                return new Pair(generalSettings10, changeLog);
            default:
                Throwable th2 = (Throwable) this.L$0;
                ResultKt.throwOnFailure(obj);
                Sink$CC.error$default(((LoadPreferencesSideEffect) this.L$1).logger, "LoadMessagesLegacySideEffect", null, new ResourceFileSystem$$ExternalSyntheticLambda0(14, th2), 2);
                return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultGeneralSettingsManager$generalSettings$2(int i, Continuation continuation, int i2) {
        super(i, continuation);
        this.$r8$classId = i2;
    }
}
