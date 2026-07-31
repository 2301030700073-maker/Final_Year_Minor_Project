package org.wikipedia.edit;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SearchView;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.unit.DpKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.app.ActivityRecreator;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.GroupCaptchaBinding;
import org.wikipedia.databinding.ViewCustomCalendarDayBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.MwException;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.edit.richtext.SpanExtents;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.edit.richtext.SyntaxHighlighter$1$1;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda0;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda10;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;
import org.wikipedia.views.ViewAnimations;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001\bB\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lorg/wikipedia/edit/EditSectionActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;", "Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;", "<init>", "()V", "org/wikipedia/login/LoginClient", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EditSectionActivity extends BaseActivity implements ThemeChooserDialog.Callback, EditPreviewFragment.Callback, LinkPreviewDialog.LoadPageCallback, LinkPreviewDialog.DismissCallback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public ActivityLoginBinding binding;
    public CaptchaHandler captchaHandler;
    public EditPreviewFragment editPreviewFragment;
    public EditSummaryFragment editSummaryFragment;
    public final LinkMovementMethodExt movementMethod;
    public final ActivityResultRegistry$register$2 requestInsertMedia;
    public final ActivityResultRegistry$register$2 requestLogin;
    public boolean sectionTextModified;
    public SyntaxHighlighter syntaxHighlighter;
    public SearchView.AnonymousClass10 textWatcher;
    public final Request.Builder viewModel$delegate;
    public boolean sectionTextFirstLoad = true;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(4, this);

    public EditSectionActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(EditSectionViewModel.class), new Function0(this) { // from class: org.wikipedia.edit.EditSectionActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditSectionActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                EditSectionActivity editSectionActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editSectionActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editSectionActivity.getViewModelStore();
                    default:
                        return editSectionActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.EditSectionActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditSectionActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                EditSectionActivity editSectionActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editSectionActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editSectionActivity.getViewModelStore();
                    default:
                        return editSectionActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.edit.EditSectionActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditSectionActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                EditSectionActivity editSectionActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editSectionActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editSectionActivity.getViewModelStore();
                    default:
                        return editSectionActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        int i4 = 3;
        this.requestLogin = (ActivityResultRegistry$register$2) registerForActivityResult(new EditSectionActivity$$ExternalSyntheticLambda7(this, i), new FragmentManager$FragmentIntentSenderContract(i4));
        this.requestInsertMedia = (ActivityResultRegistry$register$2) registerForActivityResult(new EditSectionActivity$$ExternalSyntheticLambda7(this, i2), new FragmentManager$FragmentIntentSenderContract(i4));
        this.movementMethod = new LinkMovementMethodExt(new EditSectionActivity$$ExternalSyntheticLambda7(this, i3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void clickNextButton() {
        String string;
        WikiSite wikiSite;
        Intent intent = getIntent();
        intent.getClass();
        PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "imageTitle", PageTitle.class));
        String stringExtra = getIntent().getStringExtra("imageSource");
        String stringExtra2 = getIntent().getStringExtra("imageSourceProjects");
        EditSummaryFragment editSummaryFragment = this.editSummaryFragment;
        if (editSummaryFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        if (editSummaryFragment.isActive()) {
            if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                String prefixedText = pageTitle != null ? pageTitle.getPrefixedText() : null;
                String str = prefixedText == null ? "" : prefixedText;
                String str2 = stringExtra == null ? "" : stringExtra;
                String str3 = stringExtra2 == null ? "" : stringExtra2;
                String stringExtra3 = getIntent().getStringExtra("resultImageCaption");
                Boolean valueOf = Boolean.valueOf(!(stringExtra3 == null || stringExtra3.length() == 0));
                String stringExtra4 = getIntent().getStringExtra("resultImageAlt");
                String actionDataString$default = ImageRecommendationsEvent.Companion.getActionDataString$default(companion, str, str2, str3, null, "accepted", null, valueOf, Boolean.valueOf(((stringExtra4 == null || stringExtra4.length() == 0) ? 1 : 0) ^ 1), false, 296);
                String str4 = (pageTitle == null || (wikiSite = pageTitle.wikiSite) == null) ? null : wikiSite.languageCode;
                ImageRecommendationsEvent.Companion.logAction("editsummary_save", "editsummary_dialog", actionDataString$default, str4 != null ? str4 : "");
            }
            doSave();
            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
            PageTitle pageTitle2 = getViewModel().pageTitle;
            ViewSizeResolver$CC.m(companion2, pageTitle2, "saveAttempt", "wikitext", pageTitle2);
            ContextsKt supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setTitle(getString(R.string.preview_edit_summarize_edit_title));
                return;
            }
            return;
        }
        EditPreviewFragment editPreviewFragment = this.editPreviewFragment;
        if (editPreviewFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editPreviewFragment");
            throw null;
        }
        if (!editPreviewFragment.isActive()) {
            Window window = getWindow();
            window.getClass();
            HintHandler hintHandler = new HintHandler(window.getDecorView());
            int i = Build.VERSION.SDK_INT;
            (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
            ActivityLoginBinding activityLoginBinding = this.binding;
            if (activityLoginBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            ((ScrollView) activityLoginBinding.loginCreateAccountButton).setVisibility(8);
            EditPreviewFragment editPreviewFragment2 = this.editPreviewFragment;
            if (editPreviewFragment2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editPreviewFragment");
                throw null;
            }
            PageTitle pageTitle3 = getViewModel().pageTitle;
            ActivityLoginBinding activityLoginBinding2 = this.binding;
            if (activityLoginBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            editPreviewFragment2.showPreview(pageTitle3, ((SyntaxHighlightableEditText) activityLoginBinding2.loginPrimaryContainer).getText().toString());
            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
            PageTitle pageTitle4 = getViewModel().pageTitle;
            ViewSizeResolver$CC.m(companion3, pageTitle4, "saveIntent", "wikitext", pageTitle4);
            ContextsKt supportActionBar2 = getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.setTitle(getString(R.string.edit_preview));
            }
            TypedValue typedValue = new TypedValue();
            if (!getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                return;
            }
            setNavigationBarColor(typedValue.data);
            if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                ImageRecommendationsEvent.Companion companion4 = ImageRecommendationsEvent.Companion;
                String prefixedText2 = pageTitle != null ? pageTitle.getPrefixedText() : null;
                String str5 = prefixedText2 == null ? "" : prefixedText2;
                String str6 = stringExtra == null ? "" : stringExtra;
                String str7 = stringExtra2 == null ? "" : stringExtra2;
                String stringExtra5 = getIntent().getStringExtra("resultImageCaption");
                Boolean valueOf2 = Boolean.valueOf(!(stringExtra5 == null || stringExtra5.length() == 0));
                String stringExtra6 = getIntent().getStringExtra("resultImageAlt");
                ImageRecommendationsEvent.Companion.logImpression("caption_preview", ImageRecommendationsEvent.Companion.getActionDataString$default(companion4, str5, str6, str7, null, "accepted", null, valueOf2, Boolean.valueOf(!(stringExtra6 == null || stringExtra6.length() == 0)), false, 296), getViewModel().pageTitle.wikiSite.languageCode);
                return;
            }
            return;
        }
        if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
            ImageRecommendationsEvent.Companion companion5 = ImageRecommendationsEvent.Companion;
            String prefixedText3 = pageTitle != null ? pageTitle.getPrefixedText() : null;
            String str8 = prefixedText3 == null ? "" : prefixedText3;
            String str9 = stringExtra == null ? "" : stringExtra;
            String str10 = stringExtra2 == null ? "" : stringExtra2;
            String stringExtra7 = getIntent().getStringExtra("resultImageCaption");
            Boolean valueOf3 = Boolean.valueOf(!(stringExtra7 == null || stringExtra7.length() == 0));
            String stringExtra8 = getIntent().getStringExtra("resultImageAlt");
            ImageRecommendationsEvent.Companion.logAction("caption_preview_accept", "caption_preview", ImageRecommendationsEvent.Companion.getActionDataString$default(companion5, str8, str9, str10, null, "accepted", null, valueOf3, Boolean.valueOf(!(stringExtra8 == null || stringExtra8.length() == 0)), false, 296), getViewModel().pageTitle.wikiSite.languageCode);
            String prefixedText4 = pageTitle != null ? pageTitle.getPrefixedText() : null;
            String str11 = prefixedText4 == null ? "" : prefixedText4;
            String str12 = stringExtra == null ? "" : stringExtra;
            String str13 = stringExtra2 == null ? "" : stringExtra2;
            String stringExtra9 = getIntent().getStringExtra("resultImageCaption");
            Boolean valueOf4 = Boolean.valueOf(!(stringExtra9 == null || stringExtra9.length() == 0));
            String stringExtra10 = getIntent().getStringExtra("resultImageAlt");
            ImageRecommendationsEvent.Companion.logImpression("editsummary_dialog", ImageRecommendationsEvent.Companion.getActionDataString$default(companion5, str11, str12, str13, null, "accepted", null, valueOf4, Boolean.valueOf(!(stringExtra10 == null || stringExtra10.length() == 0)), false, 296), getViewModel().pageTitle.wikiSite.languageCode);
        }
        EditSummaryFragment editSummaryFragment2 = this.editSummaryFragment;
        if (editSummaryFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
            NodeChain nodeChain = editSummaryFragment2._binding;
            nodeChain.getClass();
            ((ViewCustomCalendarDayBinding) nodeChain.tail).rootView.setVisibility(0);
            NodeChain nodeChain2 = editSummaryFragment2._binding;
            nodeChain2.getClass();
            ((ViewCustomCalendarDayBinding) nodeChain2.tail).dayCircleBackground.setImageResource(Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_anon_account);
            NodeChain nodeChain3 = editSummaryFragment2._binding;
            nodeChain3.getClass();
            ((ViewCustomCalendarDayBinding) nodeChain3.tail).dayText.setMovementMethod(LinkMovementMethod.getInstance());
            NodeChain nodeChain4 = editSummaryFragment2._binding;
            nodeChain4.getClass();
            TextView textView = ((ViewCustomCalendarDayBinding) nodeChain4.tail).dayText;
            StringUtil stringUtil = StringUtil.INSTANCE;
            if (Headers.Companion.isTemporaryAccount()) {
                string = editSummaryFragment2.getString(R.string.temp_account_edit_status, Headers.Companion.getUserNameFromCookie(), editSummaryFragment2.getString(R.string.temp_accounts_help_url));
            } else {
                string = editSummaryFragment2.getString(((EditSectionViewModel) editSummaryFragment2.viewModel$delegate.getValue()).tempAccountsEnabled ? R.string.temp_account_anon_edit_status : R.string.temp_account_anon_ip_edit_status, editSummaryFragment2.getString(R.string.temp_accounts_help_url));
            }
            textView.setText(StringUtil.fromHtml(string));
        } else {
            NodeChain nodeChain5 = editSummaryFragment2._binding;
            nodeChain5.getClass();
            ((ViewCustomCalendarDayBinding) nodeChain5.tail).rootView.setVisibility(8);
        }
        int i2 = ViewAnimations.$r8$clinit;
        NodeChain nodeChain6 = editSummaryFragment2._binding;
        nodeChain6.getClass();
        ScrollView scrollView = (ScrollView) nodeChain6.layoutNode;
        scrollView.getClass();
        ViewAnimations.fadeIn(scrollView, new EditSummaryFragment$$ExternalSyntheticLambda0(editSummaryFragment2, r12));
        ContextsKt supportActionBar3 = getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.setTitle(getString(R.string.preview_edit_summarize_edit_title));
        }
    }

    public final void displaySectionText() {
        String str;
        List list;
        int i;
        showProgressBar$1(false);
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer).setText(getViewModel().sectionWikitext);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ScrollView) activityLoginBinding2.loginCreateAccountButton).setVisibility(0);
        ActivityLoginBinding activityLoginBinding3 = this.binding;
        if (activityLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((SyntaxHighlightableEditText) activityLoginBinding3.loginPrimaryContainer).setEnabled(getViewModel().editingAllowed);
        String str2 = getViewModel().sectionWikitext;
        if (str2 == null || str2.length() == 0 || (str = getViewModel().textToHighlight) == null || !TextUtils.isGraphic(str)) {
            return;
        }
        ActivityLoginBinding activityLoginBinding4 = this.binding;
        if (activityLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding4.loginPrimaryContainer;
        Editable text = syntaxHighlightableEditText.getText();
        Pattern compile = Pattern.compile("\\s");
        compile.getClass();
        Matcher matcher = compile.matcher(str);
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList(10);
            int i2 = 0;
            do {
                arrayList.add(str.subSequence(i2, matcher.start()).toString());
                i2 = matcher.end();
            } while (matcher.find());
            arrayList.add(str.subSequence(i2, str.length()).toString());
            list = arrayList;
        } else {
            list = Room.listOf(str.toString());
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList2.add(obj);
            }
        }
        Iterator it = arrayList2.iterator();
        int i3 = 0;
        loop1: while (true) {
            i = i3;
            while (it.hasNext() && (i3 = StringsKt.indexOf$default(text, (String) it.next(), i3, false, 4)) != -1) {
                if (i == 0) {
                    break;
                }
            }
        }
        if (i3 == -1) {
            i = StringsKt.indexOf$default(text, (String) CollectionsKt.last((List) arrayList2), 0, false, 6);
            i3 = i;
        }
        if (i3 >= 0) {
            syntaxHighlightableEditText.setSelection(i, ((String) CollectionsKt.last((List) arrayList2)).length() + i3);
            int min = Math.min(i + 100, text.length());
            syntaxHighlightableEditText.requestFocus();
            syntaxHighlightableEditText.postDelayed(new TalkTopicActivity$$ExternalSyntheticLambda10(min, 5, syntaxHighlightableEditText), 500L);
        }
    }

    public final void doExitActionWithConfirmationDialog(Function0 function0) {
        if (!this.sectionTextModified) {
            function0.invoke();
            return;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = getString(R.string.edit_abandon_confirm);
        int i = 3;
        materialAlertDialogBuilder.setPositiveButton(getString(R.string.edit_abandon_confirm_yes), (DialogInterface.OnClickListener) new PageFragment$$ExternalSyntheticLambda28(i, function0));
        materialAlertDialogBuilder.setNegativeButton(getString(R.string.edit_abandon_confirm_no), new TextInputDialog$$ExternalSyntheticLambda2(i));
        materialAlertDialogBuilder.create().show();
    }

    public final void doSave() {
        String str;
        StringUtil stringUtil = StringUtil.INSTANCE;
        String str2 = getViewModel().sectionAnchor;
        String str3 = "";
        if (str2 == null) {
            str2 = "";
        }
        String addUnderscores = StringUtil.addUnderscores(StringUtil.removeHTMLTags(str2));
        EditSummaryFragment editSummaryFragment = this.editSummaryFragment;
        if (editSummaryFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        NodeChain nodeChain = editSummaryFragment._binding;
        nodeChain.getClass();
        Boolean bool = ((CheckBox) nodeChain.current).isChecked() ? Boolean.TRUE : null;
        EditSummaryFragment editSummaryFragment2 = this.editSummaryFragment;
        if (editSummaryFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        NodeChain nodeChain2 = editSummaryFragment2._binding;
        nodeChain2.getClass();
        String str4 = ((CheckBox) nodeChain2.stack).isChecked() ? "watch" : "unwatch";
        if (addUnderscores.length() != 0 && !addUnderscores.equals(getViewModel().pageTitle.getPrefixedText())) {
            str3 = Animation.CC.m("/* ", StringsKt__StringsJVMKt.replace$default(addUnderscores, "_", " "), " */ ");
        } else if (Intrinsics.areEqual(getViewModel().pageTitle.wikiSite.languageCode, "en")) {
            str3 = "/* top */";
        }
        EditSummaryFragment editSummaryFragment3 = this.editSummaryFragment;
        if (editSummaryFragment3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        NodeChain nodeChain3 = editSummaryFragment3._binding;
        nodeChain3.getClass();
        String removeHTMLTags = StringUtil.removeHTMLTags(str3 + ((MaterialAutoCompleteTextView) nodeChain3.innerCoordinator).getText().toString());
        if (!isFinishing()) {
            showProgressBar$1(true);
        }
        EditSectionViewModel viewModel = getViewModel();
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String obj = ((SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer).getText().toString();
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        CaptchaResult captchaResult = captchaHandler.captchaResult;
        String valueOf = String.valueOf(captchaResult != null ? captchaResult.captchaId : null);
        CaptchaHandler captchaHandler2 = this.captchaHandler;
        if (captchaHandler2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        String valueOf2 = String.valueOf(captchaHandler2.captchaWord());
        if (getViewModel().invokeSource == Constants.InvokeSource.TALK_TOPIC_ACTIVITY) {
            str = "app-talk-source";
        } else if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
            str = getIntent().getBooleanExtra("insertedIntoInfobox", false) ? "app-image-add-infobox" : "app-image-add-top";
        } else {
            String str5 = getViewModel().textToHighlight;
            str = (str5 == null || str5.length() == 0) ? getViewModel().sectionID >= 0 ? "app-section-source" : "app-full-source" : "app-select-source";
        }
        String str6 = str;
        removeHTMLTags.getClass();
        obj.getClass();
        StandaloneCoroutine standaloneCoroutine = viewModel.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        viewModel.clientJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new EditSectionViewModel$postEdit$2(viewModel, removeHTMLTags, obj, valueOf, valueOf2, bool, str4, str6, (Continuation) null), 2);
        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
        EditSummaryFragment editSummaryFragment4 = this.editSummaryFragment;
        if (editSummaryFragment4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
            throw null;
        }
        NodeChain nodeChain4 = editSummaryFragment4._binding;
        nodeChain4.getClass();
        MaterialAutoCompleteTextView materialAutoCompleteTextView = (MaterialAutoCompleteTextView) nodeChain4.innerCoordinator;
        companion.getClass();
        String str7 = WikiGamesEvent.getReadableNameForView(materialAutoCompleteTextView) + "." + ((Object) materialAutoCompleteTextView.getText());
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(this, null), str7));
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final PageTitle getParentPageTitle() {
        return getViewModel().pageTitle;
    }

    public final EditSectionViewModel getViewModel() {
        return (EditSectionViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final boolean isNewPage() {
        return false;
    }

    public final void launchLogin(boolean z) {
        Intent putExtra = new Intent(this, (Class<?>) LoginActivity.class).putExtra("login_request_source", "edit").putExtra("create_account_first", z);
        putExtra.getClass();
        this.requestLogin.launch(putExtra, null);
    }

    public final boolean maybeShowTempAccountDialog(final boolean z) {
        String string;
        TextView textView;
        final int i = 0;
        if (!z) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getTempAccountDialogShown() || (Headers.Companion.isLoggedIn() && !Headers.Companion.isTemporaryAccount())) {
                return false;
            }
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, R.style.AlertDialogTheme_Icon_NegativeInactive);
        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
        alertParams.mIconId = Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_anon_account;
        materialAlertDialogBuilder.setTitle(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_using_title : R.string.temp_account_not_logged_in);
        StringUtil stringUtil = StringUtil.INSTANCE;
        final int i2 = 1;
        if (Headers.Companion.isTemporaryAccount()) {
            string = getString(R.string.temp_account_temp_dialog_body, Headers.Companion.getUserName());
        } else {
            string = getString(getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_dialog_body : R.string.temp_account_anon_ip_dialog_body, getString(R.string.temp_accounts_help_url));
        }
        alertParams.mMessage = StringUtil.fromHtml(string);
        int i3 = R.string.temp_account_dialog_ok;
        materialAlertDialogBuilder.setPositiveButton(getString(z ? R.string.temp_account_dialog_ok : R.string.create_account_button), new DialogInterface.OnClickListener() { // from class: org.wikipedia.edit.EditSectionActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                int i5 = i;
                EditSectionActivity editSectionActivity = this;
                boolean z2 = z;
                switch (i5) {
                    case 0:
                        int i6 = EditSectionActivity.$r8$clinit;
                        dialogInterface.dismiss();
                        if (!z2) {
                            editSectionActivity.launchLogin(true);
                            break;
                        }
                        break;
                    default:
                        int i7 = EditSectionActivity.$r8$clinit;
                        dialogInterface.dismiss();
                        if (z2) {
                            editSectionActivity.launchLogin(true);
                            break;
                        }
                        break;
                }
            }
        });
        if (z) {
            i3 = R.string.create_account_login;
        }
        materialAlertDialogBuilder.setNegativeButton(getString(i3), new DialogInterface.OnClickListener() { // from class: org.wikipedia.edit.EditSectionActivity$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                int i5 = i2;
                EditSectionActivity editSectionActivity = this;
                boolean z2 = z;
                switch (i5) {
                    case 0:
                        int i6 = EditSectionActivity.$r8$clinit;
                        dialogInterface.dismiss();
                        if (!z2) {
                            editSectionActivity.launchLogin(true);
                            break;
                        }
                        break;
                    default:
                        int i7 = EditSectionActivity.$r8$clinit;
                        dialogInterface.dismiss();
                        if (z2) {
                            editSectionActivity.launchLogin(true);
                            break;
                        }
                        break;
                }
            }
        });
        AlertDialog show = materialAlertDialogBuilder.show();
        Window window = show.getWindow();
        if (window != null && (textView = (TextView) window.getDecorView().findViewById(android.R.id.message)) != null) {
            textView.setMovementMethod(new LinkMovementMethodExt(new TextLinkScope$$ExternalSyntheticLambda3(5, this, show)));
        }
        Prefs prefs2 = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, true);
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        actionMode.getClass();
        super.onActionModeStarted(actionMode);
        if (actionMode.getTag() == null) {
            int i = 0;
            View inflate = LayoutInflater.from(this).inflate(R.layout.view_action_mode_close_button, (ViewGroup) null, false);
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.close_button);
            if (imageView == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.close_button)));
            } else {
                actionMode.setCustomView((LinearLayout) inflate);
                imageView.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(i, actionMode));
            }
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_edit_section, (ViewGroup) null, false);
        int i2 = R.id.captcha_container;
        View findChildViewById = Room.findChildViewById(inflate, R.id.captcha_container);
        if (findChildViewById != null) {
            GroupCaptchaBinding bind = GroupCaptchaBinding.bind(findChildViewById);
            i2 = R.id.edit_keyboard_overlay;
            WikiTextKeyboardView wikiTextKeyboardView = (WikiTextKeyboardView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay);
            if (wikiTextKeyboardView != null) {
                i2 = R.id.edit_keyboard_overlay_formatting;
                WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = (WikiTextKeyboardFormattingView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay_formatting);
                if (wikiTextKeyboardFormattingView != null) {
                    i2 = R.id.edit_keyboard_overlay_headings;
                    WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = (WikiTextKeyboardHeadingsView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay_headings);
                    if (wikiTextKeyboardHeadingsView != null) {
                        i2 = R.id.edit_section_captcha_container;
                        ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.edit_section_captcha_container);
                        if (scrollView != null) {
                            if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.edit_section_preview_fragment)) != null) {
                                i2 = R.id.edit_section_scroll;
                                ScrollView scrollView2 = (ScrollView) Room.findChildViewById(inflate, R.id.edit_section_scroll);
                                if (scrollView2 != null) {
                                    if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.edit_section_summary_fragment)) != null) {
                                        i2 = R.id.edit_section_text;
                                        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) Room.findChildViewById(inflate, R.id.edit_section_text);
                                        if (syntaxHighlightableEditText != null) {
                                            i2 = R.id.toolbar;
                                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                            if (materialToolbar != null) {
                                                i2 = R.id.view_edit_section_error;
                                                WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.view_edit_section_error);
                                                if (wikiErrorView != null) {
                                                    i2 = R.id.view_progress_bar;
                                                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.view_progress_bar);
                                                    if (linearProgressIndicator != null) {
                                                        ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                                                        this.binding = new ActivityLoginBinding(constraintLayout, bind, wikiTextKeyboardView, wikiTextKeyboardFormattingView, wikiTextKeyboardHeadingsView, scrollView, scrollView2, syntaxHighlightableEditText, materialToolbar, wikiErrorView, linearProgressIndicator);
                                                        setContentView(constraintLayout);
                                                        TypedValue typedValue = new TypedValue();
                                                        int i3 = 1;
                                                        if (!getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true)) {
                                                            typedValue = null;
                                                        }
                                                        if (typedValue == null) {
                                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16842801");
                                                            return;
                                                        }
                                                        setNavigationBarColor(typedValue.data);
                                                        ActivityLoginBinding activityLoginBinding = this.binding;
                                                        if (activityLoginBinding == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                        ContextsKt supportActionBar = getSupportActionBar();
                                                        if (supportActionBar != null) {
                                                            supportActionBar.setTitle("");
                                                        }
                                                        getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                                        ActivityLoginBinding activityLoginBinding2 = this.binding;
                                                        if (activityLoginBinding2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        SyntaxHighlightableEditText syntaxHighlightableEditText2 = (SyntaxHighlightableEditText) activityLoginBinding2.loginPrimaryContainer;
                                                        if (activityLoginBinding2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        this.syntaxHighlighter = new SyntaxHighlighter(this, syntaxHighlightableEditText2, (ScrollView) activityLoginBinding2.loginCreateAccountButton, 500L);
                                                        ActivityLoginBinding activityLoginBinding3 = this.binding;
                                                        if (activityLoginBinding3 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((ScrollView) activityLoginBinding3.loginCreateAccountButton).setSmoothScrollingEnabled(false);
                                                        WikiSite wikiSite = getViewModel().pageTitle.wikiSite;
                                                        ActivityLoginBinding activityLoginBinding4 = this.binding;
                                                        if (activityLoginBinding4 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        LinearLayout linearLayout = ((GroupCaptchaBinding) activityLoginBinding4.captchaContainer).rootView;
                                                        if (activityLoginBinding4 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        this.captchaHandler = new CaptchaHandler(this, wikiSite, linearLayout, (SyntaxHighlightableEditText) activityLoginBinding4.loginPrimaryContainer, "", (String) null, (SVGAndroidRenderer) null, 192);
                                                        Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.edit_section_preview_fragment);
                                                        findFragmentById.getClass();
                                                        this.editPreviewFragment = (EditPreviewFragment) findFragmentById;
                                                        Fragment findFragmentById2 = getSupportFragmentManager().findFragmentById(R.id.edit_section_summary_fragment);
                                                        findFragmentById2.getClass();
                                                        EditSummaryFragment editSummaryFragment = (EditSummaryFragment) findFragmentById2;
                                                        this.editSummaryFragment = editSummaryFragment;
                                                        PageTitle pageTitle = getViewModel().pageTitle;
                                                        pageTitle.getClass();
                                                        editSummaryFragment.title = pageTitle;
                                                        if (bundle == null) {
                                                            EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                            PageTitle pageTitle2 = getViewModel().pageTitle;
                                                            ViewSizeResolver$CC.m(companion, pageTitle2, "init", "wikitext", pageTitle2);
                                                        }
                                                        if (bundle != null) {
                                                            if (bundle.containsKey("hasTemporaryWikitextStored")) {
                                                                EditSectionViewModel viewModel = getViewModel();
                                                                Prefs prefs = Prefs.INSTANCE;
                                                                viewModel.sectionWikitext = PrefsIoUtil.getString(R.string.preference_key_temporary_wikitext_storage, "");
                                                            }
                                                            getViewModel().editingAllowed = bundle.getBoolean("editingAllowed", false);
                                                            this.sectionTextModified = bundle.getBoolean("sectionTextModified", false);
                                                        }
                                                        ActivityLoginBinding activityLoginBinding5 = this.binding;
                                                        if (activityLoginBinding5 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        BitmapsKt.setTextDirectionByLang((SyntaxHighlightableEditText) activityLoginBinding5.loginPrimaryContainer, getViewModel().pageTitle.wikiSite.languageCode);
                                                        int i4 = 2;
                                                        if (getViewModel().sectionWikitext != null) {
                                                            EditSectionViewModel viewModel2 = getViewModel();
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new EditSectionViewModel$postEdit$$inlined$CoroutineExceptionHandler$1(viewModel2, 1), null, new ThumbNode$onAttach$1(29, viewModel2, null), 2);
                                                        } else {
                                                            displaySectionText();
                                                        }
                                                        ActivityLoginBinding activityLoginBinding6 = this.binding;
                                                        if (activityLoginBinding6 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((WikiErrorView) activityLoginBinding6.viewLoginError).setRetryClickListener(new EditSectionActivity$$ExternalSyntheticLambda3(this, i));
                                                        ActivityLoginBinding activityLoginBinding7 = this.binding;
                                                        if (activityLoginBinding7 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((WikiErrorView) activityLoginBinding7.viewLoginError).setBackClickListener(new EditSectionActivity$$ExternalSyntheticLambda3(this, i3));
                                                        ActivityLoginBinding activityLoginBinding8 = this.binding;
                                                        if (activityLoginBinding8 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        SyntaxHighlightableEditText syntaxHighlightableEditText3 = (SyntaxHighlightableEditText) activityLoginBinding8.loginPrimaryContainer;
                                                        SearchView.AnonymousClass10 anonymousClass10 = new SearchView.AnonymousClass10(4, this);
                                                        syntaxHighlightableEditText3.addTextChangedListener(anonymousClass10);
                                                        this.textWatcher = anonymousClass10;
                                                        PageTitle pageTitle3 = getViewModel().pageTitle;
                                                        ActivityLoginBinding activityLoginBinding9 = this.binding;
                                                        if (activityLoginBinding9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        SyntaxHighlightableEditText syntaxHighlightableEditText4 = (SyntaxHighlightableEditText) activityLoginBinding9.loginPrimaryContainer;
                                                        if (activityLoginBinding9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        WikiTextKeyboardView wikiTextKeyboardView2 = (WikiTextKeyboardView) activityLoginBinding9.login2faText;
                                                        if (activityLoginBinding9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView2 = (WikiTextKeyboardFormattingView) activityLoginBinding9.loginPasswordInput;
                                                        if (activityLoginBinding9 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        new SyntaxHighlightViewAdapter(this, pageTitle3, syntaxHighlightableEditText4, wikiTextKeyboardView2, wikiTextKeyboardFormattingView2, (WikiTextKeyboardHeadingsView) activityLoginBinding9.loginUsernameText, Constants.InvokeSource.EDIT_ACTIVITY, this.requestInsertMedia, false, false);
                                                        ActivityLoginBinding activityLoginBinding10 = this.binding;
                                                        if (activityLoginBinding10 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((SyntaxHighlightableEditText) activityLoginBinding10.loginPrimaryContainer).setOnClickListener(new EditSectionActivity$$ExternalSyntheticLambda3(this, i4));
                                                        onEditingPrefsChanged();
                                                        if (getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                                                            startInsertImageFlow();
                                                        }
                                                        ActivityLoginBinding activityLoginBinding11 = this.binding;
                                                        if (activityLoginBinding11 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                            throw null;
                                                        }
                                                        ((SyntaxHighlightableEditText) activityLoginBinding11.loginPrimaryContainer).requestFocus();
                                                        getWindow().setSoftInputMode(3);
                                                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new EditSectionActivity$onCreate$5(this, null, i), 3);
                                                        return;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        i2 = R.id.edit_section_summary_fragment;
                                    }
                                }
                            } else {
                                i2 = R.id.edit_section_preview_fragment;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01a0  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onCreateOptionsMenu(android.view.Menu r8) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditSectionActivity.onCreateOptionsMenu(android.view.Menu):boolean");
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        StandaloneCoroutine standaloneCoroutine = captchaHandler.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
        SearchView.AnonymousClass10 anonymousClass10 = this.textWatcher;
        if (anonymousClass10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textWatcher");
            throw null;
        }
        syntaxHighlightableEditText.removeTextChangedListener(anonymousClass10);
        SyntaxHighlighter syntaxHighlighter = this.syntaxHighlighter;
        if (syntaxHighlighter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("syntaxHighlighter");
            throw null;
        }
        syntaxHighlighter.textBox.getText().clearSpans();
        super.onDestroy();
    }

    public final void onEditFailure(Throwable th) {
        showProgressBar$1(false);
        int i = 2;
        if (th instanceof MwException) {
            MwException mwException = (MwException) th;
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RealImageLoader$execute$2(mwException.error.getKey(), mwException, this, null, 13), 2);
        } else {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
            materialAlertDialogBuilder.setTitle(R.string.dialog_message_edit_failed);
            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = th.getLocalizedMessage();
            materialAlertDialogBuilder.setPositiveButton(R.string.dialog_message_edit_failed_retry, new PageFragment$$ExternalSyntheticLambda28(i, this));
            materialAlertDialogBuilder.setNegativeButton(R.string.dialog_message_edit_failed_cancel, new TextInputDialog$$ExternalSyntheticLambda2(1));
            materialAlertDialogBuilder.show();
        }
        L.e(th);
    }

    public final void onEditSuccess(HttpUrl.Companion companion) {
        if (companion instanceof EditSuccessResult) {
            EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
            PageTitle pageTitle = getViewModel().pageTitle;
            companion2.getClass();
            EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle, "wikitext");
            new Handler(getMainLooper()).postDelayed(new ActivityRecreator.AnonymousClass1(13, this, companion), 2000L);
            return;
        }
        showProgressBar$1(false);
        if (!(companion instanceof CaptchaResult)) {
            EditAttemptStepEvent.Companion companion3 = EditAttemptStepEvent.Companion;
            PageTitle pageTitle2 = getViewModel().pageTitle;
            companion3.getClass();
            pageTitle2.getClass();
            EditAttemptStepEvent.Companion.submitEditAttemptEvent("saveFailure", "wikitext", pageTitle2);
            onEditFailure(new Throwable());
            return;
        }
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ScrollView) activityLoginBinding.loginButton).setVisibility(0);
        CaptchaHandler captchaHandler = this.captchaHandler;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        captchaHandler.token = null;
        captchaHandler.captchaResult = (CaptchaResult) companion;
        captchaHandler.handleCaptcha(false);
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onEditingPrefsChanged() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        Continuation continuation = null;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
        syntaxHighlightableEditText.allowScrollToCursor = false;
        syntaxHighlightableEditText.postDelayed(new MainFragment$$ExternalSyntheticLambda5(6, syntaxHighlightableEditText), 1000L);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText2 = (SyntaxHighlightableEditText) activityLoginBinding2.loginPrimaryContainer;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        int i = 1;
        syntaxHighlightableEditText2.setTextSize(Jsoup.getInstance().getFontSize(true));
        SyntaxHighlighter syntaxHighlighter = this.syntaxHighlighter;
        if (syntaxHighlighter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("syntaxHighlighter");
            throw null;
        }
        Prefs prefs = Prefs.INSTANCE;
        boolean editSyntaxHighlightEnabled = Prefs.getEditSyntaxHighlightEnabled();
        SyntaxHighlightableEditText syntaxHighlightableEditText3 = syntaxHighlighter.textBox;
        syntaxHighlighter.enabled = editSyntaxHighlightEnabled;
        if (editSyntaxHighlightEnabled) {
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(syntaxHighlighter.activity), null, null, new SyntaxHighlighter$1$1(syntaxHighlighter, continuation, i), 3);
        } else {
            StandaloneCoroutine standaloneCoroutine = syntaxHighlighter.currentHighlightJob;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            Editable text = syntaxHighlightableEditText3.getText();
            Object[] spans = text.getSpans(0, text.length(), SpanExtents.class);
            spans.getClass();
            for (Object obj : spans) {
                syntaxHighlightableEditText3.getText().removeSpan((SpanExtents) obj);
            }
        }
        ActivityLoginBinding activityLoginBinding3 = this.binding;
        if (activityLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText4 = (SyntaxHighlightableEditText) activityLoginBinding3.loginPrimaryContainer;
        Prefs prefs2 = Prefs.INSTANCE;
        syntaxHighlightableEditText4.setInputType((Prefs.getEditTypingSuggestionsEnabled() ? 0 : 524432) | 131073);
        ActivityLoginBinding activityLoginBinding4 = this.binding;
        if (activityLoginBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((SyntaxHighlightableEditText) activityLoginBinding4.loginPrimaryContainer).setTypeface(Prefs.getEditMonoSpaceFontEnabled() ? Typeface.MONOSPACE : Typeface.DEFAULT);
        ActivityLoginBinding activityLoginBinding5 = this.binding;
        if (activityLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((SyntaxHighlightableEditText) activityLoginBinding5.loginPrimaryContainer).setShowLineNumbers(Prefs.getEditLineNumbersEnabled());
        ActivityLoginBinding activityLoginBinding6 = this.binding;
        if (activityLoginBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((SyntaxHighlightableEditText) activityLoginBinding6.loginPrimaryContainer).invalidate();
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.DismissCallback
    public final void onLinkPreviewDismiss() {
        if (isDestroyed()) {
            return;
        }
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding != null) {
            ((SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer).postDelayed(new EditSectionActivity$$ExternalSyntheticLambda10(this, 0), 200L);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.LoadPageCallback
    public final void onLinkPreviewLoadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z) {
        pageTitle.getClass();
        historyEntry.getClass();
        doExitActionWithConfirmationDialog(new GamesHubScreenKt$$ExternalSyntheticLambda3(this, z, historyEntry, pageTitle));
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_save_section) {
            clickNextButton();
            return true;
        }
        if (itemId != R.id.menu_edit_theme) {
            if (itemId == R.id.menu_find_in_editor) {
                startActionMode(new ActionMode.Callback() { // from class: org.wikipedia.edit.EditSectionActivity$showFindInEditor$1
                    @Override // android.view.ActionMode.Callback
                    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem2) {
                        actionMode.getClass();
                        menuItem2.getClass();
                        return false;
                    }

                    @Override // android.view.ActionMode.Callback
                    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                        actionMode.getClass();
                        menu.getClass();
                        EditSectionActivity editSectionActivity = EditSectionActivity.this;
                        editSectionActivity.actionMode = actionMode;
                        MenuItem add = menu.add(R.string.edit_section_find_in_page);
                        ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ScrollView scrollView = (ScrollView) activityLoginBinding.loginCreateAccountButton;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
                        SyntaxHighlighter syntaxHighlighter = editSectionActivity.syntaxHighlighter;
                        if (syntaxHighlighter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("syntaxHighlighter");
                            throw null;
                        }
                        ActionMode actionMode2 = editSectionActivity.actionMode;
                        actionMode2.getClass();
                        add.setActionProvider(new FindInEditorActionProvider(scrollView, syntaxHighlightableEditText, syntaxHighlighter, actionMode2));
                        add.expandActionView();
                        return true;
                    }

                    @Override // android.view.ActionMode.Callback
                    public final void onDestroyActionMode(ActionMode actionMode) {
                        actionMode.getClass();
                        EditSectionActivity editSectionActivity = EditSectionActivity.this;
                        SyntaxHighlighter syntaxHighlighter = editSectionActivity.syntaxHighlighter;
                        if (syntaxHighlighter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("syntaxHighlighter");
                            throw null;
                        }
                        syntaxHighlighter.searchQueryPositions = null;
                        syntaxHighlighter.searchQueryLength = 0;
                        syntaxHighlighter.searchQueryPositionIndex = 0;
                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(syntaxHighlighter.activity), null, null, new SyntaxHighlighter$1$1(syntaxHighlighter, null, 2), 3);
                        ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                        if (activityLoginBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
                        int selectionStart = syntaxHighlightableEditText.getSelectionStart();
                        ActivityLoginBinding activityLoginBinding2 = editSectionActivity.binding;
                        if (activityLoginBinding2 != null) {
                            syntaxHighlightableEditText.setSelection(selectionStart, ((SyntaxHighlightableEditText) activityLoginBinding2.loginPrimaryContainer).getSelectionStart());
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                    }

                    @Override // android.view.ActionMode.Callback
                    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                        actionMode.getClass();
                        menu.getClass();
                        actionMode.setTag("actionModeFindInEditor");
                        return false;
                    }
                });
                return true;
            }
            if (itemId == R.id.menu_edit_notices) {
                showEditNotices();
                return true;
            }
            if (itemId != R.id.menu_temp_account) {
                return super.onOptionsItemSelected(menuItem);
            }
            maybeShowTempAccountDialog(true);
            return true;
        }
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        SyntaxHighlightableEditText syntaxHighlightableEditText = (SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer;
        syntaxHighlightableEditText.allowScrollToCursor = false;
        syntaxHighlightableEditText.postDelayed(new MainFragment$$ExternalSyntheticLambda5(6, syntaxHighlightableEditText), 1000L);
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        int i = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
        Okio__OkioKt.show(supportFragmentManager, LoginClient.newInstance(Constants.InvokeSource.EDIT_ACTIVITY, true));
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        EditSectionViewModel viewModel = getViewModel();
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding != null) {
            viewModel.sectionWikitext = ((SyntaxHighlightableEditText) activityLoginBinding.loginPrimaryContainer).getText().toString();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("hasTemporaryWikitextStored", true);
        bundle.putBoolean("sectionTextModified", this.sectionTextModified);
        bundle.putBoolean("editingAllowed", getViewModel().editingAllowed);
        Prefs prefs = Prefs.INSTANCE;
        String str = getViewModel().sectionWikitext;
        if (str == null) {
            str = "";
        }
        PrefsIoUtil.setString(R.string.preference_key_temporary_wikitext_storage, str);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        updateEditLicenseText();
    }

    public final void showEditNotices() {
        if (getViewModel().editNotices.isEmpty()) {
            return;
        }
        new EditNoticesDialog(getViewModel().pageTitle.wikiSite, getViewModel().editNotices, this).show();
    }

    public final void showError$1(Throwable th) {
        Window window = getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        WikiErrorView wikiErrorView = (WikiErrorView) activityLoginBinding.viewLoginError;
        int i2 = WikiErrorView.$r8$clinit;
        wikiErrorView.setError(th, null);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 != null) {
            ((WikiErrorView) activityLoginBinding2.viewLoginError).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final void showProgressBar$1(boolean z) {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) activityLoginBinding.viewProgressBar).setVisibility(z ? 0 : 8);
        invalidateOptionsMenu();
    }

    public final void startInsertImageFlow() {
        Intent intent = getIntent();
        intent.getClass();
        Parcelable parcelable = (Parcelable) DpKt.getParcelableExtra(intent, "imageTitle", PageTitle.class);
        parcelable.getClass();
        String stringExtra = getIntent().getStringExtra("imageSource");
        stringExtra.getClass();
        Intent newIntent$default = ByteString.Companion.newIntent$default(this, getViewModel().pageTitle.wikiSite, getViewModel().pageTitle.getDisplayText(), getViewModel().invokeSource, (PageTitle) parcelable, stringExtra, 64);
        Intent intent2 = getIntent();
        intent2.getClass();
        newIntent$default.putExtra("imageTitle", (Parcelable) DpKt.getParcelableExtra(intent2, "imageTitle", PageTitle.class));
        newIntent$default.putExtra("resultImageCaption", getIntent().getStringExtra("resultImageCaption"));
        newIntent$default.putExtra("resultImageAlt", getIntent().getStringExtra("resultImageAlt"));
        newIntent$default.putExtra("resultImageSize", getIntent().getStringExtra("resultImageSize"));
        newIntent$default.putExtra("resultImageType", getIntent().getStringExtra("resultImageType"));
        newIntent$default.putExtra("resultImagePos", getIntent().getStringExtra("resultImagePos"));
        newIntent$default.putExtra("imageSource", getIntent().getStringExtra("imageSource"));
        newIntent$default.putExtra("imageSourceProjects", getIntent().getStringExtra("imageSourceProjects"));
        this.requestInsertMedia.launch(newIntent$default, null);
    }

    public final void updateEditLicenseText() {
        View requireViewById = ActivityCompat.requireViewById(this, R.id.licenseText);
        requireViewById.getClass();
        TextView textView = (TextView) requireViewById;
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getString(R.string.edit_save_action_license_logged_in, getString(R.string.terms_of_use_url), getString(R.string.cc_by_sa_4_url))));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    @Override // androidx.core.app.ComponentActivity, org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onCancelThemeChooser() {
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleDimImages() {
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleReadingFocusMode() {
    }
}
