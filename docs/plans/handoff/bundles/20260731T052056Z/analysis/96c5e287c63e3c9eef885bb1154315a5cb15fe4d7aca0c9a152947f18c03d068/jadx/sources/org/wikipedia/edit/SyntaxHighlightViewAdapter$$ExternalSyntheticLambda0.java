package org.wikipedia.edit;

import android.content.Intent;
import android.os.Parcelable;
import android.view.View;
import android.view.inputmethod.InputConnection;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0 implements OnApplyWindowInsetsListener, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SyntaxHighlightViewAdapter f$0;

    public /* synthetic */ SyntaxHighlightViewAdapter$$ExternalSyntheticLambda0(SyntaxHighlightViewAdapter syntaxHighlightViewAdapter, int i) {
        this.$r8$classId = i;
        this.f$0 = syntaxHighlightViewAdapter;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        PageTitle pageTitle;
        String str;
        InputConnection inputConnection;
        Intent intent2;
        int i = this.$r8$classId;
        SyntaxHighlightViewAdapter syntaxHighlightViewAdapter = this.f$0;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i) {
            case 1:
                activityResult.getClass();
                if (activityResult.resultCode == 97 && (intent = activityResult.data) != null && (pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "returnLinkTitle", PageTitle.class))) != null) {
                    WikiTextKeyboardView wikiTextKeyboardView = (WikiTextKeyboardView) syntaxHighlightViewAdapter.wikiTextKeyboardView;
                    String str2 = ((PageTitle) syntaxHighlightViewAdapter.pageTitle).wikiSite.languageCode;
                    str2.getClass();
                    SyntaxHighlightableEditText syntaxHighlightableEditText = wikiTextKeyboardView.editText;
                    if (syntaxHighlightableEditText != null && syntaxHighlightableEditText.getInputConnection() != null) {
                        String m = !Intrinsics.areEqual(pageTitle.wikiSite.languageCode, str2) ? Animation.CC.m("[[:", pageTitle.wikiSite.languageCode, ":") : "[[";
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        String obj2 = StringUtil.fromHtml(pageTitle.getDisplayText()).toString();
                        if (StringsKt__StringsJVMKt.replace$default(pageTitle.getPrefixedText(), "_", " ").equals(obj2)) {
                            str = obj2 + "]]";
                        } else {
                            str = ViewSizeResolver$CC.m(pageTitle.getPrefixedText(), "|", obj2, "]]");
                        }
                        String concat = m.concat(str);
                        SyntaxHighlightableEditText syntaxHighlightableEditText2 = wikiTextKeyboardView.editText;
                        if (syntaxHighlightableEditText2 != null && (inputConnection = syntaxHighlightableEditText2.getInputConnection()) != null) {
                            inputConnection.commitText(concat, 1);
                            break;
                        }
                    }
                }
                break;
            default:
                activityResult.getClass();
                if (activityResult.resultCode == 100 && (intent2 = activityResult.data) != null) {
                    String stringExtra = intent2.getStringExtra("resultWikiText");
                    InputConnection inputConnection2 = ((SyntaxHighlightableEditText) syntaxHighlightViewAdapter.editText).getInputConnection();
                    if (inputConnection2 != null) {
                        inputConnection2.commitText(stringExtra, 1);
                        break;
                    }
                }
                break;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        view.getClass();
        int i = 8;
        boolean isVisible = windowInsetsCompat.mImpl.isVisible(8);
        SyntaxHighlightViewAdapter syntaxHighlightViewAdapter = this.f$0;
        syntaxHighlightViewAdapter.hideAllSyntaxModals();
        WikiTextKeyboardView wikiTextKeyboardView = (WikiTextKeyboardView) syntaxHighlightViewAdapter.wikiTextKeyboardView;
        if (isVisible && ((SyntaxHighlightableEditText) syntaxHighlightViewAdapter.editText).isFocused()) {
            i = 0;
        }
        wikiTextKeyboardView.setVisibility(i);
        return windowInsetsCompat;
    }
}
