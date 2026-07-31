package org.schabi.newpipe.settings;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.function.Predicate$CC;
import java.util.HashSet;
import java.util.function.Predicate;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda0;
import org.schabi.newpipe.settings.SettingsResourceRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SettingsResourceRegistry {
    public static final SettingsResourceRegistry INSTANCE = new SettingsResourceRegistry();
    public final HashSet registeredEntries = new HashSet();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SettingRegistryEntry {
        public final Class fragmentClass;
        public final int preferencesResId;
        public boolean searchable = true;

        public SettingRegistryEntry(int i, Class cls) {
            this.fragmentClass = cls;
            this.preferencesResId = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SettingRegistryEntry.class == obj.getClass()) {
                SettingRegistryEntry settingRegistryEntry = (SettingRegistryEntry) obj;
                if (this.preferencesResId == settingRegistryEntry.preferencesResId && this.fragmentClass.equals(settingRegistryEntry.fragmentClass)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.fragmentClass, Integer.valueOf(this.preferencesResId));
        }
    }

    public SettingsResourceRegistry() {
        add(R.xml.main_settings, MainSettingsFragment.class).searchable = false;
        add(R.xml.appearance_settings, AppearanceSettingsFragment.class);
        add(R.xml.content_settings, ContentSettingsFragment.class);
        add(R.xml.debug_settings, DebugSettingsFragment.class).searchable = false;
        add(R.xml.download_settings, DownloadSettingsFragment.class);
        add(R.xml.history_settings, HistorySettingsFragment.class);
        add(R.xml.notifications_settings, NotificationSettingsFragment.class);
        add(R.xml.player_notification_settings, PlayerNotificationSettingsFragment.class);
        add(R.xml.update_settings, UpdateSettingsFragment.class);
        add(R.xml.video_audio_settings, VideoAudioSettingsFragment.class);
        add(R.xml.exoplayer_settings, ExoPlayerSettingsFragment.class);
        add(R.xml.backup_restore_settings, BackupRestoreSettingsFragment.class);
    }

    public final SettingRegistryEntry add(int i, Class cls) {
        SettingRegistryEntry settingRegistryEntry = new SettingRegistryEntry(i, cls);
        this.registeredEntries.add(settingRegistryEntry);
        return settingRegistryEntry;
    }

    public final SettingRegistryEntry getEntryByPreferencesResId(int i) {
        return (SettingRegistryEntry) Collection.EL.stream(this.registeredEntries).filter(new NewPipe$$ExternalSyntheticLambda0(i, 2)).findFirst().orElse(null);
    }

    public final int getPreferencesResId(final Class cls) {
        SettingRegistryEntry settingRegistryEntry = (SettingRegistryEntry) Collection.EL.stream(this.registeredEntries).filter(new Predicate() { // from class: org.schabi.newpipe.settings.SettingsResourceRegistry$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            public /* synthetic */ Predicate or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.equals(((SettingsResourceRegistry.SettingRegistryEntry) obj).fragmentClass, cls);
            }
        }).findFirst().orElse(null);
        if (settingRegistryEntry == null) {
            return -1;
        }
        return settingRegistryEntry.preferencesResId;
    }
}
