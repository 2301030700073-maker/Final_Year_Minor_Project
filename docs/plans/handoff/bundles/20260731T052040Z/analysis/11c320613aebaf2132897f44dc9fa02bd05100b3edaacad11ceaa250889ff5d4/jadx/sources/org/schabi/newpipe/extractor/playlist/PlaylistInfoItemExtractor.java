package org.schabi.newpipe.extractor.playlist;

import org.schabi.newpipe.extractor.InfoItemExtractor;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.extractor.stream.Description;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface PlaylistInfoItemExtractor extends InfoItemExtractor {
    Description getDescription();

    PlaylistInfo.PlaylistType getPlaylistType();

    long getStreamCount();

    String getUploaderName();

    String getUploaderUrl();

    boolean isUploaderVerified();
}
