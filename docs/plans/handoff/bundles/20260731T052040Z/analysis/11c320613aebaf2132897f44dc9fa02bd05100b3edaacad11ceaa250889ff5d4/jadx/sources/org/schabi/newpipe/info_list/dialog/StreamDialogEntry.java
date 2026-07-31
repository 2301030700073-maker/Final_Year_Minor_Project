package org.schabi.newpipe.info_list.dialog;

import androidx.fragment.app.Fragment;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class StreamDialogEntry {
    public final StreamDialogEntryAction action;
    public final int resource;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface StreamDialogEntryAction {
        void onClick(Fragment fragment, StreamInfoItem streamInfoItem);
    }

    public StreamDialogEntry(int i, StreamDialogEntryAction streamDialogEntryAction) {
        this.resource = i;
        this.action = streamDialogEntryAction;
    }
}
