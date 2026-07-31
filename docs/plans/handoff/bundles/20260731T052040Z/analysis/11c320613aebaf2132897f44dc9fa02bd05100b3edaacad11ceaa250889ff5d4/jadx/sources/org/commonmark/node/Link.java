package org.commonmark.node;

import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Link extends Node {
    public final String destination;
    public final String title;

    public Link(String str, String str2) {
        this.destination = str;
        this.title = str2;
    }

    @Override // org.commonmark.node.Node
    public final void accept(Dispatcher dispatcher) {
        dispatcher.visit(this);
    }

    @Override // org.commonmark.node.Node
    public final String toStringAttributes() {
        return "destination=" + this.destination + ", title=" + this.title;
    }
}
