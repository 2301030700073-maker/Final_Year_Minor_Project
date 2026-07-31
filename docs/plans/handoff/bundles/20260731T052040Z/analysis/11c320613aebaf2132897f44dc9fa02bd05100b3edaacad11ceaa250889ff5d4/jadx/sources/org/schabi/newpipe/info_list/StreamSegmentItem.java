package org.schabi.newpipe.info_list;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import com.xwray.groupie.viewbinding.GroupieViewHolder;
import java.util.List;
import okhttp3.Cookie;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.ItemStreamSegmentBinding;
import org.schabi.newpipe.extractor.stream.StreamSegment;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.player.ui.MainPlayerUi$$ExternalSyntheticLambda11;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.ui.common.Deleter$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamSegmentItem extends BindableItem {
    public static final Companion Companion = new Companion();
    public boolean isSelected;
    public final StreamSegment item;
    public final MainPlayerUi.AnonymousClass3 onClick;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamSegmentItem(StreamSegment streamSegment, MainPlayerUi.AnonymousClass3 anonymousClass3) {
        anonymousClass3.getClass();
        this.item = streamSegment;
        this.onClick = anonymousClass3;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        ItemStreamSegmentBinding itemStreamSegmentBinding = (ItemStreamSegmentBinding) viewBinding;
        itemStreamSegmentBinding.getClass();
        ConstraintLayout constraintLayout = itemStreamSegmentBinding.rootView;
        ImageView imageView = itemStreamSegmentBinding.previewImage;
        StreamSegment streamSegment = this.item;
        int i = 1;
        Cookie.Companion.loadImageDefault(imageView, streamSegment.getPreviewUrl(), R.drawable.placeholder_thumbnail_video, true);
        NewPipeTextView newPipeTextView = itemStreamSegmentBinding.textViewTitle;
        newPipeTextView.setText(streamSegment.getTitle());
        String channelName = streamSegment.getChannelName();
        NewPipeTextView newPipeTextView2 = itemStreamSegmentBinding.textViewChannel;
        if (channelName == null) {
            newPipeTextView2.setVisibility(8);
            newPipeTextView.setMaxLines(2);
        } else {
            newPipeTextView2.setText(streamSegment.getChannelName());
            newPipeTextView2.setVisibility(0);
        }
        itemStreamSegmentBinding.textViewStartSeconds.setText(Localization.getDurationString(streamSegment.getStartTimeSeconds()));
        constraintLayout.setOnClickListener(new Deleter$$ExternalSyntheticLambda4(this, 4));
        constraintLayout.setOnLongClickListener(new MainPlayerUi$$ExternalSyntheticLambda11(this, i));
        constraintLayout.setSelected(this.isSelected);
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        return R.layout.item_stream_segment;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.previewImage;
        ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.previewImage, view);
        if (imageView != null) {
            i = R.id.textViewChannel;
            NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.textViewChannel, view);
            if (newPipeTextView != null) {
                i = R.id.textViewStartSeconds;
                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.textViewStartSeconds, view);
                if (newPipeTextView2 != null) {
                    i = R.id.textViewTitle;
                    NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.textViewTitle, view);
                    if (newPipeTextView3 != null) {
                        return new ItemStreamSegmentBinding((ConstraintLayout) view, imageView, newPipeTextView, newPipeTextView2, newPipeTextView3);
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem, com.xwray.groupie.Item
    public final void bind(GroupieViewHolder groupieViewHolder, int i, List list) {
        groupieViewHolder.getClass();
        list.getClass();
        if (list.contains(1)) {
            groupieViewHolder.itemView.setSelected(this.isSelected);
        } else {
            bind(groupieViewHolder.binding);
        }
    }
}
