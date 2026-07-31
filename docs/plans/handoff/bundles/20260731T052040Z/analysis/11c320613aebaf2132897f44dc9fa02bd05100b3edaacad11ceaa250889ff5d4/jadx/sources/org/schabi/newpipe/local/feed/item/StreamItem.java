package org.schabi.newpipe.local.feed.item;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.viewbinding.BindableItem;
import j$.time.OffsetDateTime;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cookie;
import okio.Okio;
import okio.Options;
import org.ocpsoft.prettytime.PrettyTime$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.stream.StreamWithState;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.databinding.ListStreamItemBinding;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.AnimatedProgressBar;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamItem extends BindableItem {
    public static final Companion Companion = new Companion();
    public PrettyTime$$ExternalSyntheticLambda0 execBindEnd;
    public ItemVersion itemVersion;
    public final Long stateProgressTime;
    public final StreamEntity stream;
    public final StreamWithState streamWithState;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ItemVersion {
        public static final /* synthetic */ ItemVersion[] $VALUES;
        public static final ItemVersion CARD;
        public static final ItemVersion GRID;
        public static final ItemVersion MINI;
        public static final ItemVersion NORMAL;

        static {
            ItemVersion itemVersion = new ItemVersion("NORMAL", 0);
            NORMAL = itemVersion;
            ItemVersion itemVersion2 = new ItemVersion("MINI", 1);
            MINI = itemVersion2;
            ItemVersion itemVersion3 = new ItemVersion("GRID", 2);
            GRID = itemVersion3;
            ItemVersion itemVersion4 = new ItemVersion("CARD", 3);
            CARD = itemVersion4;
            $VALUES = new ItemVersion[]{itemVersion, itemVersion2, itemVersion3, itemVersion4};
        }

        public static ItemVersion valueOf(String str) {
            return (ItemVersion) Enum.valueOf(ItemVersion.class, str);
        }

        public static ItemVersion[] values() {
            return (ItemVersion[]) $VALUES.clone();
        }
    }

    public StreamItem(StreamWithState streamWithState) {
        streamWithState.getClass();
        this.streamWithState = streamWithState;
        this.itemVersion = ItemVersion.NORMAL;
        this.stream = streamWithState.stream;
        this.stateProgressTime = streamWithState.stateProgressMillis;
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding) {
        ListStreamItemBinding listStreamItemBinding = (ListStreamItemBinding) viewBinding;
        listStreamItemBinding.getClass();
        AnimatedProgressBar animatedProgressBar = listStreamItemBinding.itemProgressView;
        NewPipeTextView newPipeTextView = listStreamItemBinding.itemDurationView;
        NewPipeTextView newPipeTextView2 = listStreamItemBinding.itemVideoTitleView;
        StreamEntity streamEntity = this.stream;
        newPipeTextView2.setText(streamEntity.getTitle());
        listStreamItemBinding.itemUploaderView.setText(streamEntity.getUploader());
        if (streamEntity.getDuration() > 0) {
            newPipeTextView.setText(Localization.getDurationString(streamEntity.getDuration()));
            newPipeTextView.setBackgroundColor(newPipeTextView.getContext().getColor(R.color.duration_background_color));
            newPipeTextView.setVisibility(0);
            Long l = this.stateProgressTime;
            if (l != null) {
                animatedProgressBar.setVisibility(0);
                animatedProgressBar.setMax((int) streamEntity.getDuration());
                animatedProgressBar.setProgress((int) (l.longValue() / 1000));
            } else {
                animatedProgressBar.setVisibility(8);
            }
        } else if (Okio.isLiveStream(streamEntity.getStreamType())) {
            newPipeTextView.setText(R.string.duration_live);
            newPipeTextView.setBackgroundColor(newPipeTextView.getContext().getColor(R.color.live_duration_background_color));
            newPipeTextView.setVisibility(0);
            animatedProgressBar.setVisibility(8);
        } else {
            newPipeTextView.setVisibility(8);
            animatedProgressBar.setVisibility(8);
        }
        Cookie.Companion.loadImageDefault(listStreamItemBinding.itemThumbnailView, streamEntity.getThumbnailUrl(), R.drawable.placeholder_thumbnail_video, true);
        if (this.itemVersion != ItemVersion.MINI) {
            NewPipeTextView newPipeTextView3 = listStreamItemBinding.itemAdditionalDetails;
            Context context = newPipeTextView3.getContext();
            context.getClass();
            newPipeTextView3.setText(getStreamInfoDetailLine(context));
        }
        PrettyTime$$ExternalSyntheticLambda0 prettyTime$$ExternalSyntheticLambda0 = this.execBindEnd;
        if (prettyTime$$ExternalSyntheticLambda0 != null) {
            prettyTime$$ExternalSyntheticLambda0.s(listStreamItemBinding);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamItem)) {
            return false;
        }
        StreamItem streamItem = (StreamItem) obj;
        return Intrinsics.areEqual(this.streamWithState, streamItem.streamWithState) && this.itemVersion == streamItem.itemVersion;
    }

    @Override // com.xwray.groupie.Item
    public final long getId() {
        return this.stream.getUid();
    }

    @Override // com.xwray.groupie.Item
    public final int getLayout() {
        int ordinal = this.itemVersion.ordinal();
        if (ordinal == 0) {
            return R.layout.list_stream_item;
        }
        if (ordinal == 1) {
            return R.layout.list_stream_mini_item;
        }
        if (ordinal == 2) {
            return R.layout.list_stream_grid_item;
        }
        if (ordinal == 3) {
            return R.layout.list_stream_card_item;
        }
        DecodeUtils$$ExternalSyntheticBUOutline0.m();
        return 0;
    }

    @Override // com.xwray.groupie.Item
    public final int getSpanSize(int i) {
        if (this.itemVersion == ItemVersion.GRID) {
            return 1;
        }
        return i;
    }

    public final String getStreamInfoDetailLine(Context context) {
        String str;
        String textualUploadDate;
        StreamEntity streamEntity = this.stream;
        Long viewCount = streamEntity.getViewCount();
        if (viewCount == null || viewCount.longValue() < 0) {
            str = "";
        } else {
            int ordinal = streamEntity.getStreamType().ordinal();
            if (ordinal == 3) {
                long longValue = viewCount.longValue();
                str = Localization.getQuantity(context, R.plurals.watching, R.string.no_one_watching, longValue, Localization.shortCount(context, longValue));
                str.getClass();
            } else if (ordinal != 4) {
                long longValue2 = viewCount.longValue();
                str = Localization.getQuantity(context, R.plurals.views, R.string.no_views, longValue2, Localization.shortCount(context, longValue2));
                str.getClass();
            } else {
                long longValue3 = viewCount.longValue();
                str = Localization.getQuantity(context, R.plurals.listening, R.string.no_one_listening, longValue3, Localization.shortCount(context, longValue3));
                str.getClass();
            }
        }
        OffsetDateTime uploadDate = streamEntity.getUploadDate();
        if (uploadDate != null) {
            textualUploadDate = Localization.prettyTime.formatUnrounded(uploadDate);
            int i = MainActivity.$r8$clinit;
        } else {
            textualUploadDate = streamEntity.getTextualUploadDate();
        }
        if (TextUtils.isEmpty(textualUploadDate)) {
            return str;
        }
        if (str.length() == 0) {
            textualUploadDate.getClass();
            return textualUploadDate;
        }
        String concatenateStrings = Localization.concatenateStrings(str, textualUploadDate);
        concatenateStrings.getClass();
        return concatenateStrings;
    }

    public final int hashCode() {
        return this.itemVersion.hashCode() + (this.streamWithState.hashCode() * 31);
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final ViewBinding initializeViewBinding(View view) {
        view.getClass();
        int i = R.id.itemAdditionalDetails;
        NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemAdditionalDetails, view);
        if (newPipeTextView != null) {
            i = R.id.itemDurationView;
            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemDurationView, view);
            if (newPipeTextView2 != null) {
                i = R.id.itemProgressView;
                AnimatedProgressBar animatedProgressBar = (AnimatedProgressBar) Options.Companion.findChildViewById(R.id.itemProgressView, view);
                if (animatedProgressBar != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i = R.id.itemThumbnailView;
                    ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.itemThumbnailView, view);
                    if (imageView != null) {
                        i = R.id.itemUploaderView;
                        NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemUploaderView, view);
                        if (newPipeTextView3 != null) {
                            i = R.id.itemVideoTitleView;
                            NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.itemVideoTitleView, view);
                            if (newPipeTextView4 != null) {
                                return new ListStreamItemBinding(constraintLayout, newPipeTextView, newPipeTextView2, animatedProgressBar, constraintLayout, imageView, newPipeTextView3, newPipeTextView4);
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        return null;
    }

    @Override // com.xwray.groupie.Item
    public final boolean isLongClickable() {
        switch (this.stream.getStreamType().ordinal()) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public final String toString() {
        return "StreamItem(streamWithState=" + this.streamWithState + ", itemVersion=" + this.itemVersion + ")";
    }

    @Override // com.xwray.groupie.viewbinding.BindableItem
    public final void bind(ViewBinding viewBinding, int i, List list) {
        ListStreamItemBinding listStreamItemBinding = (ListStreamItemBinding) viewBinding;
        listStreamItemBinding.getClass();
        list.getClass();
        if (list.contains(1)) {
            if (this.itemVersion != ItemVersion.MINI) {
                NewPipeTextView newPipeTextView = listStreamItemBinding.itemAdditionalDetails;
                Context context = newPipeTextView.getContext();
                context.getClass();
                newPipeTextView.setText(getStreamInfoDetailLine(context));
                return;
            }
            return;
        }
        bind(listStreamItemBinding);
    }
}
