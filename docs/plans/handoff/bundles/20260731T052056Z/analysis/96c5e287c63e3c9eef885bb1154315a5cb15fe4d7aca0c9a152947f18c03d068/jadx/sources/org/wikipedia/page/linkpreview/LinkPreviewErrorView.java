package org.wikipedia.page.linkpreview;

import android.app.Dialog;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.room.Room;
import java.util.List;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.databinding.ItemCustomizeToolbarBinding;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewErrorType;
import org.wikipedia.page.linkpreview.LinkPreviewOverlayView;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.util.StringUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u0010\u001a\u00060\u000fR\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00060\u0014R\u00020\u00008\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;", "callback", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;", "getCallback", "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;", "setCallback", "(Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$Callback;)V", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;", "addToListCallback", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;", "getAddToListCallback", "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewAddToListCallback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;", "dismissCallback", "Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;", "getDismissCallback", "()Lorg/wikipedia/page/linkpreview/LinkPreviewErrorView$OverlayViewDismissCallback;", "Callback", "OverlayViewAddToListCallback", "OverlayViewDismissCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LinkPreviewErrorView extends LinearLayout {
    public final OverlayViewAddToListCallback addToListCallback;
    public final ItemCustomizeToolbarBinding binding;
    public Callback callback;
    public final OverlayViewDismissCallback dismissCallback;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkPreviewErrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(getContext()).inflate(R.layout.view_link_preview_error, this);
        int i = R.id.view_link_preview_error_icon;
        ImageView imageView = (ImageView) Room.findChildViewById(this, R.id.view_link_preview_error_icon);
        if (imageView != null) {
            i = R.id.view_link_preview_error_text;
            TextView textView = (TextView) Room.findChildViewById(this, R.id.view_link_preview_error_text);
            if (textView != null) {
                this.binding = new ItemCustomizeToolbarBinding(this, imageView, textView);
                this.addToListCallback = new OverlayViewAddToListCallback();
                this.dismissCallback = new OverlayViewDismissCallback();
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(getResources().getResourceName(i)));
        throw null;
    }

    public final OverlayViewAddToListCallback getAddToListCallback() {
        return this.addToListCallback;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final OverlayViewDismissCallback getDismissCallback() {
        return this.dismissCallback;
    }

    public final void setCallback(Callback callback) {
        this.callback = callback;
    }

    public final void setError(Throwable th, PageTitle pageTitle) {
        pageTitle.getClass();
        LinkPreviewErrorType.Companion.getClass();
        LinkPreviewErrorType linkPreviewErrorType = LinkPreviewErrorType.Companion.get(th, pageTitle);
        ItemCustomizeToolbarBinding itemCustomizeToolbarBinding = this.binding;
        ImageView imageView = itemCustomizeToolbarBinding.dragHandle;
        TextView textView = itemCustomizeToolbarBinding.listItem;
        imageView.setImageResource(linkPreviewErrorType.getIcon());
        if (linkPreviewErrorType == LinkPreviewErrorType.OFFLINE) {
            textView.setText(StringsKt__IndentKt.trimIndent(getContext().getString(R.string.page_offline_notice_cannot_load_while_offline) + "\n" + getContext().getString(R.string.page_offline_notice_add_to_reading_list)));
            return;
        }
        if (linkPreviewErrorType != LinkPreviewErrorType.USER_PAGE_MISSING) {
            textView.setText(getContext().getString(linkPreviewErrorType.getText()));
            return;
        }
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(getContext().getString(linkPreviewErrorType.getText(), pageTitle.getUri(), pageTitle.getDisplayText(), StringsKt.substringAfter$default(pageTitle.getDisplayText(), ':'))));
        int i = LinkMovementMethodExt.$r8$clinit;
        textView.setMovementMethod(Path.Companion.getExternalLinkMovementMethod$default());
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OverlayViewAddToListCallback implements LinkPreviewOverlayView.Callback {
        public OverlayViewAddToListCallback() {
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onPrimaryClick() {
            Callback callback = LinkPreviewErrorView.this.getCallback();
            if (callback != null) {
                LinkPreviewDialog linkPreviewDialog = (LinkPreviewDialog) callback;
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(linkPreviewDialog.requireActivity(), linkPreviewDialog.getViewModel().pageTitle, true, Constants.InvokeSource.LINK_PREVIEW_MENU, null);
                Dialog dialog = linkPreviewDialog.mDialog;
                if (dialog != null) {
                    dialog.dismiss();
                }
            }
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onSecondaryClick() {
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onTertiaryClick() {
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OverlayViewDismissCallback implements LinkPreviewOverlayView.Callback {
        public OverlayViewDismissCallback() {
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onPrimaryClick() {
            Callback callback = LinkPreviewErrorView.this.getCallback();
            if (callback != null) {
                ((LinkPreviewDialog) callback).dismiss();
            }
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onSecondaryClick() {
        }

        @Override // org.wikipedia.page.linkpreview.LinkPreviewOverlayView.Callback
        public final void onTertiaryClick() {
        }
    }
}
