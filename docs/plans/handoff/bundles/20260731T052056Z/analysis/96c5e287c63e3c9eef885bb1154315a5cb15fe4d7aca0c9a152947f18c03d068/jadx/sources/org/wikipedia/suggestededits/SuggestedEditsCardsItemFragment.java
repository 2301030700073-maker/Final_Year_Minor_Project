package org.wikipedia.suggestededits;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewMainDrawerBinding;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.ImageDetailHorizontalView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsCardsItemFragment;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsCardsItemFragment extends SuggestedEditsItemFragment {
    public ViewMainDrawerBinding _binding;
    public String addedContribution;
    public PageSummaryForEdit sourceSummaryForEdit;
    public PageSummaryForEdit targetSummaryForEdit;
    public final Request.Builder viewModel$delegate;

    public SuggestedEditsCardsItemFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(6, new WatchlistFragment$special$$inlined$viewModels$default$1(5, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsCardsItemViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 14), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 17), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 15));
        this.addedContribution = "";
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_cards_item, viewGroup, false);
        int i = R.id.accentSideBar;
        View findChildViewById = Room.findChildViewById(inflate, R.id.accentSideBar);
        if (findChildViewById != null) {
            i = R.id.cardClickArea;
            if (((LinearLayout) Room.findChildViewById(inflate, R.id.cardClickArea)) != null) {
                i = R.id.cardItemContainer;
                ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.cardItemContainer);
                if (scrollView != null) {
                    i = R.id.cardItemErrorView;
                    WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.cardItemErrorView);
                    if (wikiErrorView != null) {
                        i = R.id.cardItemProgressBar;
                        ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.cardItemProgressBar);
                        if (progressBar != null) {
                            FrameLayout frameLayout = (FrameLayout) inflate;
                            i = R.id.viewArticleContainer;
                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.viewArticleContainer);
                            if (linearLayout != null) {
                                i = R.id.viewArticleExtract;
                                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.viewArticleExtract);
                                if (textView != null) {
                                    i = R.id.viewArticleImage;
                                    FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.viewArticleImage);
                                    if (faceAndColorDetectImageView != null) {
                                        i = R.id.viewArticleImagePlaceholder;
                                        LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.viewArticleImagePlaceholder);
                                        if (linearLayout2 != null) {
                                            i = R.id.viewArticleSubtitle;
                                            GoneIfEmptyTextView goneIfEmptyTextView = (GoneIfEmptyTextView) Room.findChildViewById(inflate, R.id.viewArticleSubtitle);
                                            if (goneIfEmptyTextView != null) {
                                                i = R.id.viewArticleSubtitleContainer;
                                                LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.viewArticleSubtitleContainer);
                                                if (linearLayout3 != null) {
                                                    i = R.id.viewArticleTitle;
                                                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.viewArticleTitle);
                                                    if (textView2 != null) {
                                                        i = R.id.viewImageArtist;
                                                        ImageDetailHorizontalView imageDetailHorizontalView = (ImageDetailHorizontalView) Room.findChildViewById(inflate, R.id.viewImageArtist);
                                                        if (imageDetailHorizontalView != null) {
                                                            i = R.id.viewImageDate;
                                                            ImageDetailHorizontalView imageDetailHorizontalView2 = (ImageDetailHorizontalView) Room.findChildViewById(inflate, R.id.viewImageDate);
                                                            if (imageDetailHorizontalView2 != null) {
                                                                i = R.id.viewImageFileName;
                                                                ImageDetailHorizontalView imageDetailHorizontalView3 = (ImageDetailHorizontalView) Room.findChildViewById(inflate, R.id.viewImageFileName);
                                                                if (imageDetailHorizontalView3 != null) {
                                                                    i = R.id.viewImageLicense;
                                                                    ImageDetailHorizontalView imageDetailHorizontalView4 = (ImageDetailHorizontalView) Room.findChildViewById(inflate, R.id.viewImageLicense);
                                                                    if (imageDetailHorizontalView4 != null) {
                                                                        i = R.id.viewImageSource;
                                                                        ImageDetailHorizontalView imageDetailHorizontalView5 = (ImageDetailHorizontalView) Room.findChildViewById(inflate, R.id.viewImageSource);
                                                                        if (imageDetailHorizontalView5 != null) {
                                                                            i = R.id.viewImageSummaryContainer;
                                                                            LinearLayout linearLayout4 = (LinearLayout) Room.findChildViewById(inflate, R.id.viewImageSummaryContainer);
                                                                            if (linearLayout4 != null) {
                                                                                this._binding = new ViewMainDrawerBinding(frameLayout, findChildViewById, scrollView, wikiErrorView, progressBar, linearLayout, textView, faceAndColorDetectImageView, linearLayout2, goneIfEmptyTextView, linearLayout3, textView2, imageDetailHorizontalView, imageDetailHorizontalView2, imageDetailHorizontalView3, imageDetailHorizontalView4, imageDetailHorizontalView5, linearLayout4);
                                                                                frameLayout.getClass();
                                                                                return frameLayout;
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
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        BitmapsKt.setLayoutDirectionByLang(viewMainDrawerBinding.mainDrawerAccountContainer, parent().getViewModel().langFromCode);
        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
        viewMainDrawerBinding2.getClass();
        final int i = 0;
        ((FaceAndColorDetectImageView) viewMainDrawerBinding2.mainDrawerPlacesContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsCardsItemFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i2 = i;
                SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = this.f$0;
                switch (i2) {
                    case 0:
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.getShowImageZoomTooltip()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ShareUtil.showMessage(suggestedEditsCardsItemFragment.requireActivity(), R.string.suggested_edits_image_zoom_tooltip);
                            break;
                        }
                        break;
                    case 1:
                        suggestedEditsCardsItemFragment.requireActivity().finish();
                        break;
                    case 2:
                        ((SuggestedEditsCardsItemViewModel) suggestedEditsCardsItemFragment.viewModel$delegate.getValue()).findNextSuggestedEditsItem(suggestedEditsCardsItemFragment.parent().getViewModel().action, suggestedEditsCardsItemFragment.parent().getViewModel().langFromCode, suggestedEditsCardsItemFragment.parent().getViewModel().langToCode);
                        break;
                    default:
                        if (suggestedEditsCardsItemFragment.sourceSummaryForEdit != null) {
                            suggestedEditsCardsItemFragment.parent().onSelectPage();
                            break;
                        }
                        break;
                }
            }
        });
        ViewMainDrawerBinding viewMainDrawerBinding3 = this._binding;
        viewMainDrawerBinding3.getClass();
        final int i2 = 1;
        ((WikiErrorView) viewMainDrawerBinding3.mainDrawerAccountAvatar).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsCardsItemFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i2;
                SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = this.f$0;
                switch (i22) {
                    case 0:
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.getShowImageZoomTooltip()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ShareUtil.showMessage(suggestedEditsCardsItemFragment.requireActivity(), R.string.suggested_edits_image_zoom_tooltip);
                            break;
                        }
                        break;
                    case 1:
                        suggestedEditsCardsItemFragment.requireActivity().finish();
                        break;
                    case 2:
                        ((SuggestedEditsCardsItemViewModel) suggestedEditsCardsItemFragment.viewModel$delegate.getValue()).findNextSuggestedEditsItem(suggestedEditsCardsItemFragment.parent().getViewModel().action, suggestedEditsCardsItemFragment.parent().getViewModel().langFromCode, suggestedEditsCardsItemFragment.parent().getViewModel().langToCode);
                        break;
                    default:
                        if (suggestedEditsCardsItemFragment.sourceSummaryForEdit != null) {
                            suggestedEditsCardsItemFragment.parent().onSelectPage();
                            break;
                        }
                        break;
                }
            }
        });
        ViewMainDrawerBinding viewMainDrawerBinding4 = this._binding;
        viewMainDrawerBinding4.getClass();
        final int i3 = 2;
        ((WikiErrorView) viewMainDrawerBinding4.mainDrawerAccountAvatar).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsCardsItemFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i3;
                SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = this.f$0;
                switch (i22) {
                    case 0:
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.getShowImageZoomTooltip()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ShareUtil.showMessage(suggestedEditsCardsItemFragment.requireActivity(), R.string.suggested_edits_image_zoom_tooltip);
                            break;
                        }
                        break;
                    case 1:
                        suggestedEditsCardsItemFragment.requireActivity().finish();
                        break;
                    case 2:
                        ((SuggestedEditsCardsItemViewModel) suggestedEditsCardsItemFragment.viewModel$delegate.getValue()).findNextSuggestedEditsItem(suggestedEditsCardsItemFragment.parent().getViewModel().action, suggestedEditsCardsItemFragment.parent().getViewModel().langFromCode, suggestedEditsCardsItemFragment.parent().getViewModel().langToCode);
                        break;
                    default:
                        if (suggestedEditsCardsItemFragment.sourceSummaryForEdit != null) {
                            suggestedEditsCardsItemFragment.parent().onSelectPage();
                            break;
                        }
                        break;
                }
            }
        });
        if (this.sourceSummaryForEdit == null) {
            ((SuggestedEditsCardsItemViewModel) this.viewModel$delegate.getValue()).findNextSuggestedEditsItem(parent().getViewModel().action, parent().getViewModel().langFromCode, parent().getViewModel().langToCode);
        }
        ViewMainDrawerBinding viewMainDrawerBinding5 = this._binding;
        viewMainDrawerBinding5.getClass();
        final int i4 = 3;
        viewMainDrawerBinding5.mainDrawerAccountContainer.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsCardsItemFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i4;
                SuggestedEditsCardsItemFragment suggestedEditsCardsItemFragment = this.f$0;
                switch (i22) {
                    case 0:
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.getShowImageZoomTooltip()) {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ShareUtil.showMessage(suggestedEditsCardsItemFragment.requireActivity(), R.string.suggested_edits_image_zoom_tooltip);
                            break;
                        }
                        break;
                    case 1:
                        suggestedEditsCardsItemFragment.requireActivity().finish();
                        break;
                    case 2:
                        ((SuggestedEditsCardsItemViewModel) suggestedEditsCardsItemFragment.viewModel$delegate.getValue()).findNextSuggestedEditsItem(suggestedEditsCardsItemFragment.parent().getViewModel().action, suggestedEditsCardsItemFragment.parent().getViewModel().langFromCode, suggestedEditsCardsItemFragment.parent().getViewModel().langToCode);
                        break;
                    default:
                        if (suggestedEditsCardsItemFragment.sourceSummaryForEdit != null) {
                            suggestedEditsCardsItemFragment.parent().onSelectPage();
                            break;
                        }
                        break;
                }
            }
        });
        showAddedContributionView(this.addedContribution);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SuggestedEditsCardsItemFragment$onViewCreated$5(this, null, i), 3);
    }

    public final void showAddedContributionView(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        ViewMainDrawerBinding viewMainDrawerBinding = this._binding;
        viewMainDrawerBinding.getClass();
        viewMainDrawerBinding.mainDrawerDonateContainer.setVisibility(0);
        ViewMainDrawerBinding viewMainDrawerBinding2 = this._binding;
        viewMainDrawerBinding2.getClass();
        ((GoneIfEmptyTextView) viewMainDrawerBinding2.mainDrawerSettingsContainer).setText(str);
        this.addedContribution = str;
    }
}
