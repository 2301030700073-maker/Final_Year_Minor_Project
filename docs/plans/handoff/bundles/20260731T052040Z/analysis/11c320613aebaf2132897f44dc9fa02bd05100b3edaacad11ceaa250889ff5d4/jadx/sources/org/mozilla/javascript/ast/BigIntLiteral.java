package org.mozilla.javascript.ast;

import androidx.compose.ui.node.Owner;
import java.math.BigInteger;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BigIntLiteral extends AstNode {
    private BigInteger bigInt;
    private String value;

    public BigIntLiteral(int i, String str) {
        super(i);
        this.type = 89;
        setValue(str);
        setLength(str.length());
    }

    @Override // org.mozilla.javascript.Node
    public BigInteger getBigInt() {
        return this.bigInt;
    }

    public String getValue() {
        return this.value;
    }

    @Override // org.mozilla.javascript.Node
    public void setBigInt(BigInteger bigInteger) {
        this.bigInt = bigInteger;
    }

    public void setValue(String str) {
        assertNotNull(str);
        this.value = str;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        BigInteger bigInteger = this.bigInt;
        return Owner.CC.m$1(makeIndent, bigInteger == null ? "<null>" : Owner.CC.m$1(bigInteger.toString(), "n"));
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public BigIntLiteral(int i) {
        super(i);
        this.type = 89;
    }

    public BigIntLiteral(int i, int i2) {
        super(i, i2);
        this.type = 89;
    }

    public BigIntLiteral() {
        this.type = 89;
    }

    public BigIntLiteral(int i, String str, BigInteger bigInteger) {
        this(i, str);
        setBigInt(bigInteger);
    }
}
