package org.mozilla.javascript.ast;

import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class UnaryExpression extends AstNode {
    private AstNode operand;

    public UnaryExpression(int i, int i2, AstNode astNode) {
        assertNotNull(astNode);
        setBounds(astNode.getPosition(), astNode.getLength() + astNode.getPosition());
        setOperator(i);
        setOperand(astNode);
    }

    public AstNode getOperand() {
        return this.operand;
    }

    public int getOperator() {
        return this.type;
    }

    public void setOperand(AstNode astNode) {
        assertNotNull(astNode);
        this.operand = astNode;
        astNode.setParent(this);
    }

    public void setOperator(int i) {
        if (Token.isValidToken(i)) {
            setType(i);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Invalid token: "));
        }
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(makeIndent(i));
        int type = getType();
        sb.append(AstNode.operatorToString(type));
        if (type == 32 || type == 31 || type == 139) {
            sb.append(" ");
        }
        sb.append(this.operand.toSource());
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.operand.visit(nodeVisitor);
        }
    }

    public UnaryExpression(int i) {
        super(i);
    }

    public UnaryExpression(int i, int i2) {
        super(i, i2);
    }

    public UnaryExpression() {
    }
}
