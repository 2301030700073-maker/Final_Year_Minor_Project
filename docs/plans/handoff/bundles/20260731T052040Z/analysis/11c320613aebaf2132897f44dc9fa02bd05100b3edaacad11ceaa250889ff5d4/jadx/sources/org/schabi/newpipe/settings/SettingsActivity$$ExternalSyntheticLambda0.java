package org.schabi.newpipe.settings;

import android.widget.LinearLayout;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import org.schabi.newpipe.extractor.localization.TimeAgoParser;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class SettingsActivity$$ExternalSyntheticLambda0 implements Preference.OnPreferenceChangeListener, Consumer {
    public final /* synthetic */ Object f$0;

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        final SettingsActivity settingsActivity = (SettingsActivity) this.f$0;
        int i = SettingsActivity.$r8$clinit;
        settingsActivity.runOnUiThread(new Runnable() { // from class: org.schabi.newpipe.settings.SettingsActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                TimeAgoParser timeAgoParser;
                int i2 = SettingsActivity.$r8$clinit;
                SettingsActivity settingsActivity2 = SettingsActivity.this;
                if (settingsActivity2.isSearchActive() && settingsActivity2.searchFragment != null) {
                    String obj2 = settingsActivity2.searchEditText.getText().toString();
                    settingsActivity2.searchText = obj2;
                    PreferenceSearchFragment preferenceSearchFragment = settingsActivity2.searchFragment;
                    if (preferenceSearchFragment.adapter == null || (timeAgoParser = preferenceSearchFragment.searcher) == null) {
                        return;
                    }
                    List<Object> searchFor = timeAgoParser.searchFor(obj2);
                    preferenceSearchFragment.adapter.submitList(searchFor);
                    boolean isEmpty = searchFor.isEmpty();
                    ((LinearLayout) preferenceSearchFragment.binding.accum).setVisibility(isEmpty ? 0 : 8);
                    ((RecyclerView) preferenceSearchFragment.binding.settings).setVisibility(isEmpty ? 8 : 0);
                }
            }
        });
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        DownloadSettingsFragment downloadSettingsFragment = (DownloadSettingsFragment) this.f$0;
        int i = DownloadSettingsFragment.$r8$clinit;
        boolean z = !((Boolean) obj).booleanValue();
        downloadSettingsFragment.prefPathVideo.setEnabled(z);
        downloadSettingsFragment.prefPathAudio.setEnabled(z);
        return true;
    }
}
