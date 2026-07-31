package org.schabi.newpipe.fragments.list.comments;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.function.Supplier;
import okhttp3.Cookie;
import okio.Options;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.extractor.feed.FeedInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.localization.DateWrapper;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda42;
import org.schabi.newpipe.util.DeviceUtils;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.image.ImageStrategy;
import org.schabi.newpipe.util.text.LongPressLinkMovementMethod;
import org.schabi.newpipe.util.text.TextLinkifier;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CommentRepliesFragment extends BaseListInfoFragment<CommentsInfoItem, FeedInfo> {
    public static final /* synthetic */ int $r8$clinit = 0;
    CommentsInfoItem commentsInfoItem;
    public final CompositeDisposable disposables;

    public CommentRepliesFragment(CommentsInfoItem commentsInfoItem) {
        this();
        this.commentsInfoItem = commentsInfoItem;
        setInitialData(commentsInfoItem.getUrl(), commentsInfoItem.getServiceId(), "");
    }

    public final CommentsInfoItem getCommentsInfoItem() {
        return this.commentsInfoItem;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final ItemViewMode getItemViewMode() {
        return ItemViewMode.LIST;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final Supplier getListHeaderSupplier() {
        return new Supplier() { // from class: org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                int i = CommentRepliesFragment.$r8$clinit;
                CommentRepliesFragment commentRepliesFragment = CommentRepliesFragment.this;
                View inflate = commentRepliesFragment.activity.getLayoutInflater().inflate(R.layout.comment_replies_header, (ViewGroup) commentRepliesFragment.itemsList, false);
                int i2 = R.id.authorAvatar;
                ShapeableImageView shapeableImageView = (ShapeableImageView) Options.Companion.findChildViewById(R.id.authorAvatar, inflate);
                if (shapeableImageView != null) {
                    i2 = R.id.authorName;
                    NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.authorName, inflate);
                    if (newPipeTextView != null) {
                        i2 = R.id.authorTouchArea;
                        View findChildViewById = Options.Companion.findChildViewById(R.id.authorTouchArea, inflate);
                        if (findChildViewById != null) {
                            i2 = R.id.commentContent;
                            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.commentContent, inflate);
                            if (newPipeTextView2 != null) {
                                i2 = R.id.heartImage;
                                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.heartImage, inflate);
                                if (imageView != null) {
                                    i2 = R.id.pinnedImage;
                                    ImageView imageView2 = (ImageView) Options.Companion.findChildViewById(R.id.pinnedImage, inflate);
                                    if (imageView2 != null) {
                                        i2 = R.id.thumbsUpCount;
                                        NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.thumbsUpCount, inflate);
                                        if (newPipeTextView3 != null) {
                                            i2 = R.id.thumbsUpImage;
                                            if (((ImageView) Options.Companion.findChildViewById(R.id.thumbsUpImage, inflate)) != null) {
                                                i2 = R.id.uploadDate;
                                                NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.uploadDate, inflate);
                                                if (newPipeTextView4 != null) {
                                                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                                    CommentsInfoItem commentsInfoItem = commentRepliesFragment.commentsInfoItem;
                                                    Cookie.Companion.loadAvatar(shapeableImageView, commentsInfoItem.getUploaderAvatars());
                                                    shapeableImageView.setVisibility(ImageStrategy.shouldLoadImages() ? 0 : 8);
                                                    newPipeTextView.setText(commentsInfoItem.getUploaderName());
                                                    commentRepliesFragment.getContext();
                                                    DateWrapper uploadDate = commentsInfoItem.getUploadDate();
                                                    String textualUploadDate = commentsInfoItem.getTextualUploadDate();
                                                    String str = Localization.TAG;
                                                    if (uploadDate != null) {
                                                        int i3 = MainActivity.$r8$clinit;
                                                        textualUploadDate = Localization.prettyTime.formatUnrounded(uploadDate.offsetDateTime());
                                                    }
                                                    newPipeTextView4.setText(textualUploadDate);
                                                    findChildViewById.setOnClickListener(new VideoPlayerUi$$ExternalSyntheticLambda42(commentRepliesFragment, commentsInfoItem, 4));
                                                    Context requireContext = commentRepliesFragment.requireContext();
                                                    int likeCount = commentsInfoItem.getLikeCount();
                                                    newPipeTextView3.setText(likeCount < 0 ? "-" : Localization.shortCount(requireContext, likeCount));
                                                    ((ConstraintLayout.LayoutParams) newPipeTextView3.getLayoutParams()).setMarginEnd(DeviceUtils.dpToPx(commentRepliesFragment.requireContext(), (commentsInfoItem.isHeartedByUploader() || commentsInfoItem.isPinned()) ? 8 : 16));
                                                    imageView.setVisibility(commentsInfoItem.isHeartedByUploader() ? 0 : 8);
                                                    imageView2.setVisibility(commentsInfoItem.isPinned() ? 0 : 8);
                                                    TextLinkifier.fromDescription(newPipeTextView2, commentsInfoItem.getCommentText(), ServiceHelper.getServiceById(commentsInfoItem.getServiceId()), commentsInfoItem.getUrl(), commentRepliesFragment.disposables, null);
                                                    if (LongPressLinkMovementMethod.instance == null) {
                                                        LongPressLinkMovementMethod longPressLinkMovementMethod = new LongPressLinkMovementMethod();
                                                        longPressLinkMovementMethod.isLongPressed = false;
                                                        LongPressLinkMovementMethod.instance = longPressLinkMovementMethod;
                                                        longPressLinkMovementMethod.longClickHandler = new Handler(Looper.myLooper());
                                                    }
                                                    newPipeTextView2.setMovementMethod(LongPressLinkMovementMethod.instance);
                                                    return constraintLayout;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
                return null;
            }
        };
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        int i = this.serviceId;
        String url = this.commentsInfoItem.getUrl();
        Page page = this.currentNextPage;
        ExtractorHelper.checkServiceId(i);
        return new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda5(i, url, page, 2), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        return new SingleAmb(new Callable() { // from class: org.schabi.newpipe.fragments.list.comments.CommentRepliesFragment$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CommentRepliesFragment commentRepliesFragment = CommentRepliesFragment.this;
                CommentsInfoItem commentsInfoItem = commentRepliesFragment.commentsInfoItem;
                Context requireContext = commentRepliesFragment.requireContext();
                int replyCount = commentRepliesFragment.commentsInfoItem.getReplyCount();
                String str = Localization.TAG;
                String quantity = Localization.getQuantity(requireContext, R.plurals.replies, 0, replyCount, String.valueOf(replyCount));
                int serviceId = commentsInfoItem.getServiceId();
                List list = Collections.EMPTY_LIST;
                FeedInfo feedInfo = new FeedInfo(serviceId, new ListLinkHandler("", "", "", list, null), quantity);
                feedInfo.setNextPage(commentsInfoItem.getReplies());
                feedInfo.setRelatedItems(list);
                return feedInfo;
            }
        }, 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_comments, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.disposables.clear();
        super.onDestroyView();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public final void readFrom(Queue queue) {
        super.readFrom(queue);
        this.commentsInfoItem = (CommentsInfoItem) queue.poll();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public final void writeTo(LinkedList linkedList) {
        super.writeTo(linkedList);
        linkedList.add(this.commentsInfoItem);
    }

    public CommentRepliesFragment() {
        super(UserAction.REQUESTED_COMMENT_REPLIES);
        this.disposables = new CompositeDisposable();
    }
}
