package org.wikipedia.edit.insertmedia;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.compose.ui.node.NodeChain;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.textfield.TextInputLayout;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InsertMediaSettingsFragment extends Fragment {
    public NodeChain _binding;
    public InsertMediaActivity activity;
    public TextInputLayout currentVoiceInputParentLayout;
    public final Fragment.AnonymousClass10 voiceSearchLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new InsertMediaSettingsFragment$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(3));

    public final String getAlternativeText() {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        return StringsKt.trim(String.valueOf(((PlainPasteEditText) nodeChain.tail).getText())).toString();
    }

    public final String getCaptionText() {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        return StringsKt.trim(String.valueOf(((PlainPasteEditText) nodeChain.buffer).getText())).toString();
    }

    public final InsertMediaViewModel getViewModel$5() {
        InsertMediaActivity insertMediaActivity = this.activity;
        if (insertMediaActivity != null) {
            return insertMediaActivity.getViewModel();
        }
        Intrinsics.throwUninitializedPropertyAccessException("activity");
        throw null;
    }

    public final void hide(boolean z) {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        ScrollView scrollView = (ScrollView) nodeChain.layoutNode;
        scrollView.getClass();
        scrollView.setVisibility(8);
        InsertMediaActivity insertMediaActivity = this.activity;
        if (insertMediaActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activity");
            throw null;
        }
        insertMediaActivity.invalidateOptionsMenu();
        if (z) {
            NodeChain nodeChain2 = this._binding;
            nodeChain2.getClass();
            ViewUtil.loadImage$default((ImageView) nodeChain2.outerCoordinator, null, null, 28);
            NodeChain nodeChain3 = this._binding;
            nodeChain3.getClass();
            ((TextView) nodeChain3.stack).setText((CharSequence) null);
        }
    }

    public final void launchVoiceInput() {
        try {
            this.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
        } catch (ActivityNotFoundException unused) {
            ShareUtil.showMessage(requireActivity(), R.string.error_voice_search_not_available);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        WikiSite wikiSite;
        layoutInflater.getClass();
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.fragment_insert_media_settings, viewGroup, false);
        int i2 = R.id.advancedSettings;
        Button button = (Button) Room.findChildViewById(inflate, R.id.advancedSettings);
        String str = null;
        if (button != null) {
            i2 = R.id.imageInfoContainer;
            WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.imageInfoContainer);
            if (wikiCardView != null) {
                i2 = R.id.imageView;
                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageView);
                if (imageView != null) {
                    ScrollView scrollView = (ScrollView) inflate;
                    i2 = R.id.mediaAlternativeText;
                    PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.mediaAlternativeText);
                    if (plainPasteEditText != null) {
                        i2 = R.id.mediaAlternativeTextLayout;
                        TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.mediaAlternativeTextLayout);
                        if (textInputLayout != null) {
                            i2 = R.id.mediaCaptionLayout;
                            TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate, R.id.mediaCaptionLayout);
                            if (textInputLayout2 != null) {
                                i2 = R.id.mediaCaptionText;
                                PlainPasteEditText plainPasteEditText2 = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.mediaCaptionText);
                                if (plainPasteEditText2 != null) {
                                    i2 = R.id.mediaDescription;
                                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.mediaDescription);
                                    if (textView != null) {
                                        i2 = R.id.mediaTitle;
                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.mediaTitle);
                                        if (textView2 != null) {
                                            this._binding = new NodeChain(scrollView, button, wikiCardView, imageView, plainPasteEditText, textInputLayout, textInputLayout2, plainPasteEditText2, textView, textView2, 2);
                                            this.activity = (InsertMediaActivity) requireActivity();
                                            NodeChain nodeChain = this._binding;
                                            nodeChain.getClass();
                                            ((TextInputLayout) nodeChain.current).setEndIconOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$$ExternalSyntheticLambda1
                                                public final /* synthetic */ InsertMediaSettingsFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i3 = i;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
                                                    switch (i3) {
                                                        case 0:
                                                            NodeChain nodeChain2 = insertMediaSettingsFragment._binding;
                                                            nodeChain2.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain2.current;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 1:
                                                            NodeChain nodeChain3 = insertMediaSettingsFragment._binding;
                                                            nodeChain3.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain3.head;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 2:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("advanced_setting_open");
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding.rootView.setVisibility(8);
                                                            FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding2.searchContainer.setVisibility(8);
                                                            InsertMediaSettingsFragment insertMediaSettingsFragment2 = insertMediaActivity.insertMediaSettingsFragment;
                                                            if (insertMediaSettingsFragment2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                                                                throw null;
                                                            }
                                                            insertMediaSettingsFragment2.hide(false);
                                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = insertMediaActivity.insertMediaAdvancedSettingsFragment;
                                                            if (insertMediaAdvancedSettingsFragment == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaAdvancedSettingsFragment");
                                                                throw null;
                                                            }
                                                            Request.Builder builder = insertMediaAdvancedSettingsFragment._binding;
                                                            builder.getClass();
                                                            ScrollView scrollView2 = (ScrollView) builder.url;
                                                            scrollView2.getClass();
                                                            scrollView2.setVisibility(0);
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            insertMediaActivity2.invalidateOptionsMenu();
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            ContextsKt supportActionBar = insertMediaActivity3.getSupportActionBar();
                                                            if (supportActionBar != null) {
                                                                supportActionBar.setTitle(insertMediaAdvancedSettingsFragment.getString(R.string.insert_media_advanced_settings));
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("image_detail_view");
                                                            PageTitle pageTitle = insertMediaSettingsFragment.getViewModel$5().selectedImage;
                                                            if (pageTitle != null) {
                                                                String prefixedText = pageTitle.getPrefixedText();
                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                String displayText = pageTitle.getDisplayText();
                                                                String str2 = pageTitle.description;
                                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                                if (str2 == null) {
                                                                    str2 = "";
                                                                }
                                                                PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(prefixedText, appOrSystemLanguageCode, pageTitle, displayText, StringUtil.fromHtml(StringUtil.removeStyleTags(str2)).toString(), pageTitle.thumbUrl, null, null, 1984);
                                                                FragmentManagerImpl childFragmentManager = insertMediaSettingsFragment.getChildFragmentManager();
                                                                childFragmentManager.getClass();
                                                                ImagePreviewDialog imagePreviewDialog = new ImagePreviewDialog();
                                                                imagePreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("summary", pageSummaryForEdit), new Pair("action", null)));
                                                                Okio__OkioKt.show(childFragmentManager, imagePreviewDialog);
                                                                return;
                                                            }
                                                            return;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain2 = this._binding;
                                            nodeChain2.getClass();
                                            final int i3 = 1;
                                            ((TextInputLayout) nodeChain2.head).setEndIconOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$$ExternalSyntheticLambda1
                                                public final /* synthetic */ InsertMediaSettingsFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i32 = i3;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
                                                    switch (i32) {
                                                        case 0:
                                                            NodeChain nodeChain22 = insertMediaSettingsFragment._binding;
                                                            nodeChain22.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain22.current;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 1:
                                                            NodeChain nodeChain3 = insertMediaSettingsFragment._binding;
                                                            nodeChain3.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain3.head;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 2:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("advanced_setting_open");
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding.rootView.setVisibility(8);
                                                            FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding2.searchContainer.setVisibility(8);
                                                            InsertMediaSettingsFragment insertMediaSettingsFragment2 = insertMediaActivity.insertMediaSettingsFragment;
                                                            if (insertMediaSettingsFragment2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                                                                throw null;
                                                            }
                                                            insertMediaSettingsFragment2.hide(false);
                                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = insertMediaActivity.insertMediaAdvancedSettingsFragment;
                                                            if (insertMediaAdvancedSettingsFragment == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaAdvancedSettingsFragment");
                                                                throw null;
                                                            }
                                                            Request.Builder builder = insertMediaAdvancedSettingsFragment._binding;
                                                            builder.getClass();
                                                            ScrollView scrollView2 = (ScrollView) builder.url;
                                                            scrollView2.getClass();
                                                            scrollView2.setVisibility(0);
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            insertMediaActivity2.invalidateOptionsMenu();
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            ContextsKt supportActionBar = insertMediaActivity3.getSupportActionBar();
                                                            if (supportActionBar != null) {
                                                                supportActionBar.setTitle(insertMediaAdvancedSettingsFragment.getString(R.string.insert_media_advanced_settings));
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("image_detail_view");
                                                            PageTitle pageTitle = insertMediaSettingsFragment.getViewModel$5().selectedImage;
                                                            if (pageTitle != null) {
                                                                String prefixedText = pageTitle.getPrefixedText();
                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                String displayText = pageTitle.getDisplayText();
                                                                String str2 = pageTitle.description;
                                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                                if (str2 == null) {
                                                                    str2 = "";
                                                                }
                                                                PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(prefixedText, appOrSystemLanguageCode, pageTitle, displayText, StringUtil.fromHtml(StringUtil.removeStyleTags(str2)).toString(), pageTitle.thumbUrl, null, null, 1984);
                                                                FragmentManagerImpl childFragmentManager = insertMediaSettingsFragment.getChildFragmentManager();
                                                                childFragmentManager.getClass();
                                                                ImagePreviewDialog imagePreviewDialog = new ImagePreviewDialog();
                                                                imagePreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("summary", pageSummaryForEdit), new Pair("action", null)));
                                                                Okio__OkioKt.show(childFragmentManager, imagePreviewDialog);
                                                                return;
                                                            }
                                                            return;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain3 = this._binding;
                                            nodeChain3.getClass();
                                            final int i4 = 2;
                                            ((Button) nodeChain3.sentinelHead).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$$ExternalSyntheticLambda1
                                                public final /* synthetic */ InsertMediaSettingsFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i32 = i4;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
                                                    switch (i32) {
                                                        case 0:
                                                            NodeChain nodeChain22 = insertMediaSettingsFragment._binding;
                                                            nodeChain22.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain22.current;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 1:
                                                            NodeChain nodeChain32 = insertMediaSettingsFragment._binding;
                                                            nodeChain32.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain32.head;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 2:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("advanced_setting_open");
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding.rootView.setVisibility(8);
                                                            FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding2.searchContainer.setVisibility(8);
                                                            InsertMediaSettingsFragment insertMediaSettingsFragment2 = insertMediaActivity.insertMediaSettingsFragment;
                                                            if (insertMediaSettingsFragment2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                                                                throw null;
                                                            }
                                                            insertMediaSettingsFragment2.hide(false);
                                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = insertMediaActivity.insertMediaAdvancedSettingsFragment;
                                                            if (insertMediaAdvancedSettingsFragment == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaAdvancedSettingsFragment");
                                                                throw null;
                                                            }
                                                            Request.Builder builder = insertMediaAdvancedSettingsFragment._binding;
                                                            builder.getClass();
                                                            ScrollView scrollView2 = (ScrollView) builder.url;
                                                            scrollView2.getClass();
                                                            scrollView2.setVisibility(0);
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            insertMediaActivity2.invalidateOptionsMenu();
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            ContextsKt supportActionBar = insertMediaActivity3.getSupportActionBar();
                                                            if (supportActionBar != null) {
                                                                supportActionBar.setTitle(insertMediaAdvancedSettingsFragment.getString(R.string.insert_media_advanced_settings));
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("image_detail_view");
                                                            PageTitle pageTitle = insertMediaSettingsFragment.getViewModel$5().selectedImage;
                                                            if (pageTitle != null) {
                                                                String prefixedText = pageTitle.getPrefixedText();
                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                String displayText = pageTitle.getDisplayText();
                                                                String str2 = pageTitle.description;
                                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                                if (str2 == null) {
                                                                    str2 = "";
                                                                }
                                                                PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(prefixedText, appOrSystemLanguageCode, pageTitle, displayText, StringUtil.fromHtml(StringUtil.removeStyleTags(str2)).toString(), pageTitle.thumbUrl, null, null, 1984);
                                                                FragmentManagerImpl childFragmentManager = insertMediaSettingsFragment.getChildFragmentManager();
                                                                childFragmentManager.getClass();
                                                                ImagePreviewDialog imagePreviewDialog = new ImagePreviewDialog();
                                                                imagePreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("summary", pageSummaryForEdit), new Pair("action", null)));
                                                                Okio__OkioKt.show(childFragmentManager, imagePreviewDialog);
                                                                return;
                                                            }
                                                            return;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain4 = this._binding;
                                            nodeChain4.getClass();
                                            final int i5 = 3;
                                            ((WikiCardView) nodeChain4.innerCoordinator).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$$ExternalSyntheticLambda1
                                                public final /* synthetic */ InsertMediaSettingsFragment f$0;

                                                {
                                                    this.f$0 = this;
                                                }

                                                @Override // android.view.View.OnClickListener
                                                public final void onClick(View view) {
                                                    int i32 = i5;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.f$0;
                                                    switch (i32) {
                                                        case 0:
                                                            NodeChain nodeChain22 = insertMediaSettingsFragment._binding;
                                                            nodeChain22.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain22.current;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 1:
                                                            NodeChain nodeChain32 = insertMediaSettingsFragment._binding;
                                                            nodeChain32.getClass();
                                                            insertMediaSettingsFragment.currentVoiceInputParentLayout = (TextInputLayout) nodeChain32.head;
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("tts_open");
                                                            insertMediaSettingsFragment.launchVoiceInput();
                                                            return;
                                                        case 2:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("advanced_setting_open");
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding.rootView.setVisibility(8);
                                                            FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                                                            if (fragmentPlacesBinding2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                throw null;
                                                            }
                                                            fragmentPlacesBinding2.searchContainer.setVisibility(8);
                                                            InsertMediaSettingsFragment insertMediaSettingsFragment2 = insertMediaActivity.insertMediaSettingsFragment;
                                                            if (insertMediaSettingsFragment2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                                                                throw null;
                                                            }
                                                            insertMediaSettingsFragment2.hide(false);
                                                            InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = insertMediaActivity.insertMediaAdvancedSettingsFragment;
                                                            if (insertMediaAdvancedSettingsFragment == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("insertMediaAdvancedSettingsFragment");
                                                                throw null;
                                                            }
                                                            Request.Builder builder = insertMediaAdvancedSettingsFragment._binding;
                                                            builder.getClass();
                                                            ScrollView scrollView2 = (ScrollView) builder.url;
                                                            scrollView2.getClass();
                                                            scrollView2.setVisibility(0);
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity2 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            insertMediaActivity2.invalidateOptionsMenu();
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaAdvancedSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            ContextsKt supportActionBar = insertMediaActivity3.getSupportActionBar();
                                                            if (supportActionBar != null) {
                                                                supportActionBar.setTitle(insertMediaAdvancedSettingsFragment.getString(R.string.insert_media_advanced_settings));
                                                                return;
                                                            }
                                                            return;
                                                        default:
                                                            insertMediaSettingsFragment.sendInsertMediaEvent("image_detail_view");
                                                            PageTitle pageTitle = insertMediaSettingsFragment.getViewModel$5().selectedImage;
                                                            if (pageTitle != null) {
                                                                String prefixedText = pageTitle.getPrefixedText();
                                                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                                String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                                                                String displayText = pageTitle.getDisplayText();
                                                                String str2 = pageTitle.description;
                                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                                if (str2 == null) {
                                                                    str2 = "";
                                                                }
                                                                PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(prefixedText, appOrSystemLanguageCode, pageTitle, displayText, StringUtil.fromHtml(StringUtil.removeStyleTags(str2)).toString(), pageTitle.thumbUrl, null, null, 1984);
                                                                FragmentManagerImpl childFragmentManager = insertMediaSettingsFragment.getChildFragmentManager();
                                                                childFragmentManager.getClass();
                                                                ImagePreviewDialog imagePreviewDialog = new ImagePreviewDialog();
                                                                imagePreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("summary", pageSummaryForEdit), new Pair("action", null)));
                                                                Okio__OkioKt.show(childFragmentManager, imagePreviewDialog);
                                                                return;
                                                            }
                                                            return;
                                                    }
                                                }
                                            });
                                            NodeChain nodeChain5 = this._binding;
                                            nodeChain5.getClass();
                                            ((PlainPasteEditText) nodeChain5.buffer).addTextChangedListener(new TextWatcher(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1
                                                public final /* synthetic */ InsertMediaSettingsFragment this$0;

                                                {
                                                    this.this$0 = this;
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void afterTextChanged(Editable editable) {
                                                    int i6 = i;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.this$0;
                                                    switch (i6) {
                                                        case 0:
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            if (insertMediaActivity.isDestroyed()) {
                                                                return;
                                                            }
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity2 != null) {
                                                                insertMediaActivity2.invalidateOptionsMenu();
                                                                return;
                                                            } else {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                        default:
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            if (insertMediaActivity3.isDestroyed()) {
                                                                return;
                                                            }
                                                            InsertMediaActivity insertMediaActivity4 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity4 != null) {
                                                                insertMediaActivity4.invalidateOptionsMenu();
                                                                return;
                                                            } else {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                    }
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                                                    int i9 = i;
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                                                    int i9 = i;
                                                }

                                                private final void beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(int i6, int i7, int i8, CharSequence charSequence) {
                                                }
                                            });
                                            NodeChain nodeChain6 = this._binding;
                                            nodeChain6.getClass();
                                            ((PlainPasteEditText) nodeChain6.tail).addTextChangedListener(new TextWatcher(this) { // from class: org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1
                                                public final /* synthetic */ InsertMediaSettingsFragment this$0;

                                                {
                                                    this.this$0 = this;
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void afterTextChanged(Editable editable) {
                                                    int i6 = i3;
                                                    InsertMediaSettingsFragment insertMediaSettingsFragment = this.this$0;
                                                    switch (i6) {
                                                        case 0:
                                                            InsertMediaActivity insertMediaActivity = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            if (insertMediaActivity.isDestroyed()) {
                                                                return;
                                                            }
                                                            InsertMediaActivity insertMediaActivity2 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity2 != null) {
                                                                insertMediaActivity2.invalidateOptionsMenu();
                                                                return;
                                                            } else {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                        default:
                                                            InsertMediaActivity insertMediaActivity3 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity3 == null) {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                            if (insertMediaActivity3.isDestroyed()) {
                                                                return;
                                                            }
                                                            InsertMediaActivity insertMediaActivity4 = insertMediaSettingsFragment.activity;
                                                            if (insertMediaActivity4 != null) {
                                                                insertMediaActivity4.invalidateOptionsMenu();
                                                                return;
                                                            } else {
                                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                                throw null;
                                                            }
                                                    }
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                                                    int i9 = i3;
                                                }

                                                @Override // android.text.TextWatcher
                                                public final void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
                                                    int i9 = i3;
                                                }

                                                private final void beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void beforeTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$1(int i6, int i7, int i8, CharSequence charSequence) {
                                                }

                                                private final void onTextChanged$org$wikipedia$edit$insertmedia$InsertMediaSettingsFragment$onCreateView$$inlined$addTextChangedListener$default$2(int i6, int i7, int i8, CharSequence charSequence) {
                                                }
                                            });
                                            NodeChain nodeChain7 = this._binding;
                                            nodeChain7.getClass();
                                            PlainPasteEditText plainPasteEditText3 = (PlainPasteEditText) nodeChain7.buffer;
                                            InsertMediaActivity insertMediaActivity = this.activity;
                                            if (insertMediaActivity == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                throw null;
                                            }
                                            plainPasteEditText3.setText(insertMediaActivity.getIntent().getStringExtra("resultImageCaption"));
                                            NodeChain nodeChain8 = this._binding;
                                            nodeChain8.getClass();
                                            PlainPasteEditText plainPasteEditText4 = (PlainPasteEditText) nodeChain8.tail;
                                            InsertMediaActivity insertMediaActivity2 = this.activity;
                                            if (insertMediaActivity2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("activity");
                                                throw null;
                                            }
                                            plainPasteEditText4.setText(insertMediaActivity2.getIntent().getStringExtra("resultImageAlt"));
                                            LinkMovementMethodExt linkMovementMethodExt = new LinkMovementMethodExt(new InsertMediaSettingsFragment$$ExternalSyntheticLambda0(this));
                                            NodeChain nodeChain9 = this._binding;
                                            nodeChain9.getClass();
                                            AppCompatTextView appCompatTextView = (AppCompatTextView) ((TextInputLayout) nodeChain9.current).findViewById(R.id.textinput_helper_text);
                                            appCompatTextView.setLinkTextColor(appCompatTextView.getCurrentTextColor());
                                            String string = getString(R.string.image_captions_style_url);
                                            string.getClass();
                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                            Headers.Companion.setTextWithDrawables(appCompatTextView, StringUtil.fromHtml("<a href=\"" + string + "\">" + getString(R.string.insert_media_settings_caption_description) + " ^1</a>"), R.drawable.ic_open_in_new_black_24px);
                                            appCompatTextView.setMovementMethod(linkMovementMethodExt);
                                            NodeChain nodeChain10 = this._binding;
                                            nodeChain10.getClass();
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ((TextInputLayout) nodeChain10.head).findViewById(R.id.textinput_helper_text);
                                            appCompatTextView2.setLinkTextColor(appCompatTextView2.getCurrentTextColor());
                                            String string2 = getString(R.string.image_alt_text_style_url);
                                            string2.getClass();
                                            Headers.Companion.setTextWithDrawables(appCompatTextView2, StringUtil.fromHtml("<a href=\"" + string2 + "\">" + getString(R.string.insert_media_settings_alternative_text_description) + " ^1</a>"), R.drawable.ic_open_in_new_black_24px);
                                            appCompatTextView2.setMovementMethod(linkMovementMethodExt);
                                            if (getViewModel$5().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE && getViewModel$5().selectedImage != null) {
                                                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                                                PageTitle pageTitle = getViewModel$5().selectedImage;
                                                String prefixedText = pageTitle != null ? pageTitle.getPrefixedText() : null;
                                                prefixedText.getClass();
                                                String actionDataString$default = ImageRecommendationsEvent.Companion.getActionDataString$default(companion, prefixedText, getViewModel$5().selectedImageSource, getViewModel$5().selectedImageSourceProjects, null, "accepted", null, null, null, false, 488);
                                                PageTitle pageTitle2 = getViewModel$5().selectedImage;
                                                if (pageTitle2 != null && (wikiSite = pageTitle2.wikiSite) != null) {
                                                    str = wikiSite.languageCode;
                                                }
                                                str.getClass();
                                                ImageRecommendationsEvent.Companion.logImpression("caption_entry", actionDataString$default, str);
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

    public final void sendInsertMediaEvent(String str) {
        WikiSite wikiSite;
        if (getViewModel$5().invokeSource != Constants.InvokeSource.EDIT_ADD_IMAGE || getViewModel$5().selectedImage == null) {
            return;
        }
        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
        PageTitle pageTitle = getViewModel$5().selectedImage;
        String str2 = null;
        String prefixedText = pageTitle != null ? pageTitle.getPrefixedText() : null;
        prefixedText.getClass();
        String actionDataString$default = ImageRecommendationsEvent.Companion.getActionDataString$default(companion, prefixedText, getViewModel$5().selectedImageSource, getViewModel$5().selectedImageSourceProjects, null, "accepted", null, null, null, false, 488);
        PageTitle pageTitle2 = getViewModel$5().selectedImage;
        if (pageTitle2 != null && (wikiSite = pageTitle2.wikiSite) != null) {
            str2 = wikiSite.languageCode;
        }
        str2.getClass();
        ImageRecommendationsEvent.Companion.logAction(str, "caption_entry", actionDataString$default, str2);
    }

    public final void show() {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        ScrollView scrollView = (ScrollView) nodeChain.layoutNode;
        scrollView.getClass();
        scrollView.setVisibility(0);
        InsertMediaActivity insertMediaActivity = this.activity;
        if (insertMediaActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activity");
            throw null;
        }
        insertMediaActivity.invalidateOptionsMenu();
        InsertMediaActivity insertMediaActivity2 = this.activity;
        if (insertMediaActivity2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activity");
            throw null;
        }
        ContextsKt supportActionBar = insertMediaActivity2.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(getString(R.string.insert_media_settings));
        }
        PageTitle pageTitle = getViewModel$5().selectedImage;
        if (pageTitle != null) {
            NodeChain nodeChain2 = this._binding;
            nodeChain2.getClass();
            ViewUtil.loadImage$default((ImageView) nodeChain2.outerCoordinator, pageTitle.thumbUrl, null, 28);
            NodeChain nodeChain3 = this._binding;
            nodeChain3.getClass();
            ((TextView) nodeChain3.cachedDiffer).setText(pageTitle.getText());
            NodeChain nodeChain4 = this._binding;
            nodeChain4.getClass();
            TextView textView = (TextView) nodeChain4.stack;
            StringUtil stringUtil = StringUtil.INSTANCE;
            String str = pageTitle.description;
            if (str == null) {
                str = "";
            }
            if (str.length() == 0) {
                str = pageTitle.getDisplayText();
            }
            textView.setText(StringsKt.trim(StringUtil.removeHTMLTags(str)).toString());
        }
        NodeChain nodeChain5 = this._binding;
        nodeChain5.getClass();
        ((TextInputLayout) nodeChain5.current).requestFocus();
        NodeChain nodeChain6 = this._binding;
        nodeChain6.getClass();
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) nodeChain6.buffer;
        Object systemService = plainPasteEditText.getContext().getSystemService("input_method");
        systemService.getClass();
        ((InputMethodManager) systemService).showSoftInput(plainPasteEditText, 1);
    }
}
