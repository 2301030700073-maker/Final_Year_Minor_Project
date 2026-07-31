package org.schabi.newpipe.util;

import android.content.Context;
import j$.util.Collection;
import java.util.List;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.util.StreamItemAdapter;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SecondaryStreamHelper {
    public final int position;
    public final StreamItemAdapter.StreamInfoWrapper streams;

    public SecondaryStreamHelper(StreamItemAdapter.StreamInfoWrapper streamInfoWrapper, AudioStream audioStream) {
        this.streams = streamInfoWrapper;
        int indexOf = streamInfoWrapper.getStreamsList().indexOf(audioStream);
        this.position = indexOf;
        if (indexOf >= 0) {
            return;
        }
        Node$$ExternalSyntheticBUOutline0.m811m("selected stream not found");
        throw null;
    }

    public static AudioStream getAudioStreamFor(Context context, List list, VideoStream videoStream) {
        MediaFormat format = videoStream.getFormat();
        if (format == MediaFormat.WEBM) {
            return (AudioStream) Collection.EL.stream(list).filter(new Player$$ExternalSyntheticLambda48(28)).max(ListHelper.getAudioFormatComparator(MediaFormat.WEBMA, ListHelper.getResolutionLimit(context) != null)).orElse(null);
        }
        if (format == MediaFormat.MPEG_4) {
            return (AudioStream) Collection.EL.stream(list).filter(new Player$$ExternalSyntheticLambda48(29)).max(ListHelper.getAudioFormatComparator(MediaFormat.M4A, ListHelper.getResolutionLimit(context) != null)).orElse(null);
        }
        return null;
    }
}
