package org.schabi.newpipe.local.feed;

import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.sqlite.SQLite;
import com.xwray.groupie.Item;
import com.xwray.groupie.OnItemClickListener;
import com.xwray.groupie.OnItemLongClickListener;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.item.StreamItem;
import org.schabi.newpipe.streams.WebMReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedFragment$listenerStreamItem$1 implements Consumer, OnItemClickListener, OnItemLongClickListener {
    public final /* synthetic */ FeedFragment this$0;

    public /* synthetic */ FeedFragment$listenerStreamItem$1(FeedFragment feedFragment) {
        this.this$0 = feedFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        Throwable th = (Throwable) obj;
        th.getClass();
        FeedFragment.Companion companion = FeedFragment.Companion;
        Log.e(this.this$0.TAG, "Unable to process", th);
    }

    @Override // com.xwray.groupie.OnItemClickListener
    public void onItemClick(Item item, View view) {
        item.getClass();
        view.getClass();
        if (item instanceof StreamItem) {
            FeedFragment feedFragment = this.this$0;
            if (feedFragment.isRefreshing) {
                return;
            }
            StreamEntity streamEntity = ((StreamItem) item).streamWithState.stream;
            SQLite.openVideoDetailFragment(feedFragment.requireContext(), feedFragment.getFM(), streamEntity.getServiceId(), streamEntity.getUrl(), streamEntity.getTitle(), null, false);
        }
    }

    @Override // com.xwray.groupie.OnItemLongClickListener
    public boolean onItemLongClick(Item item, View view) {
        item.getClass();
        view.getClass();
        if (!(item instanceof StreamItem)) {
            return false;
        }
        FeedFragment feedFragment = this.this$0;
        if (feedFragment.isRefreshing) {
            return false;
        }
        StreamInfoItem streamInfoItem = ((StreamItem) item).streamWithState.stream.toStreamInfoItem();
        Context context = feedFragment.getContext();
        FragmentActivity activity = feedFragment.getActivity();
        if (context == null || context.getResources() == null || activity == null) {
            return true;
        }
        new WebMReader.Segment(activity, context, feedFragment, streamInfoItem).create().show();
        return true;
    }
}
