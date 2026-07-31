package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.SearchView;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.BitmapsKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyViewModel$loadTemplates$2;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.log.L;
import org.wikipedia.views.UserMentionInputView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lorg/wikipedia/views/UserMentionEditText;", "Lorg/wikipedia/edit/SyntaxHighlightableEditText;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/views/UserMentionEditText$Listener;", "listener", "Lorg/wikipedia/views/UserMentionEditText$Listener;", "getListener", "()Lorg/wikipedia/views/UserMentionEditText$Listener;", "setListener", "(Lorg/wikipedia/views/UserMentionEditText$Listener;)V", "Listener", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UserMentionEditText extends SyntaxHighlightableEditText {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean isUserNameCommitting;
    public Listener listener;
    public int spacesPressedCount;
    public final SearchView.AnonymousClass10 textWatcher;
    public int userNameEndPos;
    public int userNameStartPos;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Listener {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserMentionEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.userNameStartPos = -1;
        this.userNameEndPos = -1;
        SearchView.AnonymousClass10 anonymousClass10 = new SearchView.AnonymousClass10(14, this);
        addTextChangedListener(anonymousClass10);
        this.textWatcher = anonymousClass10;
    }

    public static String composeUserNameLink(String str, WikiSite wikiSite) {
        return Animation.CC.m(Modifier.CC.m352m("@[[", UserAliasData.valueFor(wikiSite.languageCode), ":", str, "|"), str, "]]");
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final void onCancelUserNameEntry() {
        this.userNameStartPos = -1;
        this.userNameEndPos = -1;
        this.spacesPressedCount = 0;
        Listener listener = this.listener;
        if (listener != null) {
            UserMentionInputView userMentionInputView = (UserMentionInputView) listener;
            StandaloneCoroutine standaloneCoroutine = userMentionInputView.clientJob;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            ((RecyclerView) userMentionInputView.binding.parts).setVisibility(8);
            UserMentionInputView.Listener listener2 = userMentionInputView.listener;
            if (listener2 != null) {
                ((TalkReplyActivity) listener2).userMentionScrolled = false;
            }
        }
    }

    @Override // android.widget.TextView
    public final void onSelectionChanged(int i, int i2) {
        int i3;
        int i4;
        super.onSelectionChanged(i, i2);
        if (this.textWatcher == null || this.isUserNameCommitting || (i3 = this.userNameStartPos) < 0) {
            return;
        }
        if (i < i3 || i2 > (i4 = this.userNameEndPos) || i4 > getText().length()) {
            onCancelUserNameEntry();
            return;
        }
        String obj = getText().subSequence(this.userNameStartPos, this.userNameEndPos).toString();
        L.d("Entering username: " + obj);
        Listener listener = this.listener;
        if (listener != null) {
            UserMentionInputView userMentionInputView = (UserMentionInputView) listener;
            ArrayList arrayList = userMentionInputView.userNameList;
            obj.getClass();
            if (StringsKt__StringsJVMKt.startsWith(obj, "@", false)) {
                if (obj.length() <= 1) {
                    arrayList.clear();
                    arrayList.addAll(userMentionInputView.userNameHints);
                    userMentionInputView.onSearchResults();
                } else {
                    String substring = obj.substring(1);
                    StandaloneCoroutine standaloneCoroutine = userMentionInputView.clientJob;
                    Continuation continuation = null;
                    if (standaloneCoroutine != null) {
                        standaloneCoroutine.cancel(null);
                    }
                    userMentionInputView.clientJob = AwaitKt.launch$default(BitmapsKt.coroutineScope$default(userMentionInputView), new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(userMentionInputView), null, new TalkReplyViewModel$loadTemplates$2(userMentionInputView, substring, continuation, 12), 2);
                }
            }
        }
    }

    public final void setListener(Listener listener) {
        this.listener = listener;
    }
}
