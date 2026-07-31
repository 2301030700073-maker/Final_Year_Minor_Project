package com.fsck.k9.activity.compose;

import android.content.Context;
import android.net.Uri;
import android.widget.Toast;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.view.RecipientSelectView;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientPresenter$addRecipientFromContactUri$1 extends RecipientLoader {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Message$RecipientType $recipientType;
    public final /* synthetic */ RecipientPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecipientPresenter$addRecipientFromContactUri$1(RecipientPresenter recipientPresenter, Message$RecipientType message$RecipientType, Context context, String str, Object[] objArr) {
        super(context, str, (Address[]) objArr);
        this.this$0 = recipientPresenter;
        this.$recipientType = message$RecipientType;
    }

    @Override // com.fsck.k9.activity.compose.RecipientLoader
    public final void deliverResult(List list) {
        int i = this.$r8$classId;
        Message$RecipientType message$RecipientType = this.$recipientType;
        RecipientPresenter recipientPresenter = this.this$0;
        switch (i) {
            case 0:
                list.getClass();
                if (!list.isEmpty()) {
                    recipientPresenter.recipientMvpView.addRecipients(message$RecipientType, (RecipientSelectView.Recipient) list.get(0));
                    this.mStarted = false;
                    this.mAbandoned = true;
                    onAbandon();
                    break;
                } else {
                    Toast.makeText(recipientPresenter.recipientMvpView.activity, R.string.error_contact_address_not_found, 1).show();
                    break;
                }
            default:
                list.getClass();
                RecipientSelectView.Recipient[] recipientArr = (RecipientSelectView.Recipient[]) list.toArray(new RecipientSelectView.Recipient[0]);
                RecipientMvpView recipientMvpView = recipientPresenter.recipientMvpView;
                RecipientSelectView.Recipient[] recipientArr2 = (RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length);
                RecipientSelectView recipientSelectView = recipientMvpView.toView;
                RecipientSelectView recipientSelectView2 = recipientMvpView.ccView;
                RecipientSelectView recipientSelectView3 = recipientMvpView.bccView;
                int ordinal = message$RecipientType.ordinal();
                if (ordinal == 0) {
                    recipientMvpView.removeAllTextChangedListeners(recipientSelectView);
                } else if (ordinal == 1) {
                    recipientMvpView.removeAllTextChangedListeners(recipientSelectView2);
                } else if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(message$RecipientType, "Unsupported type: ");
                    break;
                } else {
                    recipientMvpView.removeAllTextChangedListeners(recipientSelectView3);
                }
                recipientMvpView.addRecipients(message$RecipientType, (RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr2, recipientArr2.length));
                int ordinal2 = message$RecipientType.ordinal();
                if (ordinal2 == 0) {
                    recipientMvpView.addAllTextChangedListeners(recipientSelectView);
                } else if (ordinal2 == 1) {
                    recipientMvpView.addAllTextChangedListeners(recipientSelectView2);
                } else if (ordinal2 != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m$1(message$RecipientType, "Unsupported type: ");
                    break;
                } else {
                    recipientMvpView.addAllTextChangedListeners(recipientSelectView3);
                }
                this.mStarted = false;
                this.mAbandoned = true;
                onAbandon();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecipientPresenter$addRecipientFromContactUri$1(Uri uri, RecipientPresenter recipientPresenter, Message$RecipientType message$RecipientType, Context context, String str) {
        super(context, str, uri, false);
        this.this$0 = recipientPresenter;
        this.$recipientType = message$RecipientType;
    }

    @Override // com.fsck.k9.activity.compose.RecipientLoader, androidx.loader.content.AsyncTaskLoader
    public final /* bridge */ /* synthetic */ void deliverResult(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                deliverResult((List) obj);
                break;
            default:
                deliverResult((List) obj);
                break;
        }
    }
}
