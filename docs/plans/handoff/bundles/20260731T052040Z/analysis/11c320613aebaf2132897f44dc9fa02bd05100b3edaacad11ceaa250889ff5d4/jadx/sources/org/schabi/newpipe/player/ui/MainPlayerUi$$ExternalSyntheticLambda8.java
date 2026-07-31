package org.schabi.newpipe.player.ui;

import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import j$.util.Objects;
import j$.util.Optional;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.info_list.StreamSegmentAdapter;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.MainPlayerUi.AnonymousClass3;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MainPlayerUi$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MainPlayerUi f$0;

    public /* synthetic */ MainPlayerUi$$ExternalSyntheticLambda8(MainPlayerUi mainPlayerUi, int i) {
        this.$r8$classId = i;
        this.f$0 = mainPlayerUi;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        int i2 = 2;
        int i3 = 8;
        int i4 = 0;
        MainPlayerUi mainPlayerUi = this.f$0;
        switch (i) {
            case 0:
                mainPlayerUi.isQueueVisible = true;
                mainPlayerUi.hideSystemUIIfNeeded();
                PlayerBinding playerBinding = mainPlayerUi.binding;
                playerBinding.itemsList.setAdapter(mainPlayerUi.playQueueAdapter);
                RecyclerView recyclerView = playerBinding.itemsList;
                recyclerView.setClickable(true);
                recyclerView.setLongClickable(true);
                recyclerView.clearOnScrollListeners();
                recyclerView.addOnScrollListener(new MainPlayerUi.AnonymousClass2(mainPlayerUi, i4));
                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new MainPlayerUi.AnonymousClass4(mainPlayerUi, 0));
                mainPlayerUi.itemTouchHelper = itemTouchHelper;
                itemTouchHelper.attachToRecyclerView(recyclerView);
                mainPlayerUi.playQueueAdapter.playQueueItemBuilder.onItemClickListener = mainPlayerUi.new AnonymousClass3();
                playerBinding.itemsListClose.setOnClickListener(new MainPlayerUi$$ExternalSyntheticLambda8(mainPlayerUi, i2));
                playerBinding.itemsListHeaderTitle.setVisibility(8);
                playerBinding.itemsListHeaderDuration.setVisibility(0);
                playerBinding.shuffleButton.setVisibility(0);
                playerBinding.repeatButton.setVisibility(0);
                playerBinding.addToPlaylistButton.setVisibility(0);
                mainPlayerUi.hideControls(0L, 0L);
                RelativeLayout relativeLayout = playerBinding.itemsListPanel;
                relativeLayout.requestFocus();
                AppKt.animate$default(relativeLayout, true, 300L, AnimationType.SLIDE_AND_ALPHA, 0L, null, 24);
                Player player = mainPlayerUi.player;
                PlayQueue playQueue = player.playQueue;
                if (playQueue != null) {
                    recyclerView.scrollToPosition(playQueue.getIndex());
                }
                mainPlayerUi.updateQueueTime((int) player.simpleExoPlayer.getCurrentPosition());
                break;
            case 1:
                mainPlayerUi.getParentActivity().map(new ListHelper$$ExternalSyntheticLambda0(i3)).ifPresent(new MainPlayerUi$$ExternalSyntheticLambda16(mainPlayerUi, i2));
                break;
            case 2:
                mainPlayerUi.closeItemsList();
                break;
            case 3:
                mainPlayerUi.closeItemsList();
                break;
            default:
                Player player2 = mainPlayerUi.player;
                mainPlayerUi.areSegmentsVisible = true;
                mainPlayerUi.hideSystemUIIfNeeded();
                PlayerBinding playerBinding2 = mainPlayerUi.binding;
                RecyclerView recyclerView2 = playerBinding2.itemsList;
                RelativeLayout relativeLayout2 = playerBinding2.itemsListPanel;
                AppCompatImageButton appCompatImageButton = playerBinding2.addToPlaylistButton;
                AppCompatImageButton appCompatImageButton2 = playerBinding2.repeatButton;
                AppCompatImageButton appCompatImageButton3 = playerBinding2.shuffleButton;
                recyclerView2.setAdapter(mainPlayerUi.segmentAdapter);
                RecyclerView recyclerView3 = playerBinding2.itemsList;
                recyclerView3.setClickable(true);
                recyclerView3.setLongClickable(true);
                recyclerView3.clearOnScrollListeners();
                ItemTouchHelper itemTouchHelper2 = mainPlayerUi.itemTouchHelper;
                if (itemTouchHelper2 != null) {
                    itemTouchHelper2.attachToRecyclerView(null);
                }
                Optional currentStreamInfo = player2.getCurrentStreamInfo();
                StreamSegmentAdapter streamSegmentAdapter = mainPlayerUi.segmentAdapter;
                Objects.requireNonNull(streamSegmentAdapter);
                currentStreamInfo.ifPresent(new Player$$ExternalSyntheticLambda1(streamSegmentAdapter, 18));
                appCompatImageButton3.setVisibility(8);
                appCompatImageButton2.setVisibility(8);
                appCompatImageButton.setVisibility(8);
                playerBinding2.itemsListClose.setOnClickListener(new MainPlayerUi$$ExternalSyntheticLambda8(mainPlayerUi, 3));
                playerBinding2.itemsListHeaderTitle.setVisibility(0);
                playerBinding2.itemsListHeaderDuration.setVisibility(8);
                appCompatImageButton3.setVisibility(8);
                appCompatImageButton2.setVisibility(8);
                appCompatImageButton.setVisibility(8);
                mainPlayerUi.hideControls(0L, 0L);
                relativeLayout2.requestFocus();
                AppKt.animate$default(relativeLayout2, true, 300L, AnimationType.SLIDE_AND_ALPHA, 0L, null, 24);
                int nearestStreamSegmentPosition = mainPlayerUi.getNearestStreamSegmentPosition(player2.simpleExoPlayer.getCurrentPosition());
                mainPlayerUi.segmentAdapter.selectSegmentAt(nearestStreamSegmentPosition);
                recyclerView3.scrollToPosition(nearestStreamSegmentPosition);
                break;
        }
    }
}
