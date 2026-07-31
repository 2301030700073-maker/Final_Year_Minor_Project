package com.fsck.k9.mail.store.imap;

import androidx.compose.material.ripple.StateLayer;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NegativeImapResponseException extends MessagingException {
    public final SynchronizedLazyImpl responseText$delegate;
    public final List responses;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NegativeImapResponseException(String str, List list) {
        super(str, true, null);
        final int i = 1;
        this.responses = list;
        if (list.isEmpty()) {
            UriKt$$ExternalSyntheticBUOutline0.m("List of responses must not be empty");
            throw null;
        }
        final int i2 = 0;
        this.responseText$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: com.fsck.k9.mail.store.imap.NegativeImapResponseException$$ExternalSyntheticLambda0
            public final /* synthetic */ NegativeImapResponseException f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                NegativeImapResponseException negativeImapResponseException = this.f$0;
                switch (i3) {
                    case 0:
                        ImapResponse imapResponse = (ImapResponse) CollectionsKt.last(negativeImapResponseException.responses);
                        imapResponse.getClass();
                        if (imapResponse.size() < 2) {
                            return null;
                        }
                        int i4 = imapResponse.isList(1) ? 2 : 1;
                        if (imapResponse.isString(i4)) {
                            return (String) imapResponse.get(i4);
                        }
                        return null;
                    default:
                        ImapResponse imapResponse2 = (ImapResponse) CollectionsKt.last(negativeImapResponseException.responses);
                        imapResponse2.getClass();
                        if (imapResponse2.size() < 3 || !imapResponse2.isList(1)) {
                            return null;
                        }
                        ImapList imapList = (ImapList) imapResponse2.get(1);
                        if (imapList.size() == 1 && StateLayer.equalsIgnoreCase(imapList.get(0), "ALERT")) {
                            return (String) imapResponse2.get(2);
                        }
                        return null;
                }
            }
        });
        new SynchronizedLazyImpl(new Function0(this) { // from class: com.fsck.k9.mail.store.imap.NegativeImapResponseException$$ExternalSyntheticLambda0
            public final /* synthetic */ NegativeImapResponseException f$0;

            {
                this.f$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                NegativeImapResponseException negativeImapResponseException = this.f$0;
                switch (i3) {
                    case 0:
                        ImapResponse imapResponse = (ImapResponse) CollectionsKt.last(negativeImapResponseException.responses);
                        imapResponse.getClass();
                        if (imapResponse.size() < 2) {
                            return null;
                        }
                        int i4 = imapResponse.isList(1) ? 2 : 1;
                        if (imapResponse.isString(i4)) {
                            return (String) imapResponse.get(i4);
                        }
                        return null;
                    default:
                        ImapResponse imapResponse2 = (ImapResponse) CollectionsKt.last(negativeImapResponseException.responses);
                        imapResponse2.getClass();
                        if (imapResponse2.size() < 3 || !imapResponse2.isList(1)) {
                            return null;
                        }
                        ImapList imapList = (ImapList) imapResponse2.get(1);
                        if (imapList.size() == 1 && StateLayer.equalsIgnoreCase(imapList.get(0), "ALERT")) {
                            return (String) imapResponse2.get(2);
                        }
                        return null;
                }
            }
        });
    }
}
