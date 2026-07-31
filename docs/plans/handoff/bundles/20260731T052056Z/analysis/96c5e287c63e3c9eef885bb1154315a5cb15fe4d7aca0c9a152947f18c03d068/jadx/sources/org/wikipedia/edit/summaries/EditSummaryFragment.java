package org.wikipedia.edit.summaries;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.android.material.textfield.TextInputLayout;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.databinding.ViewCustomCalendarDayBinding;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.EditSectionViewModel;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.login.LoginActivity$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/edit/summaries/EditSummaryFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EditSummaryFragment extends Fragment {
    public NodeChain _binding;
    public MultipartBody.Builder editSummaryHandler;
    public PageTitle title;
    public final Request.Builder viewModel$delegate;
    public final Fragment.AnonymousClass10 voiceSearchLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(16, this), new FragmentManager$FragmentIntentSenderContract(3));

    public EditSummaryFragment() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(EditSectionViewModel.class), new Function0(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ EditSummaryFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                EditSummaryFragment editSummaryFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return editSummaryFragment.requireActivity().getViewModelStore();
                    case 1:
                        return editSummaryFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return editSummaryFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ EditSummaryFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                EditSummaryFragment editSummaryFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return editSummaryFragment.requireActivity().getViewModelStore();
                    case 1:
                        return editSummaryFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return editSummaryFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$special$$inlined$activityViewModels$default$1
            public final /* synthetic */ EditSummaryFragment $this_activityViewModels;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.$this_activityViewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                EditSummaryFragment editSummaryFragment = this.$this_activityViewModels;
                switch (i4) {
                    case 0:
                        return editSummaryFragment.requireActivity().getViewModelStore();
                    case 1:
                        return editSummaryFragment.requireActivity().getDefaultViewModelCreationExtras();
                    default:
                        return editSummaryFragment.requireActivity().getDefaultViewModelProviderFactory();
                }
            }
        });
    }

    public final String getActionDataStringForData() {
        Intent intent;
        Intent intent2;
        Intent intent3;
        Intent intent4;
        Intent intent5;
        AppCompatActivity activity = getActivity();
        String str = null;
        PageTitle pageTitle = (activity == null || (intent5 = activity.getIntent()) == null) ? null : (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent5, "imageTitle", PageTitle.class));
        AppCompatActivity activity2 = getActivity();
        String stringExtra = (activity2 == null || (intent4 = activity2.getIntent()) == null) ? null : intent4.getStringExtra("imageSource");
        AppCompatActivity activity3 = getActivity();
        String stringExtra2 = (activity3 == null || (intent3 = activity3.getIntent()) == null) ? null : intent3.getStringExtra("imageSourceProjects");
        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
        String prefixedText = pageTitle != null ? pageTitle.getPrefixedText() : null;
        if (prefixedText == null) {
            prefixedText = "";
        }
        String str2 = prefixedText;
        AppCompatActivity activity4 = getActivity();
        String stringExtra3 = (activity4 == null || (intent2 = activity4.getIntent()) == null) ? null : intent2.getStringExtra("resultImageCaption");
        Boolean valueOf = Boolean.valueOf(!(stringExtra3 == null || stringExtra3.length() == 0));
        AppCompatActivity activity5 = getActivity();
        if (activity5 != null && (intent = activity5.getIntent()) != null) {
            str = intent.getStringExtra("resultImageAlt");
        }
        return ImageRecommendationsEvent.Companion.getActionDataString$default(companion, str2, stringExtra, stringExtra2, null, "accepted", null, valueOf, Boolean.valueOf(!(str == null || str.length() == 0)), false, 296);
    }

    public final boolean isActive() {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        return ((ScrollView) nodeChain.layoutNode).getVisibility() == 0;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.fragment_preview_summary, viewGroup, false);
        ScrollView scrollView = (ScrollView) inflate;
        int i2 = R.id.editSummaryTagsContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.editSummaryTagsContainer);
        if (linearLayout != null) {
            i2 = R.id.editSummaryText;
            MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) Room.findChildViewById(inflate, R.id.editSummaryText);
            if (materialAutoCompleteTextView != null) {
                i2 = R.id.editSummaryTextLayout;
                TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.editSummaryTextLayout);
                if (textInputLayout != null) {
                    i2 = R.id.footerContainer;
                    View findChildViewById = Room.findChildViewById(inflate, R.id.footerContainer);
                    if (findChildViewById != null) {
                        ViewCustomCalendarDayBinding bind = ViewCustomCalendarDayBinding.bind(findChildViewById);
                        i2 = R.id.learnMoreButton;
                        MaterialButton materialButton = (MaterialButton) Room.findChildViewById(inflate, R.id.learnMoreButton);
                        if (materialButton != null) {
                            i2 = R.id.minorEditCheckBox;
                            CheckBox checkBox = (CheckBox) Room.findChildViewById(inflate, R.id.minorEditCheckBox);
                            if (checkBox != null) {
                                i2 = R.id.minorEditHelpButton;
                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.minorEditHelpButton);
                                if (imageView != null) {
                                    i2 = R.id.watchPageCheckBox;
                                    CheckBox checkBox2 = (CheckBox) Room.findChildViewById(inflate, R.id.watchPageCheckBox);
                                    if (checkBox2 != null) {
                                        i2 = R.id.watchPageHelpButton;
                                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.watchPageHelpButton);
                                        if (imageView2 != null) {
                                            this._binding = new NodeChain(scrollView, linearLayout, materialAutoCompleteTextView, textInputLayout, bind, materialButton, checkBox, imageView, checkBox2, imageView2, 3);
                                            materialAutoCompleteTextView.setInputType(materialAutoCompleteTextView.getInputType() & (-65537));
                                            NodeChain nodeChain = this._binding;
                                            nodeChain.getClass();
                                            final int i3 = 2;
                                            ((MaterialAutoCompleteTextView) nodeChain.innerCoordinator).setOnEditorActionListener(new LoginActivity$$ExternalSyntheticLambda5(i3, this));
                                            NodeChain nodeChain2 = this._binding;
                                            nodeChain2.getClass();
                                            ((MaterialAutoCompleteTextView) nodeChain2.innerCoordinator).addTextChangedListener(new SearchView.AnonymousClass10(6, this));
                                            NodeChain nodeChain3 = this._binding;
                                            nodeChain3.getClass();
                                            ((TextInputLayout) nodeChain3.outerCoordinator).setEndIconOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda3
                                                public final /* synthetic */ EditSummaryFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i4 = i;
                                                    EditSummaryFragment editSummaryFragment = this.f$0;
                                                    switch (i4) {
                                                        case 0:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "tts_open", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            try {
                                                                editSummaryFragment.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
                                                                break;
                                                            } catch (ActivityNotFoundException unused) {
                                                                ShareUtil.showMessage(editSummaryFragment.requireActivity(), R.string.error_voice_search_not_available);
                                                                return;
                                                            }
                                                        case 1:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "view_help", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            Context requireContext = editSummaryFragment.requireContext();
                                                            Uri parse = Uri.parse(editSummaryFragment.getString(R.string.meta_edit_summary_url));
                                                            parse.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext, parse);
                                                            break;
                                                        case 2:
                                                            Context requireContext2 = editSummaryFragment.requireContext();
                                                            Uri parse2 = Uri.parse(editSummaryFragment.getString(R.string.meta_minor_edit_url));
                                                            parse2.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext2, parse2);
                                                            break;
                                                        default:
                                                            Context requireContext3 = editSummaryFragment.requireContext();
                                                            Uri parse3 = Uri.parse(editSummaryFragment.getString(R.string.meta_watching_pages_url));
                                                            parse3.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext3, parse3);
                                                            break;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain4 = this._binding;
                                            nodeChain4.getClass();
                                            final int i4 = 1;
                                            ((MaterialButton) nodeChain4.head).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda3
                                                public final /* synthetic */ EditSummaryFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i42 = i4;
                                                    EditSummaryFragment editSummaryFragment = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "tts_open", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            try {
                                                                editSummaryFragment.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
                                                                break;
                                                            } catch (ActivityNotFoundException unused) {
                                                                ShareUtil.showMessage(editSummaryFragment.requireActivity(), R.string.error_voice_search_not_available);
                                                                return;
                                                            }
                                                        case 1:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "view_help", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            Context requireContext = editSummaryFragment.requireContext();
                                                            Uri parse = Uri.parse(editSummaryFragment.getString(R.string.meta_edit_summary_url));
                                                            parse.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext, parse);
                                                            break;
                                                        case 2:
                                                            Context requireContext2 = editSummaryFragment.requireContext();
                                                            Uri parse2 = Uri.parse(editSummaryFragment.getString(R.string.meta_minor_edit_url));
                                                            parse2.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext2, parse2);
                                                            break;
                                                        default:
                                                            Context requireContext3 = editSummaryFragment.requireContext();
                                                            Uri parse3 = Uri.parse(editSummaryFragment.getString(R.string.meta_watching_pages_url));
                                                            parse3.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext3, parse3);
                                                            break;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain5 = this._binding;
                                            nodeChain5.getClass();
                                            ((ImageView) nodeChain5.buffer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda3
                                                public final /* synthetic */ EditSummaryFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i42 = i3;
                                                    EditSummaryFragment editSummaryFragment = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "tts_open", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            try {
                                                                editSummaryFragment.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
                                                                break;
                                                            } catch (ActivityNotFoundException unused) {
                                                                ShareUtil.showMessage(editSummaryFragment.requireActivity(), R.string.error_voice_search_not_available);
                                                                return;
                                                            }
                                                        case 1:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "view_help", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            Context requireContext = editSummaryFragment.requireContext();
                                                            Uri parse = Uri.parse(editSummaryFragment.getString(R.string.meta_edit_summary_url));
                                                            parse.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext, parse);
                                                            break;
                                                        case 2:
                                                            Context requireContext2 = editSummaryFragment.requireContext();
                                                            Uri parse2 = Uri.parse(editSummaryFragment.getString(R.string.meta_minor_edit_url));
                                                            parse2.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext2, parse2);
                                                            break;
                                                        default:
                                                            Context requireContext3 = editSummaryFragment.requireContext();
                                                            Uri parse3 = Uri.parse(editSummaryFragment.getString(R.string.meta_watching_pages_url));
                                                            parse3.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext3, parse3);
                                                            break;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain6 = this._binding;
                                            nodeChain6.getClass();
                                            final int i5 = 3;
                                            ((ImageView) nodeChain6.cachedDiffer).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda3
                                                public final /* synthetic */ EditSummaryFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i42 = i5;
                                                    EditSummaryFragment editSummaryFragment = this.f$0;
                                                    switch (i42) {
                                                        case 0:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "tts_open", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            try {
                                                                editSummaryFragment.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
                                                                break;
                                                            } catch (ActivityNotFoundException unused) {
                                                                ShareUtil.showMessage(editSummaryFragment.requireActivity(), R.string.error_voice_search_not_available);
                                                                return;
                                                            }
                                                        case 1:
                                                            if (((EditSectionActivity) editSummaryFragment.requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                                ImageRecommendationsEvent.Companion.logAction$default(ImageRecommendationsEvent.Companion, "view_help", "editsummary_dialog", editSummaryFragment.getActionDataStringForData(), 8);
                                                            }
                                                            Context requireContext = editSummaryFragment.requireContext();
                                                            Uri parse = Uri.parse(editSummaryFragment.getString(R.string.meta_edit_summary_url));
                                                            parse.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext, parse);
                                                            break;
                                                        case 2:
                                                            Context requireContext2 = editSummaryFragment.requireContext();
                                                            Uri parse2 = Uri.parse(editSummaryFragment.getString(R.string.meta_minor_edit_url));
                                                            parse2.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext2, parse2);
                                                            break;
                                                        default:
                                                            Context requireContext3 = editSummaryFragment.requireContext();
                                                            Uri parse3 = Uri.parse(editSummaryFragment.getString(R.string.meta_watching_pages_url));
                                                            parse3.getClass();
                                                            UriUtil.visitInExternalBrowser(requireContext3, parse3);
                                                            break;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain7 = this._binding;
                                            nodeChain7.getClass();
                                            ((CheckBox) nodeChain7.stack).setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(i5, this));
                                            if (Headers.Companion.isLoggedIn()) {
                                                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 10), null, new SyntaxHighlighter.AnonymousClass2(2, this, (Continuation) null), 2);
                                            } else {
                                                NodeChain nodeChain8 = this._binding;
                                                nodeChain8.getClass();
                                                ((CheckBox) nodeChain8.stack).setEnabled(false);
                                                NodeChain nodeChain9 = this._binding;
                                                nodeChain9.getClass();
                                                ((CheckBox) nodeChain9.stack).setAlpha(0.5f);
                                            }
                                            int[] iArr = ((EditSectionActivity) requireActivity()).getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE ? new int[]{R.string.edit_summary_added_image_and_caption, R.string.edit_summary_added_image} : new int[]{R.string.edit_summary_tag_typo, R.string.edit_summary_tag_grammar, R.string.edit_summary_tag_links};
                                            Context requireContext = requireContext();
                                            PageTitle pageTitle = this.title;
                                            if (pageTitle == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("title");
                                                throw null;
                                            }
                                            SparseArray strings = ContextKt.getStrings(requireContext, pageTitle, iArr);
                                            for (int i6 : iArr) {
                                                Object obj = strings.get(i6);
                                                obj.getClass();
                                                String str = (String) obj;
                                                Chip chip = new Chip(requireContext(), null);
                                                chip.setText(str);
                                                chip.setTextAppearance(R.style.Chip_Accessible);
                                                chip.setChipBackgroundColorResource(Cache.Companion.getThemedAttributeId(requireContext(), R.attr.background_color));
                                                chip.setChipStrokeWidth(Okio__OkioKt.dpToPx(1.0f));
                                                chip.setChipStrokeColor(ColorStateList.valueOf(Cache.Companion.getThemedColor(requireContext(), R.attr.border_color)));
                                                chip.setShapeAppearanceModel(chip.getShapeAppearanceModel().withCornerSize(Okio__OkioKt.dpToPx(8.0f)));
                                                chip.setCheckedIconResource(R.drawable.ic_chip_check_24px);
                                                chip.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(7, this, str));
                                                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                                                int roundedDpToPx = Okio__OkioKt.roundedDpToPx(4.0f);
                                                marginLayoutParams.setMargins(roundedDpToPx, 0, roundedDpToPx, 0);
                                                chip.setLayoutParams(marginLayoutParams);
                                                NodeChain nodeChain10 = this._binding;
                                                nodeChain10.getClass();
                                                ((LinearLayout) nodeChain10.sentinelHead).addView(chip);
                                            }
                                            NodeChain nodeChain11 = this._binding;
                                            nodeChain11.getClass();
                                            ScrollView scrollView2 = (ScrollView) nodeChain11.layoutNode;
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        this.mCalled = true;
        LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(this);
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        ScrollView scrollView = (ScrollView) nodeChain.layoutNode;
        scrollView.getClass();
        NodeChain nodeChain2 = this._binding;
        nodeChain2.getClass();
        MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) nodeChain2.innerCoordinator;
        PageTitle pageTitle = this.title;
        Continuation continuation = null;
        if (pageTitle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("title");
            throw null;
        }
        scrollView.getClass();
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.boundary = lifecycleScope;
        builder.type = scrollView;
        builder.parts = materialAutoCompleteTextView;
        scrollView.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(10, builder));
        BitmapsKt.setTextDirectionByLang(materialAutoCompleteTextView, pageTitle.wikiSite.languageCode);
        AwaitKt.launch$default(lifecycleScope, null, null, new EditSummaryHandler$2(builder, continuation, 0), 3);
        this.editSummaryHandler = builder;
    }
}
