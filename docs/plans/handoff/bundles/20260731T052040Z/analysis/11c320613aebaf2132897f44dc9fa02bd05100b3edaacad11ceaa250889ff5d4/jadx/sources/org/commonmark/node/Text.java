package org.commonmark.node;

import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Text extends Node {
    public String literal;

    public Text(String str) {
        this.literal = str;
    }

    @Override // org.commonmark.node.Node
    public final void accept(Dispatcher dispatcher) {
        dispatcher.visit(this);
    }

    @Override // org.commonmark.node.Node
    public final String toStringAttributes() {
        return "literal=" + this.literal;
    }
}
