package org.schabi.newpipe.player.mediabrowser;

import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.math.MathKt;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.playlist.PlaylistInfo;
import org.schabi.newpipe.player.playqueue.ChannelTabPlayQueue;
import org.schabi.newpipe.player.playqueue.PlaylistPlayQueue;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1 implements Function {
    public final /* synthetic */ int $index;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ MediaBrowserPlaybackPreparer$extractLocalPlayQueue$1(int i, int i2) {
        this.$r8$classId = i2;
        this.$index = i;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public final Object apply(Object obj) {
        Object obj2;
        int i = this.$r8$classId;
        int i2 = this.$index;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((PlaylistStreamEntry) it.next()).toStreamInfoItem());
                }
                return new SinglePlayQueue(i2, arrayList);
            case 1:
                ChannelInfo channelInfo = (ChannelInfo) obj;
                channelInfo.getClass();
                List tabs = channelInfo.getTabs();
                tabs.getClass();
                Iterator it2 = tabs.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        obj2 = it2.next();
                        if (MathKt.isStreamsTab((ListLinkHandler) obj2)) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                ListLinkHandler listLinkHandler = (ListLinkHandler) obj2;
                if (listLinkHandler != null) {
                    return new ChannelTabPlayQueue(i2, new ListLinkHandler(listLinkHandler));
                }
                throw new ContentNotAvailableException("No streams tab found");
            default:
                PlaylistInfo playlistInfo = (PlaylistInfo) obj;
                playlistInfo.getClass();
                return new PlaylistPlayQueue(playlistInfo, i2);
        }
    }
}
