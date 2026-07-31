package net.newpipe.app.screen.settings.model;

import kotlin.enums.EnumEntriesList;
import newpipe.shared.generated.resources.Drawable0_commonMainKt;
import newpipe.shared.generated.resources.String0_commonMainKt;
import org.jetbrains.compose.resources.DrawableResource;
import org.jetbrains.compose.resources.StringResource;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SettingsCategoryType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ SettingsCategoryType[] $VALUES;
    private final DrawableResource icon;
    private final StringResource title;

    static {
        SettingsCategoryType[] settingsCategoryTypeArr = {new SettingsCategoryType("VIDEO_AUDIO", 0, (StringResource) String0_commonMainKt.settings_category_video_audio_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_headset$delegate.getValue()), new SettingsCategoryType("DOWNLOADS", 1, (StringResource) String0_commonMainKt.settings_category_downloads_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_file_download$delegate.getValue()), new SettingsCategoryType("APPEARANCE", 2, (StringResource) String0_commonMainKt.settings_category_appearance_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_palette$delegate.getValue()), new SettingsCategoryType("HISTORY", 3, (StringResource) String0_commonMainKt.settings_category_history_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_history$delegate.getValue()), new SettingsCategoryType("CONTENT", 4, (StringResource) String0_commonMainKt.content$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_language$delegate.getValue()), new SettingsCategoryType("NOTIFICATIONS", 5, (StringResource) String0_commonMainKt.notifications$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_notifications$delegate.getValue()), new SettingsCategoryType("UPDATES", 6, (StringResource) String0_commonMainKt.settings_category_updates_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_cloud_download$delegate.getValue()), new SettingsCategoryType("BACKUP_RESTORE", 7, (StringResource) String0_commonMainKt.settings_category_backup_restore_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_settings_backup_restore$delegate.getValue()), new SettingsCategoryType("DEBUG", 8, (StringResource) String0_commonMainKt.settings_category_debug_title$delegate.getValue(), (DrawableResource) Drawable0_commonMainKt.ic_bug_report$delegate.getValue())};
        $VALUES = settingsCategoryTypeArr;
        $ENTRIES = new EnumEntriesList(settingsCategoryTypeArr);
    }

    public SettingsCategoryType(String str, int i, StringResource stringResource, DrawableResource drawableResource) {
        this.title = stringResource;
        this.icon = drawableResource;
    }

    public static SettingsCategoryType valueOf(String str) {
        return (SettingsCategoryType) Enum.valueOf(SettingsCategoryType.class, str);
    }

    public static SettingsCategoryType[] values() {
        return (SettingsCategoryType[]) $VALUES.clone();
    }

    public final DrawableResource getIcon() {
        return this.icon;
    }

    public final StringResource getTitle() {
        return this.title;
    }
}
