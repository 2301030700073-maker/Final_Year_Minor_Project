package org.schabi.newpipe.extractor.subscription;

import androidx.compose.ui.Modifier;
import org.schabi.newpipe.extractor.exceptions.ParsingException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionExtractor$InvalidSourceException extends ParsingException {
    public SubscriptionExtractor$InvalidSourceException(String str, Throwable th) {
        super("Not a valid source".concat(str == null ? "" : Modifier.CC.m(" (", str, ")")), th);
    }
}
