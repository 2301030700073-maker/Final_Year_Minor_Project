package org.wikipedia.suggestededits;

import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.text.method.LinkMovementMethodCompat;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.chip.Chip;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.SuggestedEditsItemFragment;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.PageItemView$$ExternalSyntheticLambda1;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.watchlist.WatchlistFragment$special$$inlined$viewModels$default$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsImageTagsFragment extends SuggestedEditsItemFragment implements CompoundButton.OnCheckedChangeListener, View.OnClickListener {
    public ActivityTalkReplyBinding _binding;
    public String lastSearchTerm;
    public MwQueryPage page;
    public boolean publishSuccess;
    public boolean publishing;
    public final ArrayList tagList;
    public final Request.Builder viewModel$delegate;
    public boolean wasCaptionLongClicked;

    public SuggestedEditsImageTagsFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(10, new WatchlistFragment$special$$inlined$viewModels$default$1(9, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(SuggestedEditsImageTagsViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 18), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 19), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 19));
        this.tagList = new ArrayList();
        this.lastSearchTerm = "";
    }

    public final Chip addChip(ImageTag imageTag, Typeface typeface) {
        String string;
        Chip chip = new Chip(requireContext(), null);
        if (imageTag == null || (string = imageTag.label) == null) {
            string = getString(R.string.suggested_edits_image_tags_add_tag);
            string.getClass();
        }
        chip.setText(string);
        chip.setTextAlignment(4);
        chip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
        chip.setChipStrokeWidth(Okio__OkioKt.dpToPx(1.0f));
        chip.setChipStrokeColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
        chip.setTextColor(Cache.Companion.getThemedColor(requireContext(), R.attr.primary_color));
        chip.setTypeface(typeface);
        chip.setCheckable(true);
        chip.setChipIconResource(R.drawable.ic_chip_add_24px);
        chip.setIconEndPadding(RecyclerView.DECELERATION_RATE);
        chip.setTextStartPadding(Okio__OkioKt.dpToPx(2.0f));
        chip.setChipIconSize(Okio__OkioKt.dpToPx(24.0f));
        chip.setChipIconTint(Cache.Companion.getThemedColorStateList(requireContext(), R.attr.placeholder_color));
        chip.setCheckedIconResource(R.drawable.ic_chip_check_24px);
        chip.setOnCheckedChangeListener(this);
        chip.setOnClickListener(this);
        chip.setEnsureMinTouchTargetSize(true);
        chip.ensureAccessibleTouchTarget((int) Okio__OkioKt.dpToPx(48.0f));
        chip.setTag(imageTag);
        if (imageTag != null) {
            chip.setChecked(imageTag.isSelected);
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(8.0f);
        marginLayoutParams.setMargins(roundedDpToPx, 0, roundedDpToPx, 0);
        chip.setLayoutParams(marginLayoutParams);
        ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
        activityTalkReplyBinding.getClass();
        ((FlexboxLayout) activityTalkReplyBinding.replySubjectText).addView(chip);
        return chip;
    }

    public final boolean atLeastOneTagChecked() {
        ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
        activityTalkReplyBinding.getClass();
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new ViewGroupKt$children$1((FlexboxLayout) activityTalkReplyBinding.replySubjectText, 0), true, SuggestedEditsImageTagsFragment$atLeastOneTagChecked$$inlined$filterIsInstance$1.INSTANCE));
        while (filteringSequence$iterator$1.hasNext()) {
            if (((Chip) filteringSequence$iterator$1.next()).isChecked()) {
                return true;
            }
        }
        return false;
    }

    public final SuggestedEditsItemFragment.Callback callback$1() {
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

    public final void getNextItem() {
        SuggestedEditsImageTagsViewModel suggestedEditsImageTagsViewModel = (SuggestedEditsImageTagsViewModel) this.viewModel$delegate.getValue();
        String langCode = callback$1().getLangCode();
        MwQueryPage mwQueryPage = this.page;
        langCode.getClass();
        StateFlowImpl stateFlowImpl = suggestedEditsImageTagsViewModel._uiState;
        Resource.Loading loading = new Resource.Loading();
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(suggestedEditsImageTagsViewModel), new SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1(suggestedEditsImageTagsViewModel, 1), null, new LongPressMenu$show$1$1(mwQueryPage, langCode, suggestedEditsImageTagsViewModel, (Continuation) null, 8), 2);
    }

    public final PageTitle getPageTitle() {
        MwQueryPage mwQueryPage = this.page;
        if (mwQueryPage != null) {
            return new PageTitle(mwQueryPage.title, Constants.commonsWikiSite, (String) null);
        }
        return null;
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final boolean onBackPressed() {
        if (!atLeastOneTagChecked()) {
            return true;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity(), 0);
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mCancelable = false;
        materialAlertDialogBuilder.setTitle(R.string.talk_new_topic_exit_dialog_title);
        materialAlertDialogBuilder.setMessage(R.string.suggested_edits_image_tags_exit_dialog_message);
        materialAlertDialogBuilder.setPositiveButton(R.string.edit_abandon_confirm_yes, new PageFragment$$ExternalSyntheticLambda28(12, this));
        materialAlertDialogBuilder.setNegativeButton(R.string.edit_abandon_confirm_no, (DialogInterface.OnClickListener) null);
        materialAlertDialogBuilder.show();
        return false;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        compoundButton.getClass();
        Chip chip = (Chip) compoundButton;
        if (chip.isChecked()) {
            chip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.background_color));
            chip.setChipStrokeColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.progressive_color));
            chip.setChipIconVisible(false);
        } else {
            chip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
            chip.setChipStrokeColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
            chip.setChipIconVisible(true);
        }
        if (chip.getTag() != null) {
            Object tag = chip.getTag();
            tag.getClass();
            ((ImageTag) tag).isSelected = chip.isChecked();
        }
        updateLicenseTextShown();
        callback$1().updateActionButton();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        view.getClass();
        Chip chip = (Chip) view;
        if (chip.getTag() == null) {
            chip.setChecked(!chip.isChecked());
            boolean z = this.wasCaptionLongClicked;
            String str = this.lastSearchTerm;
            str.getClass();
            SuggestedEditsImageTagDialog suggestedEditsImageTagDialog = new SuggestedEditsImageTagDialog();
            suggestedEditsImageTagDialog.setArguments(UStringsKt.bundleOf(new Pair("useClipboardText", Boolean.valueOf(z)), new Pair("lastText", str)));
            suggestedEditsImageTagDialog.show(getChildFragmentManager(), null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_image_tags_item, viewGroup, false);
        int i = R.id.cardItemErrorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.cardItemErrorView);
        if (wikiErrorView != null) {
            i = R.id.cardItemProgressBar;
            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.cardItemProgressBar);
            if (progressBar != null) {
                i = R.id.contentContainer;
                ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.contentContainer);
                if (constraintLayout != null) {
                    i = R.id.imageCaption;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.imageCaption);
                    if (textView != null) {
                        i = R.id.imageView;
                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageView);
                        if (imageView != null) {
                            i = R.id.publishOverlayContainer;
                            FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.publishOverlayContainer);
                            if (frameLayout != null) {
                                i = R.id.publishProgressBar;
                                ProgressBar progressBar2 = (ProgressBar) Room.findChildViewById(inflate, R.id.publishProgressBar);
                                if (progressBar2 != null) {
                                    i = R.id.publishProgressBarComplete;
                                    ProgressBar progressBar3 = (ProgressBar) Room.findChildViewById(inflate, R.id.publishProgressBarComplete);
                                    if (progressBar3 != null) {
                                        i = R.id.publishProgressCheck;
                                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.publishProgressCheck);
                                        if (imageView2 != null) {
                                            i = R.id.publishProgressText;
                                            TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.publishProgressText);
                                            if (textView2 != null) {
                                                FrameLayout frameLayout2 = (FrameLayout) inflate;
                                                i = R.id.tagsChipGroup;
                                                FlexboxLayout flexboxLayout = (FlexboxLayout) Room.findChildViewById(inflate, R.id.tagsChipGroup);
                                                if (flexboxLayout != null) {
                                                    i = R.id.tagsContainer;
                                                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.tagsContainer);
                                                    if (linearLayout != null) {
                                                        i = R.id.tagsHintText;
                                                        TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.tagsHintText);
                                                        if (textView3 != null) {
                                                            i = R.id.tagsLicenseText;
                                                            TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.tagsLicenseText);
                                                            if (textView4 != null) {
                                                                this._binding = new ActivityTalkReplyBinding(frameLayout2, wikiErrorView, progressBar, constraintLayout, textView, imageView, frameLayout, progressBar2, progressBar3, imageView2, textView2, flexboxLayout, linearLayout, textView3, textView4);
                                                                frameLayout2.getClass();
                                                                return frameLayout2;
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

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        callback$1().updateActionButton();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
        activityTalkReplyBinding.getClass();
        BitmapsKt.setLayoutDirectionByLang((ConstraintLayout) activityTalkReplyBinding.editKeyboardOverlayHeadings, callback$1().getLangCode());
        ActivityTalkReplyBinding activityTalkReplyBinding2 = this._binding;
        activityTalkReplyBinding2.getClass();
        final int i = 0;
        ((WikiErrorView) activityTalkReplyBinding2.editKeyboardOverlay).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsImageTagsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i2 = i;
                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.f$0;
                switch (i2) {
                    case 0:
                        suggestedEditsImageTagsFragment.requireActivity().finish();
                        break;
                    case 1:
                        ActivityTalkReplyBinding activityTalkReplyBinding3 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding3.getClass();
                        ((ProgressBar) activityTalkReplyBinding3.editKeyboardOverlayFormatting).setVisibility(0);
                        ActivityTalkReplyBinding activityTalkReplyBinding4 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding4.getClass();
                        ((WikiErrorView) activityTalkReplyBinding4.editKeyboardOverlay).setVisibility(8);
                        suggestedEditsImageTagsFragment.getNextItem();
                        break;
                    default:
                        Prefs prefs = Prefs.INSTANCE;
                        if (!Prefs.getShowImageZoomTooltip()) {
                            PageTitle pageTitle = suggestedEditsImageTagsFragment.getPageTitle();
                            if (pageTitle != null) {
                                WikiSite.Companion companion = WikiSite.Companion;
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                companion.getClass();
                                pageTitle.wikiSite = WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode);
                                int i3 = FilePageActivity.$r8$clinit;
                                suggestedEditsImageTagsFragment.startActivity(Path.Companion.newIntent(suggestedEditsImageTagsFragment.requireContext(), pageTitle, true), null);
                                break;
                            }
                        } else {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ActivityTalkReplyBinding activityTalkReplyBinding5 = suggestedEditsImageTagsFragment._binding;
                            activityTalkReplyBinding5.getClass();
                            ShareUtil.showToastOverView((ImageView) activityTalkReplyBinding5.footerContainer, suggestedEditsImageTagsFragment.getString(R.string.suggested_edits_image_zoom_tooltip), 1);
                            break;
                        }
                        break;
                }
            }
        });
        ActivityTalkReplyBinding activityTalkReplyBinding3 = this._binding;
        activityTalkReplyBinding3.getClass();
        final int i2 = 1;
        ((WikiErrorView) activityTalkReplyBinding3.editKeyboardOverlay).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsImageTagsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i2;
                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        suggestedEditsImageTagsFragment.requireActivity().finish();
                        break;
                    case 1:
                        ActivityTalkReplyBinding activityTalkReplyBinding32 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding32.getClass();
                        ((ProgressBar) activityTalkReplyBinding32.editKeyboardOverlayFormatting).setVisibility(0);
                        ActivityTalkReplyBinding activityTalkReplyBinding4 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding4.getClass();
                        ((WikiErrorView) activityTalkReplyBinding4.editKeyboardOverlay).setVisibility(8);
                        suggestedEditsImageTagsFragment.getNextItem();
                        break;
                    default:
                        Prefs prefs = Prefs.INSTANCE;
                        if (!Prefs.getShowImageZoomTooltip()) {
                            PageTitle pageTitle = suggestedEditsImageTagsFragment.getPageTitle();
                            if (pageTitle != null) {
                                WikiSite.Companion companion = WikiSite.Companion;
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                companion.getClass();
                                pageTitle.wikiSite = WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode);
                                int i3 = FilePageActivity.$r8$clinit;
                                suggestedEditsImageTagsFragment.startActivity(Path.Companion.newIntent(suggestedEditsImageTagsFragment.requireContext(), pageTitle, true), null);
                                break;
                            }
                        } else {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ActivityTalkReplyBinding activityTalkReplyBinding5 = suggestedEditsImageTagsFragment._binding;
                            activityTalkReplyBinding5.getClass();
                            ShareUtil.showToastOverView((ImageView) activityTalkReplyBinding5.footerContainer, suggestedEditsImageTagsFragment.getString(R.string.suggested_edits_image_zoom_tooltip), 1);
                            break;
                        }
                        break;
                }
            }
        });
        ActivityTalkReplyBinding activityTalkReplyBinding4 = this._binding;
        activityTalkReplyBinding4.getClass();
        ((LinearLayout) activityTalkReplyBinding4.replyToolbar).setBackgroundColor((Cache.Companion.getThemedColor(requireContext(), R.attr.paper_color) & 16777215) | (-872415232));
        ActivityTalkReplyBinding activityTalkReplyBinding5 = this._binding;
        activityTalkReplyBinding5.getClass();
        activityTalkReplyBinding5.learnMoreButton.setBackgroundColor((Cache.Companion.getThemedColor(requireContext(), R.attr.paper_color) & 16777215) | (-872415232));
        ActivityTalkReplyBinding activityTalkReplyBinding6 = this._binding;
        activityTalkReplyBinding6.getClass();
        ((FrameLayout) activityTalkReplyBinding6.rootView).setBackgroundColor((Cache.Companion.getThemedColor(requireContext(), R.attr.paper_color) & 16777215) | (-872415232));
        ActivityTalkReplyBinding activityTalkReplyBinding7 = this._binding;
        activityTalkReplyBinding7.getClass();
        int i3 = 8;
        ((FrameLayout) activityTalkReplyBinding7.rootView).setVisibility(8);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        ColorStateList valueOf = ColorStateList.valueOf(Jsoup.getInstance().currentTheme.isDark() ? -1 : Cache.Companion.getThemedColor(requireContext(), R.attr.progressive_color));
        valueOf.getClass();
        ActivityTalkReplyBinding activityTalkReplyBinding8 = this._binding;
        activityTalkReplyBinding8.getClass();
        ((ProgressBar) activityTalkReplyBinding8.progressBar).setProgressTintList(valueOf);
        ActivityTalkReplyBinding activityTalkReplyBinding9 = this._binding;
        activityTalkReplyBinding9.getClass();
        ((ProgressBar) activityTalkReplyBinding9.replyInputView).setProgressTintList(valueOf);
        ActivityTalkReplyBinding activityTalkReplyBinding10 = this._binding;
        activityTalkReplyBinding10.getClass();
        ((ImageView) activityTalkReplyBinding10.replySubjectLayout).setImageTintList(valueOf);
        ActivityTalkReplyBinding activityTalkReplyBinding11 = this._binding;
        activityTalkReplyBinding11.getClass();
        activityTalkReplyBinding11.replyNextButton.setTextColor(valueOf);
        ActivityTalkReplyBinding activityTalkReplyBinding12 = this._binding;
        activityTalkReplyBinding12.getClass();
        TextView textView = (TextView) activityTalkReplyBinding12.threadItemView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        final int i4 = 2;
        textView.setText(StringUtil.fromHtml(getString(R.string.suggested_edits_cc0_notice, getString(R.string.terms_of_use_url), getString(R.string.cc_0_url))));
        ActivityTalkReplyBinding activityTalkReplyBinding13 = this._binding;
        activityTalkReplyBinding13.getClass();
        TextView textView2 = (TextView) activityTalkReplyBinding13.threadItemView;
        LinkMovementMethodCompat linkMovementMethodCompat = LinkMovementMethodCompat.sInstance;
        if (linkMovementMethodCompat == null) {
            linkMovementMethodCompat = new LinkMovementMethodCompat();
            LinkMovementMethodCompat.sInstance = linkMovementMethodCompat;
        }
        textView2.setMovementMethod(linkMovementMethodCompat);
        ActivityTalkReplyBinding activityTalkReplyBinding14 = this._binding;
        activityTalkReplyBinding14.getClass();
        ((ImageView) activityTalkReplyBinding14.footerContainer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment$$ExternalSyntheticLambda0
            public final /* synthetic */ SuggestedEditsImageTagsFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i22 = i4;
                SuggestedEditsImageTagsFragment suggestedEditsImageTagsFragment = this.f$0;
                switch (i22) {
                    case 0:
                        suggestedEditsImageTagsFragment.requireActivity().finish();
                        break;
                    case 1:
                        ActivityTalkReplyBinding activityTalkReplyBinding32 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding32.getClass();
                        ((ProgressBar) activityTalkReplyBinding32.editKeyboardOverlayFormatting).setVisibility(0);
                        ActivityTalkReplyBinding activityTalkReplyBinding42 = suggestedEditsImageTagsFragment._binding;
                        activityTalkReplyBinding42.getClass();
                        ((WikiErrorView) activityTalkReplyBinding42.editKeyboardOverlay).setVisibility(8);
                        suggestedEditsImageTagsFragment.getNextItem();
                        break;
                    default:
                        Prefs prefs = Prefs.INSTANCE;
                        if (!Prefs.getShowImageZoomTooltip()) {
                            PageTitle pageTitle = suggestedEditsImageTagsFragment.getPageTitle();
                            if (pageTitle != null) {
                                WikiSite.Companion companion = WikiSite.Companion;
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                companion.getClass();
                                pageTitle.wikiSite = WikiSite.Companion.forLanguageCode(appOrSystemLanguageCode);
                                int i32 = FilePageActivity.$r8$clinit;
                                suggestedEditsImageTagsFragment.startActivity(Path.Companion.newIntent(suggestedEditsImageTagsFragment.requireContext(), pageTitle, true), null);
                                break;
                            }
                        } else {
                            PrefsIoUtil.setBoolean(R.string.preference_key_image_zoom_tooltip_shown, false);
                            ActivityTalkReplyBinding activityTalkReplyBinding52 = suggestedEditsImageTagsFragment._binding;
                            activityTalkReplyBinding52.getClass();
                            ShareUtil.showToastOverView((ImageView) activityTalkReplyBinding52.footerContainer, suggestedEditsImageTagsFragment.getString(R.string.suggested_edits_image_zoom_tooltip), 1);
                            break;
                        }
                        break;
                }
            }
        });
        if (callback$1().getPage() != null) {
            this.page = callback$1().getPage();
        }
        ActivityTalkReplyBinding activityTalkReplyBinding15 = this._binding;
        activityTalkReplyBinding15.getClass();
        activityTalkReplyBinding15.learnMoreButton.setOnLongClickListener(new PageItemView$$ExternalSyntheticLambda1(i3, this));
        getNextItem();
        updateTagChips();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new SuggestedEditsImageTagsFragment$onViewCreated$5(this, null, i), 3);
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final void publish() {
        if (this.publishing || this.publishSuccess) {
            return;
        }
        ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
        activityTalkReplyBinding.getClass();
        if (((FlexboxLayout) activityTalkReplyBinding.replySubjectText).getChildCount() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = this.tagList.iterator();
        while (it.hasNext()) {
            ImageTag imageTag = (ImageTag) it.next();
            if (imageTag.isSelected) {
                arrayList.add(imageTag);
            } else {
                it.remove();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.publishing = true;
        this.publishSuccess = false;
        PageTitle pageTitle = getPageTitle();
        if (pageTitle != null) {
            EditAttemptStepEvent.Companion.getClass();
            EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveAttempt", "other", pageTitle);
        }
        ActivityTalkReplyBinding activityTalkReplyBinding2 = this._binding;
        activityTalkReplyBinding2.getClass();
        activityTalkReplyBinding2.replyNextButton.setText(R.string.suggested_edits_image_tags_publishing);
        ActivityTalkReplyBinding activityTalkReplyBinding3 = this._binding;
        activityTalkReplyBinding3.getClass();
        ((ImageView) activityTalkReplyBinding3.replySubjectLayout).setVisibility(8);
        ActivityTalkReplyBinding activityTalkReplyBinding4 = this._binding;
        activityTalkReplyBinding4.getClass();
        ((FrameLayout) activityTalkReplyBinding4.rootView).setVisibility(0);
        ActivityTalkReplyBinding activityTalkReplyBinding5 = this._binding;
        activityTalkReplyBinding5.getClass();
        ((ProgressBar) activityTalkReplyBinding5.replyInputView).setVisibility(8);
        ActivityTalkReplyBinding activityTalkReplyBinding6 = this._binding;
        activityTalkReplyBinding6.getClass();
        ((ProgressBar) activityTalkReplyBinding6.progressBar).setVisibility(0);
        MwQueryPage mwQueryPage = this.page;
        if (mwQueryPage != null) {
            SuggestedEditsImageTagsViewModel suggestedEditsImageTagsViewModel = (SuggestedEditsImageTagsViewModel) this.viewModel$delegate.getValue();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(suggestedEditsImageTagsViewModel), new SuggestedEditsImageTagsViewModel$publishImageTags$$inlined$CoroutineExceptionHandler$1(suggestedEditsImageTagsViewModel, 0), null, new RealImageLoader$execute$2(mwQueryPage, arrayList, suggestedEditsImageTagsViewModel, null, 28), 2);
        }
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final boolean publishEnabled() {
        return !this.publishSuccess && atLeastOneTagChecked();
    }

    public final void updateLicenseTextShown() {
        if (this.publishSuccess) {
            ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
            activityTalkReplyBinding.getClass();
            ((TextView) activityTalkReplyBinding.threadItemView).setVisibility(8);
            ActivityTalkReplyBinding activityTalkReplyBinding2 = this._binding;
            activityTalkReplyBinding2.getClass();
            ((TextView) activityTalkReplyBinding2.talkScrollContainer).setText(R.string.suggested_edits_image_tags_published_list);
            ActivityTalkReplyBinding activityTalkReplyBinding3 = this._binding;
            activityTalkReplyBinding3.getClass();
            ((TextView) activityTalkReplyBinding3.talkScrollContainer).setVisibility(0);
            return;
        }
        boolean atLeastOneTagChecked = atLeastOneTagChecked();
        ActivityTalkReplyBinding activityTalkReplyBinding4 = this._binding;
        if (atLeastOneTagChecked) {
            activityTalkReplyBinding4.getClass();
            ((TextView) activityTalkReplyBinding4.threadItemView).setVisibility(0);
            ActivityTalkReplyBinding activityTalkReplyBinding5 = this._binding;
            activityTalkReplyBinding5.getClass();
            ((TextView) activityTalkReplyBinding5.talkScrollContainer).setVisibility(8);
            return;
        }
        activityTalkReplyBinding4.getClass();
        ((TextView) activityTalkReplyBinding4.threadItemView).setVisibility(8);
        ActivityTalkReplyBinding activityTalkReplyBinding6 = this._binding;
        activityTalkReplyBinding6.getClass();
        ((TextView) activityTalkReplyBinding6.talkScrollContainer).setVisibility(8);
    }

    public final void updateTagChips() {
        Typeface create = Typeface.create("sans-serif-medium", 0);
        ActivityTalkReplyBinding activityTalkReplyBinding = this._binding;
        activityTalkReplyBinding.getClass();
        ((FlexboxLayout) activityTalkReplyBinding.replySubjectText).removeAllViews();
        if (!this.publishSuccess) {
            create.getClass();
            addChip(null, create);
        }
        Iterator it = this.tagList.iterator();
        while (it.hasNext()) {
            ImageTag imageTag = (ImageTag) it.next();
            create.getClass();
            Chip addChip = addChip(imageTag, create);
            addChip.setChecked(imageTag.isSelected);
            if (this.publishSuccess) {
                addChip.setEnabled(false);
                if (addChip.isChecked()) {
                    addChip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.addition_color));
                    addChip.setChipStrokeColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.success_color));
                } else {
                    addChip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
                    addChip.setChipStrokeColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.border_color));
                }
            }
        }
        updateLicenseTextShown();
        callback$1().updateActionButton();
    }
}
