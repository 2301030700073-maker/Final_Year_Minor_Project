package org.commonmark.node;

import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Document extends Block {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Document(int i) {
        this.$r8$classId = i;
    }

    @Override // org.commonmark.node.Node
    public final void accept(Dispatcher dispatcher) {
        switch (this.$r8$classId) {
            case 0:
                dispatcher.visit(this);
                break;
            default:
                dispatcher.visit(this);
                break;
        }
    }
}
