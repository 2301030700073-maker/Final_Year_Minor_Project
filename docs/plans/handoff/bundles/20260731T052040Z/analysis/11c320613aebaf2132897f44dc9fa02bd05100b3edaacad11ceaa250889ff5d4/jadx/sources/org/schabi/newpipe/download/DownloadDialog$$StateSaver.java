package org.schabi.newpipe.download;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.util.AudioTrackAdapter;
import org.schabi.newpipe.util.StreamItemAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DownloadDialog$$StateSaver<T extends DownloadDialog> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.download.DownloadDialog$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        t.currentInfo = (StreamInfo) injectionHelper.getSerializable(bundle, "currentInfo");
        t.selectedAudioIndex = injectionHelper.getInt(bundle, "selectedAudioIndex");
        t.selectedAudioTrackIndex = injectionHelper.getInt(bundle, "selectedAudioTrackIndex");
        t.selectedSubtitleIndex = injectionHelper.getInt(bundle, "selectedSubtitleIndex");
        t.selectedVideoIndex = injectionHelper.getInt(bundle, "selectedVideoIndex");
        t.wrappedAudioTracks = (AudioTrackAdapter.AudioTracksWrapper) injectionHelper.getSerializable(bundle, "wrappedAudioTracks");
        t.wrappedSubtitleStreams = (StreamItemAdapter.StreamInfoWrapper) injectionHelper.getSerializable(bundle, "wrappedSubtitleStreams");
        t.wrappedVideoStreams = (StreamItemAdapter.StreamInfoWrapper) injectionHelper.getSerializable(bundle, "wrappedVideoStreams");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putSerializable(bundle, "currentInfo", t.currentInfo);
        injectionHelper.putInt(bundle, "selectedAudioIndex", t.selectedAudioIndex);
        injectionHelper.putInt(bundle, "selectedAudioTrackIndex", t.selectedAudioTrackIndex);
        injectionHelper.putInt(bundle, "selectedSubtitleIndex", t.selectedSubtitleIndex);
        injectionHelper.putInt(bundle, "selectedVideoIndex", t.selectedVideoIndex);
        injectionHelper.putSerializable(bundle, "wrappedAudioTracks", t.wrappedAudioTracks);
        injectionHelper.putSerializable(bundle, "wrappedSubtitleStreams", t.wrappedSubtitleStreams);
        injectionHelper.putSerializable(bundle, "wrappedVideoStreams", t.wrappedVideoStreams);
    }
}
