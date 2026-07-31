package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.activity.ComponentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.StandaloneCoroutine;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda11;
import org.wikipedia.views.UserMentionEditText;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0003'()B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\"\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!R\u0011\u0010&\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b$\u0010%¨\u0006*"}, d2 = {"Lorg/wikipedia/views/UserMentionInputView;", "Landroid/widget/LinearLayout;", "Lorg/wikipedia/views/UserMentionEditText$Listener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/dataclient/WikiSite;", "wikiSite", "Lorg/wikipedia/dataclient/WikiSite;", "getWikiSite", "()Lorg/wikipedia/dataclient/WikiSite;", "setWikiSite", "(Lorg/wikipedia/dataclient/WikiSite;)V", "Lorg/wikipedia/views/UserMentionInputView$Listener;", "listener", "Lorg/wikipedia/views/UserMentionInputView$Listener;", "getListener", "()Lorg/wikipedia/views/UserMentionInputView$Listener;", "setListener", "(Lorg/wikipedia/views/UserMentionInputView$Listener;)V", "", "", "userNameHints", "Ljava/util/Set;", "getUserNameHints", "()Ljava/util/Set;", "setUserNameHints", "(Ljava/util/Set;)V", "Lorg/wikipedia/views/UserMentionEditText;", "getEditText", "()Lorg/wikipedia/views/UserMentionEditText;", "editText", "Lcom/google/android/material/textfield/TextInputLayout;", "getTextInputLayout", "()Lcom/google/android/material/textfield/TextInputLayout;", "textInputLayout", "Listener", "UserNameViewHolder", "DiffLinesAdapter", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UserMentionInputView extends LinearLayout implements UserMentionEditText.Listener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final MultipartBody.Builder binding;
    public StandaloneCoroutine clientJob;
    public Listener listener;
    public Set userNameHints;
    public final ArrayList userNameList;
    public WikiSite wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Listener {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UserNameViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        public String userName;

        public UserNameViewHolder(View view) {
            super(view);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r9) {
            /*
                r8 = this;
                r9.getClass()
                org.wikipedia.views.UserMentionInputView r9 = org.wikipedia.views.UserMentionInputView.this
                okhttp3.MultipartBody$Builder r0 = r9.binding
                java.lang.Object r0 = r0.boundary
                org.wikipedia.views.UserMentionEditText r0 = (org.wikipedia.views.UserMentionEditText) r0
                java.lang.String r8 = r8.userName
                if (r8 == 0) goto L97
                org.wikipedia.dataclient.WikiSite r1 = r9.getWikiSite()
                r1.getClass()
                r2 = 0
                r3 = 1
                r0.isUserNameCommitting = r3     // Catch: java.lang.Throwable -> L5f
                int r4 = r0.userNameStartPos     // Catch: java.lang.Throwable -> L5f
                if (r4 < 0) goto L85
                int r5 = r0.userNameEndPos     // Catch: java.lang.Throwable -> L5f
                if (r5 > r4) goto L23
                goto L85
            L23:
                android.text.Editable r4 = r0.getText()     // Catch: java.lang.Throwable -> L5f
                int r5 = r0.userNameStartPos     // Catch: java.lang.Throwable -> L5f
                java.lang.CharSequence r4 = r4.subSequence(r2, r5)     // Catch: java.lang.Throwable -> L5f
                java.lang.String r8 = org.wikipedia.views.UserMentionEditText.composeUserNameLink(r8, r1)     // Catch: java.lang.Throwable -> L5f
                android.text.SpannableStringBuilder r1 = new android.text.SpannableStringBuilder     // Catch: java.lang.Throwable -> L5f
                r1.<init>()     // Catch: java.lang.Throwable -> L5f
                r1.append(r4)     // Catch: java.lang.Throwable -> L5f
                r1.append(r8)     // Catch: java.lang.Throwable -> L5f
                int r5 = r0.userNameEndPos     // Catch: java.lang.Throwable -> L5f
                android.text.Editable r6 = r0.getText()     // Catch: java.lang.Throwable -> L5f
                int r6 = r6.length()     // Catch: java.lang.Throwable -> L5f
                if (r5 >= r6) goto L61
                android.text.Editable r5 = r0.getText()     // Catch: java.lang.Throwable -> L5f
                int r6 = r0.userNameEndPos     // Catch: java.lang.Throwable -> L5f
                android.text.Editable r7 = r0.getText()     // Catch: java.lang.Throwable -> L5f
                int r7 = r7.length()     // Catch: java.lang.Throwable -> L5f
                int r7 = r7 - r3
                java.lang.CharSequence r3 = r5.subSequence(r6, r7)     // Catch: java.lang.Throwable -> L5f
                r1.append(r3)     // Catch: java.lang.Throwable -> L5f
                goto L61
            L5f:
                r8 = move-exception
                goto L94
            L61:
                android.text.SpannedString r3 = new android.text.SpannedString     // Catch: java.lang.Throwable -> L5f
                r3.<init>(r1)     // Catch: java.lang.Throwable -> L5f
                r0.setText(r3)     // Catch: java.lang.Throwable -> L5f
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5f
                r1.<init>()     // Catch: java.lang.Throwable -> L5f
                r1.append(r4)     // Catch: java.lang.Throwable -> L5f
                r1.append(r8)     // Catch: java.lang.Throwable -> L5f
                java.lang.String r8 = r1.toString()     // Catch: java.lang.Throwable -> L5f
                int r8 = r8.length()     // Catch: java.lang.Throwable -> L5f
                r0.setSelection(r8)     // Catch: java.lang.Throwable -> L5f
                r0.onCancelUserNameEntry()     // Catch: java.lang.Throwable -> L5f
            L82:
                r0.isUserNameCommitting = r2
                goto L89
            L85:
                r0.onCancelUserNameEntry()     // Catch: java.lang.Throwable -> L5f
                goto L82
            L89:
                org.wikipedia.views.UserMentionInputView$Listener r8 = r9.getListener()
                if (r8 == 0) goto L93
                org.wikipedia.talk.TalkReplyActivity r8 = (org.wikipedia.talk.TalkReplyActivity) r8
                r8.userMentionScrolled = r2
            L93:
                return
            L94:
                r0.isUserNameCommitting = r2
                throw r8
            L97:
                java.lang.String r8 = "userName"
                kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)
                r8 = 0
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.views.UserMentionInputView.UserNameViewHolder.onClick(android.view.View):void");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserMentionInputView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.wikiSite = Jsoup.getInstance().getWikiSite();
        this.userNameHints = EmptySet.INSTANCE;
        LayoutInflater.from(context).inflate(R.layout.view_user_mention_input, this);
        int i = R.id.inputEditText;
        UserMentionEditText userMentionEditText = (UserMentionEditText) Room.findChildViewById(this, R.id.inputEditText);
        if (userMentionEditText != null) {
            i = R.id.inputTextLayout;
            TextInputLayout textInputLayout = (TextInputLayout) Room.findChildViewById(this, R.id.inputTextLayout);
            if (textInputLayout != null) {
                i = R.id.userListRecycler;
                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(this, R.id.userListRecycler);
                if (recyclerView != null) {
                    this.binding = new MultipartBody.Builder(this, userMentionEditText, textInputLayout, recyclerView);
                    this.userNameList = new ArrayList();
                    setOrientation(1);
                    userMentionEditText.setListener(this);
                    recyclerView.setLayoutManager(new LinearLayoutManager(1));
                    recyclerView.setAdapter(new DiffUtil$DiffLinesAdapter(14, this));
                    new SyntaxHighlighter((ComponentActivity) context, userMentionEditText, null, 200L);
                    return;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final UserMentionEditText getEditText() {
        return (UserMentionEditText) this.binding.boundary;
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final TextInputLayout getTextInputLayout() {
        return (TextInputLayout) this.binding.type;
    }

    public final Set<String> getUserNameHints() {
        return this.userNameHints;
    }

    public final WikiSite getWikiSite() {
        return this.wikiSite;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        StandaloneCoroutine standaloneCoroutine = this.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
    }

    public final void onSearchResults() {
        MultipartBody.Builder builder = this.binding;
        ((RecyclerView) builder.parts).setVisibility(0);
        RecyclerView.Adapter adapter = ((RecyclerView) builder.parts).getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
        Listener listener = this.listener;
        if (listener != null) {
            TalkReplyActivity talkReplyActivity = (TalkReplyActivity) listener;
            ActivityTalkReplyBinding activityTalkReplyBinding = talkReplyActivity.binding;
            if (activityTalkReplyBinding != null) {
                ((ScrollView) activityTalkReplyBinding.talkScrollContainer).post(new TalkReplyActivity$$ExternalSyntheticLambda11(talkReplyActivity, 1));
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
    }

    public final void setListener(Listener listener) {
        this.listener = listener;
    }

    public final void setUserNameHints(Set<String> set) {
        set.getClass();
        this.userNameHints = set;
    }

    public final void setWikiSite(WikiSite wikiSite) {
        wikiSite.getClass();
        this.wikiSite = wikiSite;
    }
}
