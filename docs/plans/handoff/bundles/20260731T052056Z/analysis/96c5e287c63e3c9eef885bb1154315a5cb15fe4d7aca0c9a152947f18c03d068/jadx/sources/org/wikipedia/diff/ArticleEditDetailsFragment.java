package org.wikipedia.diff;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.helper.widget.Flow;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.TextInputLayout;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Options;
import okio.Path;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.databinding.FragmentArticleEditDetailsBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.dataclient.restbase.DiffResponse;
import org.wikipedia.dataclient.restbase.Revision;
import org.wikipedia.dataclient.rollback.Rollback;
import org.wikipedia.dataclient.rollback.RollbackPostResponse;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.edit.Edit;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.feed.news.NewsFragment$$ExternalSyntheticLambda0;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsVandalismPatrolFragment;
import org.wikipedia.talk.TalkReplyActivity$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.talk.UserTalkPopupHelper;
import org.wikipedia.talk.template.TalkTemplatesActivity;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda0;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda8;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistExpiryDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lorg/wikipedia/diff/ArticleEditDetailsFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "org/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArticleEditDetailsFragment extends Fragment implements WatchlistExpiryDialog.Callback, MenuProvider {
    public FragmentArticleEditDetailsBinding _binding;
    public final NewsFragment$$ExternalSyntheticLambda0 actionBarOffsetChangedListener;
    public final ArticleEditDetailsFragment$$ExternalSyntheticLambda3 openQualityAndIntentFiltersPage;
    public final Fragment.AnonymousClass10 requestTalk;
    public final MainFragment$$ExternalSyntheticLambda5 sequentialTooltipRunnable;
    public final Request.Builder viewModel$delegate;

    public ArticleEditDetailsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(3, new HomeFragment$special$$inlined$viewModels$default$2(2, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(ArticleEditDetailsViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 9), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 2), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 10));
        this.actionBarOffsetChangedListener = new NewsFragment$$ExternalSyntheticLambda0(1, this);
        this.requestTalk = (Fragment.AnonymousClass10) registerForActivityResult(new ArticleEditDetailsFragment$$ExternalSyntheticLambda30(this), new FragmentManager$FragmentIntentSenderContract(3));
        this.sequentialTooltipRunnable = new MainFragment$$ExternalSyntheticLambda5(5, this);
        this.openQualityAndIntentFiltersPage = new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, 0);
    }

    public final SuggestedEditsVandalismPatrolFragment callback() {
        ComponentCallbacks activity;
        if (SuggestedEditsVandalismPatrolFragment.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (SuggestedEditsVandalismPatrolFragment.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (SuggestedEditsVandalismPatrolFragment.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = SuggestedEditsVandalismPatrolFragment.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (SuggestedEditsVandalismPatrolFragment) activity;
    }

    public final String getSharableDiffUrl() {
        return getViewModel().pageTitle.getWebApiUrl("diff=" + getViewModel().revisionToId + "&oldid=" + getViewModel().revisionFromId + "&variant=" + getViewModel().pageTitle.wikiSite.languageCode);
    }

    public final ArticleEditDetailsViewModel getViewModel() {
        return (ArticleEditDetailsViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_edit_details, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_article_edit_details, viewGroup, false);
        int i = R.id.app_bar_layout;
        AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.app_bar_layout);
        if (appBarLayout != null) {
            i = R.id.articleTitleContainer;
            if (((ConstraintLayout) Room.findChildViewById(inflate, R.id.articleTitleContainer)) != null) {
                i = R.id.articleTitleDivider;
                View findChildViewById = Room.findChildViewById(inflate, R.id.articleTitleDivider);
                if (findChildViewById != null) {
                    i = R.id.articleTitleView;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.articleTitleView);
                    if (textView != null) {
                        i = R.id.collapsing_toolbar_layout;
                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) Room.findChildViewById(inflate, R.id.collapsing_toolbar_layout);
                        if (collapsingToolbarLayout != null) {
                            i = R.id.contentContainer;
                            if (((LinearLayout) Room.findChildViewById(inflate, R.id.contentContainer)) != null) {
                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
                                i = R.id.diffBarrier;
                                if (((Barrier) Room.findChildViewById(inflate, R.id.diffBarrier)) != null) {
                                    i = R.id.diffCharacterCountView;
                                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.diffCharacterCountView);
                                    if (textView2 != null) {
                                        i = R.id.diffDivider;
                                        View findChildViewById2 = Room.findChildViewById(inflate, R.id.diffDivider);
                                        if (findChildViewById2 != null) {
                                            i = R.id.diffRecyclerView;
                                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.diffRecyclerView);
                                            if (recyclerView != null) {
                                                i = R.id.diffUnavailableContainer;
                                                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.diffUnavailableContainer);
                                                if (linearLayout != null) {
                                                    i = R.id.diffUnavailableText;
                                                    if (((TextView) Room.findChildViewById(inflate, R.id.diffUnavailableText)) != null) {
                                                        i = R.id.errorView;
                                                        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
                                                        if (wikiErrorView != null) {
                                                            i = R.id.fromToDivider;
                                                            View findChildViewById3 = Room.findChildViewById(inflate, R.id.fromToDivider);
                                                            if (findChildViewById3 != null) {
                                                                i = R.id.guideLineMiddle;
                                                                if (((Guideline) Room.findChildViewById(inflate, R.id.guideLineMiddle)) != null) {
                                                                    i = R.id.navTabContainer;
                                                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.navTabContainer);
                                                                    if (linearLayout2 != null) {
                                                                        i = R.id.newerIdButton;
                                                                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.newerIdButton);
                                                                        if (imageView != null) {
                                                                            i = R.id.olderIdButton;
                                                                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.olderIdButton);
                                                                            if (imageView2 != null) {
                                                                                i = R.id.oresDamagingButton;
                                                                                MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.oresDamagingButton);
                                                                                if (materialButton != null) {
                                                                                    i = R.id.oresGoodFaithButton;
                                                                                    MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.oresGoodFaithButton);
                                                                                    if (materialButton2 != null) {
                                                                                        i = R.id.overlayArticleTitleDivider;
                                                                                        View findChildViewById4 = Room.findChildViewById(inflate, R.id.overlayArticleTitleDivider);
                                                                                        if (findChildViewById4 != null) {
                                                                                            i = R.id.overlayDiffDivider;
                                                                                            View findChildViewById5 = Room.findChildViewById(inflate, R.id.overlayDiffDivider);
                                                                                            if (findChildViewById5 != null) {
                                                                                                i = R.id.overlayFromToDivider;
                                                                                                View findChildViewById6 = Room.findChildViewById(inflate, R.id.overlayFromToDivider);
                                                                                                if (findChildViewById6 != null) {
                                                                                                    i = R.id.overlayGuideLineMiddle;
                                                                                                    if (((Guideline) Room.findChildViewById(inflate, R.id.overlayGuideLineMiddle)) != null) {
                                                                                                        i = R.id.overlayRevisionDetailsView;
                                                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.overlayRevisionDetailsView);
                                                                                                        if (constraintLayout != null) {
                                                                                                            i = R.id.overlayRevisionFromTimestamp;
                                                                                                            TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.overlayRevisionFromTimestamp);
                                                                                                            if (textView3 != null) {
                                                                                                                i = R.id.overlayRevisionFromTitleText;
                                                                                                                if (((TextView) Room.findChildViewById(inflate, R.id.overlayRevisionFromTitleText)) != null) {
                                                                                                                    i = R.id.overlayRevisionToTimestamp;
                                                                                                                    TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.overlayRevisionToTimestamp);
                                                                                                                    if (textView4 != null) {
                                                                                                                        i = R.id.overlayRevisionToTitleText;
                                                                                                                        if (((TextView) Room.findChildViewById(inflate, R.id.overlayRevisionToTitleText)) != null) {
                                                                                                                            i = R.id.progressBar;
                                                                                                                            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                                                                                                                            if (linearProgressIndicator != null) {
                                                                                                                                i = R.id.revisionDetailsView;
                                                                                                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) Room.findChildViewById(inflate, R.id.revisionDetailsView);
                                                                                                                                if (constraintLayout2 != null) {
                                                                                                                                    i = R.id.revisionFromEditComment;
                                                                                                                                    GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.revisionFromEditComment);
                                                                                                                                    if (goneIfEmptyTextView != null) {
                                                                                                                                        i = R.id.revisionFromTimestamp;
                                                                                                                                        TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.revisionFromTimestamp);
                                                                                                                                        if (textView5 != null) {
                                                                                                                                            i = R.id.revisionFromTitleText;
                                                                                                                                            if (((TextView) Room.findChildViewById(inflate, R.id.revisionFromTitleText)) != null) {
                                                                                                                                                i = R.id.revisionToEditComment;
                                                                                                                                                GoneIfEmptyTextView goneIfEmptyTextView2 = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.revisionToEditComment);
                                                                                                                                                if (goneIfEmptyTextView2 != null) {
                                                                                                                                                    i = R.id.revisionToTimestamp;
                                                                                                                                                    TextView textView6 = (TextView) Room.findChildViewById(inflate, R.id.revisionToTimestamp);
                                                                                                                                                    if (textView6 != null) {
                                                                                                                                                        i = R.id.revisionToTitleText;
                                                                                                                                                        if (((TextView) Room.findChildViewById(inflate, R.id.revisionToTitleText)) != null) {
                                                                                                                                                            i = R.id.talkButton;
                                                                                                                                                            FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.talkButton);
                                                                                                                                                            if (frameLayout != null) {
                                                                                                                                                                i = R.id.talkIcon;
                                                                                                                                                                if (((ImageView) Room.findChildViewById(inflate, R.id.talkIcon)) != null) {
                                                                                                                                                                    i = R.id.thankButton;
                                                                                                                                                                    FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.thankButton);
                                                                                                                                                                    if (frameLayout2 != null) {
                                                                                                                                                                        i = R.id.thankIcon;
                                                                                                                                                                        ImageView imageView3 = (ImageView) Room.findChildViewById(inflate, R.id.thankIcon);
                                                                                                                                                                        if (imageView3 != null) {
                                                                                                                                                                            i = R.id.thanksDivider;
                                                                                                                                                                            View findChildViewById7 = Room.findChildViewById(inflate, R.id.thanksDivider);
                                                                                                                                                                            if (findChildViewById7 != null) {
                                                                                                                                                                                i = R.id.undoButton;
                                                                                                                                                                                FrameLayout frameLayout3 = (FrameLayout) Room.findChildViewById(inflate, R.id.undoButton);
                                                                                                                                                                                if (frameLayout3 != null) {
                                                                                                                                                                                    i = R.id.undoIcon;
                                                                                                                                                                                    if (((ImageView) Room.findChildViewById(inflate, R.id.undoIcon)) != null) {
                                                                                                                                                                                        i = R.id.undoLabel;
                                                                                                                                                                                        TextView textView7 = (TextView) Room.findChildViewById(inflate, R.id.undoLabel);
                                                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                                                            i = R.id.undoRollbackButtonContainer;
                                                                                                                                                                                            if (((Flow) Room.findChildViewById(inflate, R.id.undoRollbackButtonContainer)) != null) {
                                                                                                                                                                                                i = R.id.usernameFromButton;
                                                                                                                                                                                                MaterialButton materialButton3 = (MaterialButton) Room.findChildViewById(inflate, R.id.usernameFromButton);
                                                                                                                                                                                                if (materialButton3 != null) {
                                                                                                                                                                                                    i = R.id.usernameToButton;
                                                                                                                                                                                                    MaterialButton materialButton4 = (MaterialButton) Room.findChildViewById(inflate, R.id.usernameToButton);
                                                                                                                                                                                                    if (materialButton4 != null) {
                                                                                                                                                                                                        i = R.id.watchButton;
                                                                                                                                                                                                        FrameLayout frameLayout4 = (FrameLayout) Room.findChildViewById(inflate, R.id.watchButton);
                                                                                                                                                                                                        if (frameLayout4 != null) {
                                                                                                                                                                                                            i = R.id.watchIcon;
                                                                                                                                                                                                            ImageView imageView4 = (ImageView) Room.findChildViewById(inflate, R.id.watchIcon);
                                                                                                                                                                                                            if (imageView4 != null) {
                                                                                                                                                                                                                i = R.id.watchLabel;
                                                                                                                                                                                                                TextView textView8 = (TextView) Room.findChildViewById(inflate, R.id.watchLabel);
                                                                                                                                                                                                                if (textView8 != null) {
                                                                                                                                                                                                                    this._binding = new FragmentArticleEditDetailsBinding(coordinatorLayout, appBarLayout, findChildViewById, textView, collapsingToolbarLayout, textView2, findChildViewById2, recyclerView, linearLayout, wikiErrorView, findChildViewById3, linearLayout2, imageView, imageView2, materialButton, materialButton2, findChildViewById4, findChildViewById5, findChildViewById6, constraintLayout, textView3, textView4, linearProgressIndicator, constraintLayout2, goneIfEmptyTextView, textView5, goneIfEmptyTextView2, textView6, frameLayout, frameLayout2, imageView3, findChildViewById7, frameLayout3, textView7, materialButton3, materialButton4, frameLayout4, imageView4, textView8);
                                                                                                                                                                                                                    requireContext();
                                                                                                                                                                                                                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                                                                                                                                                                                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
                                                                                                                                                                                                                    fragmentArticleEditDetailsBinding.getClass();
                                                                                                                                                                                                                    ImageView imageView5 = fragmentArticleEditDetailsBinding.newerIdButton;
                                                                                                                                                                                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
                                                                                                                                                                                                                    fragmentArticleEditDetailsBinding2.getClass();
                                                                                                                                                                                                                    View[] viewArr = {imageView5, fragmentArticleEditDetailsBinding2.olderIdButton};
                                                                                                                                                                                                                    for (int i2 = 0; i2 < 2; i2++) {
                                                                                                                                                                                                                        View view = viewArr[i2];
                                                                                                                                                                                                                        RegexKt.setTooltipText(view, view.getContentDescription());
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
                                                                                                                                                                                                                    fragmentArticleEditDetailsBinding3.getClass();
                                                                                                                                                                                                                    CoordinatorLayout coordinatorLayout2 = fragmentArticleEditDetailsBinding3.rootView;
                                                                                                                                                                                                                    coordinatorLayout2.getClass();
                                                                                                                                                                                                                    return coordinatorLayout2;
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
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        fragmentArticleEditDetailsBinding.appBarLayout.removeOnOffsetChangedListener(this.actionBarOffsetChangedListener);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        fragmentArticleEditDetailsBinding2.rootView.removeCallbacks(this.sequentialTooltipRunnable);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // org.wikipedia.watchlist.WatchlistExpiryDialog.Callback
    public final void onExpiryChanged(WatchlistExpiry watchlistExpiry) {
        sendPatrollerExperienceEvent("expiry_".concat(StringsKt__StringsJVMKt.replace$default(watchlistExpiry.getExpiry(), " ", "_")), "pt_watchlist", "");
        updateWatchButton(watchlistExpiry != WatchlistExpiry.NEVER);
        showFeedbackOptionsDialog(false);
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_share_edit) {
            sendPatrollerExperienceEvent("top_menu_share_click", "pt_edit", "");
            Context requireContext = requireContext();
            StringUtil stringUtil = StringUtil.INSTANCE;
            ShareUtil.shareText(requireContext, StringUtil.fromHtml(getViewModel().pageTitle.getDisplayText()).toString(), getSharableDiffUrl());
            return true;
        }
        if (itemId == R.id.menu_copy_link_to_clipboard) {
            sendPatrollerExperienceEvent("top_menu_copy_click", "pt_edit", "");
            String sharableDiffUrl = getSharableDiffUrl();
            ClipboardManager clipboardManager = (ClipboardManager) requireContext().getSystemService(ClipboardManager.class);
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(ClipData.newPlainText(null, sharableDiffUrl));
            }
            ShareUtil.showMessage(R.string.address_copied, this);
            return true;
        }
        if (itemId == R.id.menu_view_edit_history) {
            sendPatrollerExperienceEvent("top_menu_history_click", "pt_edit", "");
            int i = EditHistoryListActivity.$r8$clinit;
            startActivity(Options.Companion.newIntent(requireContext(), getViewModel().pageTitle), null);
            return true;
        }
        if (itemId == R.id.menu_learn_more) {
            sendPatrollerExperienceEvent("top_menu_learn_click", "pt_edit", "");
            Context requireContext2 = requireContext();
            String string = requireContext2.getString(R.string.android_app_edit_help_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(requireContext2, parse);
            return true;
        }
        if (itemId == R.id.menu_report_feature) {
            sendPatrollerExperienceEvent("top_menu_feedback_click", "pt_edit", "");
            showFeedbackOptionsDialog(true);
            return true;
        }
        if (itemId != R.id.menu_saved_messages) {
            return false;
        }
        sendPatrollerExperienceEvent("diff_saved_init", "pt_warning_messages", "");
        PageTitle pageTitle = new PageTitle(UserTalkAliasData.valueFor(getViewModel().pageTitle.wikiSite.languageCode), getViewModel().pageTitle.getText(), getViewModel().pageTitle.wikiSite);
        AppCompatActivity requireActivity = requireActivity();
        int i2 = TalkTemplatesActivity.$r8$clinit;
        requireActivity.startActivity(Path.Companion.newIntent$default(requireContext(), pageTitle, 0L, 0L, 24));
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        menu.findItem(R.id.menu_view_edit_history).setVisible(getViewModel().fromRecentEdits);
        menu.findItem(R.id.menu_report_feature).setVisible(getViewModel().fromRecentEdits);
        menu.findItem(R.id.menu_learn_more).setVisible(getViewModel().fromRecentEdits);
        menu.findItem(R.id.menu_saved_messages).setVisible(getViewModel().fromRecentEdits);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        final int i = 1;
        fragmentArticleEditDetailsBinding.articleTitleView.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        final int i2 = 2;
        fragmentArticleEditDetailsBinding2.newerIdButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i2));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
        fragmentArticleEditDetailsBinding3.getClass();
        final int i3 = 3;
        fragmentArticleEditDetailsBinding3.olderIdButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i3));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding4 = this._binding;
        fragmentArticleEditDetailsBinding4.getClass();
        final int i4 = 4;
        fragmentArticleEditDetailsBinding4.usernameFromButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i4));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding5 = this._binding;
        fragmentArticleEditDetailsBinding5.getClass();
        final int i5 = 5;
        fragmentArticleEditDetailsBinding5.usernameToButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i5));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding6 = this._binding;
        fragmentArticleEditDetailsBinding6.getClass();
        final int i6 = 6;
        fragmentArticleEditDetailsBinding6.thankButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i6));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding7 = this._binding;
        fragmentArticleEditDetailsBinding7.getClass();
        final int i7 = 7;
        fragmentArticleEditDetailsBinding7.undoButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i7));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding8 = this._binding;
        fragmentArticleEditDetailsBinding8.getClass();
        final int i8 = 8;
        fragmentArticleEditDetailsBinding8.watchButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, i8));
        final int i9 = 0;
        updateWatchButton(false);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding9 = this._binding;
        fragmentArticleEditDetailsBinding9.getClass();
        fragmentArticleEditDetailsBinding9.talkButton.setOnClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, 9));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding10 = this._binding;
        fragmentArticleEditDetailsBinding10.getClass();
        fragmentArticleEditDetailsBinding10.errorView.setBackClickListener(new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(this, 10));
        setLoadingState();
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        if (bundle == null) {
            EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
            PageTitle pageTitle = getViewModel().pageTitle;
            ViewSizeResolver$CC.m(companion, pageTitle, "init", "other", pageTitle);
        }
        if (!getViewModel().fromRecentEdits) {
            ContextsKt supportActionBar = requireActivity().getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setTitle(getString(R.string.revision_diff_compare));
            }
            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding11 = this._binding;
            fragmentArticleEditDetailsBinding11.getClass();
            TextView textView = fragmentArticleEditDetailsBinding11.articleTitleView;
            StringUtil stringUtil = StringUtil.INSTANCE;
            textView.setText(StringUtil.fromHtml(getViewModel().pageTitle.getDisplayText()));
        }
        getViewModel().watchedStatus.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i9;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final char c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i14 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i14) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().revisionDetails.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i4;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().singleRevisionText.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i5;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().thankStatus.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i6;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().watchResponse.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i7;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().undoEditResponse.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i8;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().rollbackRights.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().rollbackResponse.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i2;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        getViewModel().diffText.observe(getViewLifecycleOwner(), new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ ArticleEditDetailsFragment f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i10;
                MwQueryResult.OresItem oresItem;
                MwQueryResult.OresItem oresItem2;
                int i11 = i3;
                final int i12 = 3;
                final int i13 = 2;
                char c = 1;
                DiffUtil$DiffLine diffUtil$DiffLine = null;
                Unit unit = Unit.INSTANCE;
                final ArticleEditDetailsFragment articleEditDetailsFragment = this.f$0;
                switch (i11) {
                    case 0:
                        Resource resource = (Resource) obj;
                        if (resource instanceof Resource.Success) {
                            String str = ((MwQueryPage) ((Resource.Success) resource).data).watchlistExpiry;
                            articleEditDetailsFragment.updateWatchButton(((str == null || str.length() == 0) ? 1 : 0) ^ 1);
                        } else if (resource instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    case 1:
                        Resource resource2 = (Resource) obj;
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding12.getClass();
                        fragmentArticleEditDetailsBinding12.progressBar.setVisibility(8);
                        if (resource2 instanceof Resource.Success) {
                            articleEditDetailsFragment.updateActionButtons();
                            break;
                        } else if (resource2 instanceof Resource.Error) {
                            Throwable th = ((Resource.Error) resource2).throwable;
                            th.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th);
                            break;
                        }
                        break;
                    case 2:
                        Resource resource3 = (Resource) obj;
                        resource3.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding13 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding13.getClass();
                        fragmentArticleEditDetailsBinding13.progressBar.setVisibility(8);
                        if (resource3 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle2 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion2.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle2, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel = articleEditDetailsFragment.getViewModel();
                            RollbackPostResponse rollbackPostResponse = (RollbackPostResponse) ((Resource.Success) resource3).data;
                            Rollback rollback = rollbackPostResponse.rollback;
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel, rollback != null ? rollback.revision : 0L, -1L, (Continuation) null), 2);
                            Rollback rollback2 = rollbackPostResponse.rollback;
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("rollback_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(rollback2 != null ? rollback2.revision : 0L), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity = articleEditDetailsFragment.requireActivity();
                            String string = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_rollback_success);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            final int c2 = c == true ? 1 : 0;
                            makeSnackbar$default.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = c2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding14 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding14.getClass();
                            makeSnackbar$default.setAnchorView(fragmentArticleEditDetailsBinding14.navTabContainer);
                            makeSnackbar$default.show();
                            SuggestedEditsVandalismPatrolFragment callback = articleEditDetailsFragment.callback();
                            if (callback != null) {
                                callback.publish();
                                break;
                            }
                        } else if (resource3 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle3 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion3, pageTitle3, "saveFailure", "other", pageTitle3);
                            Throwable th2 = ((Resource.Error) resource3).throwable;
                            th2.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th2);
                            break;
                        }
                        break;
                    case 3:
                        Resource resource4 = (Resource) obj;
                        if (resource4 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding15 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding15.getClass();
                            RecyclerView recyclerView = fragmentArticleEditDetailsBinding15.diffRecyclerView;
                            Context requireContext = articleEditDetailsFragment.requireContext();
                            List<DiffResponse.DiffItem> list = ((DiffResponse) ((Resource.Success) resource4).data).diff;
                            list.getClass();
                            ArrayList arrayList = new ArrayList();
                            for (DiffResponse.DiffItem diffItem : list) {
                                DiffUtil$DiffLine diffUtil$DiffLine2 = new DiffUtil$DiffLine(requireContext, diffItem);
                                int i14 = diffItem.type;
                                if (diffUtil$DiffLine != null) {
                                    int i15 = diffItem.lineNumber;
                                    DiffResponse.DiffItem diffItem2 = diffUtil$DiffLine.diff;
                                    int i16 = diffItem2.lineNumber;
                                    int i17 = diffItem2.type;
                                    int i18 = i15 - i16;
                                    if ((i18 == 1 && i17 == 1 && i14 == 1) || ((i18 == 1 && i17 == 0 && i14 == 0) || (i17 == 2 && i14 == 2))) {
                                        if (i15 > diffUtil$DiffLine.lineEnd) {
                                            diffUtil$DiffLine.lineEnd = i15;
                                        }
                                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine.parsedText).append('\n');
                                        spannableStringBuilder.append((CharSequence) diffUtil$DiffLine2.parsedText);
                                        diffUtil$DiffLine.parsedText = new SpannedString(spannableStringBuilder);
                                    }
                                }
                                arrayList.add(diffUtil$DiffLine2);
                                diffUtil$DiffLine = diffUtil$DiffLine2;
                            }
                            recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(arrayList));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding16 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding16.getClass();
                            fragmentArticleEditDetailsBinding16.diffRecyclerView.setVisibility(0);
                            articleEditDetailsFragment.updateActionButtons();
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding17 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding17.getClass();
                            fragmentArticleEditDetailsBinding17.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding18 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding18.getClass();
                            fragmentArticleEditDetailsBinding18.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource4 instanceof Resource.Error) {
                            Throwable th3 = ((Resource.Error) resource4).throwable;
                            if (!(th3 instanceof HttpStatusException) || ((HttpStatusException) th3).code != 403) {
                                articleEditDetailsFragment.setErrorState(th3);
                                break;
                            } else {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding19 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding19.getClass();
                                fragmentArticleEditDetailsBinding19.progressBar.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding20 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding20.getClass();
                                fragmentArticleEditDetailsBinding20.diffRecyclerView.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding21 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding21.getClass();
                                fragmentArticleEditDetailsBinding21.undoButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding22 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding22.getClass();
                                fragmentArticleEditDetailsBinding22.thankButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding23 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding23.getClass();
                                fragmentArticleEditDetailsBinding23.diffUnavailableContainer.setVisibility(0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        Resource resource5 = (Resource) obj;
                        if (resource5 instanceof Resource.Success) {
                            ArticleEditDetailsViewModel viewModel2 = articleEditDetailsFragment.getViewModel();
                            MwQueryPage.Revision revision = viewModel2.revisionFrom;
                            MwQueryPage.Revision revision2 = viewModel2.revisionTo;
                            revision2.getClass();
                            if (revision != null) {
                                int i19 = revision2.size;
                                MwQueryPage.Revision revision3 = viewModel2.revisionFrom;
                                revision3.getClass();
                                i10 = i19 - revision3.size;
                            } else {
                                i10 = revision2.size;
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding24 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding24.getClass();
                            TextView textView2 = fragmentArticleEditDetailsBinding24.diffCharacterCountView;
                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                            textView2.setText(StringUtil.getDiffBytesText(articleEditDetailsFragment.requireContext(), i10));
                            if (i10 < 0) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding25 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding25.getClass();
                                TextView textView3 = fragmentArticleEditDetailsBinding25.diffCharacterCountView;
                                Context requireContext2 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue = new TypedValue();
                                if (!requireContext2.getTheme().resolveAttribute(R.attr.destructive_color, typedValue, true)) {
                                    typedValue = null;
                                }
                                if (typedValue == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969027");
                                    break;
                                } else {
                                    textView3.setTextColor(typedValue.data);
                                }
                            } else {
                                int i20 = i10 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding26 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding26.getClass();
                                TextView textView4 = fragmentArticleEditDetailsBinding26.diffCharacterCountView;
                                Context requireContext3 = articleEditDetailsFragment.requireContext();
                                TypedValue typedValue2 = new TypedValue();
                                if (!requireContext3.getTheme().resolveAttribute(i20, typedValue2, true)) {
                                    typedValue2 = null;
                                }
                                if (typedValue2 == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i20, "Attribute not found; ID="));
                                    break;
                                } else {
                                    textView4.setTextColor(typedValue2.data);
                                }
                            }
                            ArticleEditDetailsFragment$$ExternalSyntheticLambda3 articleEditDetailsFragment$$ExternalSyntheticLambda3 = articleEditDetailsFragment.openQualityAndIntentFiltersPage;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding27 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding27.getClass();
                            fragmentArticleEditDetailsBinding27.articleTitleView.setText(StringUtil.fromHtml(articleEditDetailsFragment.getViewModel().pageTitle.getDisplayText()));
                            MwQueryPage.Revision revision4 = articleEditDetailsFragment.getViewModel().revisionFrom;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding28 = articleEditDetailsFragment._binding;
                            if (revision4 != null) {
                                fragmentArticleEditDetailsBinding28.getClass();
                                MaterialButton materialButton = fragmentArticleEditDetailsBinding28.usernameFromButton;
                                MwQueryPage.Revision revision5 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision5.getClass();
                                materialButton.setText(revision5.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding29 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding29.getClass();
                                TextView textView5 = fragmentArticleEditDetailsBinding29.revisionFromTimestamp;
                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                Context requireContext4 = articleEditDetailsFragment.requireContext();
                                MwQueryPage.Revision revision6 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision6.getClass();
                                textView5.setText(DateUtil.getTimeAndDateString(requireContext4, revision6.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding30 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding30.getClass();
                                GoneIfEmptyTextView goneIfEmptyTextView = fragmentArticleEditDetailsBinding30.revisionFromEditComment;
                                MwQueryPage.Revision revision7 = articleEditDetailsFragment.getViewModel().revisionFrom;
                                revision7.getClass();
                                goneIfEmptyTextView.setText(StringUtil.fromHtml(StringsKt.trim(revision7.parsedcomment).toString()));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding31 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding31.getClass();
                                fragmentArticleEditDetailsBinding31.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding32 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding32.getClass();
                                fragmentArticleEditDetailsBinding32.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.progressive_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding33 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding33.getClass();
                                fragmentArticleEditDetailsBinding33.usernameFromButton.setVisibility(0);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding34 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding34.getClass();
                                fragmentArticleEditDetailsBinding34.revisionFromEditComment.setVisibility(0);
                            } else {
                                fragmentArticleEditDetailsBinding28.getClass();
                                fragmentArticleEditDetailsBinding28.usernameFromButton.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding35 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding35.getClass();
                                fragmentArticleEditDetailsBinding35.revisionFromEditComment.setVisibility(8);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding36 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding36.getClass();
                                fragmentArticleEditDetailsBinding36.revisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding37 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding37.getClass();
                                fragmentArticleEditDetailsBinding37.overlayRevisionFromTimestamp.setTextColor(Cache.Companion.getThemedColor(articleEditDetailsFragment.requireContext(), R.attr.placeholder_color));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding38 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding38.getClass();
                                fragmentArticleEditDetailsBinding38.revisionFromTimestamp.setText(articleEditDetailsFragment.getString(R.string.revision_initial_none));
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding39 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding39.getClass();
                            TextView textView6 = fragmentArticleEditDetailsBinding39.overlayRevisionFromTimestamp;
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding40 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding40.getClass();
                            textView6.setText(fragmentArticleEditDetailsBinding40.revisionFromTimestamp.getText());
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding41 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding41.getClass();
                            fragmentArticleEditDetailsBinding41.oresDamagingButton.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding42 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding42.getClass();
                            fragmentArticleEditDetailsBinding42.oresGoodFaithButton.setVisibility(8);
                            MwQueryPage.Revision revision8 = articleEditDetailsFragment.getViewModel().revisionTo;
                            if (revision8 != null) {
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding43 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding43.getClass();
                                fragmentArticleEditDetailsBinding43.usernameToButton.setText(revision8.user);
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding44 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding44.getClass();
                                TextView textView7 = fragmentArticleEditDetailsBinding44.revisionToTimestamp;
                                ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                                textView7.setText(DateUtil.getTimeAndDateString(articleEditDetailsFragment.requireContext(), revision8.timeStamp));
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding45 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding45.getClass();
                                TextView textView8 = fragmentArticleEditDetailsBinding45.overlayRevisionToTimestamp;
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding46 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding46.getClass();
                                textView8.setText(fragmentArticleEditDetailsBinding46.revisionToTimestamp.getText());
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding47 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding47.getClass();
                                fragmentArticleEditDetailsBinding47.revisionToEditComment.setText(StringUtil.fromHtml(StringsKt.trim(revision8.parsedcomment).toString()));
                                if (revision8.getOres() != null && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding48 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding48.getClass();
                                    fragmentArticleEditDetailsBinding48.oresDamagingButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding49 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding49.getClass();
                                    MaterialButton materialButton2 = fragmentArticleEditDetailsBinding49.oresDamagingButton;
                                    MwQueryResult.OresResult ores = revision8.getOres();
                                    float f = RecyclerView.DECELERATION_RATE;
                                    materialButton2.setText(articleEditDetailsFragment.getString(R.string.edit_damage, ((int) (((ores == null || (oresItem2 = ores.damaging) == null) ? 0.0f : oresItem2.trueProb) * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding50 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding50.getClass();
                                    fragmentArticleEditDetailsBinding50.oresDamagingButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding51 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding51.getClass();
                                    fragmentArticleEditDetailsBinding51.oresGoodFaithButton.setVisibility(0);
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding52 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding52.getClass();
                                    MaterialButton materialButton3 = fragmentArticleEditDetailsBinding52.oresGoodFaithButton;
                                    MwQueryResult.OresResult ores2 = revision8.getOres();
                                    if (ores2 != null && (oresItem = ores2.goodfaith) != null) {
                                        f = oresItem.trueProb;
                                    }
                                    materialButton3.setText(articleEditDetailsFragment.getString(R.string.edit_intent, ((int) (f * 100.0f)) + "%"));
                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding53 = articleEditDetailsFragment._binding;
                                    fragmentArticleEditDetailsBinding53.getClass();
                                    fragmentArticleEditDetailsBinding53.oresGoodFaithButton.setOnClickListener(articleEditDetailsFragment$$ExternalSyntheticLambda3);
                                    MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = articleEditDetailsFragment.sequentialTooltipRunnable;
                                    Prefs prefs = Prefs.INSTANCE;
                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_show_sequential_recent_edits_diff_tooltip), true) && articleEditDetailsFragment.getViewModel().fromRecentEdits) {
                                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding54 = articleEditDetailsFragment._binding;
                                        fragmentArticleEditDetailsBinding54.getClass();
                                        if (fragmentArticleEditDetailsBinding54.oresDamagingButton.getVisibility() == 0) {
                                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding55 = articleEditDetailsFragment._binding;
                                            fragmentArticleEditDetailsBinding55.getClass();
                                            if (fragmentArticleEditDetailsBinding55.oresGoodFaithButton.getVisibility() == 0) {
                                                Fragment fragment = articleEditDetailsFragment.mParentFragment;
                                                SuggestedEditsCardsFragment suggestedEditsCardsFragment = (SuggestedEditsCardsFragment) NodeUtils.getAncestor(articleEditDetailsFragment);
                                                if (Intrinsics.areEqual(fragment, suggestedEditsCardsFragment != null ? suggestedEditsCardsFragment.topBaseChild() : null)) {
                                                    PrefsIoUtil.setBoolean(R.string.preference_key_show_sequential_recent_edits_diff_tooltip, false);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding56 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding56.getClass();
                                                    fragmentArticleEditDetailsBinding56.rootView.removeCallbacks(mainFragment$$ExternalSyntheticLambda5);
                                                    FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding57 = articleEditDetailsFragment._binding;
                                                    fragmentArticleEditDetailsBinding57.getClass();
                                                    fragmentArticleEditDetailsBinding57.rootView.postDelayed(mainFragment$$ExternalSyntheticLambda5, 500L);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding58 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding58.getClass();
                            fragmentArticleEditDetailsBinding58.olderIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding59 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding59.getClass();
                            fragmentArticleEditDetailsBinding59.newerIdButton.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding60 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding60.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding60.newerIdButton, !articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding61 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding61.getClass();
                            articleEditDetailsFragment.setEnableDisableTint(fragmentArticleEditDetailsBinding61.olderIdButton, articleEditDetailsFragment.getViewModel().revisionFromId == 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding62 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding62.getClass();
                            fragmentArticleEditDetailsBinding62.newerIdButton.setEnabled(articleEditDetailsFragment.getViewModel().canGoForward);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding63 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding63.getClass();
                            fragmentArticleEditDetailsBinding63.olderIdButton.setEnabled(articleEditDetailsFragment.getViewModel().revisionFromId != 0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding64 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding64.getClass();
                            fragmentArticleEditDetailsBinding64.thankIcon.setImageResource(R.drawable.ic_heart_outline_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding65 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding65.getClass();
                            fragmentArticleEditDetailsBinding65.revisionDetailsView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding66 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding66.getClass();
                            fragmentArticleEditDetailsBinding66.errorView.setVisibility(8);
                        } else if (resource5 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource5).throwable);
                        }
                        break;
                    case 5:
                        Resource resource6 = (Resource) obj;
                        if (resource6 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding67 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding67.getClass();
                            RecyclerView recyclerView2 = fragmentArticleEditDetailsBinding67.diffRecyclerView;
                            Context requireContext5 = articleEditDetailsFragment.requireContext();
                            Revision revision9 = (Revision) ((Resource.Success) resource6).data;
                            revision9.getClass();
                            recyclerView2.setAdapter(new DiffUtil$DiffLinesAdapter(Room.listOf(new DiffUtil$DiffLine(requireContext5, new DiffResponse.DiffItem(revision9.source, Room.listOf(new DiffResponse.HighlightRange()))))));
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding68 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding68.getClass();
                            fragmentArticleEditDetailsBinding68.diffRecyclerView.setVisibility(0);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding69 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding69.getClass();
                            fragmentArticleEditDetailsBinding69.progressBar.setVisibility(8);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding70 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding70.getClass();
                            fragmentArticleEditDetailsBinding70.navTabContainer.setVisibility(0);
                            break;
                        } else if (resource6 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource6).throwable);
                            break;
                        }
                        break;
                    case 6:
                        Resource resource7 = (Resource) obj;
                        resource7.getClass();
                        if (resource7 instanceof Resource.Success) {
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding71 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding71.getClass();
                            fragmentArticleEditDetailsBinding71.thankIcon.setImageResource(R.drawable.ic_heart_24);
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding72 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding72.getClass();
                            fragmentArticleEditDetailsBinding72.thankButton.setEnabled(false);
                            AppCompatActivity requireActivity2 = articleEditDetailsFragment.requireActivity();
                            MwQueryPage.Revision revision10 = articleEditDetailsFragment.getViewModel().revisionTo;
                            String string2 = articleEditDetailsFragment.getString(R.string.thank_success_message, revision10 != null ? revision10.user : null);
                            string2.getClass();
                            Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                            makeSnackbar$default2.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = i13;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding73 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding73.getClass();
                            makeSnackbar$default2.setAnchorView(fragmentArticleEditDetailsBinding73.navTabContainer);
                            makeSnackbar$default2.show();
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("thank_success", "pt_thank", "");
                            break;
                        } else if (resource7 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource7).throwable);
                            break;
                        }
                        break;
                    case 7:
                        Resource resource8 = (Resource) obj;
                        resource8.getClass();
                        if (resource8 instanceof Resource.Success) {
                            String str2 = (String) ((Pair) ((Resource.Success) resource8).data).second;
                            articleEditDetailsFragment.updateWatchButton(false);
                            if (!articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("unwatch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default3.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i12;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding74 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding74.getClass();
                                makeSnackbar$default3.setAnchorView(fragmentArticleEditDetailsBinding74.navTabContainer);
                                makeSnackbar$default3.show();
                            } else if (articleEditDetailsFragment.getViewModel().isWatched) {
                                articleEditDetailsFragment.sendPatrollerExperienceEvent("watch_success_toast", "pt_watchlist", "");
                                Snackbar makeSnackbar$default4 = ShareUtil.makeSnackbar$default(articleEditDetailsFragment.requireActivity(), str2, 0, 12);
                                makeSnackbar$default4.setAction(R.string.watchlist_page_add_to_watchlist_snackbar_action, new ArticleEditDetailsFragment$$ExternalSyntheticLambda3(articleEditDetailsFragment, 11));
                                final int i21 = 4;
                                makeSnackbar$default4.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                    @Override // com.google.android.material.snackbar.Snackbar.Callback
                                    public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                        int i142 = i21;
                                        ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                        switch (i142) {
                                            case 0:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 1:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 2:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            case 3:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                            default:
                                                if (articleEditDetailsFragment2.isAdded()) {
                                                    articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                    break;
                                                }
                                                break;
                                        }
                                    }
                                });
                                FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding75 = articleEditDetailsFragment._binding;
                                fragmentArticleEditDetailsBinding75.getClass();
                                makeSnackbar$default4.setAnchorView(fragmentArticleEditDetailsBinding75.navTabContainer);
                                makeSnackbar$default4.show();
                            }
                        } else if (resource8 instanceof Resource.Error) {
                            articleEditDetailsFragment.setErrorState(((Resource.Error) resource8).throwable);
                        }
                        articleEditDetailsFragment.requireActivity().invalidateOptionsMenu();
                        break;
                    default:
                        Resource resource9 = (Resource) obj;
                        resource9.getClass();
                        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding76 = articleEditDetailsFragment._binding;
                        fragmentArticleEditDetailsBinding76.getClass();
                        fragmentArticleEditDetailsBinding76.progressBar.setVisibility(8);
                        if (resource9 instanceof Resource.Success) {
                            EditAttemptStepEvent.Companion companion4 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle4 = articleEditDetailsFragment.getViewModel().pageTitle;
                            companion4.getClass();
                            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle4, "other");
                            articleEditDetailsFragment.setLoadingState();
                            ArticleEditDetailsViewModel viewModel3 = articleEditDetailsFragment.getViewModel();
                            Edit edit = (Edit) ((Resource.Success) resource9).data;
                            Edit.Result result = edit.edit;
                            result.getClass();
                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1(viewModel3, 3), null, new ArticleEditDetailsViewModel$getRevisionDetails$2(viewModel3, result.newRevId, -1L, (Continuation) null), 2);
                            articleEditDetailsFragment.sendPatrollerExperienceEvent("undo_success", "pt_edit", Cookie.Companion.getActionDataString$default(Long.valueOf(edit.edit.newRevId), null, null, null, null, null, null, null, null, 1022));
                            AppCompatActivity requireActivity3 = articleEditDetailsFragment.requireActivity();
                            String string3 = articleEditDetailsFragment.getString(R.string.patroller_tasks_patrol_edit_undo_success);
                            string3.getClass();
                            Snackbar makeSnackbar$default5 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                            makeSnackbar$default5.addCallback(new Snackbar.Callback() { // from class: org.wikipedia.diff.ArticleEditDetailsFragment$showUndoSnackbar$1
                                @Override // com.google.android.material.snackbar.Snackbar.Callback
                                public final void onDismissed(BaseTransientBottomBar baseTransientBottomBar) {
                                    int i142 = r2;
                                    ArticleEditDetailsFragment articleEditDetailsFragment2 = articleEditDetailsFragment;
                                    switch (i142) {
                                        case 0:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                        default:
                                            if (articleEditDetailsFragment2.isAdded()) {
                                                articleEditDetailsFragment2.showFeedbackOptionsDialog(false);
                                                break;
                                            }
                                            break;
                                    }
                                }
                            });
                            FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding77 = articleEditDetailsFragment._binding;
                            fragmentArticleEditDetailsBinding77.getClass();
                            makeSnackbar$default5.setAnchorView(fragmentArticleEditDetailsBinding77.navTabContainer);
                            makeSnackbar$default5.show();
                            SuggestedEditsVandalismPatrolFragment callback2 = articleEditDetailsFragment.callback();
                            if (callback2 != null) {
                                callback2.publish();
                                break;
                            }
                        } else if (resource9 instanceof Resource.Error) {
                            EditAttemptStepEvent.Companion companion5 = EditAttemptStepEvent.Companion;
                            PageTitle pageTitle5 = articleEditDetailsFragment.getViewModel().pageTitle;
                            ViewSizeResolver$CC.m(companion5, pageTitle5, "saveFailure", "other", pageTitle5);
                            Throwable th4 = ((Resource.Error) resource9).throwable;
                            th4.printStackTrace();
                            ShareUtil.showError$default(articleEditDetailsFragment.requireActivity(), th4);
                            break;
                        }
                        break;
                }
                return unit;
            }
        }, 1));
        BitmapsKt.setLayoutDirectionByLang(requireView(), getViewModel().pageTitle.wikiSite.languageCode);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding12 = this._binding;
        fragmentArticleEditDetailsBinding12.getClass();
        fragmentArticleEditDetailsBinding12.appBarLayout.addOnOffsetChangedListener(this.actionBarOffsetChangedListener);
    }

    public final void sendPatrollerExperienceEvent(String str, String str2, String str3) {
        if (getViewModel().fromRecentEdits) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(str, str2, str3, m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        }
    }

    public final void setEnableDisableTint(ImageView imageView, boolean z) {
        Context requireContext = requireContext();
        Context requireContext2 = requireContext();
        int i = z ? R.attr.inactive_color : R.attr.secondary_color;
        TypedValue typedValue = new TypedValue();
        if (!requireContext2.getTheme().resolveAttribute(i, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue != null) {
            imageView.setImageTintList(FileUtil.getColorStateList(requireContext, typedValue.resourceId));
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
        }
    }

    public final void setErrorState(Throwable th) {
        L.e(th);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        WikiErrorView wikiErrorView = fragmentArticleEditDetailsBinding.errorView;
        int i = WikiErrorView.$r8$clinit;
        wikiErrorView.setError(th, null);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        fragmentArticleEditDetailsBinding2.errorView.setVisibility(0);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
        fragmentArticleEditDetailsBinding3.getClass();
        fragmentArticleEditDetailsBinding3.revisionDetailsView.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding4 = this._binding;
        fragmentArticleEditDetailsBinding4.getClass();
        fragmentArticleEditDetailsBinding4.progressBar.setVisibility(8);
    }

    public final void setLoadingState() {
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        fragmentArticleEditDetailsBinding.progressBar.setVisibility(0);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        fragmentArticleEditDetailsBinding2.revisionDetailsView.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
        fragmentArticleEditDetailsBinding3.getClass();
        fragmentArticleEditDetailsBinding3.navTabContainer.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding4 = this._binding;
        fragmentArticleEditDetailsBinding4.getClass();
        fragmentArticleEditDetailsBinding4.diffRecyclerView.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding5 = this._binding;
        fragmentArticleEditDetailsBinding5.getClass();
        fragmentArticleEditDetailsBinding5.diffUnavailableContainer.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding6 = this._binding;
        fragmentArticleEditDetailsBinding6.getClass();
        fragmentArticleEditDetailsBinding6.thankButton.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding7 = this._binding;
        fragmentArticleEditDetailsBinding7.getClass();
        fragmentArticleEditDetailsBinding7.undoButton.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding8 = this._binding;
        fragmentArticleEditDetailsBinding8.getClass();
        fragmentArticleEditDetailsBinding8.olderIdButton.setVisibility(8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding9 = this._binding;
        fragmentArticleEditDetailsBinding9.getClass();
        fragmentArticleEditDetailsBinding9.newerIdButton.setVisibility(8);
    }

    public final void showFeedbackOptionsDialog(boolean z) {
        if (getViewModel().fromRecentEdits) {
            if (!z) {
                Prefs prefs = Prefs.INSTANCE;
                if (!Prefs.getShowOneTimeRecentEditsFeedbackForm()) {
                    return;
                }
            }
            Prefs prefs2 = Prefs.INSTANCE;
            if (Prefs.getShowOneTimeRecentEditsFeedbackForm()) {
                sendPatrollerExperienceEvent("toolbar_first_feedback", "pt_feedback", "");
            }
            AppCompatActivity requireActivity = requireActivity();
            Constants.InvokeSource invokeSource = Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS;
            invokeSource.getClass();
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ActivityTalkReplyBinding inflate = ActivityTalkReplyBinding.inflate(requireActivity.getLayoutInflater());
            inflate.replyNextButton.setText(requireActivity.getString(R.string.survey_dialog_title));
            inflate.learnMoreButton.setText(requireActivity.getString(R.string.survey_dialog_message));
            ((PlainPasteEditText) inflate.replySubjectText).setOnFocusChangeListener(new SurveyDialog$$ExternalSyntheticLambda0(0, inflate));
            SurveyDialog$$ExternalSyntheticLambda1 surveyDialog$$ExternalSyntheticLambda1 = new SurveyDialog$$ExternalSyntheticLambda1(ref$ObjectRef, requireActivity, invokeSource, 0);
            ((RadioButton) inflate.footerContainer).setOnClickListener(surveyDialog$$ExternalSyntheticLambda1);
            ((RadioButton) inflate.editKeyboardOverlayHeadings).setOnClickListener(surveyDialog$$ExternalSyntheticLambda1);
            ((RadioButton) inflate.progressBar).setOnClickListener(surveyDialog$$ExternalSyntheticLambda1);
            ((Button) inflate.rootView).setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(7, ref$ObjectRef));
            ((Button) inflate.threadItemView).setOnClickListener(surveyDialog$$ExternalSyntheticLambda1);
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            EventPlatformClient.submit(new AppInteractionEvent("impression", "feedback_form", "", ViewSizeResolver$CC.m(), Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity, R.style.AlertDialogTheme_AdjustResize);
            AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
            alertParams.mCancelable = false;
            alertParams.mView = (ScrollView) inflate.talkScrollContainer;
            ref$ObjectRef.element = materialAlertDialogBuilder.show();
        }
    }

    public final void showUndoDialog() {
        Button button;
        AppCompatActivity requireActivity = requireActivity();
        Constants.InvokeSource invokeSource = getViewModel().fromRecentEdits ? Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS : null;
        ArticleEditDetailsFragment$$ExternalSyntheticLambda30 articleEditDetailsFragment$$ExternalSyntheticLambda30 = new ArticleEditDetailsFragment$$ExternalSyntheticLambda30(this);
        UndoEditDialog undoEditDialog = new UndoEditDialog(requireActivity, 0);
        View inflate = LayoutInflater.from(requireActivity).inflate(R.layout.dialog_undo_edit, (ViewGroup) null, false);
        int i = R.id.text_input;
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.text_input);
        if (plainPasteEditText != null) {
            i = R.id.text_input_container;
            if (((TextInputLayout) Room.findChildViewById(inflate, R.id.text_input_container)) != null) {
                ScrollView scrollView = (ScrollView) inflate;
                undoEditDialog.binding = new ConnectionPool(27, scrollView, plainPasteEditText);
                ((AlertController.AlertParams) undoEditDialog.array).mView = scrollView;
                undoEditDialog.setPositiveButton(R.string.edit_undo, new SurveyDialog$$ExternalSyntheticLambda8(invokeSource, undoEditDialog, articleEditDetailsFragment$$ExternalSyntheticLambda30));
                undoEditDialog.setNegativeButton(R.string.text_input_dialog_cancel_button_text, new PageFragment$$ExternalSyntheticLambda28(1, invokeSource));
                plainPasteEditText.addTextChangedListener(new SearchView.AnonymousClass10(3, undoEditDialog));
                AlertDialog alertDialog = undoEditDialog.dialog;
                if (alertDialog != null && (button = alertDialog.mAlert.mButtonPositive) != null) {
                    button.setEnabled(false);
                }
                if (invokeSource == Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS) {
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("undo_summary_impression", "pt_edit", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                }
                undoEditDialog.show();
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public final void showUserPopupMenu(MwQueryPage.Revision revision, boolean z, View view) {
        if (revision != null) {
            UserTalkPopupHelper.INSTANCE.show(requireActivity(), new PageTitle(UserAliasData.valueFor(getViewModel().pageTitle.wikiSite.languageCode), revision.user, getViewModel().pageTitle.wikiSite), revision.isAnon, view, Constants.InvokeSource.DIFF_ACTIVITY, 33, z ? Long.valueOf(revision.revId) : null, Integer.valueOf(getViewModel().pageId), true);
        }
    }

    public final void updateActionButtons() {
        MwQueryPage.Revision revision;
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        int i = 8;
        fragmentArticleEditDetailsBinding.undoButton.setVisibility((getViewModel().revisionFrom == null || !Headers.Companion.isLoggedIn()) ? 8 : 0);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        fragmentArticleEditDetailsBinding2.thankButton.setEnabled(true);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
        fragmentArticleEditDetailsBinding3.getClass();
        FrameLayout frameLayout = fragmentArticleEditDetailsBinding3.thankButton;
        if (Headers.Companion.isLoggedIn()) {
            String userName = Headers.Companion.getUserName();
            MwQueryPage.Revision revision2 = getViewModel().revisionTo;
            if (!userName.equals(revision2 != null ? revision2.user : null) && (revision = getViewModel().revisionTo) != null && !revision.isAnon) {
                i = 0;
            }
        }
        frameLayout.setVisibility(i);
    }

    public final void updateWatchButton(boolean z) {
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding = this._binding;
        fragmentArticleEditDetailsBinding.getClass();
        fragmentArticleEditDetailsBinding.watchButton.setVisibility(Headers.Companion.isLoggedIn() ? 0 : 8);
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding2 = this._binding;
        fragmentArticleEditDetailsBinding2.getClass();
        fragmentArticleEditDetailsBinding2.watchLabel.setText(getString(getViewModel().isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch));
        FragmentArticleEditDetailsBinding fragmentArticleEditDetailsBinding3 = this._binding;
        fragmentArticleEditDetailsBinding3.getClass();
        fragmentArticleEditDetailsBinding3.watchIcon.setImageResource((!getViewModel().isWatched || z) ? !getViewModel().isWatched ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
