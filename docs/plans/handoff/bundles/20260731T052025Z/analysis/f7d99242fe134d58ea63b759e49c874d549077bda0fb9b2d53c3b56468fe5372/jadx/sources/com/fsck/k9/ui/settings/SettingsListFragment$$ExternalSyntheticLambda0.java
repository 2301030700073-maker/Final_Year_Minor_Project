package com.fsck.k9.ui.settings;

import androidx.core.util.DebugUtils;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$Onboarding;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.ui.settings.SettingsListFragment;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.funding.noop.NoOpFundingManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsListFragment$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SettingsListFragment f$0;

    public /* synthetic */ SettingsListFragment$$ExternalSyntheticLambda0(SettingsListFragment settingsListFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = settingsListFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SettingsListFragment settingsListFragment = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                if (list.isEmpty()) {
                    int i2 = FeatureLauncherActivity.$r8$clinit;
                    FeatureLauncherActivity.Companion.launch(settingsListFragment.requireActivity(), FeatureLauncherTarget$Onboarding.INSTANCE);
                    settingsListFragment.requireActivity().finishAffinity();
                } else {
                    SettingsListFragment.SettingsListBuilder settingsListBuilder = new SettingsListFragment.SettingsListBuilder();
                    String string = settingsListFragment.getString(R.string.general_settings_title);
                    string.getClass();
                    settingsListBuilder.addAction(R.id.action_settingsListScreen_to_generalSettingsScreen, string, R.drawable.ic_settings);
                    String string2 = settingsListFragment.getString(R.string.accounts_title);
                    string2.getClass();
                    settingsListBuilder.addSection(string2, new DI$$ExternalSyntheticLambda0(list, settingsListFragment));
                    String string3 = settingsListFragment.getString(R.string.settings_list_backup_category);
                    string3.getClass();
                    long j = settingsListBuilder.itemId + 1;
                    settingsListBuilder.itemId = j;
                    SettingsDividerItem settingsDividerItem = new SettingsDividerItem(j, string3);
                    ArrayList arrayList = settingsListBuilder.settingsList;
                    arrayList.add(settingsDividerItem);
                    String string4 = settingsListFragment.getString(R.string.settings_export_title);
                    string4.getClass();
                    settingsListBuilder.addAction(R.id.action_settingsListScreen_to_settingsExportScreen, string4, R.drawable.ic_upload);
                    String string5 = settingsListFragment.getString(R.string.settings_import_title);
                    string5.getClass();
                    settingsListBuilder.addAction(R.id.action_settingsListScreen_to_settingsImportScreen, string5, R.drawable.ic_download);
                    String string6 = settingsListFragment.getString(R.string.settings_list_miscellaneous_category);
                    string6.getClass();
                    settingsListBuilder.addSection(string6, new SettingsListFragment$$ExternalSyntheticLambda0(settingsListFragment, 1));
                    ItemAdapter itemAdapter = settingsListFragment.itemAdapter;
                    if (itemAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                        throw null;
                    }
                    DebugUtils.setNewList$default(itemAdapter, arrayList);
                }
                return unit;
            default:
                SettingsListFragment.SettingsListBuilder settingsListBuilder2 = (SettingsListFragment.SettingsListBuilder) obj;
                settingsListBuilder2.getClass();
                String string7 = settingsListFragment.getString(R.string.about_action);
                string7.getClass();
                settingsListBuilder2.addAction(R.id.action_settingsListScreen_to_aboutScreen, string7, R.drawable.ic_info);
                String string8 = settingsListFragment.getString(R.string.get_help_title);
                string8.getClass();
                String string9 = settingsListFragment.getString(R.string.user_forum_url);
                string9.getClass();
                long j2 = settingsListBuilder2.itemId + 1;
                settingsListBuilder2.itemId = j2;
                settingsListBuilder2.settingsList.add(new UrlActionItem(j2, string8, string9));
                ((NoOpFundingManager) settingsListFragment.fundingManager$delegate.getValue()).getClass();
                return unit;
        }
    }
}
