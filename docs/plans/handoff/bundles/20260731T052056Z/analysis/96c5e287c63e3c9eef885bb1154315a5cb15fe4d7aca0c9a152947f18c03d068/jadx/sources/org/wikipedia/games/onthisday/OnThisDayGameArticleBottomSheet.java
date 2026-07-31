package org.wikipedia.games.onthisday;

import android.content.ComponentCallbacks;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.room.Room;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "Callback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayGameArticleBottomSheet extends ExtendedBottomSheetDialogFragment {
    public ActivityLoginBinding _binding;
    public PageSummary pageSummary;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayGameArticleBottomSheet() {
        super(false);
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayGameViewModel.class), new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameArticleBottomSheet $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameArticleBottomSheet.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameArticleBottomSheet $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameArticleBottomSheet.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameArticleBottomSheet $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameArticleBottomSheet.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameArticleBottomSheet.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final OnThisDayGameViewModel getViewModel$1() {
        return (OnThisDayGameViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Parcelable parcelable = (Parcelable) Room.getParcelable(requireArguments(), "title", PageSummary.class);
        parcelable.getClass();
        this.pageSummary = (PageSummary) parcelable;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Object obj;
        layoutInflater.getClass();
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.dialog_on_this_day_game_article, viewGroup, false);
        int i2 = R.id.answerStatus;
        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.answerStatus);
        if (textView != null) {
            i2 = R.id.articleDescription;
            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.articleDescription);
            if (textView2 != null) {
                i2 = R.id.articleSummary;
                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.articleSummary);
                if (textView3 != null) {
                    i2 = R.id.articleSummaryContainer;
                    WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.articleSummaryContainer);
                    if (wikiCardView != null) {
                        i2 = R.id.articleThumbnail;
                        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.articleThumbnail);
                        if (faceAndColorDetectImageView != null) {
                            i2 = R.id.articleTitle;
                            TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.articleTitle);
                            if (textView4 != null) {
                                i2 = R.id.dialogDetailContainer;
                                if (((ConstraintLayout) Room.findChildViewById(inflate, R.id.dialogDetailContainer)) != null) {
                                    ScrollView scrollView = (ScrollView) inflate;
                                    i2 = R.id.readArticleButton;
                                    MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.readArticleButton);
                                    if (materialButton != null) {
                                        i2 = R.id.relatedEventContainer;
                                        if (((WikiCardView) Room.findChildViewById(inflate, R.id.relatedEventContainer)) != null) {
                                            i2 = R.id.relatedEventInfo;
                                            TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.relatedEventInfo);
                                            if (textView5 != null) {
                                                i2 = R.id.relatedEventTitle;
                                                if (((TextView) Room.findChildViewById(inflate, R.id.relatedEventTitle)) != null) {
                                                    i2 = R.id.saveButton;
                                                    ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.saveButton);
                                                    if (imageView != null) {
                                                        i2 = R.id.saveButtonContainer;
                                                        if (((WikiCardView) Room.findChildViewById(inflate, R.id.saveButtonContainer)) != null) {
                                                            i2 = R.id.shareButton;
                                                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.shareButton);
                                                            if (imageView2 != null) {
                                                                i2 = R.id.shareButtonContainer;
                                                                if (((WikiCardView) Room.findChildViewById(inflate, R.id.shareButtonContainer)) != null) {
                                                                    this._binding = new ActivityLoginBinding(scrollView, textView, textView2, textView3, wikiCardView, faceAndColorDetectImageView, textView4, materialButton, textView5, imageView, imageView2);
                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel$1().isArchiveGame), null, "impression", "game_play", "game_end_article", null, null);
                                                                    ActivityLoginBinding activityLoginBinding = this._binding;
                                                                    activityLoginBinding.getClass();
                                                                    TextView textView6 = (TextView) activityLoginBinding.loginCreateAccountButton;
                                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                                    PageSummary pageSummary = this.pageSummary;
                                                                    if (pageSummary == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    textView6.setText(StringUtil.fromHtml(pageSummary.getDisplayTitle()));
                                                                    ActivityLoginBinding activityLoginBinding2 = this._binding;
                                                                    activityLoginBinding2.getClass();
                                                                    TextView textView7 = (TextView) activityLoginBinding2.login2faText;
                                                                    PageSummary pageSummary2 = this.pageSummary;
                                                                    if (pageSummary2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    textView7.setText(StringUtil.fromHtml(pageSummary2.description));
                                                                    PageSummary pageSummary3 = this.pageSummary;
                                                                    if (pageSummary3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    String thumbnailUrl = pageSummary3.getThumbnailUrl();
                                                                    if (thumbnailUrl == null || thumbnailUrl.length() == 0) {
                                                                        ActivityLoginBinding activityLoginBinding3 = this._binding;
                                                                        activityLoginBinding3.getClass();
                                                                        ((FaceAndColorDetectImageView) activityLoginBinding3.loginButton).setVisibility(4);
                                                                        ActivityLoginBinding activityLoginBinding4 = this._binding;
                                                                        activityLoginBinding4.getClass();
                                                                        ((WikiCardView) activityLoginBinding4.loginUsernameText).setVisibility(0);
                                                                        ActivityLoginBinding activityLoginBinding5 = this._binding;
                                                                        activityLoginBinding5.getClass();
                                                                        TextView textView8 = (TextView) activityLoginBinding5.loginPasswordInput;
                                                                        PageSummary pageSummary4 = this.pageSummary;
                                                                        if (pageSummary4 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                            throw null;
                                                                        }
                                                                        String str = pageSummary4.extractHtml;
                                                                        if (str == null) {
                                                                            str = "";
                                                                        }
                                                                        if (str.length() == 0) {
                                                                            PageSummary pageSummary5 = this.pageSummary;
                                                                            if (pageSummary5 == null) {
                                                                                Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                throw null;
                                                                            }
                                                                            str = pageSummary5.description;
                                                                        }
                                                                        textView8.setText(StringUtil.fromHtml(str));
                                                                    } else {
                                                                        ActivityLoginBinding activityLoginBinding6 = this._binding;
                                                                        activityLoginBinding6.getClass();
                                                                        ((FaceAndColorDetectImageView) activityLoginBinding6.loginButton).setVisibility(0);
                                                                        ActivityLoginBinding activityLoginBinding7 = this._binding;
                                                                        activityLoginBinding7.getClass();
                                                                        ((WikiCardView) activityLoginBinding7.loginUsernameText).setVisibility(4);
                                                                        ActivityLoginBinding activityLoginBinding8 = this._binding;
                                                                        activityLoginBinding8.getClass();
                                                                        FaceAndColorDetectImageView faceAndColorDetectImageView2 = (FaceAndColorDetectImageView) activityLoginBinding8.loginButton;
                                                                        PageSummary pageSummary6 = this.pageSummary;
                                                                        if (pageSummary6 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                            throw null;
                                                                        }
                                                                        ViewUtil.loadImage$default(faceAndColorDetectImageView2, pageSummary6.getThumbnailUrl(), null, 20);
                                                                        ActivityLoginBinding activityLoginBinding9 = this._binding;
                                                                        activityLoginBinding9.getClass();
                                                                        ((FaceAndColorDetectImageView) activityLoginBinding9.loginButton).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0
                                                                            public final /* synthetic */ OnThisDayGameArticleBottomSheet f$0;

                                                                            {
                                                                                this.f$0 = this;
                                                                            }

                                                                            @Override // android.view.View.OnClickListener
                                                                            public final void onClick(View view) {
                                                                                int i3 = i;
                                                                                OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.f$0;
                                                                                switch (i3) {
                                                                                    case 0:
                                                                                        PageSummary pageSummary7 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                        if (pageSummary7 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                            throw null;
                                                                                        }
                                                                                        String leadImageName = pageSummary7.getLeadImageName();
                                                                                        if (leadImageName == null) {
                                                                                            leadImageName = "";
                                                                                        }
                                                                                        try {
                                                                                            String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(leadImageName, "+", "%2B"), "UTF-8");
                                                                                            decode.getClass();
                                                                                            leadImageName = decode;
                                                                                        } catch (UnsupportedEncodingException e) {
                                                                                            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                                                                            return;
                                                                                        } catch (IllegalArgumentException unused) {
                                                                                            L.d("URL decoding failed. String was: ".concat(leadImageName));
                                                                                        }
                                                                                        PageTitle pageTitle = new PageTitle("File:".concat(leadImageName), onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite, (String) null);
                                                                                        int i4 = FilePageActivity.$r8$clinit;
                                                                                        onThisDayGameArticleBottomSheet.startActivity(Path.Companion.newIntent(onThisDayGameArticleBottomSheet.requireContext(), pageTitle, true), null);
                                                                                        return;
                                                                                    case 1:
                                                                                        OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet2 = this.f$0;
                                                                                        WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet2.getViewModel$1().isArchiveGame), null, "save_click", "game_play", "game_end_article", null, null);
                                                                                        ActivityLoginBinding activityLoginBinding10 = onThisDayGameArticleBottomSheet2._binding;
                                                                                        activityLoginBinding10.getClass();
                                                                                        ImageView imageView3 = (ImageView) activityLoginBinding10.viewLoginError;
                                                                                        PageSummary pageSummary8 = onThisDayGameArticleBottomSheet2.pageSummary;
                                                                                        if (pageSummary8 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                            throw null;
                                                                                        }
                                                                                        PageTitle pageTitle2 = pageSummary8.getPageTitle(onThisDayGameArticleBottomSheet2.getViewModel$1().wikiSite);
                                                                                        if (onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.contains(pageSummary8)) {
                                                                                            new LongPressMenu(imageView3, 0, null, new DefaultSocket(onThisDayGameArticleBottomSheet2, pageTitle2, pageSummary8, imageView3, 26), 28).show(new HistoryEntry(43, pageTitle2));
                                                                                            return;
                                                                                        }
                                                                                        List list = ReadingListBehaviorsUtil.allReadingLists;
                                                                                        ReadingListBehaviorsUtil.addToDefaultList(onThisDayGameArticleBottomSheet2.requireActivity(), pageTitle2, true, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
                                                                                        onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.add(pageSummary8);
                                                                                        imageView3.setImageResource(R.drawable.ic_bookmark_white_24dp);
                                                                                        OnThisDayGameArticleBottomSheet.Callback callback = onThisDayGameArticleBottomSheet2.callback();
                                                                                        if (callback != null) {
                                                                                            ((OnThisDayGameResultFragment) callback).onPageBookmarkChanged(pageSummary8);
                                                                                            return;
                                                                                        }
                                                                                        return;
                                                                                    case 2:
                                                                                        WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "share_click", "game_play", "game_end_article", null, null);
                                                                                        AppCompatActivity requireActivity = onThisDayGameArticleBottomSheet.requireActivity();
                                                                                        PageSummary pageSummary9 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                        if (pageSummary9 != null) {
                                                                                            ShareUtil.shareText$default(requireActivity, pageSummary9.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                            return;
                                                                                        } else {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                            throw null;
                                                                                        }
                                                                                    default:
                                                                                        WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "read_click", "game_play", "game_end_article", null, null);
                                                                                        PageSummary pageSummary10 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                        if (pageSummary10 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                            throw null;
                                                                                        }
                                                                                        HistoryEntry historyEntry = new HistoryEntry(43, pageSummary10.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                        int i5 = PageActivity.$r8$clinit;
                                                                                        onThisDayGameArticleBottomSheet.startActivity(LoginClient.newIntentForNewTab(onThisDayGameArticleBottomSheet.requireActivity(), historyEntry, historyEntry.getTitle()), null);
                                                                                        return;
                                                                                }
                                                                            }
                                                                        });
                                                                    }
                                                                    OnThisDayGameViewModel viewModel$1 = getViewModel$1();
                                                                    PageSummary pageSummary7 = this.pageSummary;
                                                                    if (pageSummary7 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    String apiTitle = pageSummary7.getApiTitle();
                                                                    ArrayList arrayList = viewModel$1.events;
                                                                    Iterator it = arrayList.iterator();
                                                                    loop0: while (true) {
                                                                        if (!it.hasNext()) {
                                                                            obj = null;
                                                                            break;
                                                                        }
                                                                        obj = it.next();
                                                                        List<PageSummary> list = ((OnThisDay.Event) obj).pages;
                                                                        if (list == null || !list.isEmpty()) {
                                                                            for (PageSummary pageSummary8 : list) {
                                                                                if (pageSummary8.getApiTitle().equals(apiTitle) || pageSummary8.getDisplayTitle().equals(apiTitle)) {
                                                                                    break loop0;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                    OnThisDay.Event event = (OnThisDay.Event) obj;
                                                                    if (event == null) {
                                                                        event = (OnThisDay.Event) arrayList.get(0);
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding10 = this._binding;
                                                                    activityLoginBinding10.getClass();
                                                                    TextView textView9 = (TextView) activityLoginBinding10.toolbar;
                                                                    StringUtil stringUtil2 = StringUtil.INSTANCE;
                                                                    textView9.setText(StringUtil.fromHtml(event.text));
                                                                    OnThisDayGameViewModel viewModel$12 = getViewModel$1();
                                                                    PageSummary pageSummary9 = this.pageSummary;
                                                                    if (pageSummary9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    String apiTitle2 = pageSummary9.getApiTitle();
                                                                    Iterator it2 = viewModel$12.events.iterator();
                                                                    int i3 = 0;
                                                                    loop2: while (true) {
                                                                        if (!it2.hasNext()) {
                                                                            i3 = -1;
                                                                            break;
                                                                        }
                                                                        List<PageSummary> list2 = ((OnThisDay.Event) it2.next()).pages;
                                                                        if (list2 == null || !list2.isEmpty()) {
                                                                            for (PageSummary pageSummary10 : list2) {
                                                                                if (pageSummary10.getApiTitle().equals(apiTitle2) || pageSummary10.getDisplayTitle().equals(apiTitle2)) {
                                                                                    break loop2;
                                                                                }
                                                                            }
                                                                        }
                                                                        i3++;
                                                                    }
                                                                    OnThisDayGameViewModel.GameState gameState = viewModel$12.currentState;
                                                                    if (gameState == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("currentState");
                                                                        throw null;
                                                                    }
                                                                    final int i4 = 2;
                                                                    boolean booleanValue = ((Boolean) gameState.answerState.get(i3 >= 0 ? i3 / 2 : 0)).booleanValue();
                                                                    int i5 = booleanValue ? R.drawable.check_circle_24px : R.drawable.ic_cancel_24px;
                                                                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(requireContext(), booleanValue ? R.attr.success_color : R.attr.destructive_color);
                                                                    int i6 = booleanValue ? R.string.on_this_day_game_article_answer_correct_stats_message : R.string.on_this_day_game_article_answer_incorrect_stats_message;
                                                                    ActivityLoginBinding activityLoginBinding11 = this._binding;
                                                                    activityLoginBinding11.getClass();
                                                                    ((TextView) activityLoginBinding11.footerContainer).setCompoundDrawablesRelativeWithIntrinsicBounds(i5, 0, 0, 0);
                                                                    ActivityLoginBinding activityLoginBinding12 = this._binding;
                                                                    activityLoginBinding12.getClass();
                                                                    UuidKt.setCompoundDrawableTintList((TextView) activityLoginBinding12.footerContainer, themedColorStateList);
                                                                    ActivityLoginBinding activityLoginBinding13 = this._binding;
                                                                    activityLoginBinding13.getClass();
                                                                    ((TextView) activityLoginBinding13.footerContainer).setText(getString(i6));
                                                                    ArrayList arrayList2 = getViewModel$1().savedPages;
                                                                    PageSummary pageSummary11 = this.pageSummary;
                                                                    if (pageSummary11 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                        throw null;
                                                                    }
                                                                    int i7 = arrayList2.contains(pageSummary11) ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp;
                                                                    ActivityLoginBinding activityLoginBinding14 = this._binding;
                                                                    activityLoginBinding14.getClass();
                                                                    ((ImageView) activityLoginBinding14.viewLoginError).setImageResource(i7);
                                                                    ActivityLoginBinding activityLoginBinding15 = this._binding;
                                                                    activityLoginBinding15.getClass();
                                                                    final int i8 = 1;
                                                                    ((ImageView) activityLoginBinding15.viewLoginError).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ OnThisDayGameArticleBottomSheet f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i32 = i8;
                                                                            OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.f$0;
                                                                            switch (i32) {
                                                                                case 0:
                                                                                    PageSummary pageSummary72 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary72 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    String leadImageName = pageSummary72.getLeadImageName();
                                                                                    if (leadImageName == null) {
                                                                                        leadImageName = "";
                                                                                    }
                                                                                    try {
                                                                                        String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(leadImageName, "+", "%2B"), "UTF-8");
                                                                                        decode.getClass();
                                                                                        leadImageName = decode;
                                                                                    } catch (UnsupportedEncodingException e) {
                                                                                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                                                                        return;
                                                                                    } catch (IllegalArgumentException unused) {
                                                                                        L.d("URL decoding failed. String was: ".concat(leadImageName));
                                                                                    }
                                                                                    PageTitle pageTitle = new PageTitle("File:".concat(leadImageName), onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite, (String) null);
                                                                                    int i42 = FilePageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(Path.Companion.newIntent(onThisDayGameArticleBottomSheet.requireContext(), pageTitle, true), null);
                                                                                    return;
                                                                                case 1:
                                                                                    OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet2 = this.f$0;
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet2.getViewModel$1().isArchiveGame), null, "save_click", "game_play", "game_end_article", null, null);
                                                                                    ActivityLoginBinding activityLoginBinding102 = onThisDayGameArticleBottomSheet2._binding;
                                                                                    activityLoginBinding102.getClass();
                                                                                    ImageView imageView3 = (ImageView) activityLoginBinding102.viewLoginError;
                                                                                    PageSummary pageSummary82 = onThisDayGameArticleBottomSheet2.pageSummary;
                                                                                    if (pageSummary82 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = pageSummary82.getPageTitle(onThisDayGameArticleBottomSheet2.getViewModel$1().wikiSite);
                                                                                    if (onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.contains(pageSummary82)) {
                                                                                        new LongPressMenu(imageView3, 0, null, new DefaultSocket(onThisDayGameArticleBottomSheet2, pageTitle2, pageSummary82, imageView3, 26), 28).show(new HistoryEntry(43, pageTitle2));
                                                                                        return;
                                                                                    }
                                                                                    List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                                                    ReadingListBehaviorsUtil.addToDefaultList(onThisDayGameArticleBottomSheet2.requireActivity(), pageTitle2, true, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
                                                                                    onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.add(pageSummary82);
                                                                                    imageView3.setImageResource(R.drawable.ic_bookmark_white_24dp);
                                                                                    OnThisDayGameArticleBottomSheet.Callback callback = onThisDayGameArticleBottomSheet2.callback();
                                                                                    if (callback != null) {
                                                                                        ((OnThisDayGameResultFragment) callback).onPageBookmarkChanged(pageSummary82);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 2:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "share_click", "game_play", "game_end_article", null, null);
                                                                                    AppCompatActivity requireActivity = onThisDayGameArticleBottomSheet.requireActivity();
                                                                                    PageSummary pageSummary92 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary92 != null) {
                                                                                        ShareUtil.shareText$default(requireActivity, pageSummary92.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                default:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "read_click", "game_play", "game_end_article", null, null);
                                                                                    PageSummary pageSummary102 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary102 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    HistoryEntry historyEntry = new HistoryEntry(43, pageSummary102.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                    int i52 = PageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(LoginClient.newIntentForNewTab(onThisDayGameArticleBottomSheet.requireActivity(), historyEntry, historyEntry.getTitle()), null);
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    ActivityLoginBinding activityLoginBinding16 = this._binding;
                                                                    activityLoginBinding16.getClass();
                                                                    ((ImageView) activityLoginBinding16.viewProgressBar).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ OnThisDayGameArticleBottomSheet f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view) {
                                                                            int i32 = i4;
                                                                            OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.f$0;
                                                                            switch (i32) {
                                                                                case 0:
                                                                                    PageSummary pageSummary72 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary72 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    String leadImageName = pageSummary72.getLeadImageName();
                                                                                    if (leadImageName == null) {
                                                                                        leadImageName = "";
                                                                                    }
                                                                                    try {
                                                                                        String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(leadImageName, "+", "%2B"), "UTF-8");
                                                                                        decode.getClass();
                                                                                        leadImageName = decode;
                                                                                    } catch (UnsupportedEncodingException e) {
                                                                                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                                                                        return;
                                                                                    } catch (IllegalArgumentException unused) {
                                                                                        L.d("URL decoding failed. String was: ".concat(leadImageName));
                                                                                    }
                                                                                    PageTitle pageTitle = new PageTitle("File:".concat(leadImageName), onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite, (String) null);
                                                                                    int i42 = FilePageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(Path.Companion.newIntent(onThisDayGameArticleBottomSheet.requireContext(), pageTitle, true), null);
                                                                                    return;
                                                                                case 1:
                                                                                    OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet2 = this.f$0;
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet2.getViewModel$1().isArchiveGame), null, "save_click", "game_play", "game_end_article", null, null);
                                                                                    ActivityLoginBinding activityLoginBinding102 = onThisDayGameArticleBottomSheet2._binding;
                                                                                    activityLoginBinding102.getClass();
                                                                                    ImageView imageView3 = (ImageView) activityLoginBinding102.viewLoginError;
                                                                                    PageSummary pageSummary82 = onThisDayGameArticleBottomSheet2.pageSummary;
                                                                                    if (pageSummary82 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = pageSummary82.getPageTitle(onThisDayGameArticleBottomSheet2.getViewModel$1().wikiSite);
                                                                                    if (onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.contains(pageSummary82)) {
                                                                                        new LongPressMenu(imageView3, 0, null, new DefaultSocket(onThisDayGameArticleBottomSheet2, pageTitle2, pageSummary82, imageView3, 26), 28).show(new HistoryEntry(43, pageTitle2));
                                                                                        return;
                                                                                    }
                                                                                    List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                                                    ReadingListBehaviorsUtil.addToDefaultList(onThisDayGameArticleBottomSheet2.requireActivity(), pageTitle2, true, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
                                                                                    onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.add(pageSummary82);
                                                                                    imageView3.setImageResource(R.drawable.ic_bookmark_white_24dp);
                                                                                    OnThisDayGameArticleBottomSheet.Callback callback = onThisDayGameArticleBottomSheet2.callback();
                                                                                    if (callback != null) {
                                                                                        ((OnThisDayGameResultFragment) callback).onPageBookmarkChanged(pageSummary82);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 2:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "share_click", "game_play", "game_end_article", null, null);
                                                                                    AppCompatActivity requireActivity = onThisDayGameArticleBottomSheet.requireActivity();
                                                                                    PageSummary pageSummary92 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary92 != null) {
                                                                                        ShareUtil.shareText$default(requireActivity, pageSummary92.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                default:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "read_click", "game_play", "game_end_article", null, null);
                                                                                    PageSummary pageSummary102 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary102 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    HistoryEntry historyEntry = new HistoryEntry(43, pageSummary102.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                    int i52 = PageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(LoginClient.newIntentForNewTab(onThisDayGameArticleBottomSheet.requireActivity(), historyEntry, historyEntry.getTitle()), null);
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    ActivityLoginBinding activityLoginBinding17 = this._binding;
                                                                    activityLoginBinding17.getClass();
                                                                    ImageView imageView3 = (ImageView) activityLoginBinding17.viewProgressBar;
                                                                    ActivityLoginBinding activityLoginBinding18 = this._binding;
                                                                    activityLoginBinding18.getClass();
                                                                    View[] viewArr = {imageView3, (ImageView) activityLoginBinding18.viewLoginError};
                                                                    while (i < 2) {
                                                                        View view = viewArr[i];
                                                                        RegexKt.setTooltipText(view, view.getContentDescription());
                                                                        i++;
                                                                    }
                                                                    ActivityLoginBinding activityLoginBinding19 = this._binding;
                                                                    activityLoginBinding19.getClass();
                                                                    final int i9 = 3;
                                                                    ((MaterialButton) activityLoginBinding19.loginPrimaryContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet$$ExternalSyntheticLambda0
                                                                        public final /* synthetic */ OnThisDayGameArticleBottomSheet f$0;

                                                                        {
                                                                            this.f$0 = this;
                                                                        }

                                                                        @Override // android.view.View.OnClickListener
                                                                        public final void onClick(View view2) {
                                                                            int i32 = i9;
                                                                            OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = this.f$0;
                                                                            switch (i32) {
                                                                                case 0:
                                                                                    PageSummary pageSummary72 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary72 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    String leadImageName = pageSummary72.getLeadImageName();
                                                                                    if (leadImageName == null) {
                                                                                        leadImageName = "";
                                                                                    }
                                                                                    try {
                                                                                        String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(leadImageName, "+", "%2B"), "UTF-8");
                                                                                        decode.getClass();
                                                                                        leadImageName = decode;
                                                                                    } catch (UnsupportedEncodingException e) {
                                                                                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                                                                                        return;
                                                                                    } catch (IllegalArgumentException unused) {
                                                                                        L.d("URL decoding failed. String was: ".concat(leadImageName));
                                                                                    }
                                                                                    PageTitle pageTitle = new PageTitle("File:".concat(leadImageName), onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite, (String) null);
                                                                                    int i42 = FilePageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(Path.Companion.newIntent(onThisDayGameArticleBottomSheet.requireContext(), pageTitle, true), null);
                                                                                    return;
                                                                                case 1:
                                                                                    OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet2 = this.f$0;
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet2.getViewModel$1().isArchiveGame), null, "save_click", "game_play", "game_end_article", null, null);
                                                                                    ActivityLoginBinding activityLoginBinding102 = onThisDayGameArticleBottomSheet2._binding;
                                                                                    activityLoginBinding102.getClass();
                                                                                    ImageView imageView32 = (ImageView) activityLoginBinding102.viewLoginError;
                                                                                    PageSummary pageSummary82 = onThisDayGameArticleBottomSheet2.pageSummary;
                                                                                    if (pageSummary82 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = pageSummary82.getPageTitle(onThisDayGameArticleBottomSheet2.getViewModel$1().wikiSite);
                                                                                    if (onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.contains(pageSummary82)) {
                                                                                        new LongPressMenu(imageView32, 0, null, new DefaultSocket(onThisDayGameArticleBottomSheet2, pageTitle2, pageSummary82, imageView32, 26), 28).show(new HistoryEntry(43, pageTitle2));
                                                                                        return;
                                                                                    }
                                                                                    List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                                                    ReadingListBehaviorsUtil.addToDefaultList(onThisDayGameArticleBottomSheet2.requireActivity(), pageTitle2, true, Constants.InvokeSource.ON_THIS_DAY_GAME_ACTIVITY, null);
                                                                                    onThisDayGameArticleBottomSheet2.getViewModel$1().savedPages.add(pageSummary82);
                                                                                    imageView32.setImageResource(R.drawable.ic_bookmark_white_24dp);
                                                                                    OnThisDayGameArticleBottomSheet.Callback callback = onThisDayGameArticleBottomSheet2.callback();
                                                                                    if (callback != null) {
                                                                                        ((OnThisDayGameResultFragment) callback).onPageBookmarkChanged(pageSummary82);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                case 2:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "share_click", "game_play", "game_end_article", null, null);
                                                                                    AppCompatActivity requireActivity = onThisDayGameArticleBottomSheet.requireActivity();
                                                                                    PageSummary pageSummary92 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary92 != null) {
                                                                                        ShareUtil.shareText$default(requireActivity, pageSummary92.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                default:
                                                                                    WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameArticleBottomSheet.getViewModel$1().isArchiveGame), null, "read_click", "game_play", "game_end_article", null, null);
                                                                                    PageSummary pageSummary102 = onThisDayGameArticleBottomSheet.pageSummary;
                                                                                    if (pageSummary102 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageSummary");
                                                                                        throw null;
                                                                                    }
                                                                                    HistoryEntry historyEntry = new HistoryEntry(43, pageSummary102.getPageTitle(onThisDayGameArticleBottomSheet.getViewModel$1().wikiSite));
                                                                                    int i52 = PageActivity.$r8$clinit;
                                                                                    onThisDayGameArticleBottomSheet.startActivity(LoginClient.newIntentForNewTab(onThisDayGameArticleBottomSheet.requireActivity(), historyEntry, historyEntry.getTitle()), null);
                                                                                    return;
                                                                            }
                                                                        }
                                                                    });
                                                                    ActivityLoginBinding activityLoginBinding20 = this._binding;
                                                                    activityLoginBinding20.getClass();
                                                                    ScrollView scrollView2 = (ScrollView) activityLoginBinding20.captchaContainer;
                                                                    scrollView2.getClass();
                                                                    return scrollView2;
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this._binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        dismiss();
    }

    @Override // org.wikipedia.page.ExtendedBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        Object parent = ((ScrollView) activityLoginBinding.captchaContainer).getParent();
        parent.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((View) parent);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        from.setPeekHeight(displayMetrics.heightPixels);
    }
}
