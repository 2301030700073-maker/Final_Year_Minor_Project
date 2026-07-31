package org.schabi.newpipe.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.io.Serializable;
import java.util.List;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda41;
import org.schabi.newpipe.util.StreamItemAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AudioTrackAdapter extends BaseAdapter {
    public final AudioTracksWrapper tracksWrapper;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class AudioTracksWrapper implements Serializable {
        private final List<StreamItemAdapter.StreamInfoWrapper> tracksList;

        public AudioTracksWrapper(Context context, List list) {
            this.tracksList = (List) Collection.EL.stream(list).map(new Player$$ExternalSyntheticLambda41(context, 11)).collect(Collectors.toList());
        }

        public final List getTracksList() {
            return this.tracksList;
        }

        public final int size() {
            return this.tracksList.size();
        }
    }

    public AudioTrackAdapter(AudioTracksWrapper audioTracksWrapper) {
        this.tracksWrapper = audioTracksWrapper;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.tracksWrapper.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return ((StreamItemAdapter.StreamInfoWrapper) this.tracksWrapper.getTracksList().get(i)).getStreamsList();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (view == null) {
            view = LayoutInflater.from(context).inflate(R.layout.stream_quality_item, viewGroup, false);
        }
        ImageView imageView = (ImageView) view.findViewById(R.id.wo_sound_icon);
        TextView textView = (TextView) view.findViewById(R.id.stream_format_name);
        TextView textView2 = (TextView) view.findViewById(R.id.stream_quality);
        TextView textView3 = (TextView) view.findViewById(R.id.stream_size);
        AudioStream audioStream = (AudioStream) ((StreamItemAdapter.StreamInfoWrapper) this.tracksWrapper.getTracksList().get(i)).getStreamsList().get(0);
        imageView.setVisibility(8);
        textView3.setVisibility(0);
        if (audioStream.getAudioTrackId() != null) {
            textView.setText(audioStream.getAudioTrackId());
        }
        textView2.setText(Localization.audioTrackName(context, audioStream));
        return view;
    }
}
