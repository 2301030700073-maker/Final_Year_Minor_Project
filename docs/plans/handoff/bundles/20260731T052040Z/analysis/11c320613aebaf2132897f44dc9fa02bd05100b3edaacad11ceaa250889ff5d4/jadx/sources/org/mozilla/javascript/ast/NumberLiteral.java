package org.mozilla.javascript.ast;

import androidx.compose.ui.node.Owner;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NumberLiteral extends AstNode {
    private double number;
    private String value;

    public NumberLiteral(int i, String str) {
        super(i);
        this.type = 45;
        setValue(str);
        setLength(str.length());
    }

    public double getNumber() {
        return this.number;
    }

    public String getValue() {
        return this.value;
    }

    public void setNumber(double d) {
        this.number = d;
    }

    public void setValue(String str) {
        assertNotNull(str);
        this.value = str;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        String str = this.value;
        if (str == null) {
            str = "<null>";
        }
        return Owner.CC.m$1(makeIndent, str);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public NumberLiteral(int i) {
        super(i);
        this.type = 45;
    }

    public NumberLiteral(int i, int i2) {
        super(i, i2);
        this.type = 45;
    }

    public NumberLiteral() {
        this.type = 45;
    }

    public NumberLiteral(int i, String str, double d) {
        this(i, str);
        setDouble(d);
    }

    public NumberLiteral(double d) {
        this.type = 45;
        setDouble(d);
        setValue(Double.toString(d));
    }
}
