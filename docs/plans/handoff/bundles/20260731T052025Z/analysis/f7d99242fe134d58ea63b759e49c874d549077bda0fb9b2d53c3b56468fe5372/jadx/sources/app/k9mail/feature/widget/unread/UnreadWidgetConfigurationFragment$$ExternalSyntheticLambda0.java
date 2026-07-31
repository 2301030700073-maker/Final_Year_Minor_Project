package app.k9mail.feature.widget.unread;

import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import com.fsck.k9.R;
import com.fsck.k9.ui.choosefolder.ChooseFolderResultContract;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0 implements Preference.OnPreferenceClickListener, Preference.OnPreferenceChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ UnreadWidgetConfigurationFragment f$0;

    public /* synthetic */ UnreadWidgetConfigurationFragment$$ExternalSyntheticLambda0(UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = unreadWidgetConfigurationFragment;
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public void onPreferenceChange(Preference preference, Object obj) {
        UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.f$0;
        Preference preference2 = unreadWidgetConfigurationFragment.unreadFolder;
        if (preference2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("unreadFolder");
            throw null;
        }
        preference2.setSummary(unreadWidgetConfigurationFragment.getString(R.string.unread_widget_folder_summary));
        unreadWidgetConfigurationFragment.selectedFolderId = null;
        unreadWidgetConfigurationFragment.selectedFolderDisplayName = null;
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = this.$r8$classId;
        UnreadWidgetConfigurationFragment unreadWidgetConfigurationFragment = this.f$0;
        switch (i) {
            case 0:
                unreadWidgetConfigurationFragment.chooseAccountLauncher.launch(Unit.INSTANCE);
                break;
            default:
                Fragment.AnonymousClass10 anonymousClass10 = unreadWidgetConfigurationFragment.chooseFolderLauncher;
                String str = unreadWidgetConfigurationFragment.selectedAccountUuid;
                str.getClass();
                anonymousClass10.launch(new ChooseFolderResultContract.Input(14, null, str));
                break;
        }
        return false;
    }
}
