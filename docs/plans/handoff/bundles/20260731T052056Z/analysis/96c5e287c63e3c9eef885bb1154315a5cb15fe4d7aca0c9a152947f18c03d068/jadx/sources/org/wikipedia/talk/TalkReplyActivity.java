package org.wikipedia.talk;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.method.LinkMovementMethod;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.SearchView;
import androidx.compose.animation.core.Animation;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.internal.DefaultSocket;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.databinding.ViewCustomCalendarDayBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.edit.SyntaxHighlightViewAdapter;
import org.wikipedia.edit.WikiTextKeyboardFormattingView;
import org.wikipedia.edit.WikiTextKeyboardHeadingsView;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5;
import org.wikipedia.views.TextInputDialog;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;
import org.wikipedia.views.UserMentionEditText;
import org.wikipedia.views.UserMentionInputView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0007\bB\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lorg/wikipedia/talk/TalkReplyActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/views/UserMentionInputView$Listener;", "Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$DismissCallback;", "<init>", "()V", "TalkLinkHandler", "org/wikipedia/talk/UserTalkPopupHelper", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkReplyActivity extends BaseActivity implements UserMentionInputView.Listener, EditPreviewFragment.Callback, LinkPreviewDialog.DismissCallback {
    public static final TalkReplyActivity$special$$inlined$lruCache$default$1 draftReplies = new TalkReplyActivity$special$$inlined$lruCache$default$1(10);
    public ActivityTalkReplyBinding binding;
    public final LinkMovementMethodExt licenseTextMovementMethod;
    public TalkLinkHandler linkHandler;
    public final LinkMovementMethodExt linkMovementMethod;
    public EditPreviewFragment messagePreviewFragment;
    public final ActivityResultRegistry$register$2 requestInsertMedia;
    public final ActivityResultRegistry$register$2 requestLogin;
    public boolean savedSuccess;
    public boolean subjectOrBodyModified;
    public SearchView.AnonymousClass10 textWatcher;
    public boolean userMentionScrolled;
    public final Request.Builder viewModel$delegate;
    public boolean shouldWatchText = true;
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(12, this);

    public TalkReplyActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TalkReplyViewModel.class), new Function0(this) { // from class: org.wikipedia.talk.TalkReplyActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkReplyActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                TalkReplyActivity talkReplyActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkReplyActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkReplyActivity.getViewModelStore();
                    default:
                        return talkReplyActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.TalkReplyActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkReplyActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                TalkReplyActivity talkReplyActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkReplyActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkReplyActivity.getViewModelStore();
                    default:
                        return talkReplyActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.TalkReplyActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkReplyActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                TalkReplyActivity talkReplyActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkReplyActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkReplyActivity.getViewModelStore();
                    default:
                        return talkReplyActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.linkMovementMethod = new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandlerWithTextAndCoords) new TalkReplyActivity$$ExternalSyntheticLambda0(this, i));
        this.licenseTextMovementMethod = new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new TalkReplyActivity$$ExternalSyntheticLambda0(this, i3));
        int i4 = 3;
        this.requestLogin = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkReplyActivity$$ExternalSyntheticLambda0(this, i4), new FragmentManager$FragmentIntentSenderContract(i4));
        this.requestInsertMedia = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkReplyActivity$$ExternalSyntheticLambda0(this, 4), new FragmentManager$FragmentIntentSenderContract(i4));
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final PageTitle getParentPageTitle() {
        return getViewModel().pageTitle;
    }

    public final TalkReplyViewModel getViewModel() {
        return (TalkReplyViewModel) this.viewModel$delegate.getValue();
    }

    public final String getWikitextBody() {
        ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
        if (activityTalkReplyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String obj = StringsKt.trim(((UserMentionInputView) activityTalkReplyBinding.replyInputView).getEditText().getText().toString()).toString();
        String string = getString(R.string.username_wikitext);
        string.getClass();
        String prefixedText = getViewModel().pageTitle.getPrefixedText();
        StringUtil stringUtil = StringUtil.INSTANCE;
        String string2 = getString(R.string.wikiText_replace_url, prefixedText, "@".concat(StringsKt.substringAfter$default(getViewModel().pageTitle.getPrefixedText(), ':')));
        string2.getClass();
        String replace$default = StringsKt__StringsJVMKt.replace$default(obj, string, string2);
        String string3 = getString(R.string.sender_username_wikitext);
        string3.getClass();
        String replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, string3, Headers.Companion.getUserName());
        String string4 = getString(R.string.diff_link_wikitext);
        string4.getClass();
        return StringsKt__StringsJVMKt.replace$default(replace$default2, string4, getViewModel().pageTitle.getWebApiUrl("diff=" + getViewModel().toRevisionId + "&oldid=" + getViewModel().fromRevisionId + "&variant=" + getViewModel().pageTitle.wikiSite.languageCode));
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final boolean isNewPage() {
        return !getViewModel().doesPageExist;
    }

    public final void launchLogin$1(boolean z) {
        Intent putExtra = new Intent(this, (Class<?>) LoginActivity.class).putExtra("login_request_source", "edit").putExtra("create_account_first", z);
        putExtra.getClass();
        this.requestLogin.launch(putExtra, null);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        CharSequence charSequence;
        ContextsKt supportActionBar;
        super.onCreate(bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_talk_reply, (ViewGroup) null, false);
        int i2 = R.id.edit_keyboard_overlay;
        WikiTextKeyboardView wikiTextKeyboardView = (WikiTextKeyboardView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay);
        if (wikiTextKeyboardView != null) {
            i2 = R.id.edit_keyboard_overlay_formatting;
            WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView = (WikiTextKeyboardFormattingView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay_formatting);
            if (wikiTextKeyboardFormattingView != null) {
                i2 = R.id.edit_keyboard_overlay_headings;
                WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView = (WikiTextKeyboardHeadingsView) Room.findChildViewById(inflate, R.id.edit_keyboard_overlay_headings);
                if (wikiTextKeyboardHeadingsView != null) {
                    i2 = R.id.footerContainer;
                    View findChildViewById = Room.findChildViewById(inflate, R.id.footerContainer);
                    if (findChildViewById != null) {
                        ViewCustomCalendarDayBinding bind = ViewCustomCalendarDayBinding.bind(findChildViewById);
                        i2 = R.id.learnMoreButton;
                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.learnMoreButton);
                        if (textView != null) {
                            i2 = R.id.message_preview_fragment;
                            if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.message_preview_fragment)) != null) {
                                int i3 = R.id.progressBar;
                                LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
                                if (linearProgressIndicator != null) {
                                    i3 = R.id.replyInputView;
                                    UserMentionInputView userMentionInputView = (UserMentionInputView) Room.findChildViewById(inflate, R.id.replyInputView);
                                    if (userMentionInputView != null) {
                                        i3 = R.id.replyNextButton;
                                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.replyNextButton);
                                        if (textView2 != null) {
                                            i3 = R.id.replySubjectLayout;
                                            TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(inflate, R.id.replySubjectLayout);
                                            if (textInputLayout != null) {
                                                i3 = R.id.replySubjectText;
                                                PlainPasteEditText plainPasteEditText = (PlainPasteEditText) Room.findChildViewById(inflate, R.id.replySubjectText);
                                                if (plainPasteEditText != null) {
                                                    i3 = R.id.replyToolbar;
                                                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.replyToolbar);
                                                    if (materialToolbar != null) {
                                                        i3 = R.id.talkScrollContainer;
                                                        ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.talkScrollContainer);
                                                        if (scrollView != null) {
                                                            i3 = R.id.threadItemView;
                                                            TalkThreadItemView talkThreadItemView = (TalkThreadItemView) Room.findChildViewById(inflate, R.id.threadItemView);
                                                            if (talkThreadItemView != null) {
                                                                FrameLayout frameLayout = (FrameLayout) inflate;
                                                                this.binding = new ActivityTalkReplyBinding(frameLayout, wikiTextKeyboardView, wikiTextKeyboardFormattingView, wikiTextKeyboardHeadingsView, bind, textView, linearProgressIndicator, userMentionInputView, textView2, textInputLayout, plainPasteEditText, materialToolbar, scrollView, talkThreadItemView);
                                                                setContentView(frameLayout);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
                                                                if (activityTalkReplyBinding == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                setSupportActionBar((MaterialToolbar) activityTalkReplyBinding.replyToolbar);
                                                                ContextsKt supportActionBar2 = getSupportActionBar();
                                                                final int i4 = 1;
                                                                if (supportActionBar2 != null) {
                                                                    supportActionBar2.setDisplayHomeAsUpEnabled(true);
                                                                }
                                                                setTitle("");
                                                                getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                                                TalkLinkHandler talkLinkHandler = new TalkLinkHandler(this);
                                                                this.linkHandler = talkLinkHandler;
                                                                WikiSite wikiSite = getViewModel().pageTitle.wikiSite;
                                                                wikiSite.getClass();
                                                                talkLinkHandler.wikiSite = wikiSite;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding2 = this.binding;
                                                                if (activityTalkReplyBinding2 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                PlainPasteEditText plainPasteEditText2 = (PlainPasteEditText) activityTalkReplyBinding2.replySubjectText;
                                                                SearchView.AnonymousClass10 anonymousClass10 = new SearchView.AnonymousClass10(10, this);
                                                                plainPasteEditText2.addTextChangedListener(anonymousClass10);
                                                                this.textWatcher = anonymousClass10;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding3 = this.binding;
                                                                if (activityTalkReplyBinding3 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                UserMentionEditText editText = ((UserMentionInputView) activityTalkReplyBinding3.replyInputView).getEditText();
                                                                SearchView.AnonymousClass10 anonymousClass102 = this.textWatcher;
                                                                if (anonymousClass102 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("textWatcher");
                                                                    throw null;
                                                                }
                                                                editText.addTextChangedListener(anonymousClass102);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding4 = this.binding;
                                                                if (activityTalkReplyBinding4 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                activityTalkReplyBinding4.replyNextButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda4
                                                                    public final /* synthetic */ TalkReplyActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view) {
                                                                        switch (i) {
                                                                            case 0:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                                                                TalkReplyActivity talkReplyActivity = this.f$0;
                                                                                ActivityTalkReplyBinding activityTalkReplyBinding5 = talkReplyActivity.binding;
                                                                                Continuation continuation = null;
                                                                                if (activityTalkReplyBinding5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                String obj = StringsKt.trim(String.valueOf(((PlainPasteEditText) activityTalkReplyBinding5.replySubjectText).getText())).toString();
                                                                                ActivityTalkReplyBinding activityTalkReplyBinding6 = talkReplyActivity.binding;
                                                                                if (activityTalkReplyBinding6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                String obj2 = StringsKt.trim(((UserMentionInputView) activityTalkReplyBinding6.replyInputView).getEditText().getText().toString()).toString();
                                                                                Intent intent = new Intent();
                                                                                intent.putExtra("subject", obj);
                                                                                intent.putExtra("body", obj2);
                                                                                EditPreviewFragment editPreviewFragment = talkReplyActivity.messagePreviewFragment;
                                                                                if (editPreviewFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
                                                                                    throw null;
                                                                                }
                                                                                if (editPreviewFragment.isActive()) {
                                                                                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle = talkReplyActivity.getViewModel().pageTitle;
                                                                                    ViewSizeResolver$CC.m(companion, pageTitle, "saveAttempt", "wikitext", pageTitle);
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_message_click", "");
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding7 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding7 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding7.progressBar).setVisibility(0);
                                                                                    talkReplyActivity.setSaveButtonEnabled(false);
                                                                                    TalkReplyViewModel viewModel = talkReplyActivity.getViewModel();
                                                                                    String wikitextBody = talkReplyActivity.getWikitextBody();
                                                                                    obj.getClass();
                                                                                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new RealImageLoader$execute$2(viewModel, wikitextBody, obj, continuation, 29), 2);
                                                                                    return;
                                                                                }
                                                                                if (talkReplyActivity.getViewModel().isNewTopic && obj.length() == 0) {
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_error_subject", "");
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding8 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding8 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((TextInputLayout) activityTalkReplyBinding8.replySubjectLayout).setError(talkReplyActivity.getString(R.string.talk_subject_empty));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding9 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding9 != null) {
                                                                                        ((TextInputLayout) activityTalkReplyBinding9.replySubjectLayout).requestFocus();
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                }
                                                                                if (obj2.length() == 0) {
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding10 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding10 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((UserMentionInputView) activityTalkReplyBinding10.replyInputView).getTextInputLayout().setError(talkReplyActivity.getString(R.string.talk_message_empty));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding11 != null) {
                                                                                        ((UserMentionInputView) activityTalkReplyBinding11.replyInputView).getTextInputLayout().requestFocus();
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                }
                                                                                final int i5 = 1;
                                                                                if (!talkReplyActivity.getViewModel().isFromDiff || !talkReplyActivity.subjectOrBodyModified) {
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("message_review_next_click", "");
                                                                                    talkReplyActivity.showEditPreview();
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    return;
                                                                                }
                                                                                talkReplyActivity.setSaveButtonEnabled(false);
                                                                                Window window = talkReplyActivity.getWindow();
                                                                                window.getClass();
                                                                                HintHandler hintHandler = new HintHandler(window.getDecorView());
                                                                                int i6 = Build.VERSION.SDK_INT;
                                                                                (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                                                                if (talkReplyActivity.getViewModel().templateManagementMode) {
                                                                                    if (talkReplyActivity.getViewModel().selectedTemplate == null || talkReplyActivity.getViewModel().isExampleTemplate) {
                                                                                        talkReplyActivity.getViewModel().saveTemplate(obj, obj2);
                                                                                        return;
                                                                                    }
                                                                                    TalkTemplate talkTemplate = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                    if (talkTemplate != null) {
                                                                                        talkReplyActivity.getViewModel().updateTemplate(talkTemplate.title, obj, obj2, talkTemplate);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                                if (talkReplyActivity.getViewModel().selectedTemplate != null) {
                                                                                    TalkTemplate talkTemplate2 = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                    if (Intrinsics.areEqual(talkTemplate2 != null ? talkTemplate2.subject : null, obj)) {
                                                                                        TalkTemplate talkTemplate3 = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                        if (Intrinsics.areEqual(talkTemplate3 != null ? talkTemplate3.message : null, obj2)) {
                                                                                            talkReplyActivity.sendPatrollerExperienceEvent$2("message_review_next_click", "");
                                                                                            talkReplyActivity.showEditPreview();
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                boolean z = (talkReplyActivity.getViewModel().isExampleTemplate || talkReplyActivity.getViewModel().selectedTemplate == null) ? false : true;
                                                                                final TextInputDialog textInputDialog = new TextInputDialog(talkReplyActivity, R.style.AlertDialogTheme_Input, i5);
                                                                                AlertController.AlertParams alertParams = (AlertController.AlertParams) textInputDialog.array;
                                                                                View inflate2 = LayoutInflater.from(alertParams.mContext).inflate(R.layout.dialog_talk_templates_text_input, (ViewGroup) null, false);
                                                                                int i7 = R.id.dialogSaveAsNewRadio;
                                                                                RadioButton radioButton = (RadioButton) Room.findChildViewById(inflate2, R.id.dialogSaveAsNewRadio);
                                                                                if (radioButton != null) {
                                                                                    i7 = R.id.dialogSaveExistingRadio;
                                                                                    RadioButton radioButton2 = (RadioButton) Room.findChildViewById(inflate2, R.id.dialogSaveExistingRadio);
                                                                                    if (radioButton2 != null) {
                                                                                        i7 = R.id.subjectInput;
                                                                                        PlainPasteEditText plainPasteEditText3 = (PlainPasteEditText) Room.findChildViewById(inflate2, R.id.subjectInput);
                                                                                        if (plainPasteEditText3 != null) {
                                                                                            i7 = R.id.subjectInputContainer;
                                                                                            TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate2, R.id.subjectInputContainer);
                                                                                            if (textInputLayout2 != null) {
                                                                                                ScrollView scrollView2 = (ScrollView) inflate2;
                                                                                                textInputDialog.binding = new DefaultSocket(scrollView2, radioButton, radioButton2, plainPasteEditText3, textInputLayout2, 13);
                                                                                                alertParams.mView = scrollView2;
                                                                                                textInputDialog.setPositiveButton(R.string.talk_templates_new_message_dialog_save, new DialogInterface.OnClickListener() { // from class: org.wikipedia.talk.template.TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0
                                                                                                    @Override // android.content.DialogInterface.OnClickListener
                                                                                                    public final void onClick(DialogInterface dialogInterface, int i8) {
                                                                                                        int i9 = r2;
                                                                                                        TextInputDialog textInputDialog2 = textInputDialog;
                                                                                                        switch (i9) {
                                                                                                            case 0:
                                                                                                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket != null) {
                                                                                                                    String valueOf = String.valueOf(((PlainPasteEditText) ((DefaultSocket) textInputDialog2.binding).source).getText());
                                                                                                                    String str = (String) defaultSocket.source;
                                                                                                                    TalkReplyActivity talkReplyActivity2 = (TalkReplyActivity) defaultSocket.closeBits;
                                                                                                                    DefaultSocket defaultSocket2 = (DefaultSocket) ((TextInputDialog) defaultSocket.socket).binding;
                                                                                                                    if (((RadioButton) defaultSocket2.socket).isChecked()) {
                                                                                                                        talkReplyActivity2.getViewModel().saveTemplate(valueOf, str);
                                                                                                                    } else if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
                                                                                                                        TalkTemplate talkTemplate4 = talkReplyActivity2.getViewModel().selectedTemplate;
                                                                                                                        if (talkTemplate4 != null) {
                                                                                                                            talkReplyActivity2.getViewModel().updateTemplate(talkTemplate4.title, (String) defaultSocket.sink, str, talkTemplate4);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                                                        talkReplyActivity2.showEditPreview();
                                                                                                                    }
                                                                                                                    String actionDataString$default = Cookie.Companion.getActionDataString$default(null, null, null, ((RadioButton) defaultSocket2.socket).isChecked() ? "new" : "updated", null, null, null, null, null, 1015);
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity2.sendPatrollerExperienceEvent$2("save_message_success", actionDataString$default);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                DefaultSocket defaultSocket3 = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket3 != null) {
                                                                                                                    TalkReplyActivity talkReplyActivity3 = (TalkReplyActivity) defaultSocket3.closeBits;
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity3.sendPatrollerExperienceEvent$2("publish_cancel", "");
                                                                                                                    talkReplyActivity3.showEditPreview();
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                textInputDialog.setNegativeButton(R.string.talk_warn_save_dialog_dont_save, new DialogInterface.OnClickListener() { // from class: org.wikipedia.talk.template.TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0
                                                                                                    @Override // android.content.DialogInterface.OnClickListener
                                                                                                    public final void onClick(DialogInterface dialogInterface, int i8) {
                                                                                                        int i9 = i5;
                                                                                                        TextInputDialog textInputDialog2 = textInputDialog;
                                                                                                        switch (i9) {
                                                                                                            case 0:
                                                                                                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket != null) {
                                                                                                                    String valueOf = String.valueOf(((PlainPasteEditText) ((DefaultSocket) textInputDialog2.binding).source).getText());
                                                                                                                    String str = (String) defaultSocket.source;
                                                                                                                    TalkReplyActivity talkReplyActivity2 = (TalkReplyActivity) defaultSocket.closeBits;
                                                                                                                    DefaultSocket defaultSocket2 = (DefaultSocket) ((TextInputDialog) defaultSocket.socket).binding;
                                                                                                                    if (((RadioButton) defaultSocket2.socket).isChecked()) {
                                                                                                                        talkReplyActivity2.getViewModel().saveTemplate(valueOf, str);
                                                                                                                    } else if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
                                                                                                                        TalkTemplate talkTemplate4 = talkReplyActivity2.getViewModel().selectedTemplate;
                                                                                                                        if (talkTemplate4 != null) {
                                                                                                                            talkReplyActivity2.getViewModel().updateTemplate(talkTemplate4.title, (String) defaultSocket.sink, str, talkTemplate4);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                                                        talkReplyActivity2.showEditPreview();
                                                                                                                    }
                                                                                                                    String actionDataString$default = Cookie.Companion.getActionDataString$default(null, null, null, ((RadioButton) defaultSocket2.socket).isChecked() ? "new" : "updated", null, null, null, null, null, 1015);
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity2.sendPatrollerExperienceEvent$2("save_message_success", actionDataString$default);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                DefaultSocket defaultSocket3 = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket3 != null) {
                                                                                                                    TalkReplyActivity talkReplyActivity3 = (TalkReplyActivity) defaultSocket3.closeBits;
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity3.sendPatrollerExperienceEvent$2("publish_cancel", "");
                                                                                                                    talkReplyActivity3.showEditPreview();
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                alertParams.mOnDismissListener = new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(2, textInputDialog);
                                                                                                plainPasteEditText3.addTextChangedListener(new SearchView.AnonymousClass10(11, textInputDialog));
                                                                                                radioButton2.setVisibility(z ? 0 : 8);
                                                                                                radioButton2.setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(6, textInputDialog));
                                                                                                textInputDialog.callback = new DefaultSocket(textInputDialog, talkReplyActivity, obj2, obj, 28);
                                                                                                textInputDialog.setTitle(R.string.talk_warn_save_dialog_title);
                                                                                                textInputDialog.show();
                                                                                                return;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i7)));
                                                                                return;
                                                                            default:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                TalkReplyActivity talkReplyActivity2 = this.f$0;
                                                                                talkReplyActivity2.sendPatrollerExperienceEvent$2("learn_click", "");
                                                                                Uri parse = Uri.parse(talkReplyActivity2.getString(R.string.talk_warn_learn_more_url));
                                                                                parse.getClass();
                                                                                UriUtil.visitInExternalBrowser(talkReplyActivity2, parse);
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                ActivityTalkReplyBinding activityTalkReplyBinding5 = this.binding;
                                                                if (activityTalkReplyBinding5 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                activityTalkReplyBinding5.learnMoreButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda4
                                                                    public final /* synthetic */ TalkReplyActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view) {
                                                                        switch (i4) {
                                                                            case 0:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                                                                TalkReplyActivity talkReplyActivity = this.f$0;
                                                                                ActivityTalkReplyBinding activityTalkReplyBinding52 = talkReplyActivity.binding;
                                                                                Continuation continuation = null;
                                                                                if (activityTalkReplyBinding52 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                String obj = StringsKt.trim(String.valueOf(((PlainPasteEditText) activityTalkReplyBinding52.replySubjectText).getText())).toString();
                                                                                ActivityTalkReplyBinding activityTalkReplyBinding6 = talkReplyActivity.binding;
                                                                                if (activityTalkReplyBinding6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                    throw null;
                                                                                }
                                                                                String obj2 = StringsKt.trim(((UserMentionInputView) activityTalkReplyBinding6.replyInputView).getEditText().getText().toString()).toString();
                                                                                Intent intent = new Intent();
                                                                                intent.putExtra("subject", obj);
                                                                                intent.putExtra("body", obj2);
                                                                                EditPreviewFragment editPreviewFragment = talkReplyActivity.messagePreviewFragment;
                                                                                if (editPreviewFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
                                                                                    throw null;
                                                                                }
                                                                                if (editPreviewFragment.isActive()) {
                                                                                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle = talkReplyActivity.getViewModel().pageTitle;
                                                                                    ViewSizeResolver$CC.m(companion, pageTitle, "saveAttempt", "wikitext", pageTitle);
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_message_click", "");
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding7 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding7 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding7.progressBar).setVisibility(0);
                                                                                    talkReplyActivity.setSaveButtonEnabled(false);
                                                                                    TalkReplyViewModel viewModel = talkReplyActivity.getViewModel();
                                                                                    String wikitextBody = talkReplyActivity.getWikitextBody();
                                                                                    obj.getClass();
                                                                                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1(viewModel, 0), null, new RealImageLoader$execute$2(viewModel, wikitextBody, obj, continuation, 29), 2);
                                                                                    return;
                                                                                }
                                                                                if (talkReplyActivity.getViewModel().isNewTopic && obj.length() == 0) {
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_error_subject", "");
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding8 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding8 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((TextInputLayout) activityTalkReplyBinding8.replySubjectLayout).setError(talkReplyActivity.getString(R.string.talk_subject_empty));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding9 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding9 != null) {
                                                                                        ((TextInputLayout) activityTalkReplyBinding9.replySubjectLayout).requestFocus();
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                }
                                                                                if (obj2.length() == 0) {
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding10 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding10 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((UserMentionInputView) activityTalkReplyBinding10.replyInputView).getTextInputLayout().setError(talkReplyActivity.getString(R.string.talk_message_empty));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding11 != null) {
                                                                                        ((UserMentionInputView) activityTalkReplyBinding11.replyInputView).getTextInputLayout().requestFocus();
                                                                                        return;
                                                                                    } else {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                }
                                                                                final int i5 = 1;
                                                                                if (!talkReplyActivity.getViewModel().isFromDiff || !talkReplyActivity.subjectOrBodyModified) {
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("message_review_next_click", "");
                                                                                    talkReplyActivity.showEditPreview();
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    return;
                                                                                }
                                                                                talkReplyActivity.setSaveButtonEnabled(false);
                                                                                Window window = talkReplyActivity.getWindow();
                                                                                window.getClass();
                                                                                HintHandler hintHandler = new HintHandler(window.getDecorView());
                                                                                int i6 = Build.VERSION.SDK_INT;
                                                                                (i6 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i6 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i6 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                                                                if (talkReplyActivity.getViewModel().templateManagementMode) {
                                                                                    if (talkReplyActivity.getViewModel().selectedTemplate == null || talkReplyActivity.getViewModel().isExampleTemplate) {
                                                                                        talkReplyActivity.getViewModel().saveTemplate(obj, obj2);
                                                                                        return;
                                                                                    }
                                                                                    TalkTemplate talkTemplate = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                    if (talkTemplate != null) {
                                                                                        talkReplyActivity.getViewModel().updateTemplate(talkTemplate.title, obj, obj2, talkTemplate);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                                if (talkReplyActivity.getViewModel().selectedTemplate != null) {
                                                                                    TalkTemplate talkTemplate2 = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                    if (Intrinsics.areEqual(talkTemplate2 != null ? talkTemplate2.subject : null, obj)) {
                                                                                        TalkTemplate talkTemplate3 = talkReplyActivity.getViewModel().selectedTemplate;
                                                                                        if (Intrinsics.areEqual(talkTemplate3 != null ? talkTemplate3.message : null, obj2)) {
                                                                                            talkReplyActivity.sendPatrollerExperienceEvent$2("message_review_next_click", "");
                                                                                            talkReplyActivity.showEditPreview();
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                boolean z = (talkReplyActivity.getViewModel().isExampleTemplate || talkReplyActivity.getViewModel().selectedTemplate == null) ? false : true;
                                                                                final TextInputDialog textInputDialog = new TextInputDialog(talkReplyActivity, R.style.AlertDialogTheme_Input, i5);
                                                                                AlertController.AlertParams alertParams = (AlertController.AlertParams) textInputDialog.array;
                                                                                View inflate2 = LayoutInflater.from(alertParams.mContext).inflate(R.layout.dialog_talk_templates_text_input, (ViewGroup) null, false);
                                                                                int i7 = R.id.dialogSaveAsNewRadio;
                                                                                RadioButton radioButton = (RadioButton) Room.findChildViewById(inflate2, R.id.dialogSaveAsNewRadio);
                                                                                if (radioButton != null) {
                                                                                    i7 = R.id.dialogSaveExistingRadio;
                                                                                    RadioButton radioButton2 = (RadioButton) Room.findChildViewById(inflate2, R.id.dialogSaveExistingRadio);
                                                                                    if (radioButton2 != null) {
                                                                                        i7 = R.id.subjectInput;
                                                                                        PlainPasteEditText plainPasteEditText3 = (PlainPasteEditText) Room.findChildViewById(inflate2, R.id.subjectInput);
                                                                                        if (plainPasteEditText3 != null) {
                                                                                            i7 = R.id.subjectInputContainer;
                                                                                            TextInputLayout textInputLayout2 = (TextInputLayout) Room.findChildViewById(inflate2, R.id.subjectInputContainer);
                                                                                            if (textInputLayout2 != null) {
                                                                                                ScrollView scrollView2 = (ScrollView) inflate2;
                                                                                                textInputDialog.binding = new DefaultSocket(scrollView2, radioButton, radioButton2, plainPasteEditText3, textInputLayout2, 13);
                                                                                                alertParams.mView = scrollView2;
                                                                                                textInputDialog.setPositiveButton(R.string.talk_templates_new_message_dialog_save, new DialogInterface.OnClickListener() { // from class: org.wikipedia.talk.template.TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0
                                                                                                    @Override // android.content.DialogInterface.OnClickListener
                                                                                                    public final void onClick(DialogInterface dialogInterface, int i8) {
                                                                                                        int i9 = r2;
                                                                                                        TextInputDialog textInputDialog2 = textInputDialog;
                                                                                                        switch (i9) {
                                                                                                            case 0:
                                                                                                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket != null) {
                                                                                                                    String valueOf = String.valueOf(((PlainPasteEditText) ((DefaultSocket) textInputDialog2.binding).source).getText());
                                                                                                                    String str = (String) defaultSocket.source;
                                                                                                                    TalkReplyActivity talkReplyActivity2 = (TalkReplyActivity) defaultSocket.closeBits;
                                                                                                                    DefaultSocket defaultSocket2 = (DefaultSocket) ((TextInputDialog) defaultSocket.socket).binding;
                                                                                                                    if (((RadioButton) defaultSocket2.socket).isChecked()) {
                                                                                                                        talkReplyActivity2.getViewModel().saveTemplate(valueOf, str);
                                                                                                                    } else if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
                                                                                                                        TalkTemplate talkTemplate4 = talkReplyActivity2.getViewModel().selectedTemplate;
                                                                                                                        if (talkTemplate4 != null) {
                                                                                                                            talkReplyActivity2.getViewModel().updateTemplate(talkTemplate4.title, (String) defaultSocket.sink, str, talkTemplate4);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                                                        talkReplyActivity2.showEditPreview();
                                                                                                                    }
                                                                                                                    String actionDataString$default = Cookie.Companion.getActionDataString$default(null, null, null, ((RadioButton) defaultSocket2.socket).isChecked() ? "new" : "updated", null, null, null, null, null, 1015);
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity2.sendPatrollerExperienceEvent$2("save_message_success", actionDataString$default);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                DefaultSocket defaultSocket3 = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket3 != null) {
                                                                                                                    TalkReplyActivity talkReplyActivity3 = (TalkReplyActivity) defaultSocket3.closeBits;
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity3.sendPatrollerExperienceEvent$2("publish_cancel", "");
                                                                                                                    talkReplyActivity3.showEditPreview();
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                textInputDialog.setNegativeButton(R.string.talk_warn_save_dialog_dont_save, new DialogInterface.OnClickListener() { // from class: org.wikipedia.talk.template.TalkTemplatesTextInputDialog$$ExternalSyntheticLambda0
                                                                                                    @Override // android.content.DialogInterface.OnClickListener
                                                                                                    public final void onClick(DialogInterface dialogInterface, int i8) {
                                                                                                        int i9 = i5;
                                                                                                        TextInputDialog textInputDialog2 = textInputDialog;
                                                                                                        switch (i9) {
                                                                                                            case 0:
                                                                                                                DefaultSocket defaultSocket = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket != null) {
                                                                                                                    String valueOf = String.valueOf(((PlainPasteEditText) ((DefaultSocket) textInputDialog2.binding).source).getText());
                                                                                                                    String str = (String) defaultSocket.source;
                                                                                                                    TalkReplyActivity talkReplyActivity2 = (TalkReplyActivity) defaultSocket.closeBits;
                                                                                                                    DefaultSocket defaultSocket2 = (DefaultSocket) ((TextInputDialog) defaultSocket.socket).binding;
                                                                                                                    if (((RadioButton) defaultSocket2.socket).isChecked()) {
                                                                                                                        talkReplyActivity2.getViewModel().saveTemplate(valueOf, str);
                                                                                                                    } else if (((RadioButton) defaultSocket2.closeBits).isChecked()) {
                                                                                                                        TalkTemplate talkTemplate4 = talkReplyActivity2.getViewModel().selectedTemplate;
                                                                                                                        if (talkTemplate4 != null) {
                                                                                                                            talkReplyActivity2.getViewModel().updateTemplate(talkTemplate4.title, (String) defaultSocket.sink, str, talkTemplate4);
                                                                                                                        }
                                                                                                                    } else {
                                                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                                                        talkReplyActivity2.showEditPreview();
                                                                                                                    }
                                                                                                                    String actionDataString$default = Cookie.Companion.getActionDataString$default(null, null, null, ((RadioButton) defaultSocket2.socket).isChecked() ? "new" : "updated", null, null, null, null, null, 1015);
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity2.sendPatrollerExperienceEvent$2("save_message_success", actionDataString$default);
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                            default:
                                                                                                                DefaultSocket defaultSocket3 = (DefaultSocket) textInputDialog2.callback;
                                                                                                                if (defaultSocket3 != null) {
                                                                                                                    TalkReplyActivity talkReplyActivity3 = (TalkReplyActivity) defaultSocket3.closeBits;
                                                                                                                    TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                                                    talkReplyActivity3.sendPatrollerExperienceEvent$2("publish_cancel", "");
                                                                                                                    talkReplyActivity3.showEditPreview();
                                                                                                                    break;
                                                                                                                }
                                                                                                                break;
                                                                                                        }
                                                                                                    }
                                                                                                });
                                                                                                alertParams.mOnDismissListener = new SuggestedArticleDescriptionsDialog$$ExternalSyntheticLambda5(2, textInputDialog);
                                                                                                plainPasteEditText3.addTextChangedListener(new SearchView.AnonymousClass10(11, textInputDialog));
                                                                                                radioButton2.setVisibility(z ? 0 : 8);
                                                                                                radioButton2.setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(6, textInputDialog));
                                                                                                textInputDialog.callback = new DefaultSocket(textInputDialog, talkReplyActivity, obj2, obj, 28);
                                                                                                textInputDialog.setTitle(R.string.talk_warn_save_dialog_title);
                                                                                                textInputDialog.show();
                                                                                                return;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i7)));
                                                                                return;
                                                                            default:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                TalkReplyActivity talkReplyActivity2 = this.f$0;
                                                                                talkReplyActivity2.sendPatrollerExperienceEvent$2("learn_click", "");
                                                                                Uri parse = Uri.parse(talkReplyActivity2.getString(R.string.talk_warn_learn_more_url));
                                                                                parse.getClass();
                                                                                UriUtil.visitInExternalBrowser(talkReplyActivity2, parse);
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                if (getViewModel().isFromDiff) {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding6 = this.binding;
                                                                    if (activityTalkReplyBinding6 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    activityTalkReplyBinding6.replyNextButton.setText(getString(getViewModel().templateManagementMode ? R.string.talk_templates_new_message_save : R.string.edit_next));
                                                                }
                                                                ActivityTalkReplyBinding activityTalkReplyBinding7 = this.binding;
                                                                if (activityTalkReplyBinding7 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((UserMentionInputView) activityTalkReplyBinding7.replyInputView).setWikiSite(getViewModel().pageTitle.wikiSite);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding8 = this.binding;
                                                                if (activityTalkReplyBinding8 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((UserMentionInputView) activityTalkReplyBinding8.replyInputView).setListener(this);
                                                                ThreadItem threadItem = getViewModel().topic;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding9 = this.binding;
                                                                if (threadItem != null) {
                                                                    if (activityTalkReplyBinding9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    TalkThreadItemView talkThreadItemView2 = (TalkThreadItemView) activityTalkReplyBinding9.threadItemView;
                                                                    ThreadItem threadItem2 = getViewModel().topic;
                                                                    threadItem2.getClass();
                                                                    TalkThreadItemView.bindItem$default(talkThreadItemView2, threadItem2, this.linkMovementMethod, null, 8);
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding10 = this.binding;
                                                                    if (activityTalkReplyBinding10 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((TalkThreadItemView) activityTalkReplyBinding10.threadItemView).setVisibility(0);
                                                                } else {
                                                                    if (activityTalkReplyBinding9 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((TalkThreadItemView) activityTalkReplyBinding9.threadItemView).setVisibility(8);
                                                                }
                                                                getViewModel().postReplyData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ TalkReplyActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function1
                                                                    public final Object invoke(Object obj) {
                                                                        TalkTemplate talkTemplate;
                                                                        String string;
                                                                        String string2;
                                                                        TextView textView3;
                                                                        int i5 = i;
                                                                        Unit unit = Unit.INSTANCE;
                                                                        TalkReplyActivity talkReplyActivity = this.f$0;
                                                                        boolean z = false;
                                                                        z = false;
                                                                        Resource resource = (Resource) obj;
                                                                        switch (i5) {
                                                                            case 0:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.savedSuccess = true;
                                                                                    long longValue = ((Number) ((Resource.Success) resource).data).longValue();
                                                                                    if (!Headers.Companion.isLoggedIn()) {
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                                                                                    }
                                                                                    if (talkReplyActivity.getViewModel().selectedTemplate != null && talkReplyActivity.subjectOrBodyModified) {
                                                                                        z = true;
                                                                                    }
                                                                                    boolean z2 = talkReplyActivity.getViewModel().talkTemplateSaved;
                                                                                    boolean z3 = talkReplyActivity.getViewModel().isExampleTemplate;
                                                                                    String str = (!talkReplyActivity.getViewModel().isExampleTemplate || (talkTemplate = talkReplyActivity.getViewModel().selectedTemplate) == null) ? null : talkTemplate.title;
                                                                                    String str2 = "is_modified: " + z + ", ";
                                                                                    String str3 = "is_saved: " + z2 + ", ";
                                                                                    String str4 = "is_example: " + z3 + ", ";
                                                                                    String m = str != null ? Animation.CC.m("example_message: ", str, " ") : null;
                                                                                    if (m == null) {
                                                                                        m = "";
                                                                                    }
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_message_success", ViewSizeResolver$CC.m(str2, str3, str4, m));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding11 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding11.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle = talkReplyActivity.getViewModel().pageTitle;
                                                                                    companion.getClass();
                                                                                    EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle, "wikitext");
                                                                                    Intent intent = new Intent();
                                                                                    intent.putExtra("newRevisionId", longValue);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding12 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding12 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("subject", ((PlainPasteEditText) activityTalkReplyBinding12.replySubjectText).getText());
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding13 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding13 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("body", ((UserMentionInputView) activityTalkReplyBinding13.replyInputView).getEditText().getText());
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        ThreadItem threadItem3 = talkReplyActivity.getViewModel().topic;
                                                                                        threadItem3.getClass();
                                                                                        intent.putExtra("topicId", threadItem3.id);
                                                                                    }
                                                                                    talkReplyActivity.setResult(talkReplyActivity.getViewModel().talkTemplateSaved ? 3 : 1, intent);
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                        ThreadItem threadItem4 = talkReplyActivity.getViewModel().topic;
                                                                                        talkReplyActivity$special$$inlined$lruCache$default$12.remove(threadItem4 != null ? threadItem4.id : null);
                                                                                    }
                                                                                    talkReplyActivity.finish();
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    Throwable th = ((Resource.Error) resource).throwable;
                                                                                    EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle2 = talkReplyActivity.getViewModel().pageTitle;
                                                                                    ViewSizeResolver$CC.m(companion2, pageTitle2, "saveFailure", "wikitext", pageTitle2);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding14 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding14 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding14.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    ShareUtil.showError$default(talkReplyActivity, th);
                                                                                }
                                                                                return unit;
                                                                            case 1:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.getViewModel().talkTemplateSaved = true;
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding15 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding15 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding15.progressBar).setVisibility(0);
                                                                                    if (talkReplyActivity.getViewModel().templateManagementMode) {
                                                                                        talkReplyActivity.setResult(-1);
                                                                                        talkReplyActivity.finish();
                                                                                    } else {
                                                                                        talkReplyActivity.showEditPreview();
                                                                                    }
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    ShareUtil.showError$default(talkReplyActivity, ((Resource.Error) resource).throwable);
                                                                                }
                                                                                return unit;
                                                                            default:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                if (resource instanceof Resource.Success) {
                                                                                    boolean isLoggedIn = Headers.Companion.isLoggedIn();
                                                                                    int i6 = R.drawable.ic_anon_account;
                                                                                    if (!isLoggedIn || Headers.Companion.isTemporaryAccount()) {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding16 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding16 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding16.footerContainer).rootView.setVisibility(0);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding17 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding17 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding17.footerContainer).dayCircleBackground.setImageResource(Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_anon_account);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding18 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding18 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding18.footerContainer).dayText.setMovementMethod(LinkMovementMethod.getInstance());
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding19 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding19 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        TextView textView4 = ((ViewCustomCalendarDayBinding) activityTalkReplyBinding19.footerContainer).dayText;
                                                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string = talkReplyActivity.getString(R.string.temp_account_edit_status, Headers.Companion.getUserNameFromCookie(), talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        } else {
                                                                                            string = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_edit_status : R.string.temp_account_anon_ip_edit_status, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        textView4.setText(StringUtil.fromHtml(string));
                                                                                    } else {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding20 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding20 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding20.footerContainer).rootView.setVisibility(8);
                                                                                    }
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    if (!Prefs.getTempAccountDialogShown() && (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount())) {
                                                                                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(talkReplyActivity, R.style.AlertDialogTheme_Icon_NegativeInactive);
                                                                                        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            i6 = R.drawable.ic_temp_account;
                                                                                        }
                                                                                        alertParams.mIconId = i6;
                                                                                        materialAlertDialogBuilder.setTitle(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_using_title : R.string.temp_account_not_logged_in);
                                                                                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string2 = talkReplyActivity.getString(R.string.temp_account_temp_dialog_body, Headers.Companion.getUserName());
                                                                                        } else {
                                                                                            string2 = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_dialog_body : R.string.temp_account_anon_ip_dialog_body, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        alertParams.mMessage = StringUtil.fromHtml(string2);
                                                                                        materialAlertDialogBuilder.setPositiveButton(talkReplyActivity.getString(R.string.temp_account_dialog_ok), (DialogInterface.OnClickListener) new TextInputDialog$$ExternalSyntheticLambda2(9));
                                                                                        materialAlertDialogBuilder.setNegativeButton(talkReplyActivity.getString(R.string.create_account_login), new TalkReplyActivity$$ExternalSyntheticLambda15(talkReplyActivity, z ? 1 : 0));
                                                                                        Window window = materialAlertDialogBuilder.show().getWindow();
                                                                                        if (window != null && (textView3 = (TextView) window.getDecorView().findViewById(android.R.id.message)) != null) {
                                                                                            textView3.setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new TalkReplyActivity$$ExternalSyntheticLambda0(talkReplyActivity, r5)));
                                                                                        }
                                                                                        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, true);
                                                                                    }
                                                                                }
                                                                                return unit;
                                                                        }
                                                                    }
                                                                }, 0));
                                                                getViewModel().saveTemplateData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ TalkReplyActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function1
                                                                    public final Object invoke(Object obj) {
                                                                        TalkTemplate talkTemplate;
                                                                        String string;
                                                                        String string2;
                                                                        TextView textView3;
                                                                        int i5 = i4;
                                                                        Unit unit = Unit.INSTANCE;
                                                                        TalkReplyActivity talkReplyActivity = this.f$0;
                                                                        boolean z = false;
                                                                        z = false;
                                                                        Resource resource = (Resource) obj;
                                                                        switch (i5) {
                                                                            case 0:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.savedSuccess = true;
                                                                                    long longValue = ((Number) ((Resource.Success) resource).data).longValue();
                                                                                    if (!Headers.Companion.isLoggedIn()) {
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                                                                                    }
                                                                                    if (talkReplyActivity.getViewModel().selectedTemplate != null && talkReplyActivity.subjectOrBodyModified) {
                                                                                        z = true;
                                                                                    }
                                                                                    boolean z2 = talkReplyActivity.getViewModel().talkTemplateSaved;
                                                                                    boolean z3 = talkReplyActivity.getViewModel().isExampleTemplate;
                                                                                    String str = (!talkReplyActivity.getViewModel().isExampleTemplate || (talkTemplate = talkReplyActivity.getViewModel().selectedTemplate) == null) ? null : talkTemplate.title;
                                                                                    String str2 = "is_modified: " + z + ", ";
                                                                                    String str3 = "is_saved: " + z2 + ", ";
                                                                                    String str4 = "is_example: " + z3 + ", ";
                                                                                    String m = str != null ? Animation.CC.m("example_message: ", str, " ") : null;
                                                                                    if (m == null) {
                                                                                        m = "";
                                                                                    }
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_message_success", ViewSizeResolver$CC.m(str2, str3, str4, m));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding11 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding11.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle = talkReplyActivity.getViewModel().pageTitle;
                                                                                    companion.getClass();
                                                                                    EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle, "wikitext");
                                                                                    Intent intent = new Intent();
                                                                                    intent.putExtra("newRevisionId", longValue);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding12 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding12 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("subject", ((PlainPasteEditText) activityTalkReplyBinding12.replySubjectText).getText());
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding13 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding13 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("body", ((UserMentionInputView) activityTalkReplyBinding13.replyInputView).getEditText().getText());
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        ThreadItem threadItem3 = talkReplyActivity.getViewModel().topic;
                                                                                        threadItem3.getClass();
                                                                                        intent.putExtra("topicId", threadItem3.id);
                                                                                    }
                                                                                    talkReplyActivity.setResult(talkReplyActivity.getViewModel().talkTemplateSaved ? 3 : 1, intent);
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                        ThreadItem threadItem4 = talkReplyActivity.getViewModel().topic;
                                                                                        talkReplyActivity$special$$inlined$lruCache$default$12.remove(threadItem4 != null ? threadItem4.id : null);
                                                                                    }
                                                                                    talkReplyActivity.finish();
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    Throwable th = ((Resource.Error) resource).throwable;
                                                                                    EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle2 = talkReplyActivity.getViewModel().pageTitle;
                                                                                    ViewSizeResolver$CC.m(companion2, pageTitle2, "saveFailure", "wikitext", pageTitle2);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding14 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding14 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding14.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    ShareUtil.showError$default(talkReplyActivity, th);
                                                                                }
                                                                                return unit;
                                                                            case 1:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.getViewModel().talkTemplateSaved = true;
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding15 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding15 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding15.progressBar).setVisibility(0);
                                                                                    if (talkReplyActivity.getViewModel().templateManagementMode) {
                                                                                        talkReplyActivity.setResult(-1);
                                                                                        talkReplyActivity.finish();
                                                                                    } else {
                                                                                        talkReplyActivity.showEditPreview();
                                                                                    }
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    ShareUtil.showError$default(talkReplyActivity, ((Resource.Error) resource).throwable);
                                                                                }
                                                                                return unit;
                                                                            default:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                if (resource instanceof Resource.Success) {
                                                                                    boolean isLoggedIn = Headers.Companion.isLoggedIn();
                                                                                    int i6 = R.drawable.ic_anon_account;
                                                                                    if (!isLoggedIn || Headers.Companion.isTemporaryAccount()) {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding16 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding16 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding16.footerContainer).rootView.setVisibility(0);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding17 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding17 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding17.footerContainer).dayCircleBackground.setImageResource(Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_anon_account);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding18 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding18 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding18.footerContainer).dayText.setMovementMethod(LinkMovementMethod.getInstance());
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding19 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding19 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        TextView textView4 = ((ViewCustomCalendarDayBinding) activityTalkReplyBinding19.footerContainer).dayText;
                                                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string = talkReplyActivity.getString(R.string.temp_account_edit_status, Headers.Companion.getUserNameFromCookie(), talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        } else {
                                                                                            string = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_edit_status : R.string.temp_account_anon_ip_edit_status, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        textView4.setText(StringUtil.fromHtml(string));
                                                                                    } else {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding20 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding20 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding20.footerContainer).rootView.setVisibility(8);
                                                                                    }
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    if (!Prefs.getTempAccountDialogShown() && (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount())) {
                                                                                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(talkReplyActivity, R.style.AlertDialogTheme_Icon_NegativeInactive);
                                                                                        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            i6 = R.drawable.ic_temp_account;
                                                                                        }
                                                                                        alertParams.mIconId = i6;
                                                                                        materialAlertDialogBuilder.setTitle(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_using_title : R.string.temp_account_not_logged_in);
                                                                                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string2 = talkReplyActivity.getString(R.string.temp_account_temp_dialog_body, Headers.Companion.getUserName());
                                                                                        } else {
                                                                                            string2 = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_dialog_body : R.string.temp_account_anon_ip_dialog_body, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        alertParams.mMessage = StringUtil.fromHtml(string2);
                                                                                        materialAlertDialogBuilder.setPositiveButton(talkReplyActivity.getString(R.string.temp_account_dialog_ok), (DialogInterface.OnClickListener) new TextInputDialog$$ExternalSyntheticLambda2(9));
                                                                                        materialAlertDialogBuilder.setNegativeButton(talkReplyActivity.getString(R.string.create_account_login), new TalkReplyActivity$$ExternalSyntheticLambda15(talkReplyActivity, z ? 1 : 0));
                                                                                        Window window = materialAlertDialogBuilder.show().getWindow();
                                                                                        if (window != null && (textView3 = (TextView) window.getDecorView().findViewById(android.R.id.message)) != null) {
                                                                                            textView3.setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new TalkReplyActivity$$ExternalSyntheticLambda0(talkReplyActivity, r5)));
                                                                                        }
                                                                                        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, true);
                                                                                    }
                                                                                }
                                                                                return unit;
                                                                        }
                                                                    }
                                                                }, 0));
                                                                final int i5 = 2;
                                                                getViewModel().pageExistsData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ TalkReplyActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // kotlin.jvm.functions.Function1
                                                                    public final Object invoke(Object obj) {
                                                                        TalkTemplate talkTemplate;
                                                                        String string;
                                                                        String string2;
                                                                        TextView textView3;
                                                                        int i52 = i5;
                                                                        Unit unit = Unit.INSTANCE;
                                                                        TalkReplyActivity talkReplyActivity = this.f$0;
                                                                        boolean z = false;
                                                                        z = false;
                                                                        Resource resource = (Resource) obj;
                                                                        switch (i52) {
                                                                            case 0:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.savedSuccess = true;
                                                                                    long longValue = ((Number) ((Resource.Success) resource).data).longValue();
                                                                                    if (!Headers.Companion.isLoggedIn()) {
                                                                                        Prefs prefs = Prefs.INSTANCE;
                                                                                        PrefsIoUtil.setLong(new Date().getTime(), R.string.preference_key_last_anon_edit_time);
                                                                                    }
                                                                                    if (talkReplyActivity.getViewModel().selectedTemplate != null && talkReplyActivity.subjectOrBodyModified) {
                                                                                        z = true;
                                                                                    }
                                                                                    boolean z2 = talkReplyActivity.getViewModel().talkTemplateSaved;
                                                                                    boolean z3 = talkReplyActivity.getViewModel().isExampleTemplate;
                                                                                    String str = (!talkReplyActivity.getViewModel().isExampleTemplate || (talkTemplate = talkReplyActivity.getViewModel().selectedTemplate) == null) ? null : talkTemplate.title;
                                                                                    String str2 = "is_modified: " + z + ", ";
                                                                                    String str3 = "is_saved: " + z2 + ", ";
                                                                                    String str4 = "is_example: " + z3 + ", ";
                                                                                    String m = str != null ? Animation.CC.m("example_message: ", str, " ") : null;
                                                                                    if (m == null) {
                                                                                        m = "";
                                                                                    }
                                                                                    talkReplyActivity.sendPatrollerExperienceEvent$2("publish_message_success", ViewSizeResolver$CC.m(str2, str3, str4, m));
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding11 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding11.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle = talkReplyActivity.getViewModel().pageTitle;
                                                                                    companion.getClass();
                                                                                    EditAttemptStepEvent.Companion.logSaveSuccess(pageTitle, "wikitext");
                                                                                    Intent intent = new Intent();
                                                                                    intent.putExtra("newRevisionId", longValue);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding12 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding12 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("subject", ((PlainPasteEditText) activityTalkReplyBinding12.replySubjectText).getText());
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding13 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding13 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    intent.putExtra("body", ((UserMentionInputView) activityTalkReplyBinding13.replyInputView).getEditText().getText());
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        ThreadItem threadItem3 = talkReplyActivity.getViewModel().topic;
                                                                                        threadItem3.getClass();
                                                                                        intent.putExtra("topicId", threadItem3.id);
                                                                                    }
                                                                                    talkReplyActivity.setResult(talkReplyActivity.getViewModel().talkTemplateSaved ? 3 : 1, intent);
                                                                                    if (talkReplyActivity.getViewModel().topic != null) {
                                                                                        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                                                                                        ThreadItem threadItem4 = talkReplyActivity.getViewModel().topic;
                                                                                        talkReplyActivity$special$$inlined$lruCache$default$12.remove(threadItem4 != null ? threadItem4.id : null);
                                                                                    }
                                                                                    talkReplyActivity.finish();
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    Throwable th = ((Resource.Error) resource).throwable;
                                                                                    EditAttemptStepEvent.Companion companion2 = EditAttemptStepEvent.Companion;
                                                                                    PageTitle pageTitle2 = talkReplyActivity.getViewModel().pageTitle;
                                                                                    ViewSizeResolver$CC.m(companion2, pageTitle2, "saveFailure", "wikitext", pageTitle2);
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding14 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding14 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding14.progressBar).setVisibility(8);
                                                                                    talkReplyActivity.setSaveButtonEnabled(true);
                                                                                    ShareUtil.showError$default(talkReplyActivity, th);
                                                                                }
                                                                                return unit;
                                                                            case 1:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$13 = TalkReplyActivity.draftReplies;
                                                                                resource.getClass();
                                                                                if (resource instanceof Resource.Success) {
                                                                                    talkReplyActivity.getViewModel().talkTemplateSaved = true;
                                                                                    ActivityTalkReplyBinding activityTalkReplyBinding15 = talkReplyActivity.binding;
                                                                                    if (activityTalkReplyBinding15 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    ((LinearProgressIndicator) activityTalkReplyBinding15.progressBar).setVisibility(0);
                                                                                    if (talkReplyActivity.getViewModel().templateManagementMode) {
                                                                                        talkReplyActivity.setResult(-1);
                                                                                        talkReplyActivity.finish();
                                                                                    } else {
                                                                                        talkReplyActivity.showEditPreview();
                                                                                    }
                                                                                } else if (resource instanceof Resource.Error) {
                                                                                    ShareUtil.showError$default(talkReplyActivity, ((Resource.Error) resource).throwable);
                                                                                }
                                                                                return unit;
                                                                            default:
                                                                                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$14 = TalkReplyActivity.draftReplies;
                                                                                if (resource instanceof Resource.Success) {
                                                                                    boolean isLoggedIn = Headers.Companion.isLoggedIn();
                                                                                    int i6 = R.drawable.ic_anon_account;
                                                                                    if (!isLoggedIn || Headers.Companion.isTemporaryAccount()) {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding16 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding16 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding16.footerContainer).rootView.setVisibility(0);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding17 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding17 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding17.footerContainer).dayCircleBackground.setImageResource(Headers.Companion.isTemporaryAccount() ? R.drawable.ic_temp_account : R.drawable.ic_anon_account);
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding18 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding18 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding18.footerContainer).dayText.setMovementMethod(LinkMovementMethod.getInstance());
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding19 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding19 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        TextView textView4 = ((ViewCustomCalendarDayBinding) activityTalkReplyBinding19.footerContainer).dayText;
                                                                                        StringUtil stringUtil = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string = talkReplyActivity.getString(R.string.temp_account_edit_status, Headers.Companion.getUserNameFromCookie(), talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        } else {
                                                                                            string = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_edit_status : R.string.temp_account_anon_ip_edit_status, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        textView4.setText(StringUtil.fromHtml(string));
                                                                                    } else {
                                                                                        ActivityTalkReplyBinding activityTalkReplyBinding20 = talkReplyActivity.binding;
                                                                                        if (activityTalkReplyBinding20 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ((ViewCustomCalendarDayBinding) activityTalkReplyBinding20.footerContainer).rootView.setVisibility(8);
                                                                                    }
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    if (!Prefs.getTempAccountDialogShown() && (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount())) {
                                                                                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(talkReplyActivity, R.style.AlertDialogTheme_Icon_NegativeInactive);
                                                                                        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            i6 = R.drawable.ic_temp_account;
                                                                                        }
                                                                                        alertParams.mIconId = i6;
                                                                                        materialAlertDialogBuilder.setTitle(Headers.Companion.isTemporaryAccount() ? R.string.temp_account_using_title : R.string.temp_account_not_logged_in);
                                                                                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                                                                                        if (Headers.Companion.isTemporaryAccount()) {
                                                                                            string2 = talkReplyActivity.getString(R.string.temp_account_temp_dialog_body, Headers.Companion.getUserName());
                                                                                        } else {
                                                                                            string2 = talkReplyActivity.getString(talkReplyActivity.getViewModel().tempAccountsEnabled ? R.string.temp_account_anon_dialog_body : R.string.temp_account_anon_ip_dialog_body, talkReplyActivity.getString(R.string.temp_accounts_help_url));
                                                                                        }
                                                                                        alertParams.mMessage = StringUtil.fromHtml(string2);
                                                                                        materialAlertDialogBuilder.setPositiveButton(talkReplyActivity.getString(R.string.temp_account_dialog_ok), (DialogInterface.OnClickListener) new TextInputDialog$$ExternalSyntheticLambda2(9));
                                                                                        materialAlertDialogBuilder.setNegativeButton(talkReplyActivity.getString(R.string.create_account_login), new TalkReplyActivity$$ExternalSyntheticLambda15(talkReplyActivity, z ? 1 : 0));
                                                                                        Window window = materialAlertDialogBuilder.show().getWindow();
                                                                                        if (window != null && (textView3 = (TextView) window.getDecorView().findViewById(android.R.id.message)) != null) {
                                                                                            textView3.setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new TalkReplyActivity$$ExternalSyntheticLambda0(talkReplyActivity, r5)));
                                                                                        }
                                                                                        PrefsIoUtil.setBoolean(R.string.preference_key_temp_account_dialog_shown, true);
                                                                                    }
                                                                                }
                                                                                return unit;
                                                                        }
                                                                    }
                                                                }, 0));
                                                                TalkTemplate talkTemplate = getViewModel().selectedTemplate;
                                                                if (talkTemplate != null) {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding11 = this.binding;
                                                                    if (activityTalkReplyBinding11 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((FrameLayout) activityTalkReplyBinding11.rootView).post(new Processor$$ExternalSyntheticLambda2(28, this, talkTemplate));
                                                                }
                                                                PageTitle pageTitle = getViewModel().pageTitle;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding12 = this.binding;
                                                                if (activityTalkReplyBinding12 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                UserMentionEditText editText2 = ((UserMentionInputView) activityTalkReplyBinding12.replyInputView).getEditText();
                                                                ActivityTalkReplyBinding activityTalkReplyBinding13 = this.binding;
                                                                if (activityTalkReplyBinding13 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                WikiTextKeyboardView wikiTextKeyboardView2 = (WikiTextKeyboardView) activityTalkReplyBinding13.editKeyboardOverlay;
                                                                if (activityTalkReplyBinding13 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView2 = (WikiTextKeyboardFormattingView) activityTalkReplyBinding13.editKeyboardOverlayFormatting;
                                                                if (activityTalkReplyBinding13 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                new SyntaxHighlightViewAdapter(this, pageTitle, editText2, wikiTextKeyboardView2, wikiTextKeyboardFormattingView2, (WikiTextKeyboardHeadingsView) activityTalkReplyBinding13.editKeyboardOverlayHeadings, Constants.InvokeSource.TALK_REPLY_ACTIVITY, this.requestInsertMedia, getViewModel().isFromDiff, true);
                                                                Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.message_preview_fragment);
                                                                findFragmentById.getClass();
                                                                this.messagePreviewFragment = (EditPreviewFragment) findFragmentById;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding14 = this.binding;
                                                                if (activityTalkReplyBinding14 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((ViewCustomCalendarDayBinding) activityTalkReplyBinding14.footerContainer).rootView.setVisibility(8);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding15 = this.binding;
                                                                if (activityTalkReplyBinding15 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                BitmapsKt.setLayoutDirectionByLang((ScrollView) activityTalkReplyBinding15.talkScrollContainer, getViewModel().pageTitle.wikiSite.languageCode);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding16 = this.binding;
                                                                if (activityTalkReplyBinding16 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                activityTalkReplyBinding16.learnMoreButton.setVisibility(getViewModel().isFromDiff ? 0 : 8);
                                                                if (getViewModel().topic != null) {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding17 = this.binding;
                                                                    if (activityTalkReplyBinding17 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    UserMentionInputView userMentionInputView2 = (UserMentionInputView) activityTalkReplyBinding17.replyInputView;
                                                                    ThreadItem threadItem3 = getViewModel().topic;
                                                                    threadItem3.getClass();
                                                                    userMentionInputView2.setUserNameHints(UuidKt.setOf(threadItem3.author));
                                                                }
                                                                if (getViewModel().topic == null) {
                                                                    charSequence = null;
                                                                } else {
                                                                    ThreadItem threadItem4 = getViewModel().topic;
                                                                    charSequence = (CharSequence) draftReplies.get(threadItem4 != null ? threadItem4.id : null);
                                                                }
                                                                if (charSequence != null && charSequence.length() != 0) {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding18 = this.binding;
                                                                    if (activityTalkReplyBinding18 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((UserMentionInputView) activityTalkReplyBinding18.replyInputView).getEditText().setText(charSequence);
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding19 = this.binding;
                                                                    if (activityTalkReplyBinding19 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    UserMentionEditText editText3 = ((UserMentionInputView) activityTalkReplyBinding19.replyInputView).getEditText();
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding20 = this.binding;
                                                                    if (activityTalkReplyBinding20 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    editText3.setSelection(((UserMentionInputView) activityTalkReplyBinding20.replyInputView).getEditText().getText().toString().length());
                                                                }
                                                                ActivityTalkReplyBinding activityTalkReplyBinding21 = this.binding;
                                                                if (activityTalkReplyBinding21 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((LinearProgressIndicator) activityTalkReplyBinding21.progressBar).setVisibility(8);
                                                                this.shouldWatchText = false;
                                                                ActivityTalkReplyBinding activityTalkReplyBinding22 = this.binding;
                                                                if (activityTalkReplyBinding22 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((PlainPasteEditText) activityTalkReplyBinding22.replySubjectText).setText(getIntent().getCharSequenceExtra("subject"));
                                                                if (getIntent().hasExtra("body")) {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding23 = this.binding;
                                                                    if (activityTalkReplyBinding23 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    if (((UserMentionInputView) activityTalkReplyBinding23.replyInputView).getEditText().getText().length() == 0) {
                                                                        ActivityTalkReplyBinding activityTalkReplyBinding24 = this.binding;
                                                                        if (activityTalkReplyBinding24 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                            throw null;
                                                                        }
                                                                        ((UserMentionInputView) activityTalkReplyBinding24.replyInputView).getEditText().setText(getIntent().getCharSequenceExtra("body"));
                                                                        ActivityTalkReplyBinding activityTalkReplyBinding25 = this.binding;
                                                                        if (activityTalkReplyBinding25 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                            throw null;
                                                                        }
                                                                        UserMentionEditText editText4 = ((UserMentionInputView) activityTalkReplyBinding25.replyInputView).getEditText();
                                                                        ActivityTalkReplyBinding activityTalkReplyBinding26 = this.binding;
                                                                        if (activityTalkReplyBinding26 == null) {
                                                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                            throw null;
                                                                        }
                                                                        editText4.setSelection(((UserMentionInputView) activityTalkReplyBinding26.replyInputView).getEditText().getText().toString().length());
                                                                    }
                                                                }
                                                                this.shouldWatchText = true;
                                                                EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
                                                                PageTitle pageTitle2 = getViewModel().pageTitle;
                                                                ViewSizeResolver$CC.m(companion, pageTitle2, "init", "wikitext", pageTitle2);
                                                                ActivityTalkReplyBinding activityTalkReplyBinding27 = this.binding;
                                                                if (activityTalkReplyBinding27 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                setSaveButtonEnabled(((UserMentionInputView) activityTalkReplyBinding27.replyInputView).getEditText().getText().length() > 0);
                                                                if (getViewModel().isNewTopic || getViewModel().isFromDiff) {
                                                                    if (getViewModel().isNewTopic) {
                                                                        setTitle(getString(R.string.talk_new_topic));
                                                                    }
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding28 = this.binding;
                                                                    if (activityTalkReplyBinding28 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((UserMentionInputView) activityTalkReplyBinding28.replyInputView).getTextInputLayout().setHint(getString(R.string.talk_message_hint));
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding29 = this.binding;
                                                                    if (activityTalkReplyBinding29 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((TextInputLayout) activityTalkReplyBinding29.replySubjectLayout).setVisibility(0);
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding30 = this.binding;
                                                                    if (activityTalkReplyBinding30 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((TextInputLayout) activityTalkReplyBinding30.replySubjectLayout).requestFocus();
                                                                } else {
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding31 = this.binding;
                                                                    if (activityTalkReplyBinding31 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((TextInputLayout) activityTalkReplyBinding31.replySubjectLayout).setVisibility(8);
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding32 = this.binding;
                                                                    if (activityTalkReplyBinding32 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((UserMentionInputView) activityTalkReplyBinding32.replyInputView).getTextInputLayout().setHint(getString(R.string.talk_reply_hint));
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding33 = this.binding;
                                                                    if (activityTalkReplyBinding33 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((ScrollView) activityTalkReplyBinding33.talkScrollContainer).fullScroll(130);
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding34 = this.binding;
                                                                    if (activityTalkReplyBinding34 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    UserMentionInputView userMentionInputView3 = (UserMentionInputView) activityTalkReplyBinding34.replyInputView;
                                                                    String userName = Headers.Companion.getUserName();
                                                                    PageTitle pageTitle3 = getViewModel().pageTitle;
                                                                    pageTitle3.getClass();
                                                                    MultipartBody.Builder builder = userMentionInputView3.binding;
                                                                    if (((UserMentionEditText) builder.boundary).getText().length() == 0 && !userMentionInputView3.userNameHints.isEmpty()) {
                                                                        String str = (String) CollectionsKt.first(userMentionInputView3.userNameHints);
                                                                        if (!Intrinsics.areEqual(str, userName)) {
                                                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                                                            if (!StringUtil.addUnderscores(str).equalsIgnoreCase(StringsKt__StringsJVMKt.replace$default(pageTitle3.getText(), " ", "_"))) {
                                                                                UserMentionEditText userMentionEditText = (UserMentionEditText) builder.boundary;
                                                                                WikiSite wikiSite2 = userMentionInputView3.wikiSite;
                                                                                str.getClass();
                                                                                wikiSite2.getClass();
                                                                                userMentionEditText.isUserNameCommitting = true;
                                                                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                                                                spannableStringBuilder.append((CharSequence) UserMentionEditText.composeUserNameLink(str, wikiSite2));
                                                                                spannableStringBuilder.append((CharSequence) " ");
                                                                                SpannedString spannedString = new SpannedString(spannableStringBuilder);
                                                                                userMentionEditText.setText(spannedString);
                                                                                userMentionEditText.isUserNameCommitting = false;
                                                                                userMentionEditText.setSelection(spannedString.length());
                                                                            }
                                                                        }
                                                                    }
                                                                    ActivityTalkReplyBinding activityTalkReplyBinding35 = this.binding;
                                                                    if (activityTalkReplyBinding35 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                        throw null;
                                                                    }
                                                                    ((ScrollView) activityTalkReplyBinding35.talkScrollContainer).post(new TalkReplyActivity$$ExternalSyntheticLambda11(this, 2));
                                                                }
                                                                if (!getViewModel().templateManagementMode || (supportActionBar = getSupportActionBar()) == null) {
                                                                    return;
                                                                }
                                                                supportActionBar.setTitle(getString(getViewModel().selectedTemplate == null ? R.string.talk_templates_new_message_title : R.string.talk_templates_edit_message_dialog_title));
                                                                return;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                i2 = i3;
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        if (!this.savedSuccess) {
            ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
            if (activityTalkReplyBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            if (!StringsKt.isBlank(((UserMentionInputView) activityTalkReplyBinding.replyInputView).getEditText().getText()) && getViewModel().topic != null) {
                ThreadItem threadItem = getViewModel().topic;
                threadItem.getClass();
                String str = threadItem.id;
                ActivityTalkReplyBinding activityTalkReplyBinding2 = this.binding;
                if (activityTalkReplyBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                draftReplies.put(str, ((UserMentionInputView) activityTalkReplyBinding2.replyInputView).getEditText().getText());
            }
        }
        ActivityTalkReplyBinding activityTalkReplyBinding3 = this.binding;
        if (activityTalkReplyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        PlainPasteEditText plainPasteEditText = (PlainPasteEditText) activityTalkReplyBinding3.replySubjectText;
        SearchView.AnonymousClass10 anonymousClass10 = this.textWatcher;
        if (anonymousClass10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textWatcher");
            throw null;
        }
        plainPasteEditText.removeTextChangedListener(anonymousClass10);
        ActivityTalkReplyBinding activityTalkReplyBinding4 = this.binding;
        if (activityTalkReplyBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        UserMentionEditText editText = ((UserMentionInputView) activityTalkReplyBinding4.replyInputView).getEditText();
        SearchView.AnonymousClass10 anonymousClass102 = this.textWatcher;
        if (anonymousClass102 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textWatcher");
            throw null;
        }
        editText.removeTextChangedListener(anonymousClass102);
        super.onDestroy();
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.DismissCallback
    public final void onLinkPreviewDismiss() {
        if (isDestroyed()) {
            return;
        }
        ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
        if (activityTalkReplyBinding != null) {
            ((UserMentionInputView) activityTalkReplyBinding.replyInputView).getEditText().postDelayed(new TalkReplyActivity$$ExternalSyntheticLambda11(this, 0), 200L);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        setToolbarTitle$2(getViewModel().pageTitle);
        updateEditLicenseText$1();
    }

    public final void sendPatrollerExperienceEvent$2(String str, String str2) {
        if (getViewModel().isFromDiff) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(str, "pt_warning_messages", str2, m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        }
    }

    public final void setSaveButtonEnabled(boolean z) {
        ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
        if (activityTalkReplyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityTalkReplyBinding.replyNextButton.setEnabled(z);
        ActivityTalkReplyBinding activityTalkReplyBinding2 = this.binding;
        if (activityTalkReplyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        TextView textView = activityTalkReplyBinding2.replyNextButton;
        int i = z ? R.attr.progressive_color : R.attr.inactive_color;
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = getTheme().resolveAttribute(i, typedValue, true) ? typedValue : null;
        if (typedValue2 != null) {
            textView.setTextColor(typedValue2.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b0, code lost:
    
        if (r2 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00b2, code lost:
    
        r2.setMovementMethod(new org.wikipedia.page.LinkMovementMethodExt(new androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3(14, r8, r7)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c1, code lost:
    
        r7 = getSupportActionBar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00c5, code lost:
    
        if (r7 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c7, code lost:
    
        r7.setTitle(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ca, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setToolbarTitle$2(org.wikipedia.page.PageTitle r8) {
        /*
            r7 = this;
            org.wikipedia.talk.TalkReplyViewModel r0 = r7.getViewModel()
            boolean r0 = r0.templateManagementMode
            if (r0 == 0) goto L13
            r0 = 2131888522(0x7f12098a, float:1.9411682E38)
            java.lang.String r0 = r7.getString(r0)
            r0.getClass()
            goto L82
        L13:
            org.wikipedia.util.StringUtil r0 = org.wikipedia.util.StringUtil.INSTANCE
            org.wikipedia.talk.TalkReplyViewModel r0 = r7.getViewModel()
            boolean r0 = r0.isNewTopic
            if (r0 != 0) goto L35
            org.wikipedia.talk.TalkReplyViewModel r0 = r7.getViewModel()
            boolean r0 = r0.isFromDiff
            if (r0 == 0) goto L26
            goto L35
        L26:
            android.content.Intent r0 = r7.getIntent()
            java.lang.String r1 = "parentSubject"
            java.lang.String r0 = r0.getStringExtra(r1)
            if (r0 != 0) goto L6a
            java.lang.String r0 = ""
            goto L6a
        L35:
            java.lang.String r0 = r8.getNamespace()
            int r1 = r0.length()
            if (r1 != 0) goto L47
            org.wikipedia.dataclient.WikiSite r0 = r8.wikiSite
            java.lang.String r0 = r0.languageCode
            java.lang.String r0 = org.wikipedia.staticdata.TalkAliasData.valueFor(r0)
        L47:
            java.lang.String r1 = r8.getDisplayText()
            r2 = 58
            java.lang.String r1 = kotlin.text.StringsKt.substringAfter$default(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r0 = ": <a href='#'>"
            r2.append(r0)
            r2.append(r1)
            java.lang.String r0 = "</a>"
            r2.append(r0)
            java.lang.String r0 = r2.toString()
        L6a:
            android.text.Spanned r0 = org.wikipedia.util.StringUtil.fromHtml(r0)
            java.lang.CharSequence r0 = kotlin.text.StringsKt.trim(r0)
            int r1 = r0.length()
            if (r1 != 0) goto L82
            r0 = 2131888462(0x7f12094e, float:1.941156E38)
            java.lang.String r0 = r7.getString(r0)
            r0.getClass()
        L82:
            org.wikipedia.databinding.ActivityTalkReplyBinding r1 = r7.binding
            r2 = 0
            if (r1 == 0) goto Lcb
            android.view.View r1 = r1.replyToolbar
            com.google.android.material.appbar.MaterialToolbar r1 = (com.google.android.material.appbar.MaterialToolbar) r1
            r3 = 0
            r4 = r3
        L8d:
            int r5 = r1.getChildCount()
            if (r4 >= r5) goto L95
            r5 = 1
            goto L96
        L95:
            r5 = r3
        L96:
            if (r5 == 0) goto Lb0
            int r5 = r4 + 1
            android.view.View r4 = r1.getChildAt(r4)
            if (r4 == 0) goto Laa
            boolean r6 = r4 instanceof android.widget.TextView
            if (r6 == 0) goto La8
            r2 = r4
            android.widget.TextView r2 = (android.widget.TextView) r2
            goto Lb0
        La8:
            r4 = r5
            goto L8d
        Laa:
            java.lang.IndexOutOfBoundsException r7 = new java.lang.IndexOutOfBoundsException
            r7.<init>()
            throw r7
        Lb0:
            if (r2 == 0) goto Lc1
            org.wikipedia.page.LinkMovementMethodExt r1 = new org.wikipedia.page.LinkMovementMethodExt
            androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3 r3 = new androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3
            r4 = 14
            r3.<init>(r4, r8, r7)
            r1.<init>(r3)
            r2.setMovementMethod(r1)
        Lc1:
            coil3.util.ContextsKt r7 = r7.getSupportActionBar()
            if (r7 == 0) goto Lca
            r7.setTitle(r0)
        Lca:
            return
        Lcb:
            java.lang.String r7 = "binding"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkReplyActivity.setToolbarTitle$2(org.wikipedia.page.PageTitle):void");
    }

    public final void showEditPreview() {
        Window window = getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
        if (activityTalkReplyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ScrollView) activityTalkReplyBinding.talkScrollContainer).setVisibility(8);
        updateEditLicenseText$1();
        setSaveButtonEnabled(true);
        ContextsKt supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(getString(R.string.edit_preview));
        }
        ActivityTalkReplyBinding activityTalkReplyBinding2 = this.binding;
        if (activityTalkReplyBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        activityTalkReplyBinding2.replyNextButton.setText(getString(R.string.description_edit_save));
        EditPreviewFragment editPreviewFragment = this.messagePreviewFragment;
        if (editPreviewFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
            throw null;
        }
        PageTitle pageTitle = getViewModel().pageTitle;
        ActivityTalkReplyBinding activityTalkReplyBinding3 = this.binding;
        if (activityTalkReplyBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        String obj = StringsKt.trim(String.valueOf(((PlainPasteEditText) activityTalkReplyBinding3.replySubjectText).getText())).toString();
        String wikitextBody = getWikitextBody();
        if (obj.length() > 0) {
            wikitextBody = ViewSizeResolver$CC.m("==", obj, "==\n", wikitextBody);
        }
        editPreviewFragment.showPreview(pageTitle, wikitextBody);
        EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
        PageTitle pageTitle2 = getViewModel().pageTitle;
        ViewSizeResolver$CC.m(companion, pageTitle2, "saveIntent", "wikitext", pageTitle2);
    }

    @Override // org.wikipedia.edit.preview.EditPreviewFragment.Callback
    public final void showProgressBar$1(boolean z) {
        ActivityTalkReplyBinding activityTalkReplyBinding = this.binding;
        if (activityTalkReplyBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((LinearProgressIndicator) activityTalkReplyBinding.progressBar).setVisibility(z ? 0 : 8);
        invalidateOptionsMenu();
    }

    public final void updateEditLicenseText$1() {
        TextView textView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        Spanned fromHtml = StringUtil.fromHtml(getString(Headers.Companion.isLoggedIn() ? R.string.edit_save_action_license_logged_in : R.string.edit_save_action_license_anon, getString(R.string.terms_of_use_url), getString(R.string.cc_by_sa_4_url)));
        EditPreviewFragment editPreviewFragment = this.messagePreviewFragment;
        if (editPreviewFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
            throw null;
        }
        View view = editPreviewFragment.mView;
        if (view == null || (textView = (TextView) view.findViewById(R.id.licenseText)) == null) {
            return;
        }
        textView.setText(fromHtml);
        textView.setMovementMethod(this.licenseTextMovementMethod);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TalkLinkHandler extends LinkHandler {
        public int lastX;
        public int lastY;
        public WikiSite wikiSite;

        public TalkLinkHandler(TalkReplyActivity talkReplyActivity) {
            super(talkReplyActivity);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            WikiSite wikiSite = this.wikiSite;
            if (wikiSite != null) {
                return wikiSite;
            }
            Intrinsics.throwUninitializedPropertyAccessException("wikiSite");
            throw null;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
            UserTalkPopupHelper.show$default(UserTalkPopupHelper.INSTANCE, TalkReplyActivity.this, pageTitle, false, this.lastX, this.lastY, Constants.InvokeSource.TALK_REPLY_ACTIVITY, 31, false, null, null, 1920);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onMediaLinkClicked(PageTitle pageTitle) {
            int i = FilePageActivity.$r8$clinit;
            TalkReplyActivity talkReplyActivity = TalkReplyActivity.this;
            talkReplyActivity.startActivity(Path.Companion.newIntent((Context) talkReplyActivity, pageTitle, true));
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onPageLinkClicked(String str, String str2) {
            str2.getClass();
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
        }
    }
}
