package org.schabi.newpipe.player;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.Log;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.media.app.NotificationCompat$MediaStyle;
import androidx.preference.PreferenceFragmentCompat;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampRelatedPlaylistInfoItemExtractor;
import org.schabi.newpipe.extractor.services.youtube.ItagItem;
import org.schabi.newpipe.extractor.stream.Stream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.extractor.utils.ManifestCreatorCache;
import org.schabi.newpipe.info_list.StreamSegmentAdapter;
import org.schabi.newpipe.info_list.dialog.StreamDialogDefaultEntry;
import org.schabi.newpipe.info_list.holder.CommentInfoItemHolder;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.ui.PlayerUi;
import org.schabi.newpipe.settings.SettingsActivity;
import org.schabi.newpipe.settings.SettingsResourceRegistry;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchFragment;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchItem;
import org.schabi.newpipe.settings.preferencesearch.PreferenceSearchResultListener;
import org.schabi.newpipe.streams.WebMReader;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        URLSpan[] urls;
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((PlayerUi) obj).onPlaybackParametersChanged((PlaybackParameters) obj2);
                return;
            case 1:
                CollectSpliterators$FlatMapSpliteratorOfObject collectSpliterators$FlatMapSpliteratorOfObject = (CollectSpliterators$FlatMapSpliteratorOfObject) obj2;
                collectSpliterators$FlatMapSpliteratorOfObject.prefix = (Spliterator) collectSpliterators$FlatMapSpliteratorOfObject.function.apply(obj);
                return;
            case 2:
                Map.Entry entry = (Map.Entry) obj;
                ((BiConsumer) obj2).accept(entry.getKey(), entry.getValue());
                return;
            case 3:
                ((PlaylistDialog) obj2).show(((AppCompatActivity) obj).getSupportFragmentManager(), "addToPlaylistDialog");
                return;
            case 4:
                ((StreamInfoItemsCollector) obj2).commit((BandcampRelatedPlaylistInfoItemExtractor) obj);
                return;
            case 5:
                ((List) obj2).add((VideoStream) obj);
                return;
            case 6:
                ((ItagItem) obj2).setAudioLocale((Locale) obj);
                return;
            case 7:
                ArrayList arrayList = (ArrayList) obj2;
                Stream stream = (Stream) obj;
                if (Stream.containSimilarStream(stream, arrayList)) {
                    return;
                }
                arrayList.add(stream);
                return;
            case 8:
                ((ManifestCreatorCache) obj2).concurrentHashMap.remove(r6.getKey(), ((Map.Entry) obj).getValue());
                return;
            case 9:
                ((WebMReader.Segment) obj2).addEntry((StreamDialogDefaultEntry) obj);
                return;
            case 10:
                CommentInfoItemHolder commentInfoItemHolder = (CommentInfoItemHolder) obj2;
                boolean equals = Boolean.TRUE.equals((Boolean) obj);
                TextView textView = commentInfoItemHolder.itemContentView;
                if (equals) {
                    textView.setMovementMethod(null);
                    return;
                } else if (commentInfoItemHolder.itemView.isInTouchMode() || (urls = textView.getUrls()) == null || urls.length == 0) {
                    textView.setMovementMethod(null);
                    return;
                } else {
                    textView.setMovementMethod(LinkMovementMethod.getInstance());
                    return;
                }
            case 11:
                ((PlayerUi) obj).onVideoSizeChanged((VideoSize) obj2);
                return;
            case 12:
                ((PlayerUi) obj).onCues(((CueGroup) obj2).cues);
                return;
            case 13:
                ((PlayerUi) obj).onTextTracksChanged((Tracks) obj2);
                return;
            case 14:
                ((PlayerUi) obj).onThumbnailLoaded((Bitmap) obj2);
                return;
            case 15:
                ((PlayerUi) obj).onMetadataChanged((StreamInfo) obj2);
                return;
            case 16:
                MediaMetadataCompat.Builder builder = (MediaMetadataCompat.Builder) obj2;
                Bitmap bitmap = (Bitmap) obj;
                builder.putBitmap("android.media.metadata.ALBUM_ART", bitmap);
                builder.putBitmap("android.media.metadata.DISPLAY_ICON", bitmap);
                return;
            case 17:
                ((NotificationCompat$MediaStyle) obj2).mToken = (MediaSessionCompat.Token) obj;
                return;
            case 18:
                ((StreamSegmentAdapter) obj2).setItems((StreamInfo) obj);
                return;
            case 19:
                ((NewPipeTextView) obj2).setText((String) obj);
                return;
            case 20:
                PreferenceSearchFragment preferenceSearchFragment = (PreferenceSearchFragment) obj2;
                PreferenceSearchItem preferenceSearchItem = (PreferenceSearchItem) obj;
                if (!(preferenceSearchFragment.getActivity() instanceof PreferenceSearchResultListener)) {
                    throw new ClassCastException(preferenceSearchFragment.getActivity().toString() + " must implement SearchPreferenceResultListener");
                }
                SettingsActivity settingsActivity = (SettingsActivity) ((PreferenceSearchResultListener) preferenceSearchFragment.getActivity());
                settingsActivity.setSearchActive(false);
                SettingsResourceRegistry.SettingRegistryEntry entryByPreferencesResId = SettingsResourceRegistry.INSTANCE.getEntryByPreferencesResId(preferenceSearchItem.searchIndexItemResId);
                Class cls = entryByPreferencesResId == null ? null : entryByPreferencesResId.fragmentClass;
                if (cls == null) {
                    Log.w("SettingsActivity", "Unable to locate fragment class for resId=" + preferenceSearchItem.searchIndexItemResId);
                    return;
                }
                Fragment findFragmentById = settingsActivity.getSupportFragmentManager().findFragmentById(R.id.settings_fragment_holder);
                if (!cls.equals(findFragmentById.getClass())) {
                    String name = cls.getName();
                    FragmentManager.AnonymousClass3 fragmentFactory = settingsActivity.getSupportFragmentManager().getFragmentFactory();
                    settingsActivity.getClassLoader();
                    findFragmentById = fragmentFactory.instantiate(name);
                    FragmentManagerImpl supportFragmentManager = settingsActivity.getSupportFragmentManager();
                    supportFragmentManager.getClass();
                    BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
                    backStackRecord.mEnterAnim = R.animator.custom_fade_in;
                    backStackRecord.mExitAnim = R.animator.custom_fade_out;
                    backStackRecord.mPopEnterAnim = R.animator.custom_fade_in;
                    backStackRecord.mPopExitAnim = R.animator.custom_fade_out;
                    backStackRecord.replace(R.id.settings_fragment_holder, findFragmentById, null);
                    backStackRecord.addToBackStack(null);
                    backStackRecord.commit();
                }
                if (findFragmentById instanceof PreferenceFragmentCompat) {
                    new Handler(Looper.getMainLooper()).post(new Processor$$ExternalSyntheticLambda2(preferenceSearchItem, (PreferenceFragmentCompat) findFragmentById, 23));
                    return;
                }
                return;
            default:
                ((ByteBuffer) obj2).put((byte[]) obj);
                return;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
