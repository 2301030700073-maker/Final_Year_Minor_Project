package org.wikipedia.games.onthisday;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManager$PopBackStackState;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import j$.time.LocalDate;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.games.onthisday.OnThisDayGameArticleBottomSheet;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0005\u0005\u0006\u0007\b\tB\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\n"}, d2 = {"Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;", "Lorg/wikipedia/games/onthisday/OnThisDayGameBaseFragment;", "Lorg/wikipedia/games/onthisday/OnThisDayGameArticleBottomSheet$Callback;", "<init>", "()V", "AppIconAdapter", "ShareRecyclerViewItemHolder", "org/wikipedia/media/AvPlayer", "RecyclerViewAdapter", "RecyclerViewItemHolder", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnThisDayGameResultFragment extends OnThisDayGameBaseFragment implements OnThisDayGameArticleBottomSheet.Callback {
    public ItemNotificationBinding _binding;
    public final Handler handler = new Handler(Looper.getMainLooper());
    public int loadedImagesForShare;
    public OnThisDayGameActivity mainActivity;
    public MainFragment$$ExternalSyntheticLambda5 timeUpdateRunnable;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerViewAdapter extends RecyclerView.Adapter {
        public final ArrayList pages;

        public RecyclerViewAdapter(ArrayList arrayList) {
            this.pages = arrayList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return this.pages.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            RecyclerViewItemHolder recyclerViewItemHolder = (RecyclerViewItemHolder) viewHolder;
            PageSummary pageSummary = (PageSummary) this.pages.get(i);
            pageSummary.getClass();
            recyclerViewItemHolder.page = pageSummary;
            Request.Builder builder = recyclerViewItemHolder.binding;
            TextView textView = (TextView) builder.tags;
            FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) builder.body;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(pageSummary.getDisplayTitle()));
            GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) builder.method;
            goneIfEmptyTextView.setText(StringUtil.fromHtml(pageSummary.description));
            String str = pageSummary.description;
            goneIfEmptyTextView.setVisibility((str == null || str.length() == 0) ? 8 : 0);
            ((ImageView) builder.headers).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(14, pageSummary, OnThisDayGameResultFragment.this));
            String thumbnailUrl = pageSummary.getThumbnailUrl();
            if (thumbnailUrl == null) {
                faceAndColorDetectImageView.setVisibility(8);
            } else {
                faceAndColorDetectImageView.setVisibility(0);
                ViewUtil.loadImage$default(faceAndColorDetectImageView, thumbnailUrl, null, 28);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            OnThisDayGameResultFragment onThisDayGameResultFragment = OnThisDayGameResultFragment.this;
            View inflate = onThisDayGameResultFragment.getLayoutInflater().inflate(R.layout.item_on_this_day_game_topic, viewGroup, false);
            int i2 = R.id.listItemDescription;
            GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.listItemDescription);
            if (goneIfEmptyTextView != null) {
                i2 = R.id.listItemDropDown;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.listItemDropDown);
                if (imageView != null) {
                    i2 = R.id.listItemInfoContainer;
                    if (((LinearLayout) Room.findChildViewById(inflate, R.id.listItemInfoContainer)) != null) {
                        i2 = R.id.listItemThumbnail;
                        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.listItemThumbnail);
                        if (faceAndColorDetectImageView != null) {
                            i2 = R.id.listItemTitle;
                            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.listItemTitle);
                            if (textView != null) {
                                return onThisDayGameResultFragment.new RecyclerViewItemHolder(new Request.Builder((WikiCardView) inflate, goneIfEmptyTextView, imageView, faceAndColorDetectImageView, textView));
                            }
                        }
                    }
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecyclerViewItemHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public final Request.Builder binding;
        public PageSummary page;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public RecyclerViewItemHolder(okhttp3.Request.Builder r2) {
            /*
                r0 = this;
                org.wikipedia.games.onthisday.OnThisDayGameResultFragment.this = r1
                java.lang.Object r1 = r2.url
                org.wikipedia.views.WikiCardView r1 = (org.wikipedia.views.WikiCardView) r1
                r0.<init>(r1)
                r0.binding = r2
                r1.setOnClickListener(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameResultFragment.RecyclerViewItemHolder.<init>(org.wikipedia.games.onthisday.OnThisDayGameResultFragment, okhttp3.Request$Builder):void");
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            OnThisDayGameResultFragment onThisDayGameResultFragment = OnThisDayGameResultFragment.this;
            WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameResultFragment.getViewModel$3().isArchiveGame), null, "select_click", "game_play", onThisDayGameResultFragment.getViewModel$3().getCurrentScreenName(), null, null);
            FragmentManagerImpl childFragmentManager = onThisDayGameResultFragment.getChildFragmentManager();
            childFragmentManager.getClass();
            PageSummary pageSummary = this.page;
            if (pageSummary == null) {
                Intrinsics.throwUninitializedPropertyAccessException("page");
                throw null;
            }
            OnThisDayGameArticleBottomSheet onThisDayGameArticleBottomSheet = new OnThisDayGameArticleBottomSheet();
            onThisDayGameArticleBottomSheet.setArguments(UStringsKt.bundleOf(new Pair("title", pageSummary)));
            Okio__OkioKt.show(childFragmentManager, onThisDayGameArticleBottomSheet);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ShareRecyclerViewItemHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public ShareRecyclerViewItemHolder(DefaultSocket defaultSocket) {
            super((ConstraintLayout) defaultSocket.socket);
            this.binding = defaultSocket;
        }
    }

    public OnThisDayGameResultFragment() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(OnThisDayGameViewModel.class), new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameResultFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                OnThisDayGameResultFragment onThisDayGameResultFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameResultFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameResultFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                OnThisDayGameResultFragment onThisDayGameResultFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameResultFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameResultFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ OnThisDayGameResultFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                OnThisDayGameResultFragment onThisDayGameResultFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return onThisDayGameResultFragment.requireActivity().getViewModelStore();
                    case 1:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return onThisDayGameResultFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
    }

    public final OnThisDayGameViewModel getViewModel$3() {
        return (OnThisDayGameViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.games.onthisday.OnThisDayGameBaseFragment
    public final void onArchiveDateSelected(LocalDate localDate) {
        ItemNotificationBinding itemNotificationBinding = this._binding;
        itemNotificationBinding.getClass();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) itemNotificationBinding.rootView;
        coordinatorLayout.getClass();
        coordinatorLayout.setVisibility(8);
        WikiGamesEvent.submit$default(1016, null, null, "play_click", "game_play", "game_start", null, null);
        OnThisDayGameViewModel viewModel$3 = getViewModel$3();
        viewModel$3.currentDate = localDate;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel$3), new OnThisDayGameViewModel$loadGameState$$inlined$CoroutineExceptionHandler$1(viewModel$3, 0), null, new OnThisDayGameViewModel$loadGameState$2(viewModel$3, false, null), 2);
        FragmentManagerImpl supportFragmentManager = requireActivity().getSupportFragmentManager();
        supportFragmentManager.enqueueAction(new FragmentManager$PopBackStackState(supportFragmentManager, -1, 0), false);
        BackStackRecord backStackRecord = new BackStackRecord(requireActivity().getSupportFragmentManager());
        backStackRecord.replace(R.id.fragmentContainer, new OnThisDayGamePlayFragment(), null);
        backStackRecord.commit();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        layoutInflater.getClass();
        final int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_on_this_day_game_result, viewGroup, false);
        int i2 = R.id.archiveGameButton;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.archiveGameButton);
        if (materialButton != null) {
            i2 = R.id.errorView;
            WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
            if (wikiErrorView != null) {
                i2 = R.id.gameStatsComposeView;
                ComposeView composeView = (ComposeView) Room.findChildViewById(inflate, R.id.gameStatsComposeView);
                if (composeView != null) {
                    i2 = R.id.nextGameText;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.nextGameText);
                    if (textView != null) {
                        i2 = R.id.progressBar;
                        LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                        if (linearProgressIndicator != null) {
                            i2 = R.id.resultArticlesList;
                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.resultArticlesList);
                            if (recyclerView != null) {
                                i2 = R.id.resultCardContainer;
                                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.resultCardContainer);
                                if (linearLayout != null) {
                                    i2 = R.id.resultSubtitle;
                                    if (((TextView) Room.findChildViewById(inflate, R.id.resultSubtitle)) != null) {
                                        i2 = R.id.resultText;
                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.resultText);
                                        if (textView2 != null) {
                                            i2 = R.id.resultTextContainer;
                                            if (((CardView) Room.findChildViewById(inflate, R.id.resultTextContainer)) != null) {
                                                i2 = R.id.scrollContainer;
                                                NestedScrollView nestedScrollView = (NestedScrollView) Room.findChildViewById(inflate, R.id.scrollContainer);
                                                if (nestedScrollView != null) {
                                                    i2 = R.id.shareButton;
                                                    MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.shareButton);
                                                    if (materialButton2 != null) {
                                                        i2 = R.id.shareLayout;
                                                        view = null;
                                                        View findChildViewById = Room.findChildViewById(inflate, R.id.shareLayout);
                                                        if (findChildViewById != null) {
                                                            int i3 = R.id.questionDotLine;
                                                            View findChildViewById2 = Room.findChildViewById(findChildViewById, R.id.questionDotLine);
                                                            if (findChildViewById2 != null) {
                                                                i3 = R.id.questionDotsFlow;
                                                                Flow flow = (Flow) Room.findChildViewById(findChildViewById, R.id.questionDotsFlow);
                                                                if (flow != null) {
                                                                    i3 = R.id.scoreContainer;
                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(findChildViewById, R.id.scoreContainer);
                                                                    if (constraintLayout != null) {
                                                                        i3 = R.id.shareArticlesList;
                                                                        RecyclerView recyclerView2 = (RecyclerView) Room.findChildViewById(findChildViewById, R.id.shareArticlesList);
                                                                        if (recyclerView2 != null) {
                                                                            i3 = R.id.shareContainer;
                                                                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(findChildViewById, R.id.shareContainer);
                                                                            if (linearLayout2 != null) {
                                                                                i3 = R.id.shareResultText;
                                                                                TextView textView3 = (TextView) Room.findChildViewById(findChildViewById, R.id.shareResultText);
                                                                                if (textView3 != null) {
                                                                                    i3 = R.id.shareSubtitle;
                                                                                    if (((TextView) Room.findChildViewById(findChildViewById, R.id.shareSubtitle)) != null) {
                                                                                        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer(findChildViewById2, flow, constraintLayout, recyclerView2, linearLayout2, textView3);
                                                                                        if (((TextView) Room.findChildViewById(inflate, R.id.yourStatsText)) != null) {
                                                                                            ItemNotificationBinding itemNotificationBinding = new ItemNotificationBinding();
                                                                                            itemNotificationBinding.rootView = (CoordinatorLayout) inflate;
                                                                                            itemNotificationBinding.notificationSubtitle = materialButton;
                                                                                            itemNotificationBinding.notificationTime = wikiErrorView;
                                                                                            itemNotificationBinding.notificationTitle = composeView;
                                                                                            itemNotificationBinding.notificationDescription = textView;
                                                                                            itemNotificationBinding.notificationItemImage = linearProgressIndicator;
                                                                                            itemNotificationBinding.notificationItemSelectedImage = recyclerView;
                                                                                            itemNotificationBinding.notificationOverflowMenu = linearLayout;
                                                                                            itemNotificationBinding.notificationSource = textView2;
                                                                                            itemNotificationBinding.notificationWikiCodeImage = nestedScrollView;
                                                                                            itemNotificationBinding.notificationWikiCode = materialButton2;
                                                                                            itemNotificationBinding.notificationWikiCodeContainer = sVGAndroidRenderer;
                                                                                            this._binding = itemNotificationBinding;
                                                                                            AppCompatActivity activity = getActivity();
                                                                                            this.mainActivity = activity instanceof OnThisDayGameActivity ? (OnThisDayGameActivity) activity : null;
                                                                                            final int i4 = 1;
                                                                                            if (Build.VERSION.SDK_INT >= 29) {
                                                                                                requireActivity().getWindow().setNavigationBarContrastEnforced(true);
                                                                                            }
                                                                                            WikiGamesEvent.submit$default(984, Boolean.valueOf(getViewModel$3().isArchiveGame), null, "impression", "game_play", getViewModel$3().getCurrentScreenName(), null, null);
                                                                                            ItemNotificationBinding itemNotificationBinding2 = this._binding;
                                                                                            itemNotificationBinding2.getClass();
                                                                                            ((MaterialButton) itemNotificationBinding2.notificationWikiCode).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameResultFragment$$ExternalSyntheticLambda1
                                                                                                public final /* synthetic */ OnThisDayGameResultFragment f$0;

                                                                                                {
                                                                                                    this.f$0 = this;
                                                                                                }

                                                                                                @Override // android.view.View.OnClickListener
                                                                                                public final void onClick(View view2) {
                                                                                                    int i5 = i;
                                                                                                    OnThisDayGameResultFragment onThisDayGameResultFragment = this.f$0;
                                                                                                    switch (i5) {
                                                                                                        case 0:
                                                                                                            WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameResultFragment.getViewModel$3().isArchiveGame), null, "share_game_click", "game_play", onThisDayGameResultFragment.getViewModel$3().getCurrentScreenName(), null, null);
                                                                                                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(onThisDayGameResultFragment), null, null, new SyntaxHighlighter.AnonymousClass2(4, onThisDayGameResultFragment, (Continuation) null), 3);
                                                                                                            break;
                                                                                                        default:
                                                                                                            onThisDayGameResultFragment.prepareAndOpenArchiveCalendar(onThisDayGameResultFragment.getViewModel$3().wikiSite.languageCode);
                                                                                                            break;
                                                                                                    }
                                                                                                }
                                                                                            });
                                                                                            getViewModel$3()._gameState.observe(getViewLifecycleOwner(), new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(16, this), 4));
                                                                                            this.timeUpdateRunnable = new MainFragment$$ExternalSyntheticLambda5(10, this);
                                                                                            ItemNotificationBinding itemNotificationBinding3 = this._binding;
                                                                                            itemNotificationBinding3.getClass();
                                                                                            ((CoordinatorLayout) itemNotificationBinding3.rootView).setOnApplyWindowInsetsListener(new MainActivity$$ExternalSyntheticLambda0(3, this));
                                                                                            ItemNotificationBinding itemNotificationBinding4 = this._binding;
                                                                                            itemNotificationBinding4.getClass();
                                                                                            ((MaterialButton) itemNotificationBinding4.notificationSubtitle).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.games.onthisday.OnThisDayGameResultFragment$$ExternalSyntheticLambda1
                                                                                                public final /* synthetic */ OnThisDayGameResultFragment f$0;

                                                                                                {
                                                                                                    this.f$0 = this;
                                                                                                }

                                                                                                @Override // android.view.View.OnClickListener
                                                                                                public final void onClick(View view2) {
                                                                                                    int i5 = i4;
                                                                                                    OnThisDayGameResultFragment onThisDayGameResultFragment = this.f$0;
                                                                                                    switch (i5) {
                                                                                                        case 0:
                                                                                                            WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameResultFragment.getViewModel$3().isArchiveGame), null, "share_game_click", "game_play", onThisDayGameResultFragment.getViewModel$3().getCurrentScreenName(), null, null);
                                                                                                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(onThisDayGameResultFragment), null, null, new SyntaxHighlighter.AnonymousClass2(4, onThisDayGameResultFragment, (Continuation) null), 3);
                                                                                                            break;
                                                                                                        default:
                                                                                                            onThisDayGameResultFragment.prepareAndOpenArchiveCalendar(onThisDayGameResultFragment.getViewModel$3().wikiSite.languageCode);
                                                                                                            break;
                                                                                                    }
                                                                                                }
                                                                                            });
                                                                                            MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = this.timeUpdateRunnable;
                                                                                            if (mainFragment$$ExternalSyntheticLambda5 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("timeUpdateRunnable");
                                                                                                throw null;
                                                                                            }
                                                                                            this.handler.post(mainFragment$$ExternalSyntheticLambda5);
                                                                                            updateOnLoading$1();
                                                                                            OnThisDayGameActivity onThisDayGameActivity = this.mainActivity;
                                                                                            if (onThisDayGameActivity != null) {
                                                                                                onThisDayGameActivity.invalidateOptionsMenu();
                                                                                            }
                                                                                            ItemNotificationBinding itemNotificationBinding5 = this._binding;
                                                                                            itemNotificationBinding5.getClass();
                                                                                            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) itemNotificationBinding5.rootView;
                                                                                            coordinatorLayout.getClass();
                                                                                            return coordinatorLayout;
                                                                                        }
                                                                                        i2 = R.id.yourStatsText;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(findChildViewById.getResources().getResourceName(i3)));
                                                            return null;
                                                        }
                                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
                                                        return view;
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
        view = null;
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return view;
    }

    @Override // org.wikipedia.games.onthisday.OnThisDayGameBaseFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = this.timeUpdateRunnable;
        if (mainFragment$$ExternalSyntheticLambda5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("timeUpdateRunnable");
            throw null;
        }
        this.handler.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
        this._binding = null;
        super.onDestroyView();
    }

    public final void onPageBookmarkChanged(PageSummary pageSummary) {
        pageSummary.getClass();
        ItemNotificationBinding itemNotificationBinding = this._binding;
        itemNotificationBinding.getClass();
        RecyclerView.Adapter adapter = ((RecyclerView) itemNotificationBinding.notificationItemSelectedImage).getAdapter();
        Object obj = null;
        RecyclerViewAdapter recyclerViewAdapter = adapter instanceof RecyclerViewAdapter ? (RecyclerViewAdapter) adapter : null;
        if (recyclerViewAdapter != null) {
            Iterator it = recyclerViewAdapter.pages.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((PageSummary) next).getApiTitle().equals(pageSummary.getApiTitle())) {
                    obj = next;
                    break;
                }
            }
            PageSummary pageSummary2 = (PageSummary) obj;
            if (pageSummary2 != null) {
                ItemNotificationBinding itemNotificationBinding2 = this._binding;
                itemNotificationBinding2.getClass();
                RecyclerView.Adapter adapter2 = ((RecyclerView) itemNotificationBinding2.notificationItemSelectedImage).getAdapter();
                if (adapter2 != null) {
                    adapter2.notifyItemChanged(getViewModel$3().getArticlesMentioned().indexOf(pageSummary2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        Resource resource = (Resource) getViewModel$3()._gameState.getValue();
        if (resource instanceof OnThisDayGameViewModel.GameEnded) {
            OnThisDayGameViewModel.GameStatistics gameStatistics = ((OnThisDayGameViewModel.GameEnded) resource).gameStatistics;
            ItemNotificationBinding itemNotificationBinding = this._binding;
            itemNotificationBinding.getClass();
            ((ComposeView) itemNotificationBinding.notificationTitle).setContent(new ComposableLambdaImpl(new OnThisDayGameResultFragment$$ExternalSyntheticLambda0(gameStatistics, this, 0), true, -968093979));
        }
    }

    public final void updateOnLoading$1() {
        ItemNotificationBinding itemNotificationBinding = this._binding;
        itemNotificationBinding.getClass();
        ((WikiErrorView) itemNotificationBinding.notificationTime).setVisibility(8);
        ItemNotificationBinding itemNotificationBinding2 = this._binding;
        itemNotificationBinding2.getClass();
        ((NestedScrollView) itemNotificationBinding2.notificationWikiCodeImage).setVisibility(8);
        ItemNotificationBinding itemNotificationBinding3 = this._binding;
        itemNotificationBinding3.getClass();
        ((LinearProgressIndicator) itemNotificationBinding3.notificationItemImage).setVisibility(0);
    }
}
