package org.koin.core.error;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ClosedScopeException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClosedScopeException(String str) {
        super("Missing resource with path: ".concat(str));
        str.getClass();
    }
}
