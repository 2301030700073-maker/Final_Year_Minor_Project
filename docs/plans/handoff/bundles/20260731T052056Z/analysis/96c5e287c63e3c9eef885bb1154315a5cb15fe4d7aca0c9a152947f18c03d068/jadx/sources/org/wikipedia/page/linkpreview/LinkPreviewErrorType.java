package org.wikipedia.page.linkpreview;

import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.wikipedia.R;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewOverlayView;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LinkPreviewErrorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LinkPreviewErrorType[] $VALUES;
    public static final Companion Companion;
    public static final LinkPreviewErrorType GENERIC;
    public static final LinkPreviewErrorType OFFLINE;
    public static final LinkPreviewErrorType PAGE_MISSING;
    public static final LinkPreviewErrorType USER_PAGE_MISSING;
    private final int buttonText;
    private final int icon;
    private final int text;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static LinkPreviewErrorType get(Throwable th, PageTitle pageTitle) {
            if (th != null && (th instanceof HttpStatusException) && ((HttpStatusException) th).code == 404) {
                return (pageTitle != null ? pageTitle.namespace() : null) == Namespace.USER ? LinkPreviewErrorType.USER_PAGE_MISSING : LinkPreviewErrorType.PAGE_MISSING;
            }
            return (th == null || !((th instanceof UnknownHostException) || (th instanceof SocketException) || (th instanceof SocketTimeoutException))) ? LinkPreviewErrorType.GENERIC : LinkPreviewErrorType.OFFLINE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GENERIC extends LinkPreviewErrorType {
        @Override // org.wikipedia.page.linkpreview.LinkPreviewErrorType
        public final LinkPreviewOverlayView.Callback buttonAction(LinkPreviewErrorView linkPreviewErrorView) {
            return linkPreviewErrorView.getDismissCallback();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OFFLINE extends LinkPreviewErrorType {
        @Override // org.wikipedia.page.linkpreview.LinkPreviewErrorType
        public final LinkPreviewOverlayView.Callback buttonAction(LinkPreviewErrorView linkPreviewErrorView) {
            return linkPreviewErrorView.getAddToListCallback();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PAGE_MISSING extends LinkPreviewErrorType {
        @Override // org.wikipedia.page.linkpreview.LinkPreviewErrorType
        public final LinkPreviewOverlayView.Callback buttonAction(LinkPreviewErrorView linkPreviewErrorView) {
            return linkPreviewErrorView.getDismissCallback();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class USER_PAGE_MISSING extends LinkPreviewErrorType {
        @Override // org.wikipedia.page.linkpreview.LinkPreviewErrorType
        public final LinkPreviewOverlayView.Callback buttonAction(LinkPreviewErrorView linkPreviewErrorView) {
            return linkPreviewErrorView.getDismissCallback();
        }
    }

    static {
        OFFLINE offline = new OFFLINE(0, R.drawable.ic_no_article, R.string.error_message_generic, R.string.button_add_to_reading_list, "OFFLINE");
        OFFLINE = offline;
        PAGE_MISSING page_missing = new PAGE_MISSING(1, R.drawable.ic_error_black_24dp, R.string.error_page_does_not_exist, R.string.view_link_preview_error_button_dismiss, "PAGE_MISSING");
        PAGE_MISSING = page_missing;
        USER_PAGE_MISSING user_page_missing = new USER_PAGE_MISSING(2, R.drawable.ic_userpage_error_icon, R.string.error_user_page_does_not_exist, R.string.view_link_preview_error_button_dismiss, "USER_PAGE_MISSING");
        USER_PAGE_MISSING = user_page_missing;
        GENERIC generic = new GENERIC(3, R.drawable.ic_error_black_24dp, R.string.error_message_generic, R.string.view_link_preview_error_button_dismiss, "GENERIC");
        GENERIC = generic;
        LinkPreviewErrorType[] linkPreviewErrorTypeArr = {offline, page_missing, user_page_missing, generic};
        $VALUES = linkPreviewErrorTypeArr;
        $ENTRIES = new EnumEntriesList(linkPreviewErrorTypeArr);
        Companion = new Companion();
    }

    public LinkPreviewErrorType(int i, int i2, int i3, int i4, String str) {
        this.icon = i2;
        this.text = i3;
        this.buttonText = i4;
    }

    public static LinkPreviewErrorType valueOf(String str) {
        return (LinkPreviewErrorType) Enum.valueOf(LinkPreviewErrorType.class, str);
    }

    public static LinkPreviewErrorType[] values() {
        return (LinkPreviewErrorType[]) $VALUES.clone();
    }

    public abstract LinkPreviewOverlayView.Callback buttonAction(LinkPreviewErrorView linkPreviewErrorView);

    public final int getButtonText() {
        return this.buttonText;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getText() {
        return this.text;
    }
}
