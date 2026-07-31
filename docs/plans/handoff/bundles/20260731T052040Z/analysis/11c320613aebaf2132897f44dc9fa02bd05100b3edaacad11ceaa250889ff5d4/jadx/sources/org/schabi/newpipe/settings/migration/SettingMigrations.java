package org.schabi.newpipe.settings.migration;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.core.util.Consumer;
import coil3.ComponentRegistry;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.util.DeviceUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public abstract class SettingMigrations {
    public static final Operation[] SETTING_MIGRATIONS;
    public static SharedPreferences sp;

    static {
        SettingMigrations.class.toString();
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 3;
        final int i5 = 4;
        final int i6 = 5;
        int i7 = 6;
        int i8 = 7;
        SETTING_MIGRATIONS = new Operation[]{new Operation(i, i2) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i2, i3) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i2) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i3, i4) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i3) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i4, i5) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i4) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i5, i6) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i5) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i6, i7) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.1
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                boolean z = true;
                switch (i6) {
                    case 0:
                        SharedPreferences.Editor edit = SettingMigrations.sp.edit();
                        edit.putString(app.getString(R.string.preferred_open_action_key), app.getString(R.string.always_ask_open_action_key));
                        edit.apply();
                        break;
                    case 1:
                        String string = app.getString(R.string.minimize_on_exit_key);
                        if (SettingMigrations.sp.getString(string, "").equals(app.getString(R.string.minimize_on_exit_none_key))) {
                            SharedPreferences.Editor edit2 = SettingMigrations.sp.edit();
                            edit2.putString(string, app.getString(R.string.minimize_on_exit_background_key));
                            edit2.apply();
                            break;
                        }
                        break;
                    case 2:
                        SettingMigrations.sp.edit().putBoolean(app.getString(R.string.storage_use_saf), true ^ DeviceUtils.isFireTv()).apply();
                        break;
                    case 3:
                        String string2 = app.getString(R.string.show_search_suggestions_key);
                        try {
                            z = SettingMigrations.sp.getBoolean(string2, true);
                        } catch (ClassCastException unused) {
                        }
                        HashSet hashSet = new HashSet();
                        if (z) {
                            Collections.addAll(hashSet, app.getResources().getStringArray(R.array.show_search_suggestions_value_list));
                        }
                        SettingMigrations.sp.edit().putStringSet(string2, hashSet).apply();
                        break;
                    case 4:
                        boolean z2 = SettingMigrations.sp.getBoolean("brightness_gesture_control", true);
                        boolean z3 = SettingMigrations.sp.getBoolean("volume_gesture_control", true);
                        SharedPreferences.Editor edit3 = SettingMigrations.sp.edit();
                        String string3 = app.getString(R.string.right_gesture_control_key);
                        int i9 = R.string.none_control_key;
                        edit3.putString(string3, app.getString(z3 ? R.string.volume_control_key : R.string.none_control_key));
                        String string4 = app.getString(R.string.left_gesture_control_key);
                        if (z2) {
                            i9 = R.string.brightness_control_key;
                        }
                        edit3.putString(string4, app.getString(i9));
                        edit3.apply();
                        break;
                    default:
                        SettingMigrations.sp.edit().putString(app.getString(R.string.image_quality_key), app.getString(SettingMigrations.sp.getBoolean("download_thumbnail_key", true) ? R.string.image_quality_default : R.string.image_quality_none_key)).apply();
                        break;
                }
            }
        }, new Operation(i7, i8) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.7
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                int i9 = 18;
                switch (i) {
                    case 0:
                        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(app, 18);
                        List tabs = builder.getTabs();
                        List list = (List) Collection.EL.stream(tabs).filter(new Player$$ExternalSyntheticLambda48(i9)).collect(Collectors.toUnmodifiableList());
                        if (tabs.size() != list.size()) {
                            builder.saveTabs(list);
                            final int i10 = 0;
                            MigrationManager.MIGRATION_INFO.add(new Consumer() { // from class: org.schabi.newpipe.settings.migration.SettingMigrations$7$$ExternalSyntheticLambda1
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    Context context = (Context) obj;
                                    switch (i10) {
                                        case 0:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_6_7_title), context.getString(R.string.migration_info_6_7_message)).show();
                                            break;
                                        default:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_7_8_title), context.getString(R.string.migration_info_7_8_message)).show();
                                            break;
                                    }
                                }
                            });
                            break;
                        }
                        break;
                    default:
                        ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder(app, 18);
                        List tabs2 = builder2.getTabs();
                        List list2 = (List) Collection.EL.stream(tabs2).filter(new Player$$ExternalSyntheticLambda48(19)).collect(Collectors.toUnmodifiableList());
                        if (tabs2.size() != list2.size()) {
                            builder2.saveTabs(list2);
                        }
                        boolean anyMatch = Collection.EL.stream(tabs2).anyMatch(new Player$$ExternalSyntheticLambda48(20));
                        if (tabs2.size() != list2.size() || anyMatch) {
                            final int i11 = 1;
                            MigrationManager.MIGRATION_INFO.add(new Consumer() { // from class: org.schabi.newpipe.settings.migration.SettingMigrations$7$$ExternalSyntheticLambda1
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    Context context = (Context) obj;
                                    switch (i11) {
                                        case 0:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_6_7_title), context.getString(R.string.migration_info_6_7_message)).show();
                                            break;
                                        default:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_7_8_title), context.getString(R.string.migration_info_7_8_message)).show();
                                            break;
                                    }
                                }
                            });
                            break;
                        }
                }
            }
        }, new Operation(i8, 8) { // from class: org.schabi.newpipe.settings.migration.SettingMigrations.7
            {
                int i9 = 1;
                byte b = 0;
            }

            @Override // androidx.compose.runtime.composer.gapbuffer.changelist.Operation
            public final void migrate(App app) {
                int i9 = 18;
                switch (i2) {
                    case 0:
                        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(app, 18);
                        List tabs = builder.getTabs();
                        List list = (List) Collection.EL.stream(tabs).filter(new Player$$ExternalSyntheticLambda48(i9)).collect(Collectors.toUnmodifiableList());
                        if (tabs.size() != list.size()) {
                            builder.saveTabs(list);
                            final int i10 = 0;
                            MigrationManager.MIGRATION_INFO.add(new Consumer() { // from class: org.schabi.newpipe.settings.migration.SettingMigrations$7$$ExternalSyntheticLambda1
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    Context context = (Context) obj;
                                    switch (i10) {
                                        case 0:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_6_7_title), context.getString(R.string.migration_info_6_7_message)).show();
                                            break;
                                        default:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_7_8_title), context.getString(R.string.migration_info_7_8_message)).show();
                                            break;
                                    }
                                }
                            });
                            break;
                        }
                        break;
                    default:
                        ComponentRegistry.Builder builder2 = new ComponentRegistry.Builder(app, 18);
                        List tabs2 = builder2.getTabs();
                        List list2 = (List) Collection.EL.stream(tabs2).filter(new Player$$ExternalSyntheticLambda48(19)).collect(Collectors.toUnmodifiableList());
                        if (tabs2.size() != list2.size()) {
                            builder2.saveTabs(list2);
                        }
                        boolean anyMatch = Collection.EL.stream(tabs2).anyMatch(new Player$$ExternalSyntheticLambda48(20));
                        if (tabs2.size() != list2.size() || anyMatch) {
                            final int i11 = 1;
                            MigrationManager.MIGRATION_INFO.add(new Consumer() { // from class: org.schabi.newpipe.settings.migration.SettingMigrations$7$$ExternalSyntheticLambda1
                                @Override // androidx.core.util.Consumer
                                public final void accept(Object obj) {
                                    Context context = (Context) obj;
                                    switch (i11) {
                                        case 0:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_6_7_title), context.getString(R.string.migration_info_6_7_message)).show();
                                            break;
                                        default:
                                            MigrationManager.createMigrationInfoDialog(context, context.getString(R.string.migration_info_7_8_title), context.getString(R.string.migration_info_7_8_message)).show();
                                            break;
                                    }
                                }
                            });
                            break;
                        }
                }
            }
        }};
    }
}
