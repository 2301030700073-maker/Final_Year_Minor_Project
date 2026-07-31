package org.apache.james.mime4j.field.address;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SimpleNode {
    public SimpleNode[] children;
    public Token firstToken;
    public final int id;
    public Token lastToken;

    public SimpleNode(int i) {
        this.id = i;
    }

    public final int jjtGetNumChildren() {
        SimpleNode[] simpleNodeArr = this.children;
        if (simpleNodeArr == null) {
            return 0;
        }
        return simpleNodeArr.length;
    }

    public final String toString() {
        return AddressListParserTreeConstants.jjtNodeName[this.id];
    }
}
