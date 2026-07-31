package org.wikipedia.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.SwitchPreferenceCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.R;
import org.wikipedia.settings.dev.DeveloperSettingsActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/settings/SettingsFragment;", "Lorg/wikipedia/settings/PreferenceLoaderFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SettingsFragment extends PreferenceLoaderFragment implements MenuProvider {
    public SettingsPreferenceLoader preferenceLoader;

    @Override // org.wikipedia.settings.PreferenceLoader
    public final void loadPreferences() {
        SettingsPreferenceLoader settingsPreferenceLoader = new SettingsPreferenceLoader(this, 0);
        this.preferenceLoader = settingsPreferenceLoader;
        settingsPreferenceLoader.loadPreferences();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_settings, menu);
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.developer_settings) {
            return false;
        }
        int i = DeveloperSettingsActivity.$r8$clinit;
        startActivity(new Intent(requireActivity(), (Class<?>) DeveloperSettingsActivity.class), null);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.developer_settings);
        Prefs prefs = Prefs.INSTANCE;
        findItem.setVisible(Prefs.isShowDeveloperSettingsEnabled());
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d0  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onResume() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.settings.SettingsFragment.onResume():void");
    }

    @Override // androidx.preference.PreferenceFragmentCompat, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new SettingsFragment$onViewCreated$1(this, null, 0), 3);
    }

    public final void setReadingListSyncPref(boolean z) {
        SettingsPreferenceLoader settingsPreferenceLoader = this.preferenceLoader;
        if (settingsPreferenceLoader != null) {
            ((SwitchPreferenceCompat) settingsPreferenceLoader.findPreference(R.string.preference_key_sync_reading_lists)).setChecked(z);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("preferenceLoader");
            throw null;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
