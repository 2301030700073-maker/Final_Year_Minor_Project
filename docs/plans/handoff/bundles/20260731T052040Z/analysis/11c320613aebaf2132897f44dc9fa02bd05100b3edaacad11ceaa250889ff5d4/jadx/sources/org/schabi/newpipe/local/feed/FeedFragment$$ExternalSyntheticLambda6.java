package org.schabi.newpipe.local.feed;

import android.content.SharedPreferences;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry;
import org.schabi.newpipe.R;
import org.schabi.newpipe.fragments.MainFragment;
import org.schabi.newpipe.local.feed.FeedFragment;
import us.shandian.giga.service.DownloadManagerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$$ExternalSyntheticLambda6 implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda6(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                FeedFragment feedFragment = (FeedFragment) obj;
                FeedFragment.Companion companion = FeedFragment.Companion;
                if (feedFragment.getString(R.string.list_view_mode_key).equals(str)) {
                    feedFragment.updateListViewModeOnResume = true;
                    break;
                }
                break;
            case 1:
                ComponentRegistry.Builder builder = (ComponentRegistry.Builder) obj;
                if (((String) builder.mappers).equals(str) && (onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = (OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) builder.lazyFetcherFactories) != null) {
                    MainFragment mainFragment = (MainFragment) onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.f$0;
                    int i2 = MainFragment.$r8$clinit;
                    if (!mainFragment.isResumed()) {
                        mainFragment.hasTabsChanged = true;
                        break;
                    } else {
                        mainFragment.setupTabs();
                        break;
                    }
                }
                break;
            default:
                int i3 = DownloadManagerService.$r8$clinit;
                ((DownloadManagerService) obj).handlePreferenceChange(sharedPreferences, str);
                break;
        }
    }
}
