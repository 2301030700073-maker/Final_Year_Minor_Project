package org.mozilla.javascript.ast;

import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class EmptyExpression extends AstNode {
    public EmptyExpression() {
        this.type = Token.EMPTY;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return makeIndent(i);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public EmptyExpression(int i) {
        super(i);
        this.type = Token.EMPTY;
    }

    public EmptyExpression(int i, int i2) {
        super(i, i2);
        this.type = Token.EMPTY;
    }
}
