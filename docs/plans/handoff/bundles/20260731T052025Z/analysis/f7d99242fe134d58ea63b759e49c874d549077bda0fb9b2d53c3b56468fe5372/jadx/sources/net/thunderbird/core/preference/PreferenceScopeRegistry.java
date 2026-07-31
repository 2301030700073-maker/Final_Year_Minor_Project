package net.thunderbird.core.preference;

import kotlin.UIntArray;
import kotlin.collections.builders.MapBuilder;
import kotlin.enums.EnumEntriesList;
import net.thunderbird.core.preference.debugging.DebugSettingKey;
import net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettingKey;
import net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettingKey;
import net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettingKey;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingKey;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettingKey;
import net.thunderbird.core.preference.interaction.InteractionSettingKey;
import net.thunderbird.core.preference.network.NetworkSettingKey;
import net.thunderbird.core.preference.notification.NotificationSettingKey;
import net.thunderbird.core.preference.privacy.PrivacySettingKey;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class PreferenceScopeRegistry {
    public static final MapBuilder map;

    static {
        MapBuilder mapBuilder = new MapBuilder();
        EnumEntriesList enumEntriesList = DebugSettingKey.$ENTRIES;
        enumEntriesList.getClass();
        UIntArray.Iterator iterator = new UIntArray.Iterator(6, enumEntriesList);
        while (iterator.hasNext()) {
            mapBuilder.put(((DebugSettingKey) iterator.next()).value, PreferenceScope.DEBUGGING);
        }
        EnumEntriesList enumEntriesList2 = InteractionSettingKey.$ENTRIES;
        enumEntriesList2.getClass();
        UIntArray.Iterator iterator2 = new UIntArray.Iterator(6, enumEntriesList2);
        while (iterator2.hasNext()) {
            mapBuilder.put(((InteractionSettingKey) iterator2.next()).value, PreferenceScope.INTERACTION);
        }
        EnumEntriesList enumEntriesList3 = NetworkSettingKey.$ENTRIES;
        enumEntriesList3.getClass();
        UIntArray.Iterator iterator3 = new UIntArray.Iterator(6, enumEntriesList3);
        while (iterator3.hasNext()) {
            ((NetworkSettingKey) iterator3.next()).getClass();
            mapBuilder.put("backgroundOperations", PreferenceScope.NETWORK);
        }
        EnumEntriesList enumEntriesList4 = NotificationSettingKey.$ENTRIES;
        enumEntriesList4.getClass();
        UIntArray.Iterator iterator4 = new UIntArray.Iterator(6, enumEntriesList4);
        while (iterator4.hasNext()) {
            mapBuilder.put(((NotificationSettingKey) iterator4.next()).value, PreferenceScope.NOTIFICATION);
        }
        EnumEntriesList enumEntriesList5 = PrivacySettingKey.$ENTRIES;
        enumEntriesList5.getClass();
        UIntArray.Iterator iterator5 = new UIntArray.Iterator(6, enumEntriesList5);
        while (iterator5.hasNext()) {
            mapBuilder.put(((PrivacySettingKey) iterator5.next()).value, PreferenceScope.PRIVACY);
        }
        EnumEntriesList enumEntriesList6 = DisplayCoreSettingKey.$ENTRIES;
        enumEntriesList6.getClass();
        UIntArray.Iterator iterator6 = new UIntArray.Iterator(6, enumEntriesList6);
        while (iterator6.hasNext()) {
            mapBuilder.put(((DisplayCoreSettingKey) iterator6.next()).value, PreferenceScope.DISPLAY_CORE);
        }
        EnumEntriesList enumEntriesList7 = DisplayInboxSettingKey.$ENTRIES;
        enumEntriesList7.getClass();
        UIntArray.Iterator iterator7 = new UIntArray.Iterator(6, enumEntriesList7);
        while (iterator7.hasNext()) {
            mapBuilder.put(((DisplayInboxSettingKey) iterator7.next()).value, PreferenceScope.DISPLAY_INBOX);
        }
        EnumEntriesList enumEntriesList8 = DisplayMiscSettingKey.$ENTRIES;
        enumEntriesList8.getClass();
        UIntArray.Iterator iterator8 = new UIntArray.Iterator(6, enumEntriesList8);
        while (iterator8.hasNext()) {
            mapBuilder.put(((DisplayMiscSettingKey) iterator8.next()).value, PreferenceScope.DISPLAY_MISC);
        }
        EnumEntriesList enumEntriesList9 = DisplayVisualSettingKey.$ENTRIES;
        enumEntriesList9.getClass();
        UIntArray.Iterator iterator9 = new UIntArray.Iterator(6, enumEntriesList9);
        while (iterator9.hasNext()) {
            mapBuilder.put(((DisplayVisualSettingKey) iterator9.next()).value, PreferenceScope.DISPLAY_VISUAL);
        }
        EnumEntriesList enumEntriesList10 = DisplayMessageListSettingKey.$ENTRIES;
        enumEntriesList10.getClass();
        UIntArray.Iterator iterator10 = new UIntArray.Iterator(6, enumEntriesList10);
        while (iterator10.hasNext()) {
            mapBuilder.put(((DisplayMessageListSettingKey) iterator10.next()).value, PreferenceScope.DISPLAY_VISUAL_MESSAGE_LIST);
        }
        map = mapBuilder.build();
    }
}
