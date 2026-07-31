package org.wikipedia.settings.dev;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle$State;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.settings.PreferenceLoaderFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/settings/dev/DeveloperSettingsFragment;", "Lorg/wikipedia/settings/PreferenceLoaderFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "HistorySearchCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DeveloperSettingsFragment extends PreferenceLoaderFragment implements MenuProvider {
    public final HistoryFragment.HistorySearchCallback searchActionModeCallback = new HistoryFragment.HistorySearchCallback(3, this);

    @Override // org.wikipedia.settings.PreferenceLoader
    public final void loadPreferences() {
        new DeveloperSettingsPreferenceLoader(this).loadPreferences();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_developer_settings, menu);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_search) {
            return false;
        }
        requireActivity().startSupportActionMode(this.searchActionModeCallback);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
    }
}
