package org.mozilla.javascript.ast;

import androidx.compose.ui.node.Owner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class GeneratorMethodDefinition extends AstNode {
    private AstNode methodName;

    public GeneratorMethodDefinition(int i, int i2, AstNode astNode) {
        super(i, i2);
        setType(23);
        setMethodName(astNode);
    }

    public AstNode getMethodName() {
        return this.methodName;
    }

    public void setMethodName(AstNode astNode) {
        assertNotNull(astNode);
        this.methodName = astNode;
        astNode.setParent(this);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return Owner.CC.m(makeIndent(i), "*", this.methodName.toSource(i));
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.methodName.visit(nodeVisitor);
        }
    }
}
