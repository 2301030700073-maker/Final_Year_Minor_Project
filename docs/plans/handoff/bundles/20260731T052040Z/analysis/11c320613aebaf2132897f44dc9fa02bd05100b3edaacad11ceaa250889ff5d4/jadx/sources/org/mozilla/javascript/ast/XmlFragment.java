package org.mozilla.javascript.ast;

import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class XmlFragment extends AstNode {
    public XmlFragment() {
        this.type = Token.XML;
    }

    public XmlFragment(int i) {
        super(i);
        this.type = Token.XML;
    }

    public XmlFragment(int i, int i2) {
        super(i, i2);
        this.type = Token.XML;
    }
}
