package org.commonmark.node;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Block extends Node {
    @Override // org.commonmark.node.Node
    public final Node getParent() {
        return (Block) ((Node) this.parent);
    }

    @Override // org.commonmark.node.Node
    public final void setParent(Node node) {
        if (node instanceof Block) {
            this.parent = node;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Parent of block must also be block (can not be inline)");
        }
    }
}
