package com.fsck.k9.ui.settings.general;

import android.view.MenuItem;
import com.bytehamster.lib.preferencesearch.SearchPreferenceActionView;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsActivity$onCreateOptionsMenu$2 implements MenuItem.OnActionExpandListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ GeneralSettingsActivity$onCreateOptionsMenu$2(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        menuItem.getClass();
        switch (i) {
            case 0:
                SearchPreferenceActionView searchPreferenceActionView = ((GeneralSettingsActivity) obj).searchPreferenceActionView;
                if (searchPreferenceActionView != null) {
                    searchPreferenceActionView.cancelSearch();
                    return true;
                }
                Intrinsics.throwUninitializedPropertyAccessException("searchPreferenceActionView");
                throw null;
            default:
                ((ManageFoldersFragment) obj).requireActivity().invalidateOptionsMenu();
                return true;
        }
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        int i = this.$r8$classId;
        menuItem.getClass();
        return true;
    }
}
