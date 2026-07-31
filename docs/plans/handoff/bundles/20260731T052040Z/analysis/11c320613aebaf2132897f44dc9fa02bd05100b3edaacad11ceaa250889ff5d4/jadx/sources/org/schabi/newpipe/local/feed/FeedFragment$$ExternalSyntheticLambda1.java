package org.schabi.newpipe.local.feed;

import android.graphics.Typeface;
import android.widget.Button;
import androidx.sqlite.SQLite;
import com.xwray.groupie.GroupieAdapter;
import com.xwray.groupie.Item;
import j$.time.OffsetDateTime;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.RangesKt;
import net.newpipe.app.AppKt;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.item.StreamItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedFragment$$ExternalSyntheticLambda1 {
    public final /* synthetic */ OffsetDateTime f$0;
    public final /* synthetic */ FeedFragment f$1;

    public /* synthetic */ FeedFragment$$ExternalSyntheticLambda1(OffsetDateTime offsetDateTime, FeedFragment feedFragment) {
        this.f$0 = offsetDateTime;
        this.f$1 = feedFragment;
    }

    public final void onUpdateComplete() {
        OffsetDateTime offsetDateTime = this.f$0;
        if (offsetDateTime == null) {
            FeedFragment.Companion companion = FeedFragment.Companion;
            return;
        }
        FeedFragment feedFragment = this.f$1;
        GroupieAdapter groupieAdapter = feedFragment.groupAdapter;
        if (groupieAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
            throw null;
        }
        int itemCount = SQLite.getItemCount(groupieAdapter.groups);
        int i = 0;
        boolean z = true;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            GroupieAdapter groupieAdapter2 = feedFragment.groupAdapter;
            if (i2 >= itemCount) {
                if (groupieAdapter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
                    throw null;
                }
                groupieAdapter2.notifyItemRangeChanged(0, RangesKt.coerceIn(i3, feedFragment.lastNewItemsCount, SQLite.getItemCount(groupieAdapter2.groups)));
                if (i3 > 0) {
                    Button tryGetNewItemsLoadedButton = feedFragment.tryGetNewItemsLoadedButton();
                    if (tryGetNewItemsLoadedButton != null) {
                        tryGetNewItemsLoadedButton.clearAnimation();
                    }
                    Button tryGetNewItemsLoadedButton2 = feedFragment.tryGetNewItemsLoadedButton();
                    if (tryGetNewItemsLoadedButton2 != null) {
                        AppKt.slideUp$default(tryGetNewItemsLoadedButton2, 250L, 100L, new FeedFragment$$ExternalSyntheticLambda13(feedFragment, 1), 4);
                    }
                }
                feedFragment.lastNewItemsCount = i3;
                return;
            }
            if (groupieAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
                throw null;
            }
            Item item = SQLite.getItem(i2, groupieAdapter2.groups);
            item.getClass();
            StreamItem streamItem = (StreamItem) item;
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = Typeface.DEFAULT;
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = new FeedFragment$$ExternalSyntheticLambda10(i);
            if (z) {
                OffsetDateTime uploadDate = streamItem.streamWithState.stream.getUploadDate();
                if (uploadDate == null || uploadDate.isAfter(offsetDateTime)) {
                    i3++;
                    ref$ObjectRef.element = Typeface.DEFAULT_BOLD;
                    ref$ObjectRef2.element = new FeedFragment$$ExternalSyntheticLambda10(7);
                } else {
                    z = false;
                }
            }
            streamItem.execBindEnd = new PrettyTime$$ExternalSyntheticLambda0(ref$ObjectRef2, ref$ObjectRef, 9);
            i2++;
        }
    }
}
