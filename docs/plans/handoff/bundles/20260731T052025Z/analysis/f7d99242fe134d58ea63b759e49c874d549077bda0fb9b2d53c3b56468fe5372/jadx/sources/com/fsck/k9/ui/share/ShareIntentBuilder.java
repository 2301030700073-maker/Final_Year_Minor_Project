package com.fsck.k9.ui.share;

import com.fsck.k9.message.extractors.TextPartFinder;
import com.fsck.k9.message.quote.QuoteDateFormatter;
import com.fsck.k9.resources.K9CoreResourceProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShareIntentBuilder {
    public final QuoteDateFormatter quoteDateFormatter;
    public final K9CoreResourceProvider resourceProvider;

    public ShareIntentBuilder(K9CoreResourceProvider k9CoreResourceProvider, TextPartFinder textPartFinder, QuoteDateFormatter quoteDateFormatter) {
        this.resourceProvider = k9CoreResourceProvider;
        this.quoteDateFormatter = quoteDateFormatter;
    }
}
