package org.mozilla.javascript.ast;

import androidx.compose.ui.node.Owner;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class TemplateCharacters extends AstNode {
    private String rawValue;
    private String value;

    public TemplateCharacters() {
        this.type = Token.TEMPLATE_CHARS;
    }

    public String getRawValue() {
        return this.rawValue;
    }

    public String getValue() {
        return this.value;
    }

    public void setRawValue(String str) {
        assertNotNull(str);
        this.rawValue = str;
    }

    public void setValue(String str) {
        this.value = str;
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        return Owner.CC.m$1(makeIndent(i), this.rawValue);
    }

    @Override // org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        nodeVisitor.visit(this);
    }

    public TemplateCharacters(int i) {
        super(i);
        this.type = Token.TEMPLATE_CHARS;
    }

    public TemplateCharacters(int i, int i2) {
        super(i, i2);
        this.type = Token.TEMPLATE_CHARS;
    }
}
