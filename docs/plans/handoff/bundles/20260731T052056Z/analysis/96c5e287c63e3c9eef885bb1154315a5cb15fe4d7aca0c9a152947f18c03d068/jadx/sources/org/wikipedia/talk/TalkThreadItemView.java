package org.wikipedia.talk;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.method.MovementMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.DiffUtil;
import androidx.room.Room;
import coil3.memory.MemoryCacheService;
import com.google.android.material.button.MaterialButton;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.page.PageTitle;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/talk/TalkThreadItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/talk/TalkThreadItemView$Callback;", "callback", "Lorg/wikipedia/talk/TalkThreadItemView$Callback;", "getCallback", "()Lorg/wikipedia/talk/TalkThreadItemView$Callback;", "setCallback", "(Lorg/wikipedia/talk/TalkThreadItemView$Callback;)V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkThreadItemView extends ConstraintLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ActivityPageBinding binding;
    public Callback callback;
    public ThreadItem item;
    public final OkHttpCall.AnonymousClass1 overflowMenuListener;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TalkThreadItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.item_talk_thread_item, this);
        int i = R.id.bodyText;
        TextView textView = (TextView) Room.findChildViewById(this, R.id.bodyText);
        if (textView != null) {
            i = R.id.overflowButton;
            ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.overflowButton);
            if (imageView != null) {
                i = R.id.profileImage;
                ImageView imageView2 = (ImageView) Room.findChildViewById(this, R.id.profileImage);
                if (imageView2 != null) {
                    i = R.id.replyButton;
                    MaterialButton materialButton = (MaterialButton) Room.findChildViewById(this, R.id.replyButton);
                    if (materialButton != null) {
                        i = R.id.showRepliesArrow;
                        ImageView imageView3 = (ImageView) Room.findChildViewById(this, R.id.showRepliesArrow);
                        if (imageView3 != null) {
                            i = R.id.showRepliesContainer;
                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.showRepliesContainer);
                            if (linearLayout != null) {
                                i = R.id.showRepliesTapTarget;
                                View findChildViewById = Room.findChildViewById(this, R.id.showRepliesTapTarget);
                                if (findChildViewById != null) {
                                    i = R.id.showRepliesText;
                                    TextView textView2 = (TextView) Room.findChildViewById(this, R.id.showRepliesText);
                                    if (textView2 != null) {
                                        i = R.id.threadLineBottom;
                                        View findChildViewById2 = Room.findChildViewById(this, R.id.threadLineBottom);
                                        if (findChildViewById2 != null) {
                                            i = R.id.threadLineMiddle;
                                            View findChildViewById3 = Room.findChildViewById(this, R.id.threadLineMiddle);
                                            if (findChildViewById3 != null) {
                                                i = R.id.threadLineTop;
                                                View findChildViewById4 = Room.findChildViewById(this, R.id.threadLineTop);
                                                if (findChildViewById4 != null) {
                                                    i = R.id.timeStampText;
                                                    TextView textView3 = (TextView) Room.findChildViewById(this, R.id.timeStampText);
                                                    if (textView3 != null) {
                                                        i = R.id.topDivider;
                                                        View findChildViewById5 = Room.findChildViewById(this, R.id.topDivider);
                                                        if (findChildViewById5 != null) {
                                                            i = R.id.userNameTapTarget;
                                                            View findChildViewById6 = Room.findChildViewById(this, R.id.userNameTapTarget);
                                                            if (findChildViewById6 != null) {
                                                                i = R.id.userNameText;
                                                                TextView textView4 = (TextView) Room.findChildViewById(this, R.id.userNameText);
                                                                if (textView4 != null) {
                                                                    this.binding = new ActivityPageBinding(this, textView, imageView, imageView2, materialButton, imageView3, linearLayout, findChildViewById, textView2, findChildViewById2, findChildViewById3, findChildViewById4, textView3, findChildViewById5, findChildViewById6, textView4);
                                                                    setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                                                                    final int i2 = 0;
                                                                    materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkThreadItemView$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ TalkThreadItemView f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i3 = i2;
                                                                            int i4 = 1;
                                                                            TalkThreadItemView talkThreadItemView = this.f$0;
                                                                            switch (i3) {
                                                                                case 0:
                                                                                    TalkThreadItemView.Callback callback = talkThreadItemView.callback;
                                                                                    if (callback != null) {
                                                                                        ThreadItem threadItem = talkThreadItemView.item;
                                                                                        if (threadItem == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                                                                                        int i5 = TalkTopicActivity.$r8$clinit;
                                                                                        talkTopicActivity.startReplyActivity(threadItem, null, null);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 1:
                                                                                    TalkThreadItemView.Callback callback2 = talkThreadItemView.callback;
                                                                                    if (callback2 != null) {
                                                                                        ThreadItem threadItem2 = talkThreadItemView.item;
                                                                                        if (threadItem2 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity2 = TalkTopicActivity.this;
                                                                                        int i6 = TalkTopicActivity.$r8$clinit;
                                                                                        TalkTopicViewModel viewModel = talkTopicActivity2.getViewModel();
                                                                                        ArrayList arrayList = new ArrayList();
                                                                                        ArrayList arrayList2 = viewModel.flattenedThreadItems;
                                                                                        arrayList.addAll(arrayList2);
                                                                                        threadItem2.isExpanded = !threadItem2.isExpanded;
                                                                                        viewModel.updateFlattenedThreadItems();
                                                                                        DiffUtil.calculateDiff$1(new TalkTopicViewModel$getDiffResult$1(arrayList, arrayList2)).dispatchUpdatesTo(new MemoryCacheService(i4, talkTopicActivity2.threadAdapter));
                                                                                        talkTopicActivity2.invalidateOptionsMenu();
                                                                                    }
                                                                                    talkThreadItemView.updateExpandedState();
                                                                                    return;
                                                                                default:
                                                                                    TalkThreadItemView.Callback callback3 = talkThreadItemView.callback;
                                                                                    if (callback3 != null) {
                                                                                        ThreadItem threadItem3 = talkThreadItemView.item;
                                                                                        if (threadItem3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        view.getClass();
                                                                                        TalkTopicActivity talkTopicActivity3 = TalkTopicActivity.this;
                                                                                        int i7 = TalkTopicActivity.$r8$clinit;
                                                                                        UserTalkPopupHelper.INSTANCE.show(talkTopicActivity3, new PageTitle(UserAliasData.valueFor(talkTopicActivity3.getViewModel().pageTitle.wikiSite.languageCode), threadItem3.author, talkTopicActivity3.getViewModel().pageTitle.wikiSite), !Headers.Companion.isLoggedIn(), view, Constants.InvokeSource.TALK_TOPIC_ACTIVITY, 31, (r21 & 64) != 0 ? null : null, (r21 & 128) != 0 ? null : null, false);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    final int i3 = 1;
                                                                    findChildViewById.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkThreadItemView$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ TalkThreadItemView f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i32 = i3;
                                                                            int i4 = 1;
                                                                            TalkThreadItemView talkThreadItemView = this.f$0;
                                                                            switch (i32) {
                                                                                case 0:
                                                                                    TalkThreadItemView.Callback callback = talkThreadItemView.callback;
                                                                                    if (callback != null) {
                                                                                        ThreadItem threadItem = talkThreadItemView.item;
                                                                                        if (threadItem == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                                                                                        int i5 = TalkTopicActivity.$r8$clinit;
                                                                                        talkTopicActivity.startReplyActivity(threadItem, null, null);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 1:
                                                                                    TalkThreadItemView.Callback callback2 = talkThreadItemView.callback;
                                                                                    if (callback2 != null) {
                                                                                        ThreadItem threadItem2 = talkThreadItemView.item;
                                                                                        if (threadItem2 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity2 = TalkTopicActivity.this;
                                                                                        int i6 = TalkTopicActivity.$r8$clinit;
                                                                                        TalkTopicViewModel viewModel = talkTopicActivity2.getViewModel();
                                                                                        ArrayList arrayList = new ArrayList();
                                                                                        ArrayList arrayList2 = viewModel.flattenedThreadItems;
                                                                                        arrayList.addAll(arrayList2);
                                                                                        threadItem2.isExpanded = !threadItem2.isExpanded;
                                                                                        viewModel.updateFlattenedThreadItems();
                                                                                        DiffUtil.calculateDiff$1(new TalkTopicViewModel$getDiffResult$1(arrayList, arrayList2)).dispatchUpdatesTo(new MemoryCacheService(i4, talkTopicActivity2.threadAdapter));
                                                                                        talkTopicActivity2.invalidateOptionsMenu();
                                                                                    }
                                                                                    talkThreadItemView.updateExpandedState();
                                                                                    return;
                                                                                default:
                                                                                    TalkThreadItemView.Callback callback3 = talkThreadItemView.callback;
                                                                                    if (callback3 != null) {
                                                                                        ThreadItem threadItem3 = talkThreadItemView.item;
                                                                                        if (threadItem3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        view.getClass();
                                                                                        TalkTopicActivity talkTopicActivity3 = TalkTopicActivity.this;
                                                                                        int i7 = TalkTopicActivity.$r8$clinit;
                                                                                        UserTalkPopupHelper.INSTANCE.show(talkTopicActivity3, new PageTitle(UserAliasData.valueFor(talkTopicActivity3.getViewModel().pageTitle.wikiSite.languageCode), threadItem3.author, talkTopicActivity3.getViewModel().pageTitle.wikiSite), !Headers.Companion.isLoggedIn(), view, Constants.InvokeSource.TALK_TOPIC_ACTIVITY, 31, (r21 & 64) != 0 ? null : null, (r21 & 128) != 0 ? null : null, false);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    imageView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(26, context, this));
                                                                    final int i4 = 2;
                                                                    findChildViewById6.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkThreadItemView$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ TalkThreadItemView f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i32 = i4;
                                                                            int i42 = 1;
                                                                            TalkThreadItemView talkThreadItemView = this.f$0;
                                                                            switch (i32) {
                                                                                case 0:
                                                                                    TalkThreadItemView.Callback callback = talkThreadItemView.callback;
                                                                                    if (callback != null) {
                                                                                        ThreadItem threadItem = talkThreadItemView.item;
                                                                                        if (threadItem == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                                                                                        int i5 = TalkTopicActivity.$r8$clinit;
                                                                                        talkTopicActivity.startReplyActivity(threadItem, null, null);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 1:
                                                                                    TalkThreadItemView.Callback callback2 = talkThreadItemView.callback;
                                                                                    if (callback2 != null) {
                                                                                        ThreadItem threadItem2 = talkThreadItemView.item;
                                                                                        if (threadItem2 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        TalkTopicActivity talkTopicActivity2 = TalkTopicActivity.this;
                                                                                        int i6 = TalkTopicActivity.$r8$clinit;
                                                                                        TalkTopicViewModel viewModel = talkTopicActivity2.getViewModel();
                                                                                        ArrayList arrayList = new ArrayList();
                                                                                        ArrayList arrayList2 = viewModel.flattenedThreadItems;
                                                                                        arrayList.addAll(arrayList2);
                                                                                        threadItem2.isExpanded = !threadItem2.isExpanded;
                                                                                        viewModel.updateFlattenedThreadItems();
                                                                                        DiffUtil.calculateDiff$1(new TalkTopicViewModel$getDiffResult$1(arrayList, arrayList2)).dispatchUpdatesTo(new MemoryCacheService(i42, talkTopicActivity2.threadAdapter));
                                                                                        talkTopicActivity2.invalidateOptionsMenu();
                                                                                    }
                                                                                    talkThreadItemView.updateExpandedState();
                                                                                    return;
                                                                                default:
                                                                                    TalkThreadItemView.Callback callback3 = talkThreadItemView.callback;
                                                                                    if (callback3 != null) {
                                                                                        ThreadItem threadItem3 = talkThreadItemView.item;
                                                                                        if (threadItem3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                            throw null;
                                                                                        }
                                                                                        view.getClass();
                                                                                        TalkTopicActivity talkTopicActivity3 = TalkTopicActivity.this;
                                                                                        int i7 = TalkTopicActivity.$r8$clinit;
                                                                                        UserTalkPopupHelper.INSTANCE.show(talkTopicActivity3, new PageTitle(UserAliasData.valueFor(talkTopicActivity3.getViewModel().pageTitle.wikiSite.languageCode), threadItem3.author, talkTopicActivity3.getViewModel().pageTitle.wikiSite), !Headers.Companion.isLoggedIn(), view, Constants.InvokeSource.TALK_TOPIC_ACTIVITY, 31, (r21 & 64) != 0 ? null : null, (r21 & 128) != 0 ? null : null, false);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    this.overflowMenuListener = new OkHttpCall.AnonymousClass1(23, this, context);
                                                                    return;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public static void bindItem$default(TalkThreadItemView talkThreadItemView, ThreadItem threadItem, MovementMethod movementMethod, String str, int i) {
        boolean z = (i & 4) == 0;
        String str2 = (i & 8) != 0 ? null : str;
        ActivityPageBinding activityPageBinding = talkThreadItemView.binding;
        List list = threadItem.replies;
        Date date = threadItem.date;
        int i2 = threadItem.level;
        movementMethod.getClass();
        talkThreadItemView.item = threadItem;
        String str3 = threadItem.author;
        boolean z2 = str3.length() > 0;
        TextView textView = (TextView) activityPageBinding.wikiArticleCardView;
        View view = (View) activityPageBinding.pageToolbarButtonSearch;
        View view2 = (View) activityPageBinding.pageScrollerButton;
        View view3 = (View) activityPageBinding.pageToolbarButtonTabs;
        View view4 = (View) activityPageBinding.sidePanelContainer;
        TextView textView2 = (TextView) activityPageBinding.pageToolbarContainer;
        ImageView imageView = (ImageView) activityPageBinding.navigationDrawer;
        boolean z3 = z;
        View view5 = (View) activityPageBinding.tocList;
        LinearLayout linearLayout = (LinearLayout) activityPageBinding.pageProgressBar;
        boolean z4 = z2;
        TextView textView3 = (TextView) activityPageBinding.rootView;
        MaterialButton materialButton = (MaterialButton) activityPageBinding.containerWithNavTrigger;
        textView.setVisibility(z4 ? 0 : 8);
        view5.setVisibility(z4 ? 0 : 8);
        StringUtil stringUtil = StringUtil.INSTANCE;
        StringUtil.setHighlightedAndBoldenedText(textView, str3, str2);
        view5.setContentDescription(textView.getText());
        imageView.setVisibility(!z4 ? 4 : 0);
        imageView.setImageResource((str3.length() > 6 && str3.charAt(0) == '~' && str3.charAt(5) == '-' && TextUtils.isDigitsOnly(str3.substring(1, 5))) ? R.drawable.ic_temp_account : R.drawable.ic_user_avatar);
        textView2.setVisibility(date != null ? 0 : 8);
        if (date != null) {
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            Context context = talkThreadItemView.getContext();
            context.getClass();
            StringUtil.setHighlightedAndBoldenedText(textView2, DateUtil.getDateStringWithSkeletonPattern(DateFormat.is24HourFormat(context) ? "HH:mm, MMM d, yyyy" : "hh:mm a, MMM d, yyyy", date), str2);
        }
        LinkedHashMap linkedHashMap = CustomHtmlParser.contextBmpMap;
        StringUtil.setHighlightedAndBoldenedText(textView3, StringsKt.trim(Headers.Companion.fromHtml(textView3, StringUtil.removeStyleTags(threadItem.html))), str2);
        textView3.setMovementMethod(movementMethod);
        if (z3) {
            materialButton.setVisibility(8);
            view4.setVisibility(8);
            view3.setVisibility(8);
            linearLayout.setVisibility(8);
            view2.setVisibility(8);
            view.setVisibility(8);
            ((View) activityPageBinding.pageToolbarButtonNotifications).setVisibility(8);
            return;
        }
        if (threadItem.isFirstTopLevel) {
            Context context2 = talkThreadItemView.getContext();
            context2.getClass();
            materialButton.setBackgroundTintList(Cache.Companion.getThemedColorStateList(context2, R.attr.progressive_color));
            materialButton.setIconTint(ColorStateList.valueOf(-1));
            materialButton.setTextColor(-1);
        } else {
            Context context3 = talkThreadItemView.getContext();
            context3.getClass();
            materialButton.setBackgroundTintList(Cache.Companion.getThemedColorStateList(context3, R.attr.background_color));
            Context context4 = talkThreadItemView.getContext();
            context4.getClass();
            materialButton.setIconTint(Cache.Companion.getThemedColorStateList(context4, R.attr.progressive_color));
            Context context5 = talkThreadItemView.getContext();
            context5.getClass();
            materialButton.setTextColor(Cache.Companion.getThemedColor(context5, R.attr.progressive_color));
        }
        view4.setVisibility(i2 <= 2 ? 0 : 8);
        view3.setVisibility(i2 > 2 ? 0 : 8);
        linearLayout.setVisibility((i2 <= 1 || list.isEmpty()) ? 8 : 0);
        view2.setVisibility(linearLayout.getVisibility() == 0 ? 0 : 8);
        view.setVisibility((i2 <= 1 || (list.isEmpty() && (i2 <= 2 || threadItem.isLastSibling))) ? 8 : 0);
        talkThreadItemView.updateExpandedState();
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void updateExpandedState() {
        ActivityPageBinding activityPageBinding = this.binding;
        ImageView imageView = (ImageView) activityPageBinding.pageFragment;
        TextView textView = (TextView) activityPageBinding.pageToolbar;
        ThreadItem threadItem = this.item;
        if (threadItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            throw null;
        }
        imageView.setImageResource(threadItem.isExpanded ? R.drawable.ic_arrow_drop_down_black_24dp : R.drawable.ic_arrow_forward_24);
        Resources resources = getContext().getResources();
        ThreadItem threadItem2 = this.item;
        if (threadItem2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            throw null;
        }
        int i = threadItem2.isExpanded ? R.plurals.talk_hide_replies_count : R.plurals.talk_show_replies_count;
        int size = threadItem2.replies.size();
        ThreadItem threadItem3 = this.item;
        if (threadItem3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            throw null;
        }
        int i2 = 0;
        textView.setText(resources.getQuantityString(i, size, Integer.valueOf(threadItem3.replies.size())));
        ((View) activityPageBinding.pageScrollerButton).setContentDescription(textView.getText());
        View view = (View) activityPageBinding.pageToolbarButtonNotifications;
        ThreadItem threadItem4 = this.item;
        if (threadItem4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            throw null;
        }
        if (!threadItem4.isExpanded && (threadItem4.level <= 2 || threadItem4.isLastSibling)) {
            i2 = 8;
        }
        view.setVisibility(i2);
    }
}
