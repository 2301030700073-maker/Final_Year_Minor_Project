package org.schabi.newpipe.settings;

import android.content.Context;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.ui.node.Owner;
import androidx.preference.Preference;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Objects;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.dao.StreamStateDAO_Impl;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.util.InfoCache;
import org.schabi.newpipe.util.NavigationHelper$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class HistorySettingsFragment extends BasePreferenceFragment {
    public static final /* synthetic */ int $r8$clinit = 0;
    public String cacheWipeKey;
    public CompositeDisposable disposables;
    public String playbackStatesClearKey;
    public PlaylistHeaderBinding recordManager;
    public String searchHistoryClearKey;
    public String viewsHistoryClearKey;

    public static ConsumerSingleObserver getDeletePlaybackStatesDisposable(Context context, PlaylistHeaderBinding playlistHeaderBinding) {
        StreamStateDAO_Impl streamStateDAO_Impl = (StreamStateDAO_Impl) playlistHeaderBinding.playlistStreamCount;
        Objects.requireNonNull(streamStateDAO_Impl);
        SingleObserveOn subscribeOn = new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(streamStateDAO_Impl, 5), 3).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 2), new HistorySettingsFragment$$ExternalSyntheticLambda7(context, 3));
        try {
            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
            return consumerSingleObserver;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public static void openDeleteWatchHistoryDialog(Context context, PlaylistHeaderBinding playlistHeaderBinding, CompositeDisposable compositeDisposable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.delete_view_history_alert);
        builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(4)).setPositiveButton(R.string.delete, new HistorySettingsFragment$$ExternalSyntheticLambda1(compositeDisposable, context, playlistHeaderBinding, 0)).show();
    }

    @Override // org.schabi.newpipe.settings.BasePreferenceFragment, androidx.preference.PreferenceFragmentCompat
    public final void onCreatePreferences() {
        addPreferencesFromResourceRegistry();
        this.cacheWipeKey = getString(R.string.metadata_cache_wipe_key);
        this.viewsHistoryClearKey = getString(R.string.clear_views_history_key);
        this.playbackStatesClearKey = getString(R.string.clear_playback_states_key);
        this.searchHistoryClearKey = getString(R.string.clear_search_history_key);
        this.recordManager = new PlaylistHeaderBinding(getActivity());
        this.disposables = new CompositeDisposable();
        Preference requirePreference = requirePreference(R.string.clear_cookie_key);
        requirePreference.mOnClickListener = new RxConvertKt$$ExternalSyntheticLambda0(this, requirePreference, 28);
        if (this.defaultPreferences.getString(getString(R.string.recaptcha_cookies_key), "").isEmpty()) {
            requirePreference.setEnabled(false);
        }
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public final boolean onPreferenceTreeClick(Preference preference) {
        String str = preference.mKey;
        int i = 1;
        if (str.equals(this.cacheWipeKey)) {
            InfoCache.INSTANCE.getClass();
            InfoCache.clearCache();
            Toast.makeText(requireContext(), R.string.metadata_cache_wipe_complete_notice, 0).show();
        } else if (str.equals(this.viewsHistoryClearKey)) {
            openDeleteWatchHistoryDialog(requireContext(), this.recordManager, this.disposables);
        } else if (str.equals(this.playbackStatesClearKey)) {
            Context requireContext = requireContext();
            PlaylistHeaderBinding playlistHeaderBinding = this.recordManager;
            CompositeDisposable compositeDisposable = this.disposables;
            AlertDialog.Builder builder = new AlertDialog.Builder(requireContext);
            builder.setTitle(R.string.delete_playback_states_alert);
            builder.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(5)).setPositiveButton(R.string.delete, new HistorySettingsFragment$$ExternalSyntheticLambda1(compositeDisposable, requireContext, playlistHeaderBinding, i)).show();
        } else {
            if (!str.equals(this.searchHistoryClearKey)) {
                return super.onPreferenceTreeClick(preference);
            }
            Context requireContext2 = requireContext();
            PlaylistHeaderBinding playlistHeaderBinding2 = this.recordManager;
            CompositeDisposable compositeDisposable2 = this.disposables;
            AlertDialog.Builder builder2 = new AlertDialog.Builder(requireContext2);
            builder2.setTitle(R.string.delete_search_history_alert);
            builder2.setNegativeButton(R.string.cancel, new NavigationHelper$$ExternalSyntheticLambda5(6)).setPositiveButton(R.string.delete, new HistorySettingsFragment$$ExternalSyntheticLambda1(compositeDisposable2, requireContext2, playlistHeaderBinding2, 2)).show();
        }
        return true;
    }
}
