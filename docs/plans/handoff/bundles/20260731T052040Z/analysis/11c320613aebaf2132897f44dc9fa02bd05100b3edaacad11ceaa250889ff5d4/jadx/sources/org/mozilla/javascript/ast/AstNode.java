package org.mozilla.javascript.ast;

import androidx.compose.ui.Modifier;
import com.android.tools.r8.RecordTag;
import java.io.Serializable;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.Node;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AstNode extends Node implements Comparable<AstNode> {
    private static final String[] INDENTATIONS;
    private static final int MAX_INDENT = 42;
    private static final Map<Integer, String> operatorNames;
    protected AstNode inlineComment;
    protected int length;
    protected AstNode parent;
    protected int position;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class DebugPrintVisitor implements NodeVisitor {
        private static final int DEBUG_INDENT = 2;
        private StringBuilder buffer;

        public DebugPrintVisitor(StringBuilder sb) {
            this.buffer = sb;
        }

        private static String makeIndent(int i) {
            int i2 = i * 2;
            StringBuilder sb = new StringBuilder(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(" ");
            }
            return sb.toString();
        }

        public String toString() {
            return this.buffer.toString();
        }

        @Override // org.mozilla.javascript.ast.NodeVisitor
        public boolean visit(AstNode astNode) {
            int type = astNode.getType();
            String typeToName = Token.typeToName(type);
            StringBuilder sb = this.buffer;
            sb.append(astNode.getAbsolutePosition());
            sb.append("\t");
            this.buffer.append(makeIndent(astNode.depth()));
            StringBuilder sb2 = this.buffer;
            sb2.append(typeToName);
            sb2.append(" ");
            StringBuilder sb3 = this.buffer;
            sb3.append(astNode.getPosition());
            sb3.append(" ");
            this.buffer.append(astNode.getLength());
            if (type == 44) {
                StringBuilder sb4 = this.buffer;
                sb4.append(" ");
                sb4.append(((Name) astNode).getIdentifier());
            } else if (type == 46) {
                StringBuilder sb5 = this.buffer;
                sb5.append(" ");
                sb5.append(((StringLiteral) astNode).getValue(true));
            }
            this.buffer.append("\n");
            return true;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        operatorNames = hashMap;
        String[] strArr = new String[43];
        INDENTATIONS = strArr;
        RecordTag.m$1(57, hashMap, "in", 32, "typeof");
        RecordTag.m$1(58, hashMap, "instanceof", 31, "delete");
        RecordTag.m$1(98, hashMap, ",", 116, ":");
        RecordTag.m$1(Token.OR, hashMap, "||", Token.NULLISH_COALESCING, "??");
        RecordTag.m$1(Token.QUESTION_DOT, hashMap, "?.", Token.AND, "&&");
        RecordTag.m$1(Token.INC, hashMap, "++", 120, "--");
        RecordTag.m$1(9, hashMap, "|", 10, "^");
        RecordTag.m$1(11, hashMap, "&", 12, "==");
        RecordTag.m$1(13, hashMap, "!=", 14, "<");
        RecordTag.m$1(16, hashMap, ">", 15, "<=");
        RecordTag.m$1(17, hashMap, ">=", 18, "<<");
        RecordTag.m$1(19, hashMap, ">>", 20, ">>>");
        RecordTag.m$1(21, hashMap, "+", 22, "-");
        RecordTag.m$1(23, hashMap, "*", 24, "/");
        RecordTag.m$1(25, hashMap, "%", 81, "**");
        RecordTag.m$1(26, hashMap, "!", 27, "~");
        RecordTag.m$1(28, hashMap, "+", 29, "-");
        RecordTag.m$1(51, hashMap, "===", 52, "!==");
        RecordTag.m$1(99, hashMap, "=", 100, "|=");
        RecordTag.m$1(Token.ASSIGN_LOGICAL_OR, hashMap, "||=", Token.ASSIGN_BITAND, "&=");
        RecordTag.m$1(Token.ASSIGN_LOGICAL_AND, hashMap, "&&=", Token.ASSIGN_LSH, "<<=");
        RecordTag.m$1(Token.ASSIGN_RSH, hashMap, ">>=", Token.ASSIGN_URSH, ">>>=");
        RecordTag.m$1(Token.ASSIGN_ADD, hashMap, "+=", Token.ASSIGN_SUB, "-=");
        RecordTag.m$1(110, hashMap, "*=", Token.ASSIGN_DIV, "/=");
        RecordTag.m$1(Token.ASSIGN_MOD, hashMap, "%=", Token.ASSIGN_BITXOR, "^=");
        RecordTag.m$1(Token.ASSIGN_EXP, hashMap, "**=", 114, "??=");
        hashMap.put(Integer.valueOf(Token.VOID), "void");
        StringBuilder sb = new StringBuilder();
        strArr[0] = "";
        for (int i = 1; i <= 42; i++) {
            sb.append("  ");
            INDENTATIONS[i] = sb.toString();
        }
    }

    public AstNode() {
        super(-1);
        this.position = -1;
        this.length = 1;
    }

    public static RuntimeException codeBug() {
        throw Kit.codeBug();
    }

    public static String operatorToString(int i) {
        String str = operatorNames.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1(Modifier.CC.m(i, "Invalid operator: "));
        return null;
    }

    public void addChild(AstNode astNode) {
        assertNotNull(astNode);
        setLength((astNode.getLength() + astNode.getPosition()) - getPosition());
        addChildToBack(astNode);
        astNode.setParent(this);
    }

    public void assertNotNull(Object obj) {
        if (obj != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("arg cannot be null");
    }

    @Override // java.lang.Comparable
    public int compareTo(AstNode astNode) {
        if (equals(astNode)) {
            return 0;
        }
        int absolutePosition = getAbsolutePosition();
        int absolutePosition2 = astNode.getAbsolutePosition();
        if (absolutePosition < absolutePosition2) {
            return -1;
        }
        if (absolutePosition2 < absolutePosition) {
            return 1;
        }
        int length = getLength();
        int length2 = astNode.getLength();
        if (length < length2) {
            return -1;
        }
        if (length2 < length) {
            return 1;
        }
        return hashCode() - astNode.hashCode();
    }

    public String debugPrint() {
        DebugPrintVisitor debugPrintVisitor = new DebugPrintVisitor(new StringBuilder(1000));
        visit(debugPrintVisitor);
        return debugPrintVisitor.toString();
    }

    public int depth() {
        AstNode astNode = this.parent;
        if (astNode == null) {
            return 0;
        }
        return astNode.depth() + 1;
    }

    public int getAbsolutePosition() {
        int i = this.position;
        for (AstNode astNode = this.parent; astNode != null; astNode = astNode.getParent()) {
            i += astNode.getPosition();
        }
        return i;
    }

    public AstRoot getAstRoot() {
        while (this != null && !(this instanceof AstRoot)) {
            this = this.getParent();
        }
        return (AstRoot) this;
    }

    public FunctionNode getEnclosingFunction() {
        AstNode parent = getParent();
        while (parent != null && !(parent instanceof FunctionNode)) {
            parent = parent.getParent();
        }
        return (FunctionNode) parent;
    }

    public Scope getEnclosingScope() {
        AstNode parent = getParent();
        while (parent != null && !(parent instanceof Scope)) {
            parent = parent.getParent();
        }
        return (Scope) parent;
    }

    public AstNode getInlineComment() {
        return this.inlineComment;
    }

    public int getLength() {
        return this.length;
    }

    @Override // org.mozilla.javascript.Node
    public int getLineno() {
        int i = this.lineno;
        if (i != -1) {
            return i;
        }
        AstNode astNode = this.parent;
        if (astNode != null) {
            return astNode.getLineno();
        }
        return -1;
    }

    public AstNode getParent() {
        return this.parent;
    }

    public int getPosition() {
        return this.position;
    }

    @Override // org.mozilla.javascript.Node
    public boolean hasSideEffects() {
        int type = getType();
        if (type == 30 || type == 31 || type == 55 || type == 56 || type == 61 || type == 62 || type == 90 || type == 91 || type == 119 || type == 120) {
            return true;
        }
        switch (type) {
            case -1:
            case Token.SETPROP /* 37 */:
            case Token.SETELEM /* 41 */:
            case Token.CALL /* 43 */:
            case Token.RETURN_RESULT /* 70 */:
            case Token.YIELD /* 78 */:
            case 99:
            case 100:
            case Token.ASSIGN_LOGICAL_OR /* 101 */:
            case Token.ASSIGN_BITXOR /* 102 */:
            case Token.ASSIGN_BITAND /* 103 */:
            case Token.ASSIGN_LOGICAL_AND /* 104 */:
            case Token.ASSIGN_LSH /* 105 */:
            case Token.ASSIGN_RSH /* 106 */:
            case Token.ASSIGN_URSH /* 107 */:
            case Token.ASSIGN_ADD /* 108 */:
            case Token.ASSIGN_SUB /* 109 */:
            case 110:
            case Token.ASSIGN_DIV /* 111 */:
            case Token.ASSIGN_MOD /* 112 */:
            case Token.ASSIGN_EXP /* 113 */:
            case 114:
            case Token.BLOCK /* 143 */:
            case Token.LABEL /* 144 */:
            case Token.TARGET /* 145 */:
            case Token.LOOP /* 146 */:
            case Token.EXPR_RESULT /* 148 */:
            case Token.JSR /* 149 */:
            case Token.SETPROP_OP /* 153 */:
            case Token.SETELEM_OP /* 154 */:
            case Token.LOCAL_BLOCK /* 155 */:
            case Token.SET_REF_OP /* 156 */:
            case Token.LET /* 167 */:
            case Token.CONST /* 168 */:
            case 172:
            case Token.WITHEXPR /* 173 */:
            case Token.YIELD_STAR /* 179 */:
                return true;
            default:
                switch (type) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        return true;
                    default:
                        switch (type) {
                            case Token.SET_REF /* 74 */:
                            case Token.DEL_REF /* 75 */:
                            case Token.REF_CALL /* 76 */:
                                return true;
                            default:
                                switch (type) {
                                    case Token.FUNCTION /* 122 */:
                                    case Token.EXPORT /* 123 */:
                                    case Token.IMPORT /* 124 */:
                                    case Token.IF /* 125 */:
                                    case Token.ELSE /* 126 */:
                                    case Token.SWITCH /* 127 */:
                                        return true;
                                    default:
                                        switch (type) {
                                            case 130:
                                            case Token.DO /* 131 */:
                                            case Token.FOR /* 132 */:
                                            case Token.BREAK /* 133 */:
                                            case 134:
                                            case 135:
                                            case Token.WITH /* 136 */:
                                            case Token.CATCH /* 137 */:
                                            case 138:
                                                return true;
                                            default:
                                                return false;
                                        }
                                }
                        }
                }
        }
    }

    public String makeIndent(int i) {
        return INDENTATIONS[Math.min(42, Math.max(0, i))];
    }

    public <T extends AstNode> void printList(List<T> list, StringBuilder sb) {
        int size = list.size();
        int i = 0;
        for (T t : list) {
            sb.append(t.toSource(0));
            int i2 = i + 1;
            if (i < size - 1) {
                sb.append(", ");
            } else if (t instanceof EmptyExpression) {
                sb.append(",");
            }
            i = i2;
        }
    }

    public void setBounds(int i, int i2) {
        setPosition(i);
        setLength(i2 - i);
    }

    public void setInlineComment(AstNode astNode) {
        this.inlineComment = astNode;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public void setParent(AstNode astNode) {
        AstNode astNode2 = this.parent;
        if (astNode == astNode2) {
            return;
        }
        if (astNode2 != null) {
            setRelative(-astNode2.getAbsolutePosition());
        }
        this.parent = astNode;
        if (astNode != null) {
            setRelative(astNode.getAbsolutePosition());
        }
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public void setRelative(int i) {
        this.position -= i;
    }

    public String shortName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(".") + 1);
    }

    public String toSource() {
        return toSource(0);
    }

    public abstract String toSource(int i);

    public abstract void visit(NodeVisitor nodeVisitor);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class PositionComparator implements Comparator<AstNode>, Serializable {
        private static final long serialVersionUID = 1;

        @Override // java.util.Comparator
        public int compare(AstNode astNode, AstNode astNode2) {
            return astNode.position - astNode2.position;
        }
    }

    public AstNode(int i) {
        this();
        this.position = i;
    }

    public AstNode(int i, int i2) {
        this();
        this.position = i;
        this.length = i2;
    }
}
