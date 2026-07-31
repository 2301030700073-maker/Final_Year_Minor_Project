package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.core.view.MenuHostHelper;
import androidx.emoji2.viewsintegration.EmojiInputConnection;
import androidx.fragment.app.Fragment;
import com.tokenautocomplete.TokenCompleteTextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InputConnectionCompat$2 extends InputConnectionWrapper {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object val$listener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputConnectionCompat$2(InputConnection inputConnection, OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        super(inputConnection, false);
        this.val$listener = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        switch (this.$r8$classId) {
            case 1:
                ((TokenCompleteTextView) this.val$listener).canDeleteSelection(i);
                break;
        }
        return super.deleteSurroundingText(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        Object[] objArr;
        ResultReceiver resultReceiver;
        switch (this.$r8$classId) {
            case 0:
                OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = (OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) this.val$listener;
                boolean z = false;
                z = false;
                z = false;
                z = false;
                if (bundle != null) {
                    if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                        objArr = false;
                    } else if (TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                        objArr = true;
                    }
                    try {
                        resultReceiver = (ResultReceiver) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
                    } catch (Throwable th) {
                        th = th;
                        resultReceiver = null;
                    }
                    try {
                        Uri uri = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                        ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                        Uri uri2 = (Uri) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                        int i = bundle.getInt(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                        Bundle bundle2 = (Bundle) bundle.getParcelable(objArr != false ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                        if (uri != null && clipDescription != null) {
                            Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
                            if (Build.VERSION.SDK_INT >= 25) {
                                anonymousClass7.this$0 = new InputContentInfoCompat$InputContentInfoCompatApi25Impl(uri, clipDescription, uri2);
                            } else {
                                anonymousClass7.this$0 = new MenuHostHelper(uri, clipDescription, uri2, 27);
                            }
                            z = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0.onCommitContent(anonymousClass7, i, bundle2);
                        }
                        if (resultReceiver != null) {
                            resultReceiver.send(z ? 1 : 0, null);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (resultReceiver != null) {
                            resultReceiver.send(0, null);
                        }
                        throw th;
                    }
                }
                if (z) {
                    return true;
                }
                return super.performPrivateCommand(str, bundle);
            default:
                return super.performPrivateCommand(str, bundle);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        switch (this.$r8$classId) {
            case 1:
                TokenCompleteTextView tokenCompleteTextView = (TokenCompleteTextView) this.val$listener;
                CharSequence hint = tokenCompleteTextView.getHint();
                if (hint != null && charSequence != null) {
                    String str = hint.toString().trim().split(" ")[0];
                    if (!str.isEmpty() && str.equals(charSequence.toString())) {
                        charSequence = "";
                    }
                }
                if (tokenCompleteTextView.lastCompletionText != null && charSequence != null && charSequence.length() == tokenCompleteTextView.lastCompletionText.length() + 1 && charSequence.toString().startsWith(tokenCompleteTextView.lastCompletionText)) {
                    charSequence = charSequence.subSequence(charSequence.length() - 1, charSequence.length());
                    tokenCompleteTextView.lastCompletionText = null;
                }
                return super.setComposingText(charSequence, i);
            default:
                return super.setComposingText(charSequence, i);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputConnectionCompat$2(TokenCompleteTextView tokenCompleteTextView, EmojiInputConnection emojiInputConnection) {
        super(emojiInputConnection, true);
        this.val$listener = tokenCompleteTextView;
    }
}
