package org.wikipedia.suggestededits;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MenuProvider;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.snackbar.Snackbar;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.suggestededits.SuggestedEditsItemFragment;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageRecsFragment extends SuggestedEditsItemFragment implements MenuProvider {
    public MapChangeReceiver _binding;
    public BottomSheetBehavior bottomSheetBehavior;
    public boolean isImpressionLogged;
    public boolean isLoaded;
    public boolean isVisibleToUser;
    public final Fragment.AnonymousClass10 requestEdit;
    public long resumedMillis;
    public final Request.Builder viewModel$delegate;

    public SuggestedEditsImageRecsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(8, new WatchlistFragment$special$$inlined$viewModels$default$1(7, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsImageRecsFragmentViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 16), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 18), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 17));
        this.requestEdit = (Fragment.AnonymousClass10) registerForActivityResult(new SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public static String getActionStringForAnalytics$default(SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment, String str, String str2, Long l, int i) {
        String str3 = (i & 1) != 0 ? null : str;
        String str4 = (i & 2) != 0 ? null : str2;
        Long l2 = (i & 4) != 0 ? null : l;
        boolean z = (i & 8) == 0;
        GrowthImageSuggestion.ImageItem imageItem = suggestedEditsImageRecsFragment.getViewModel().uiState.$$delegate_0.getValue() instanceof Resource.Success ? (GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0) : null;
        return ImageRecommendationsEvent.Companion.getActionDataString$default(ImageRecommendationsEvent.Companion, imageItem != null ? imageItem.image : null, imageItem != null ? imageItem.source : null, String.valueOf(imageItem != null ? imageItem.projects : null), str4, str3, l2, null, null, z, 192);
    }

    public final SuggestedEditsItemFragment.Callback callback() {
        Object activity;
        if (SuggestedEditsItemFragment.Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (SuggestedEditsItemFragment.Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (SuggestedEditsItemFragment.Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = SuggestedEditsItemFragment.Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        activity.getClass();
        return (SuggestedEditsItemFragment.Callback) activity;
    }

    public final SuggestedEditsImageRecsFragmentViewModel getViewModel() {
        return (SuggestedEditsImageRecsFragmentViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final boolean onBackPressed() {
        MapChangeReceiver mapChangeReceiver = this._binding;
        mapChangeReceiver.getClass();
        if (((LinearLayout) mapChangeReceiver.onCanRemoveUnusedStyleImageListenerList).getVisibility() == 0) {
            ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
            String actionStringForAnalytics$default = getActionStringForAnalytics$default(this, null, null, null, 15);
            String str = getViewModel().langCode;
            companion.getClass();
            ImageRecommendationsEvent.Companion.logAction("back", "nosuggestions_dialog", actionStringForAnalytics$default, str);
            return true;
        }
        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
        String actionStringForAnalytics$default2 = getActionStringForAnalytics$default(this, null, null, null, 15);
        String str2 = getViewModel().langCode;
        companion2.getClass();
        ImageRecommendationsEvent.Companion.logAction("back", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_image_recommendations, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_image_recs_item, viewGroup, false);
        int i = R.id.acceptButton;
        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.acceptButton);
        if (materialButton != null) {
            i = R.id.articleContentContainer;
            NestedScrollView nestedScrollView = (NestedScrollView) Room.findChildViewById(inflate, R.id.articleContentContainer);
            if (nestedScrollView != null) {
                i = R.id.articleDescription;
                GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.articleDescription);
                if (goneIfEmptyTextView != null) {
                    i = R.id.articleDivider;
                    View findChildViewById = Room.findChildViewById(inflate, R.id.articleDivider);
                    if (findChildViewById != null) {
                        i = R.id.articleExtract;
                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.articleExtract);
                        if (textView != null) {
                            i = R.id.articleScrollSpacer;
                            Space space = (Space) Room.findChildViewById(inflate, R.id.articleScrollSpacer);
                            if (space != null) {
                                i = R.id.articleTitle;
                                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.articleTitle);
                                if (textView2 != null) {
                                    i = R.id.bottomSheetCoordinatorLayout;
                                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) Room.findChildViewById(inflate, R.id.bottomSheetCoordinatorLayout);
                                    if (coordinatorLayout != null) {
                                        i = R.id.cardItemErrorView;
                                        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.cardItemErrorView);
                                        if (wikiErrorView != null) {
                                            i = R.id.cardItemProgressBar;
                                            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.cardItemProgressBar);
                                            if (progressBar != null) {
                                                i = R.id.imageCaptionText;
                                                TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.imageCaptionText);
                                                if (textView3 != null) {
                                                    i = R.id.imageCard;
                                                    WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.imageCard);
                                                    if (wikiCardView != null) {
                                                        i = R.id.imageClickTarget;
                                                        if (((LinearLayout) Room.findChildViewById(inflate, R.id.imageClickTarget)) != null) {
                                                            i = R.id.imageFileNameText;
                                                            TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.imageFileNameText);
                                                            if (textView4 != null) {
                                                                i = R.id.imageInfoButton;
                                                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageInfoButton);
                                                                if (imageView != null) {
                                                                    i = R.id.imageRecommendationsDepletedContainer;
                                                                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.imageRecommendationsDepletedContainer);
                                                                    if (linearLayout != null) {
                                                                        i = R.id.imageRecommendationsDepletedText;
                                                                        TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.imageRecommendationsDepletedText);
                                                                        if (textView5 != null) {
                                                                            i = R.id.imageSuggestionContainer;
                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.imageSuggestionContainer);
                                                                            if (constraintLayout != null) {
                                                                                i = R.id.imageSuggestionReason;
                                                                                TextView textView6 = (TextView) Room.findChildViewById(inflate, R.id.imageSuggestionReason);
                                                                                if (textView6 != null) {
                                                                                    i = R.id.imageView;
                                                                                    FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.imageView);
                                                                                    if (faceAndColorDetectImageView != null) {
                                                                                        i = R.id.imageViewContainer;
                                                                                        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.imageViewContainer);
                                                                                        if (frameLayout != null) {
                                                                                            i = R.id.instructionText;
                                                                                            TextView textView7 = (TextView) Room.findChildViewById(inflate, R.id.instructionText);
                                                                                            if (textView7 != null) {
                                                                                                i = R.id.notSureButton;
                                                                                                MaterialButton materialButton2 = (MaterialButton) Room.findChildViewById(inflate, R.id.notSureButton);
                                                                                                if (materialButton2 != null) {
                                                                                                    i = R.id.readMoreButton;
                                                                                                    MaterialButton materialButton3 = (MaterialButton) Room.findChildViewById(inflate, R.id.readMoreButton);
                                                                                                    if (materialButton3 != null) {
                                                                                                        i = R.id.rejectButton;
                                                                                                        MaterialButton materialButton4 = (MaterialButton) Room.findChildViewById(inflate, R.id.rejectButton);
                                                                                                        if (materialButton4 != null) {
                                                                                                            i = R.id.robotIcon;
                                                                                                            if (((ImageView) Room.findChildViewById(inflate, R.id.robotIcon)) != null) {
                                                                                                                CoordinatorLayout coordinatorLayout2 = (CoordinatorLayout) inflate;
                                                                                                                i = R.id.topHandle;
                                                                                                                View findChildViewById2 = Room.findChildViewById(inflate, R.id.topHandle);
                                                                                                                if (findChildViewById2 != null) {
                                                                                                                    this._binding = new MapChangeReceiver(coordinatorLayout2, materialButton, nestedScrollView, goneIfEmptyTextView, findChildViewById, textView, space, textView2, coordinatorLayout, wikiErrorView, progressBar, textView3, wikiCardView, textView4, imageView, linearLayout, textView5, constraintLayout, textView6, faceAndColorDetectImageView, frameLayout, textView7, materialButton2, materialButton3, materialButton4, findChildViewById2);
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        int i = 1;
        if (itemId == R.id.menu_tutorial) {
            ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
            String actionStringForAnalytics$default = getActionStringForAnalytics$default(this, null, null, null, 15);
            String str = getViewModel().langCode;
            companion.getClass();
            ImageRecommendationsEvent.Companion.logAction("more_view_tutorial", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
            BottomSheetBehavior bottomSheetBehavior = this.bottomSheetBehavior;
            if (bottomSheetBehavior == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bottomSheetBehavior");
                throw null;
            }
            bottomSheetBehavior.setState(3);
            MapChangeReceiver mapChangeReceiver = this._binding;
            mapChangeReceiver.getClass();
            ((CoordinatorLayout) mapChangeReceiver.onCameraWillChangeListenerList).post(new SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda12(this, i));
            return true;
        }
        if (itemId == R.id.menu_learn_more) {
            ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
            String actionStringForAnalytics$default2 = getActionStringForAnalytics$default(this, null, null, null, 15);
            String str2 = getViewModel().langCode;
            companion2.getClass();
            ImageRecommendationsEvent.Companion.logAction("more_view_help", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
            Context requireContext = requireContext();
            String string = requireContext.getString(R.string.android_app_edit_help_url);
            string.getClass();
            Uri parse = Uri.parse(string);
            parse.getClass();
            UriUtil.visitInExternalBrowser(requireContext, parse);
            return true;
        }
        if (itemId != R.id.menu_report_feature) {
            return false;
        }
        ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
        String actionStringForAnalytics$default3 = getActionStringForAnalytics$default(this, null, null, null, 15);
        String str3 = getViewModel().langCode;
        companion3.getClass();
        ImageRecommendationsEvent.Companion.logAction("report_problem", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
        Context requireContext2 = requireContext();
        String string2 = getString(R.string.email_report_image_recommendations_subject);
        string2.getClass();
        String string3 = getString(R.string.email_report_image_recommendations_body);
        string3.getClass();
        ShareUtil.composeEmail$default(requireContext2, null, string2, string3, 2);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        menu.findItem(R.id.menu_tutorial).setVisible(getViewModel().uiState.$$delegate_0.getValue() instanceof Resource.Success);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        if (this.resumedMillis == 0) {
            this.resumedMillis = System.currentTimeMillis();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        callback().updateActionButton();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        int i;
        view.getClass();
        final int i2 = 1;
        requireActivity().setRequestedOrientation(1);
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        MapChangeReceiver mapChangeReceiver = this._binding;
        mapChangeReceiver.getClass();
        final int i3 = 0;
        ((WikiErrorView) mapChangeReceiver.onWillStartRenderingMapListenerList).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i4 = i3;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i4) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i5 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver2 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver2.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver2.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i6 = EditSectionActivity.$r8$clinit;
                        Context requireContext = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i7 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver2 = this._binding;
        mapChangeReceiver2.getClass();
        final int i4 = 2;
        ((WikiErrorView) mapChangeReceiver2.onWillStartRenderingMapListenerList).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i4;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i5 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i6 = EditSectionActivity.$r8$clinit;
                        Context requireContext = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i7 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver3 = this._binding;
        mapChangeReceiver3.getClass();
        final int i5 = 3;
        ((WikiErrorView) mapChangeReceiver3.onWillStartRenderingMapListenerList).setNextClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i5;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i6 = EditSectionActivity.$r8$clinit;
                        Context requireContext = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i7 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver4 = this._binding;
        mapChangeReceiver4.getClass();
        ((WikiCardView) mapChangeReceiver4.onDidFinishLoadingStyleListenerList).setElevation(RecyclerView.DECELERATION_RATE);
        MapChangeReceiver mapChangeReceiver5 = this._binding;
        mapChangeReceiver5.getClass();
        WikiCardView wikiCardView = (WikiCardView) mapChangeReceiver5.onDidFinishLoadingStyleListenerList;
        Context requireContext = requireContext();
        TypedValue typedValue = new TypedValue();
        Continuation continuation = null;
        if (!requireContext.getTheme().resolveAttribute(R.attr.border_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968724");
            return;
        }
        wikiCardView.setStrokeColor(typedValue.data);
        MapChangeReceiver mapChangeReceiver6 = this._binding;
        mapChangeReceiver6.getClass();
        ((WikiCardView) mapChangeReceiver6.onDidFinishLoadingStyleListenerList).setStrokeWidth(Okio__OkioKt.roundedDpToPx(0.5f));
        MapChangeReceiver mapChangeReceiver7 = this._binding;
        mapChangeReceiver7.getClass();
        TextView textView = (TextView) mapChangeReceiver7.onPreCompileShaderList;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getString(R.string.image_recommendation_depleted)));
        MapChangeReceiver mapChangeReceiver8 = this._binding;
        mapChangeReceiver8.getClass();
        ((TextView) mapChangeReceiver8.onPreCompileShaderList).setMovementMethod(new LinkMovementMethodExt(new SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda0(this)));
        MapChangeReceiver mapChangeReceiver9 = this._binding;
        mapChangeReceiver9.getClass();
        final int i6 = 4;
        ((MaterialButton) mapChangeReceiver9.onCameraIsChangingListenerList).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i6;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i62 = EditSectionActivity.$r8$clinit;
                        Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext2, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i7 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver10 = this._binding;
        mapChangeReceiver10.getClass();
        final int i7 = 5;
        ((MaterialButton) mapChangeReceiver10.onSpriteErrorList).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i7;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i62 = EditSectionActivity.$r8$clinit;
                        Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext2, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i72 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver11 = this._binding;
        mapChangeReceiver11.getClass();
        final int i8 = 6;
        ((MaterialButton) mapChangeReceiver11.onTileActionList).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i8;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i62 = EditSectionActivity.$r8$clinit;
                        Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext2, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i72 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver12 = this._binding;
        mapChangeReceiver12.getClass();
        final int i9 = 7;
        ((WikiCardView) mapChangeReceiver12.onDidFinishLoadingStyleListenerList).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i9;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i62 = EditSectionActivity.$r8$clinit;
                        Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext2, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i72 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver13 = this._binding;
        mapChangeReceiver13.getClass();
        ((WikiCardView) mapChangeReceiver13.onDidFinishLoadingStyleListenerList).setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(i9, this));
        MapChangeReceiver mapChangeReceiver14 = this._binding;
        mapChangeReceiver14.getClass();
        ((NestedScrollView) mapChangeReceiver14.onCameraDidChangeListenerList).setOnScrollChangeListener(new Utils$$ExternalSyntheticBUOutline0(9, this));
        MapChangeReceiver mapChangeReceiver15 = this._binding;
        mapChangeReceiver15.getClass();
        ((MaterialButton) mapChangeReceiver15.onSpriteLoadedList).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment$$ExternalSyntheticLambda1
            public final /* synthetic */ SuggestedEditsImageRecsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i42 = i2;
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = this.f$0;
                switch (i42) {
                    case 0:
                        suggestedEditsImageRecsFragment.requireActivity().finish();
                        return;
                    case 1:
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion.getClass();
                        ImageRecommendationsEvent.Companion.logAction("read_more", "recommendedimagetoolbar", actionStringForAnalytics$default, str);
                        int i52 = PageActivity.$r8$clinit;
                        suggestedEditsImageRecsFragment.startActivity(LoginClient.newIntentForNewTab(suggestedEditsImageRecsFragment.requireActivity(), new HistoryEntry(30, suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), suggestedEditsImageRecsFragment.getViewModel().getPageTitle()), null);
                        return;
                    case 2:
                        suggestedEditsImageRecsFragment.getViewModel().fetchRecommendation();
                        return;
                    case 3:
                        suggestedEditsImageRecsFragment.callback().nextPage(suggestedEditsImageRecsFragment);
                        return;
                    case 4:
                        ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default2 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "accepted", null, null, 14);
                        String str2 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion2.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_accept", "recommendedimagetoolbar", actionStringForAnalytics$default2, str2);
                        EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
                        PageTitle pageTitle = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        companion3.getClass();
                        EditAttemptStepEvent.Companion.submitEditAttemptEvent("init", "wikitext", pageTitle);
                        if (System.currentTimeMillis() - suggestedEditsImageRecsFragment.resumedMillis < 5000) {
                            ImageRecommendationsEvent.Companion.logAction("warning", "recommendedimagetoolbar", SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15), suggestedEditsImageRecsFragment.getViewModel().langCode);
                            AppCompatActivity requireActivity = suggestedEditsImageRecsFragment.requireActivity();
                            String string = suggestedEditsImageRecsFragment.getString(R.string.image_recommendation_tooltip_warning);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                            MapChangeReceiver mapChangeReceiver22 = suggestedEditsImageRecsFragment._binding;
                            mapChangeReceiver22.getClass();
                            makeSnackbar$default.setAnchorView((MaterialButton) mapChangeReceiver22.onCameraIsChangingListenerList);
                            makeSnackbar$default.show();
                            return;
                        }
                        Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsImageRecsFragment.requestEdit;
                        int i62 = EditSectionActivity.$r8$clinit;
                        Context requireContext2 = suggestedEditsImageRecsFragment.requireContext();
                        PageTitle pageTitle2 = suggestedEditsImageRecsFragment.getViewModel().getPageTitle();
                        Constants.InvokeSource invokeSource = Constants.InvokeSource.EDIT_ADD_IMAGE;
                        PageTitle pageTitle3 = suggestedEditsImageRecsFragment.getViewModel().recommendedImageTitle;
                        if (pageTitle3 != null) {
                            anonymousClass10.launch(LoginClient.newIntent(requireContext2, 0, null, pageTitle2, invokeSource, null, pageTitle3, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).source, ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).projects.toString()).putExtra("attemptInsertIntoInfobox", suggestedEditsImageRecsFragment.getViewModel().attemptInsertInfobox), null);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("recommendedImageTitle");
                            throw null;
                        }
                    case 5:
                        ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default3 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "rejected", null, null, 14);
                        String str3 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion4.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_reject", "recommendedimagetoolbar", actionStringForAnalytics$default3, str3);
                        SuggestedEditsImageRecsDialog suggestedEditsImageRecsDialog = new SuggestedEditsImageRecsDialog();
                        suggestedEditsImageRecsDialog.setArguments(UStringsKt.bundleOf(new Pair("response", 0)));
                        suggestedEditsImageRecsDialog.show(suggestedEditsImageRecsFragment.getChildFragmentManager(), null);
                        return;
                    case 6:
                        ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default4 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, "undecided", null, null, 14);
                        String str4 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion5.getClass();
                        ImageRecommendationsEvent.Companion.logAction("suggestion_skip", "recommendedimagetoolbar", actionStringForAnalytics$default4, str4);
                        suggestedEditsImageRecsFragment.publish();
                        return;
                    default:
                        ImageRecommendationsEvent.Companion companion6 = ImageRecommendationsEvent.Companion;
                        String actionStringForAnalytics$default5 = SuggestedEditsImageRecsFragment.getActionStringForAnalytics$default(suggestedEditsImageRecsFragment, null, null, null, 15);
                        String str5 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion6.getClass();
                        ImageRecommendationsEvent.Companion.logAction("image_detail_view", "recommendedimagetoolbar", actionStringForAnalytics$default5, str5);
                        int i72 = FilePageActivity.$r8$clinit;
                        AppCompatActivity requireActivity2 = suggestedEditsImageRecsFragment.requireActivity();
                        String m = Modifier.CC.m("File:", ((GrowthImageSuggestion.ImageItem) suggestedEditsImageRecsFragment.getViewModel().getRecommendation().images.get(0)).image);
                        WikiSite.Companion companion7 = WikiSite.Companion;
                        String str6 = suggestedEditsImageRecsFragment.getViewModel().langCode;
                        companion7.getClass();
                        suggestedEditsImageRecsFragment.startActivity(Path.Companion.newIntent((Context) requireActivity2, new PageTitle(m, WikiSite.Companion.forLanguageCode(str6), (String) null), false), null);
                        return;
                }
            }
        });
        MapChangeReceiver mapChangeReceiver16 = this._binding;
        mapChangeReceiver16.getClass();
        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) mapChangeReceiver16.onGlyphsLoadedList;
        if (faceAndColorDetectImageView.getTag() == null || !(faceAndColorDetectImageView.getTag() instanceof Integer)) {
            i = 0;
        } else {
            Object tag = faceAndColorDetectImageView.getTag();
            tag.getClass();
            i = ((Integer) tag).intValue();
        }
        faceAndColorDetectImageView.setTag(Integer.valueOf(1 | i));
        MapChangeReceiver mapChangeReceiver17 = this._binding;
        mapChangeReceiver17.getClass();
        BottomSheetBehavior from = BottomSheetBehavior.from((CoordinatorLayout) mapChangeReceiver17.onDidFinishRenderingFrameWithStatsList);
        from.setState(3);
        this.bottomSheetBehavior = from;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SuggestedEditsImageRecsFragment$onViewCreated$13(this, continuation, i3), 3);
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final void publish() {
        callback().nextPage(this);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
