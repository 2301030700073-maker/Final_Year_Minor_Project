package org.schabi.newpipe.extractor.exceptions;

import androidx.compose.ui.node.Owner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class UnsupportedTabException extends UnsupportedOperationException {
    public UnsupportedTabException(String str) {
        super(Owner.CC.m("Unsupported tab ", str));
    }
}
