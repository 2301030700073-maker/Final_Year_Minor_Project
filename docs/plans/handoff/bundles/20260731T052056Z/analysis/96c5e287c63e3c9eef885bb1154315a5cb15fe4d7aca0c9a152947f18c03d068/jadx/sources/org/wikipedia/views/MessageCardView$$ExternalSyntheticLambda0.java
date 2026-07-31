package org.wikipedia.views;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import org.wikipedia.R;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageCardView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageCardView f$0;

    public /* synthetic */ MessageCardView$$ExternalSyntheticLambda0(MessageCardView messageCardView, int i) {
        this.$r8$classId = i;
        this.f$0 = messageCardView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        MessageCardView messageCardView = this.f$0;
        switch (i) {
            case 0:
                int i2 = MessageCardView.$r8$clinit;
                Context context = messageCardView.getContext();
                context.getClass();
                Uri parse = Uri.parse(messageCardView.getContext().getString(R.string.create_account_ip_block_help_url));
                parse.getClass();
                UriUtil.visitInExternalBrowser(context, parse);
                break;
            case 1:
                int i3 = MessageCardView.$r8$clinit;
                Context context2 = messageCardView.getContext();
                context2.getClass();
                Uri parse2 = Uri.parse(messageCardView.getContext().getString(R.string.create_account_ip_block_help_url));
                parse2.getClass();
                UriUtil.visitInExternalBrowser(context2, parse2);
                break;
            case 2:
                int i4 = MessageCardView.$r8$clinit;
                Context context3 = messageCardView.getContext();
                context3.getClass();
                Uri parse3 = Uri.parse(messageCardView.getContext().getString(R.string.android_app_edit_help_url));
                parse3.getClass();
                UriUtil.visitInExternalBrowser(context3, parse3);
                break;
            default:
                int i5 = MessageCardView.$r8$clinit;
                Context context4 = messageCardView.getContext();
                context4.getClass();
                Uri parse4 = Uri.parse(messageCardView.getContext().getString(R.string.android_app_edit_help_url));
                parse4.getClass();
                UriUtil.visitInExternalBrowser(context4, parse4);
                break;
        }
    }
}
