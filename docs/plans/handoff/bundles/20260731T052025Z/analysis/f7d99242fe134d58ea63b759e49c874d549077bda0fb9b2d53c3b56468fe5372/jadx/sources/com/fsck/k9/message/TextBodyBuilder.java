package com.fsck.k9.message;

import com.fsck.k9.message.quote.InsertableHtmlContent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextBodyBuilder {
    public boolean mAppendSignature;
    public boolean mIncludeQuotedText;
    public boolean mInsertSeparator;
    public String mQuotedText;
    public InsertableHtmlContent mQuotedTextHtml;
    public boolean mReplyAfterQuote;
    public String mSignature;
    public boolean mSignatureBeforeQuotedText;

    public final String getSignature() {
        String str = this.mSignature;
        if (str == null || str.length() == 0) {
            return "";
        }
        return "\r\n" + this.mSignature;
    }
}
