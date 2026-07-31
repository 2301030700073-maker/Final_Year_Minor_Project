package org.mozilla.javascript.ast;

import androidx.compose.ui.Modifier;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class UpdateExpression extends AstNode {
    private boolean isPostfix;
    private AstNode operand;

    public UpdateExpression(int i, int i2, AstNode astNode, boolean z) {
        assertNotNull(astNode);
        setBounds(z ? astNode.getPosition() : i2, z ? i2 + 2 : astNode.getPosition() + astNode.getLength());
        setOperator(i);
        setOperand(astNode);
        this.isPostfix = z;
    }

    public AstNode getOperand() {
        return this.operand;
    }

    public int getOperator() {
        return this.type;
    }

    public boolean isPostfix() {
        return this.isPostfix;
    }

    public boolean isPrefix() {
        return !this.isPostfix;
    }

    public void setIsPostfix(boolean z) {
        this.isPostfix = z;
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
        if (!this.isPostfix) {
            sb.append(AstNode.operatorToString(type));
        }
        sb.append(this.operand.toSource());
        if (this.isPostfix) {
            sb.append(AstNode.operatorToString(type));
        }
        return sb.toString();
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.operand.visit(nodeVisitor);
        }
    }

    public UpdateExpression(int i) {
        super(i);
    }

    public UpdateExpression(int i, int i2) {
        super(i, i2);
    }

    public UpdateExpression(int i, int i2, AstNode astNode) {
        this(i, i2, astNode, false);
    }

    public UpdateExpression() {
    }
}
