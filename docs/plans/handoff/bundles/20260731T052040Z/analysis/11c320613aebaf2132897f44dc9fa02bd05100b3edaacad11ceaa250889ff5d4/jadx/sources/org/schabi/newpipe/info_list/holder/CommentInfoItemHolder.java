package org.schabi.newpipe.info_list.holder;

import android.content.Context;
import android.text.BidiFormatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.sqlite.SQLite;
import coil3.ComponentRegistry;
import com.google.android.exoplayer2.util.Log;
import java.util.List;
import okhttp3.Cookie;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.fragments.list.BaseListFragment$$ExternalSyntheticLambda0;
import org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment;
import org.schabi.newpipe.local.holder.PlaylistItemHolder$$ExternalSyntheticLambda1;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda1;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.text.TextEllipsizer;
import org.schabi.newpipe.util.text.TextEllipsizer$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CommentInfoItemHolder extends InfoItemHolder {
    public final int commentHorizontalPadding;
    public final int commentVerticalPadding;
    public final TextView itemContentView;
    public final ImageView itemHeartView;
    public final TextView itemLikesCountView;
    public final ImageView itemPinnedView;
    public final RelativeLayout itemRoot;
    public final ImageView itemThumbnailView;
    public final ImageView itemThumbsUpView;
    public final TextView itemTitleView;
    public final Button repliesButton;
    public final TextEllipsizer textEllipsizer;

    public CommentInfoItemHolder(ComponentRegistry.Builder builder, ViewGroup viewGroup) {
        super(builder, R.layout.list_comment_item, viewGroup);
        this.itemRoot = (RelativeLayout) this.itemView.findViewById(R.id.itemRoot);
        this.itemThumbnailView = (ImageView) this.itemView.findViewById(R.id.itemThumbnailView);
        TextView textView = (TextView) this.itemView.findViewById(R.id.itemCommentContentView);
        this.itemContentView = textView;
        this.itemThumbsUpView = (ImageView) this.itemView.findViewById(R.id.detail_thumbs_up_img_view);
        this.itemLikesCountView = (TextView) this.itemView.findViewById(R.id.detail_thumbs_up_count_view);
        this.itemTitleView = (TextView) this.itemView.findViewById(R.id.itemTitleView);
        this.itemHeartView = (ImageView) this.itemView.findViewById(R.id.detail_heart_image_view);
        this.itemPinnedView = (ImageView) this.itemView.findViewById(R.id.detail_pinned_view);
        this.repliesButton = (Button) this.itemView.findViewById(R.id.replies_button);
        Context context = (Context) builder.interceptors;
        this.commentHorizontalPadding = (int) context.getResources().getDimension(R.dimen.comments_horizontal_padding);
        this.commentVerticalPadding = (int) context.getResources().getDimension(R.dimen.comments_vertical_padding);
        TextEllipsizer textEllipsizer = new TextEllipsizer(textView, 2, null);
        this.textEllipsizer = textEllipsizer;
        textEllipsizer.stateChangeListener = new Player$$ExternalSyntheticLambda1(this, 10);
    }

    @Override // org.schabi.newpipe.info_list.holder.InfoItemHolder
    public final void updateFromItem(InfoItem infoItem, PlaylistHeaderBinding playlistHeaderBinding) {
        String str;
        if (infoItem instanceof CommentsInfoItem) {
            final CommentsInfoItem commentsInfoItem = (CommentsInfoItem) infoItem;
            List uploaderAvatars = commentsInfoItem.getUploaderAvatars();
            ImageView imageView = this.itemThumbnailView;
            Cookie.Companion.loadAvatar(imageView, uploaderAvatars);
            boolean shouldLoadImages = ImageStrategy.shouldLoadImages();
            int i = this.commentVerticalPadding;
            RelativeLayout relativeLayout = this.itemRoot;
            final int i2 = 0;
            if (shouldLoadImages) {
                imageView.setVisibility(0);
                relativeLayout.setPadding(i, i, i, i);
            } else {
                imageView.setVisibility(8);
                int i3 = this.commentHorizontalPadding;
                relativeLayout.setPadding(i3, i, i3, i);
            }
            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.info_list.holder.CommentInfoItemHolder$$ExternalSyntheticLambda1
                public final /* synthetic */ CommentInfoItemHolder f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BackStackRecord backStackRecord;
                    int i4 = i2;
                    CommentsInfoItem commentsInfoItem2 = commentsInfoItem;
                    CommentInfoItemHolder commentInfoItemHolder = this.f$0;
                    switch (i4) {
                        case 0:
                            SQLite.openCommentAuthorIfPresent((FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors), commentsInfoItem2);
                            return;
                        case 1:
                            FragmentActivity fragmentActivity = (FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors);
                            FragmentManagerImpl supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                            BackStackRecord defaultTransaction = SQLite.defaultTransaction(supportFragmentManager);
                            boolean z = false;
                            for (Fragment fragment : supportFragmentManager.mFragmentStore.getFragments()) {
                                if (fragment != null) {
                                    int i5 = CommentRepliesFragment.$r8$clinit;
                                    if ("CommentRepliesFragment".equals(fragment.getTag())) {
                                        defaultTransaction.remove(fragment);
                                        z = true;
                                    }
                                }
                            }
                            if (z) {
                                defaultTransaction.commit();
                            }
                            while (supportFragmentManager.getBackStackEntryCount() > 0) {
                                int i6 = CommentRepliesFragment.$r8$clinit;
                                int backStackEntryCount = supportFragmentManager.getBackStackEntryCount() - 1;
                                if (backStackEntryCount == supportFragmentManager.mBackStack.size()) {
                                    backStackRecord = supportFragmentManager.mTransitioningOp;
                                    if (backStackRecord == null) {
                                        throw new IndexOutOfBoundsException();
                                    }
                                } else {
                                    backStackRecord = (BackStackRecord) supportFragmentManager.mBackStack.get(backStackEntryCount);
                                }
                                if (!"CommentRepliesFragment".equals(backStackRecord.mName)) {
                                    BackStackRecord defaultTransaction2 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                                    defaultTransaction2.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                                    defaultTransaction2.addToBackStack("CommentRepliesFragment");
                                    defaultTransaction2.commit();
                                    return;
                                }
                                supportFragmentManager.popBackStackImmediate(-1, 1, "CommentRepliesFragment");
                            }
                            BackStackRecord defaultTransaction22 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                            defaultTransaction22.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                            defaultTransaction22.addToBackStack("CommentRepliesFragment");
                            defaultTransaction22.commit();
                            return;
                        default:
                            commentInfoItemHolder.textEllipsizer.toggle();
                            BaseListFragment$$ExternalSyntheticLambda0 baseListFragment$$ExternalSyntheticLambda0 = (BaseListFragment$$ExternalSyntheticLambda0) commentInfoItemHolder.itemBuilder.lazyDecoderFactories;
                            if (baseListFragment$$ExternalSyntheticLambda0 != null) {
                                baseListFragment$$ExternalSyntheticLambda0.selected(commentsInfoItem2);
                                return;
                            }
                            return;
                    }
                }
            });
            this.itemPinnedView.setVisibility(commentsInfoItem.isPinned() ? 0 : 8);
            String uploaderName = commentsInfoItem.getUploaderName();
            String str2 = Localization.TAG;
            String unicodeWrap = BidiFormatter.getInstance().unicodeWrap(uploaderName);
            ComponentRegistry.Builder builder = this.itemBuilder;
            Object obj = builder.interceptors;
            Context context = (Context) builder.interceptors;
            DateWrapper uploadDate = commentsInfoItem.getUploadDate();
            String textualUploadDate = commentsInfoItem.getTextualUploadDate();
            if (uploadDate != null) {
                int i4 = MainActivity.$r8$clinit;
                textualUploadDate = Localization.prettyTime.formatUnrounded(uploadDate.offsetDateTime());
            }
            this.itemTitleView.setText(Localization.concatenateStrings(unicodeWrap, textualUploadDate));
            int likeCount = commentsInfoItem.getLikeCount();
            this.itemLikesCountView.setText(likeCount < 0 ? "-" : Localization.shortCount(context, likeCount));
            this.itemHeartView.setVisibility(commentsInfoItem.isHeartedByUploader() ? 0 : 8);
            final int i5 = 1;
            boolean z = commentsInfoItem.getReplies() != null;
            View.OnClickListener onClickListener = z ? new View.OnClickListener(this) { // from class: org.schabi.newpipe.info_list.holder.CommentInfoItemHolder$$ExternalSyntheticLambda1
                public final /* synthetic */ CommentInfoItemHolder f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BackStackRecord backStackRecord;
                    int i42 = i5;
                    CommentsInfoItem commentsInfoItem2 = commentsInfoItem;
                    CommentInfoItemHolder commentInfoItemHolder = this.f$0;
                    switch (i42) {
                        case 0:
                            SQLite.openCommentAuthorIfPresent((FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors), commentsInfoItem2);
                            return;
                        case 1:
                            FragmentActivity fragmentActivity = (FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors);
                            FragmentManagerImpl supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                            BackStackRecord defaultTransaction = SQLite.defaultTransaction(supportFragmentManager);
                            boolean z2 = false;
                            for (Fragment fragment : supportFragmentManager.mFragmentStore.getFragments()) {
                                if (fragment != null) {
                                    int i52 = CommentRepliesFragment.$r8$clinit;
                                    if ("CommentRepliesFragment".equals(fragment.getTag())) {
                                        defaultTransaction.remove(fragment);
                                        z2 = true;
                                    }
                                }
                            }
                            if (z2) {
                                defaultTransaction.commit();
                            }
                            while (supportFragmentManager.getBackStackEntryCount() > 0) {
                                int i6 = CommentRepliesFragment.$r8$clinit;
                                int backStackEntryCount = supportFragmentManager.getBackStackEntryCount() - 1;
                                if (backStackEntryCount == supportFragmentManager.mBackStack.size()) {
                                    backStackRecord = supportFragmentManager.mTransitioningOp;
                                    if (backStackRecord == null) {
                                        throw new IndexOutOfBoundsException();
                                    }
                                } else {
                                    backStackRecord = (BackStackRecord) supportFragmentManager.mBackStack.get(backStackEntryCount);
                                }
                                if (!"CommentRepliesFragment".equals(backStackRecord.mName)) {
                                    BackStackRecord defaultTransaction22 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                                    defaultTransaction22.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                                    defaultTransaction22.addToBackStack("CommentRepliesFragment");
                                    defaultTransaction22.commit();
                                    return;
                                }
                                supportFragmentManager.popBackStackImmediate(-1, 1, "CommentRepliesFragment");
                            }
                            BackStackRecord defaultTransaction222 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                            defaultTransaction222.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                            defaultTransaction222.addToBackStack("CommentRepliesFragment");
                            defaultTransaction222.commit();
                            return;
                        default:
                            commentInfoItemHolder.textEllipsizer.toggle();
                            BaseListFragment$$ExternalSyntheticLambda0 baseListFragment$$ExternalSyntheticLambda0 = (BaseListFragment$$ExternalSyntheticLambda0) commentInfoItemHolder.itemBuilder.lazyDecoderFactories;
                            if (baseListFragment$$ExternalSyntheticLambda0 != null) {
                                baseListFragment$$ExternalSyntheticLambda0.selected(commentsInfoItem2);
                                return;
                            }
                            return;
                    }
                }
            } : null;
            Button button = this.repliesButton;
            button.setOnClickListener(onClickListener);
            button.setVisibility(z ? 0 : 8);
            if (z) {
                Context context2 = (Context) builder.interceptors;
                int replyCount = commentsInfoItem.getReplyCount();
                str = Localization.getQuantity(context2, R.plurals.replies, 0, replyCount, String.valueOf(replyCount));
            } else {
                str = "";
            }
            button.setText(str);
            ((RelativeLayout.LayoutParams) this.itemThumbsUpView.getLayoutParams()).topMargin = z ? 0 : DeviceUtils.dpToPx(context, 6);
            StreamingService serviceById = ServiceHelper.getServiceById(commentsInfoItem.getServiceId());
            TextEllipsizer textEllipsizer = this.textEllipsizer;
            textEllipsizer.streamingService = serviceById;
            textEllipsizer.streamUrl = commentsInfoItem.getUrl();
            textEllipsizer.content = commentsInfoItem.getCommentText();
            textEllipsizer.canBeEllipsized = null;
            textEllipsizer.linkifyContentView(new TextEllipsizer$$ExternalSyntheticLambda0(textEllipsizer, 1));
            textEllipsizer.view.setMaxLines(Log.LOG_LEVEL_OFF);
            textEllipsizer.linkifyContentView(new TextEllipsizer$$ExternalSyntheticLambda0(textEllipsizer, 0));
            this.itemContentView.setOnTouchListener(new CommentInfoItemHolder$$ExternalSyntheticLambda3(this, 0));
            final int i6 = 2;
            this.itemView.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.info_list.holder.CommentInfoItemHolder$$ExternalSyntheticLambda1
                public final /* synthetic */ CommentInfoItemHolder f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BackStackRecord backStackRecord;
                    int i42 = i6;
                    CommentsInfoItem commentsInfoItem2 = commentsInfoItem;
                    CommentInfoItemHolder commentInfoItemHolder = this.f$0;
                    switch (i42) {
                        case 0:
                            SQLite.openCommentAuthorIfPresent((FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors), commentsInfoItem2);
                            return;
                        case 1:
                            FragmentActivity fragmentActivity = (FragmentActivity) ((Context) commentInfoItemHolder.itemBuilder.interceptors);
                            FragmentManagerImpl supportFragmentManager = fragmentActivity.getSupportFragmentManager();
                            BackStackRecord defaultTransaction = SQLite.defaultTransaction(supportFragmentManager);
                            boolean z2 = false;
                            for (Fragment fragment : supportFragmentManager.mFragmentStore.getFragments()) {
                                if (fragment != null) {
                                    int i52 = CommentRepliesFragment.$r8$clinit;
                                    if ("CommentRepliesFragment".equals(fragment.getTag())) {
                                        defaultTransaction.remove(fragment);
                                        z2 = true;
                                    }
                                }
                            }
                            if (z2) {
                                defaultTransaction.commit();
                            }
                            while (supportFragmentManager.getBackStackEntryCount() > 0) {
                                int i62 = CommentRepliesFragment.$r8$clinit;
                                int backStackEntryCount = supportFragmentManager.getBackStackEntryCount() - 1;
                                if (backStackEntryCount == supportFragmentManager.mBackStack.size()) {
                                    backStackRecord = supportFragmentManager.mTransitioningOp;
                                    if (backStackRecord == null) {
                                        throw new IndexOutOfBoundsException();
                                    }
                                } else {
                                    backStackRecord = (BackStackRecord) supportFragmentManager.mBackStack.get(backStackEntryCount);
                                }
                                if (!"CommentRepliesFragment".equals(backStackRecord.mName)) {
                                    BackStackRecord defaultTransaction222 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                                    defaultTransaction222.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                                    defaultTransaction222.addToBackStack("CommentRepliesFragment");
                                    defaultTransaction222.commit();
                                    return;
                                }
                                supportFragmentManager.popBackStackImmediate(-1, 1, "CommentRepliesFragment");
                            }
                            BackStackRecord defaultTransaction2222 = SQLite.defaultTransaction(fragmentActivity.getSupportFragmentManager());
                            defaultTransaction2222.replace(R.id.fragment_holder, new CommentRepliesFragment(commentsInfoItem2), "CommentRepliesFragment");
                            defaultTransaction2222.addToBackStack("CommentRepliesFragment");
                            defaultTransaction2222.commit();
                            return;
                        default:
                            commentInfoItemHolder.textEllipsizer.toggle();
                            BaseListFragment$$ExternalSyntheticLambda0 baseListFragment$$ExternalSyntheticLambda0 = (BaseListFragment$$ExternalSyntheticLambda0) commentInfoItemHolder.itemBuilder.lazyDecoderFactories;
                            if (baseListFragment$$ExternalSyntheticLambda0 != null) {
                                baseListFragment$$ExternalSyntheticLambda0.selected(commentsInfoItem2);
                                return;
                            }
                            return;
                    }
                }
            });
            this.itemView.setOnLongClickListener(new PlaylistItemHolder$$ExternalSyntheticLambda1(this, commentsInfoItem, 3));
        }
    }
}
