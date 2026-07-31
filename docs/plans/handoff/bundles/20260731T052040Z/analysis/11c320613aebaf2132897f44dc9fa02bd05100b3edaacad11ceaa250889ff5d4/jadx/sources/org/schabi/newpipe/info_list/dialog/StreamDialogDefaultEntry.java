package org.schabi.newpipe.info_list.dialog;

import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.feed.FeedViewModel$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public enum StreamDialogDefaultEntry {
    SHOW_CHANNEL_DETAILS(R.string.show_channel_details, new Utils$$ExternalSyntheticBUOutline0(25)),
    ENQUEUE(R.string.enqueue_stream, new FeedViewModel$$ExternalSyntheticLambda0(3)),
    ENQUEUE_NEXT(R.string.enqueue_next_stream, new FeedViewModel$$ExternalSyntheticLambda0(4)),
    START_HERE_ON_BACKGROUND(R.string.start_here_on_background, new FeedViewModel$$ExternalSyntheticLambda0(5)),
    START_HERE_ON_POPUP(R.string.start_here_on_popup, new FeedViewModel$$ExternalSyntheticLambda0(6)),
    SET_AS_PLAYLIST_THUMBNAIL(R.string.set_as_playlist_thumbnail, new FeedViewModel$$ExternalSyntheticLambda0(7)),
    DELETE(R.string.delete, new FeedViewModel$$ExternalSyntheticLambda0(8)),
    APPEND_PLAYLIST(R.string.add_to_playlist, new Utils$$ExternalSyntheticBUOutline0(26)),
    PLAY_WITH_KODI(R.string.play_with_kodi_title, new Utils$$ExternalSyntheticBUOutline0(27)),
    SHARE(R.string.share, new Utils$$ExternalSyntheticBUOutline0(28)),
    DOWNLOAD(R.string.download, new Utils$$ExternalSyntheticBUOutline0(29)),
    OPEN_IN_BROWSER(R.string.open_in_browser, new FeedViewModel$$ExternalSyntheticLambda0(1)),
    MARK_AS_WATCHED(R.string.mark_as_watched, new FeedViewModel$$ExternalSyntheticLambda0(2));

    public final StreamDialogEntry.StreamDialogEntryAction action;
    public final int resource;

    StreamDialogDefaultEntry(int i, StreamDialogEntry.StreamDialogEntryAction streamDialogEntryAction) {
        this.resource = i;
        this.action = streamDialogEntryAction;
    }
}
