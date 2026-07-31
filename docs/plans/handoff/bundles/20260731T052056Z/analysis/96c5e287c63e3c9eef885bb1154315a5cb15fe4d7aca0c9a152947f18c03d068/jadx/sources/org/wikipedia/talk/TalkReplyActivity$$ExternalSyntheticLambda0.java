package org.wikipedia.talk;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.unit.DpKt;
import java.util.Map;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Okio__JvmOkioKt;
import org.wikipedia.R;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.UserMentionInputView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TalkReplyActivity$$ExternalSyntheticLambda0 implements LinkMovementMethodExt.UrlHandlerWithTextAndCoords, LinkMovementMethodExt.UrlHandler, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TalkReplyActivity f$0;

    public /* synthetic */ TalkReplyActivity$$ExternalSyntheticLambda0(TalkReplyActivity talkReplyActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = talkReplyActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        int i = this.$r8$classId;
        TalkReplyActivity talkReplyActivity = this.f$0;
        switch (i) {
            case 3:
                ActivityResult activityResult = (ActivityResult) obj;
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                activityResult.getClass();
                if (activityResult.resultCode == 1) {
                    talkReplyActivity.updateEditLicenseText$1();
                    ShareUtil.showMessage(talkReplyActivity, R.string.login_success_toast);
                    return;
                }
                return;
            default:
                ActivityResult activityResult2 = (ActivityResult) obj;
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                activityResult2.getClass();
                if (activityResult2.resultCode != 100 || (intent = activityResult2.data) == null) {
                    return;
                }
                PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "imageTitle", PageTitle.class));
                String stringExtra = intent.getStringExtra("resultImageCaption");
                String stringExtra2 = intent.getStringExtra("resultImageAlt");
                String stringExtra3 = intent.getStringExtra("resultImageSize");
                String stringExtra4 = intent.getStringExtra("resultImageType");
                String stringExtra5 = intent.getStringExtra("resultImagePos");
                Map map = InsertMediaViewModel.infoboxVarsByLang;
                String str = talkReplyActivity.getViewModel().pageTitle.wikiSite.languageCode;
                ActivityTalkReplyBinding activityTalkReplyBinding = talkReplyActivity.binding;
                if (activityTalkReplyBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                String obj2 = ((UserMentionInputView) activityTalkReplyBinding.replyInputView).getEditText().getText().toString();
                String text = pageTitle != null ? pageTitle.getText() : null;
                String str2 = text == null ? "" : text;
                String str3 = stringExtra == null ? "" : stringExtra;
                String str4 = stringExtra2 == null ? "" : stringExtra2;
                String str5 = stringExtra3 == null ? "" : stringExtra3;
                String str6 = stringExtra4 == null ? "" : stringExtra4;
                String str7 = stringExtra5 == null ? "" : stringExtra5;
                ActivityTalkReplyBinding activityTalkReplyBinding2 = talkReplyActivity.binding;
                if (activityTalkReplyBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                Triple insertImageIntoWikiText = Okio__JvmOkioKt.insertImageIntoWikiText(str, obj2, str2, str3, str4, str5, str6, str7, ((UserMentionInputView) activityTalkReplyBinding2.replyInputView).getEditText().getSelectionStart(), false, false);
                ActivityTalkReplyBinding activityTalkReplyBinding3 = talkReplyActivity.binding;
                if (activityTalkReplyBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((UserMentionInputView) activityTalkReplyBinding3.replyInputView).getEditText().setText((CharSequence) insertImageIntoWikiText.first);
                Pair pair = (Pair) insertImageIntoWikiText.third;
                ActivityTalkReplyBinding activityTalkReplyBinding4 = talkReplyActivity.binding;
                if (activityTalkReplyBinding4 != null) {
                    ((UserMentionInputView) activityTalkReplyBinding4.replyInputView).getEditText().setSelection(((Number) pair.first).intValue(), ((Number) pair.second).intValue() + ((Number) pair.first).intValue());
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = this.$r8$classId;
        TalkReplyActivity talkReplyActivity = this.f$0;
        switch (i) {
            case 1:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                if (!StringsKt.contains(str, "#login", false) && !StringsKt.contains(str, "#createaccount", false)) {
                    Uri parse = Uri.parse(str);
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(talkReplyActivity, parse);
                    break;
                } else {
                    talkReplyActivity.launchLogin$1(StringsKt.contains(str, "#createaccount", false));
                    break;
                }
                break;
            default:
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$12 = TalkReplyActivity.draftReplies;
                if (!str.equals("https://#login")) {
                    Uri parse2 = Uri.parse(str);
                    parse2.getClass();
                    UriUtil.visitInExternalBrowser(talkReplyActivity, parse2);
                    break;
                } else {
                    Intent putExtra = new Intent(talkReplyActivity, (Class<?>) LoginActivity.class).putExtra("login_request_source", "edit").putExtra("create_account_first", true);
                    putExtra.getClass();
                    talkReplyActivity.requestLogin.launch(putExtra, null);
                    break;
                }
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandlerWithTextAndCoords
    public void onUrlClick(int i, int i2, String str, String str2, String str3) {
        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
        TalkReplyActivity.TalkLinkHandler talkLinkHandler = this.f$0.linkHandler;
        if (talkLinkHandler != null) {
            talkLinkHandler.lastX = i;
            talkLinkHandler.lastY = i2;
            talkLinkHandler.onUrlClick(str, str2, str3);
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
        throw null;
    }
}
