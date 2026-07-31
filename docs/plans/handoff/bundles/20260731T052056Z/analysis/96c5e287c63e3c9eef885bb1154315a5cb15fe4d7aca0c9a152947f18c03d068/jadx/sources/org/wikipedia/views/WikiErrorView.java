package org.wikipedia.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import org.wikipedia.R;
import org.wikipedia.databinding.ViewWikiErrorBinding;
import org.wikipedia.page.LinkMovementMethodExt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001+B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\r\u0010\fR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR$\u0010\u001f\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001bR$\u0010\"\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001bR\u0011\u0010(\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0011\u0010*\u001a\u00020%8F¢\u0006\u0006\u001a\u0004\b)\u0010'¨\u0006,"}, d2 = {"Lorg/wikipedia/views/WikiErrorView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "color", "", "setIconColorFilter", "(I)V", "setErrorTextColor", "Lorg/wikipedia/databinding/ViewWikiErrorBinding;", "binding", "Lorg/wikipedia/databinding/ViewWikiErrorBinding;", "getBinding", "()Lorg/wikipedia/databinding/ViewWikiErrorBinding;", "setBinding", "(Lorg/wikipedia/databinding/ViewWikiErrorBinding;)V", "Landroid/view/View$OnClickListener;", "retryClickListener", "Landroid/view/View$OnClickListener;", "getRetryClickListener", "()Landroid/view/View$OnClickListener;", "setRetryClickListener", "(Landroid/view/View$OnClickListener;)V", "backClickListener", "getBackClickListener", "setBackClickListener", "nextClickListener", "getNextClickListener", "setNextClickListener", "loginClickListener", "getLoginClickListener", "setLoginClickListener", "Landroid/widget/Space;", "getContentTopOffset", "()Landroid/widget/Space;", "contentTopOffset", "getTabLayoutOffset", "tabLayoutOffset", "ErrorType", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WikiErrorView extends LinearLayout {
    public static final /* synthetic */ int $r8$clinit = 0;
    public View.OnClickListener backClickListener;
    public ViewWikiErrorBinding binding;
    public View.OnClickListener loginClickListener;
    public View.OnClickListener nextClickListener;
    public View.OnClickListener retryClickListener;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class ErrorType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ErrorType[] $VALUES;
        public static final ErrorType EMPTY;
        public static final ErrorType GENERIC;
        public static final ErrorType LOGGED_OUT;
        public static final ErrorType OFFLINE;
        public static final ErrorType PAGE_MISSING;
        public static final ErrorType TIMEOUT;
        public static final ErrorType USER_PAGE_MISSING;
        private final int buttonText;
        private final int footerText = 0;
        private final int icon;
        private final int text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class EMPTY extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getNextClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class GENERIC extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getBackClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LOGGED_OUT extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getLoginClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class OFFLINE extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getRetryClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class PAGE_MISSING extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getBackClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class TIMEOUT extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getRetryClickListener();
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class USER_PAGE_MISSING extends ErrorType {
            @Override // org.wikipedia.views.WikiErrorView.ErrorType
            public final View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView) {
                return wikiErrorView.getBackClickListener();
            }
        }

        static {
            USER_PAGE_MISSING user_page_missing = new USER_PAGE_MISSING(0, R.drawable.ic_userpage_error_icon, R.string.error_user_page_does_not_exist, R.string.page_error_back_to_main, "USER_PAGE_MISSING");
            USER_PAGE_MISSING = user_page_missing;
            PAGE_MISSING page_missing = new PAGE_MISSING(1, R.drawable.ic_error_black_24dp, R.string.error_page_does_not_exist, R.string.page_error_back_to_main, "PAGE_MISSING");
            PAGE_MISSING = page_missing;
            TIMEOUT timeout = new TIMEOUT(2, R.drawable.ic_error_black_24dp, R.string.view_wiki_error_message_timeout, R.string.offline_load_error_retry, "TIMEOUT");
            TIMEOUT = timeout;
            OFFLINE offline = new OFFLINE(3, R.drawable.ic_portable_wifi_off_black_24px, R.string.view_wiki_error_message_offline, R.string.offline_load_error_retry, "OFFLINE");
            OFFLINE = offline;
            EMPTY empty = new EMPTY(4, R.drawable.ic_error_black_24dp, R.string.error_message_generic, R.string.error_next, "EMPTY");
            EMPTY = empty;
            LOGGED_OUT logged_out = new LOGGED_OUT(5, R.drawable.ic_error_black_24dp, R.string.error_message_generic, R.string.reading_lists_login_button, "LOGGED_OUT");
            LOGGED_OUT = logged_out;
            GENERIC generic = new GENERIC(6, R.drawable.ic_error_black_24dp, R.string.error_message_generic, R.string.error_back, "GENERIC");
            GENERIC = generic;
            ErrorType[] errorTypeArr = {user_page_missing, page_missing, timeout, offline, empty, logged_out, generic};
            $VALUES = errorTypeArr;
            $ENTRIES = new EnumEntriesList(errorTypeArr);
        }

        public ErrorType(int i, int i2, int i3, int i4, String str) {
            this.icon = i2;
            this.text = i3;
            this.buttonText = i4;
        }

        public static ErrorType valueOf(String str) {
            return (ErrorType) Enum.valueOf(ErrorType.class, str);
        }

        public static ErrorType[] values() {
            return (ErrorType[]) $VALUES.clone();
        }

        public abstract View.OnClickListener buttonClickListener(WikiErrorView wikiErrorView);

        public final int getButtonText() {
            return this.buttonText;
        }

        public final int getFooterText() {
            return this.footerText;
        }

        public final boolean getHasFooterText() {
            return this.footerText != 0;
        }

        public final int getIcon() {
            return this.icon;
        }

        public final int getText() {
            return this.text;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WikiErrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(getContext()).inflate(R.layout.view_wiki_error, this);
        int i = R.id.view_wiki_error_article_content_top_offset;
        Space space = (Space) Room.findChildViewById(this, R.id.view_wiki_error_article_content_top_offset);
        if (space != null) {
            i = R.id.view_wiki_error_article_tab_layout_offset;
            Space space2 = (Space) Room.findChildViewById(this, R.id.view_wiki_error_article_tab_layout_offset);
            if (space2 != null) {
                i = R.id.view_wiki_error_button;
                Button button = (Button) Room.findChildViewById(this, R.id.view_wiki_error_button);
                if (button != null) {
                    i = R.id.view_wiki_error_footer_layout;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(this, R.id.view_wiki_error_footer_layout);
                    if (linearLayout != null) {
                        i = R.id.view_wiki_error_footer_text;
                        TextView textView = (TextView) Room.findChildViewById(this, R.id.view_wiki_error_footer_text);
                        if (textView != null) {
                            i = R.id.view_wiki_error_icon;
                            ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.view_wiki_error_icon);
                            if (imageView != null) {
                                i = R.id.view_wiki_error_text;
                                TextView textView2 = (TextView) Room.findChildViewById(this, R.id.view_wiki_error_text);
                                if (textView2 != null) {
                                    this.binding = new ViewWikiErrorBinding(this, space, space2, button, linearLayout, textView, imageView, textView2);
                                    if (isInEditMode()) {
                                        return;
                                    }
                                    int i2 = LinkMovementMethodExt.$r8$clinit;
                                    LinkMovementMethodExt externalLinkMovementMethod$default = Path.Companion.getExternalLinkMovementMethod$default();
                                    this.binding.viewWikiErrorText.setMovementMethod(externalLinkMovementMethod$default);
                                    this.binding.viewWikiErrorFooterText.setMovementMethod(externalLinkMovementMethod$default);
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final View.OnClickListener getBackClickListener() {
        return this.backClickListener;
    }

    public final ViewWikiErrorBinding getBinding() {
        return this.binding;
    }

    public final Space getContentTopOffset() {
        return this.binding.viewWikiErrorArticleContentTopOffset;
    }

    public final View.OnClickListener getLoginClickListener() {
        return this.loginClickListener;
    }

    public final View.OnClickListener getNextClickListener() {
        return this.nextClickListener;
    }

    public final View.OnClickListener getRetryClickListener() {
        return this.retryClickListener;
    }

    public final Space getTabLayoutOffset() {
        return this.binding.viewWikiErrorArticleTabLayoutOffset;
    }

    public final void setBackClickListener(View.OnClickListener onClickListener) {
        this.backClickListener = onClickListener;
    }

    public final void setBinding(ViewWikiErrorBinding viewWikiErrorBinding) {
        viewWikiErrorBinding.getClass();
        this.binding = viewWikiErrorBinding;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setError(java.lang.Throwable r10, org.wikipedia.page.PageTitle r11) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.views.WikiErrorView.setError(java.lang.Throwable, org.wikipedia.page.PageTitle):void");
    }

    public final void setErrorTextColor(int color) {
        this.binding.viewWikiErrorText.setTextColor(color);
    }

    public final void setIconColorFilter(int color) {
        this.binding.viewWikiErrorIcon.setColorFilter(color);
    }

    public final void setLoginClickListener(View.OnClickListener onClickListener) {
        this.loginClickListener = onClickListener;
    }

    public final void setNextClickListener(View.OnClickListener onClickListener) {
        this.nextClickListener = onClickListener;
    }

    public final void setRetryClickListener(View.OnClickListener onClickListener) {
        this.retryClickListener = onClickListener;
    }
}
