package org.schabi.newpipe.local.playlist;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.ReversedListReadOnly;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.DropTakeSequence;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.MergingSequence;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okhttp3.Dispatcher;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.playlist.PlaylistStreamEntry;
import org.schabi.newpipe.database.playlist.dao.PlaylistDAO_Impl;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.services.youtube.linkHandler.YoutubeStreamLinkHandlerFactory;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.info_list.dialog.StreamDialogEntry;
import org.schabi.newpipe.local.LocalItemListAdapter;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalPlaylistFragment$$ExternalSyntheticLambda24 implements StreamDialogEntry.StreamDialogEntryAction, Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ LocalPlaylistFragment$$ExternalSyntheticLambda24(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        String joinToString$default;
        PlayListShareMode playListShareMode = (PlayListShareMode) this.f$0;
        final Context context = (Context) this.f$1;
        List list = (List) obj;
        int i = LocalPlaylistFragment.$r8$clinit;
        YoutubeStreamLinkHandlerFactory youtubeStreamLinkHandlerFactory = ExportPlaylistKt.linkHandler;
        list.getClass();
        context.getClass();
        int ordinal = playListShareMode.ordinal();
        if (ordinal != 0) {
            int i2 = 3;
            if (ordinal == 1) {
                joinToString$default = SequencesKt.joinToString$default(new MergingSequence(new MergingSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(list, i2), new FeedFragment$$ExternalSyntheticLambda10(10), 2), new Function1() { // from class: org.schabi.newpipe.local.playlist.ExportPlaylistKt$$ExternalSyntheticLambda3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        StreamEntity streamEntity = (StreamEntity) obj2;
                        streamEntity.getClass();
                        return context.getString(R.string.video_details_list_item, streamEntity.getTitle(), streamEntity.getUrl());
                    }
                }, 2), "\n");
            } else {
                if (ordinal != 2) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                Sequence filteringSequence = new FilteringSequence(new MergingSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(new ReversedListReadOnly(list), i2), new FeedFragment$$ExternalSyntheticLambda10(9), 2), false, new Data$$ExternalSyntheticLambda0(18));
                joinToString$default = "https://www.youtube.com/watch_videos?video_ids=".concat(CollectionsKt.joinToString$default(new ReversedListReadOnly(SequencesKt.toList(filteringSequence instanceof DropTakeSequence ? ((DropTakeSequence) filteringSequence).take() : new TakeSequence(filteringSequence))), ",", null, null, null, 62));
            }
        } else {
            joinToString$default = CollectionsKt.joinToString$default(list, "\n", null, null, new FeedFragment$$ExternalSyntheticLambda10(8), 30);
        }
        return new SingleAmb(joinToString$default, 4);
    }

    @Override // org.schabi.newpipe.info_list.dialog.StreamDialogEntry.StreamDialogEntryAction
    public void onClick(Fragment fragment, StreamInfoItem streamInfoItem) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        LocalPlaylistFragment localPlaylistFragment = (LocalPlaylistFragment) this.f$0;
        PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
        switch (i) {
            case 0:
                int i2 = LocalPlaylistFragment.$r8$clinit;
                LocalItemListAdapter localItemListAdapter = localPlaylistFragment.itemListAdapter;
                if (localItemListAdapter != null) {
                    ArrayList arrayList = localItemListAdapter.localItems;
                    int indexOf = arrayList.indexOf(playlistStreamEntry);
                    if (indexOf != -1) {
                        arrayList.remove(indexOf);
                        localItemListAdapter.notifyItemRemoved((localItemListAdapter.hasHeader() ? 1 : 0) + indexOf);
                    } else {
                        localItemListAdapter.notifyDataSetChanged();
                    }
                    Dispatcher dispatcher = localPlaylistFragment.playlistManager;
                    if (((PlaylistEntity) ((List) ((PlaylistDAO_Impl) dispatcher.runningAsyncCalls).getPlaylist(localPlaylistFragment.playlistId.longValue()).blockingFirst()).get(0)).thumbnailStreamId == playlistStreamEntry.streamId) {
                        localPlaylistFragment.updateThumbnailUrl();
                    }
                    localPlaylistFragment.setStreamCountAndOverallDuration(localPlaylistFragment.itemListAdapter.localItems);
                    localPlaylistFragment.debounceSaver.setHasChangesToSave();
                    localPlaylistFragment.saveImmediate();
                    break;
                }
                break;
            default:
                int i3 = LocalPlaylistFragment.$r8$clinit;
                localPlaylistFragment.changeThumbnailStreamId(playlistStreamEntry.streamEntity.getUid(), true);
                break;
        }
    }
}
