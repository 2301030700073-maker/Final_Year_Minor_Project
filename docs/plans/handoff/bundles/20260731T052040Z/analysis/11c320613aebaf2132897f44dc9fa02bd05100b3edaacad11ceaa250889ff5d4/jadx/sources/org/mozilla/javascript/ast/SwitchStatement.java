package org.mozilla.javascript.ast;

import androidx.compose.ui.Modifier;
import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SwitchStatement extends Jump {
    private static final List<SwitchCase> NO_CASES = DesugarCollections.unmodifiableList(new ArrayList());
    private List<SwitchCase> cases;
    private AstNode expression;
    private int lp = -1;
    private int rp = -1;

    public SwitchStatement(int i, int i2) {
        this.type = Token.SWITCH;
        this.position = i;
        this.length = i2;
    }

    public void addCase(SwitchCase switchCase) {
        assertNotNull(switchCase);
        if (this.cases == null) {
            this.cases = new ArrayList();
        }
        this.cases.add(switchCase);
        switchCase.setParent(this);
    }

    public List<SwitchCase> getCases() {
        List<SwitchCase> list = this.cases;
        return list != null ? list : NO_CASES;
    }

    public AstNode getExpression() {
        return this.expression;
    }

    public int getLp() {
        return this.lp;
    }

    public int getRp() {
        return this.rp;
    }

    public void setCases(List<SwitchCase> list) {
        if (list == null) {
            this.cases = null;
            return;
        }
        List<SwitchCase> list2 = this.cases;
        if (list2 != null) {
            list2.clear();
        }
        Iterator<SwitchCase> it = list.iterator();
        while (it.hasNext()) {
            addCase(it.next());
        }
    }

    public void setExpression(AstNode astNode) {
        assertNotNull(astNode);
        this.expression = astNode;
        astNode.setParent(this);
    }

    public void setLp(int i) {
        this.lp = i;
    }

    public void setParens(int i, int i2) {
        this.lp = i;
        this.rp = i2;
    }

    public void setRp(int i) {
        this.rp = i;
    }

    @Override // org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public String toSource(int i) {
        String makeIndent = makeIndent(i);
        StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(makeIndent, "switch (");
        m.append(this.expression.toSource(0));
        m.append(") {\n");
        List<SwitchCase> list = this.cases;
        if (list != null) {
            Iterator<SwitchCase> it = list.iterator();
            while (it.hasNext()) {
                m.append(it.next().toSource(i + 1));
            }
        }
        return Modifier.CC.m(m, makeIndent, "}\n");
    }

    @Override // org.mozilla.javascript.ast.Jump, org.mozilla.javascript.ast.AstNode
    public void visit(NodeVisitor nodeVisitor) {
        if (nodeVisitor.visit(this)) {
            this.expression.visit(nodeVisitor);
            Iterator<SwitchCase> it = getCases().iterator();
            while (it.hasNext()) {
                it.next().visit(nodeVisitor);
            }
        }
    }

    public SwitchStatement(int i) {
        this.type = Token.SWITCH;
        this.position = i;
    }

    public SwitchStatement() {
        this.type = Token.SWITCH;
    }
}
