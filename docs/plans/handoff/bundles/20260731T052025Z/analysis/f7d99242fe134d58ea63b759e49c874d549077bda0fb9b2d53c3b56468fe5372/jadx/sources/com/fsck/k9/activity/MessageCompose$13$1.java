package com.fsck.k9.activity;

import android.net.Uri;
import android.text.Editable;
import android.view.View;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.activity.compose.AttachmentPresenter;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.view.RecipientSelectView;
import java.util.LinkedHashMap;
import java.util.List;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCompose$13$1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$1;
    public final /* synthetic */ Object val$attachment;

    public /* synthetic */ MessageCompose$13$1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.this$1 = obj;
        this.val$attachment = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.val$attachment;
        Object obj2 = this.this$1;
        switch (i) {
            case 0:
                AttachmentPresenter attachmentPresenter = ((MessageCompose) ((Base64Util) obj2).inverseAlphabet).attachmentPresenter;
                Uri uri = ((Attachment) obj).uri;
                LinkedHashMap linkedHashMap = attachmentPresenter.attachments;
                Attachment attachment = (Attachment) linkedHashMap.get(uri);
                attachmentPresenter.loaderManager.destroyLoader(attachment.loaderId);
                attachmentPresenter.attachmentMvpView.removeAttachmentView(attachment);
                linkedHashMap.remove(uri);
                attachmentPresenter.listener.changesMadeSinceLastSave = true;
                break;
            default:
                AlternateRecipientAdapter alternateRecipientAdapter = (AlternateRecipientAdapter) obj2;
                RecipientSelectView recipientSelectView = alternateRecipientAdapter.listener;
                RecipientSelectView.Recipient recipient = alternateRecipientAdapter.currentRecipient;
                RecipientSelectView.Recipient recipient2 = (RecipientSelectView.Recipient) obj;
                recipientSelectView.alternatesPopup.dismiss();
                List objects = recipientSelectView.getObjects();
                int indexOf = objects.indexOf(recipient);
                if (indexOf != -1) {
                    RecipientSelectView.Recipient recipient3 = (RecipientSelectView.Recipient) objects.get(indexOf);
                    recipient3.address = recipient2.address;
                    recipient3.addressLabel = recipient2.addressLabel;
                    recipient3.cryptoStatus = recipient2.cryptoStatus;
                    Editable text = recipientSelectView.getText();
                    View view2 = null;
                    if (text != null) {
                        RecipientSelectView.RecipientTokenSpan[] recipientTokenSpanArr = (RecipientSelectView.RecipientTokenSpan[]) text.getSpans(0, text.length(), RecipientSelectView.RecipientTokenSpan.class);
                        int length = recipientTokenSpanArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length) {
                                RecipientSelectView.RecipientTokenSpan recipientTokenSpan = recipientTokenSpanArr[i2];
                                if (recipientTokenSpan.token.equals(recipient3)) {
                                    view2 = recipientTokenSpan.view;
                                } else {
                                    i2++;
                                }
                            }
                        }
                    }
                    if (view2 != null) {
                        recipientSelectView.bindObjectView(recipient3, view2);
                        RecipientSelectView.TokenListener tokenListener = recipientSelectView.listener;
                        if (tokenListener != null) {
                            tokenListener.onTokenChanged(recipient3);
                        }
                        recipientSelectView.invalidate();
                        recipientSelectView.redrawTokens();
                        int selectionStart = recipientSelectView.getSelectionStart();
                        int selectionEnd = recipientSelectView.getSelectionEnd();
                        recipientSelectView.setSelection(0);
                        recipientSelectView.setSelection(selectionStart, selectionEnd);
                        break;
                    } else {
                        Log.e("Tried to refresh invalid view token!", new Object[0]);
                        break;
                    }
                } else {
                    Log.e("Tried to refresh invalid view token!", new Object[0]);
                    break;
                }
        }
    }
}
