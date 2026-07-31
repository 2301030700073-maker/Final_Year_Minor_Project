package org.mozilla.javascript;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.Parser;
import org.mozilla.javascript.ast.ArrayComprehension;
import org.mozilla.javascript.ast.ArrayComprehensionLoop;
import org.mozilla.javascript.ast.ArrayLiteral;
import org.mozilla.javascript.ast.Assignment;
import org.mozilla.javascript.ast.AstNode;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.BigIntLiteral;
import org.mozilla.javascript.ast.Block;
import org.mozilla.javascript.ast.BreakStatement;
import org.mozilla.javascript.ast.CatchClause;
import org.mozilla.javascript.ast.ComputedPropertyKey;
import org.mozilla.javascript.ast.ConditionalExpression;
import org.mozilla.javascript.ast.ContinueStatement;
import org.mozilla.javascript.ast.DestructuringForm;
import org.mozilla.javascript.ast.DoLoop;
import org.mozilla.javascript.ast.ElementGet;
import org.mozilla.javascript.ast.EmptyExpression;
import org.mozilla.javascript.ast.ExpressionStatement;
import org.mozilla.javascript.ast.ForInLoop;
import org.mozilla.javascript.ast.ForLoop;
import org.mozilla.javascript.ast.FunctionCall;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.GeneratorExpression;
import org.mozilla.javascript.ast.GeneratorExpressionLoop;
import org.mozilla.javascript.ast.GeneratorMethodDefinition;
import org.mozilla.javascript.ast.IfStatement;
import org.mozilla.javascript.ast.InfixExpression;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.KeywordLiteral;
import org.mozilla.javascript.ast.Label;
import org.mozilla.javascript.ast.LabeledStatement;
import org.mozilla.javascript.ast.LetNode;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NewExpression;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.ObjectLiteral;
import org.mozilla.javascript.ast.ObjectProperty;
import org.mozilla.javascript.ast.ParenthesizedExpression;
import org.mozilla.javascript.ast.PropertyGet;
import org.mozilla.javascript.ast.RegExpLiteral;
import org.mozilla.javascript.ast.ReturnStatement;
import org.mozilla.javascript.ast.Scope;
import org.mozilla.javascript.ast.ScriptNode;
import org.mozilla.javascript.ast.StringLiteral;
import org.mozilla.javascript.ast.SwitchCase;
import org.mozilla.javascript.ast.SwitchStatement;
import org.mozilla.javascript.ast.TaggedTemplateLiteral;
import org.mozilla.javascript.ast.TemplateCharacters;
import org.mozilla.javascript.ast.TemplateLiteral;
import org.mozilla.javascript.ast.ThrowStatement;
import org.mozilla.javascript.ast.TryStatement;
import org.mozilla.javascript.ast.UnaryExpression;
import org.mozilla.javascript.ast.UpdateExpression;
import org.mozilla.javascript.ast.VariableDeclaration;
import org.mozilla.javascript.ast.VariableInitializer;
import org.mozilla.javascript.ast.WhileLoop;
import org.mozilla.javascript.ast.WithStatement;
import org.mozilla.javascript.ast.XmlElemRef;
import org.mozilla.javascript.ast.XmlExpression;
import org.mozilla.javascript.ast.XmlFragment;
import org.mozilla.javascript.ast.XmlLiteral;
import org.mozilla.javascript.ast.XmlMemberGet;
import org.mozilla.javascript.ast.XmlPropRef;
import org.mozilla.javascript.ast.XmlRef;
import org.mozilla.javascript.ast.XmlString;
import org.mozilla.javascript.ast.Yield;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IRFactory {
    private static final int ALWAYS_FALSE_BOOLEAN = -1;
    private static final int ALWAYS_TRUE_BOOLEAN = 1;
    private static final int LOOP_DO_WHILE = 0;
    private static final int LOOP_FOR = 2;
    private static final int LOOP_WHILE = 1;
    private AstNodePosition astNodePos;
    private Parser parser;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class AstNodePosition implements Parser.CurrentPositionReporter {
        private String savedLine;
        private int savedLineOffset;
        private String sourceString;
        private int savedLineno = -1;
        private ArrayDeque<AstNode> stack = new ArrayDeque<>();

        public AstNodePosition(String str) {
            this.sourceString = str;
        }

        private void cutAndSaveLine() {
            int lineno = getLineno();
            if (this.savedLineno == lineno) {
                return;
            }
            int i = 0;
            boolean z = false;
            int i2 = 1;
            while (i < this.sourceString.length()) {
                char charAt = this.sourceString.charAt(i);
                if (!z || charAt != '\n') {
                    z = charAt == '\r';
                    if (i2 == lineno) {
                        break;
                    } else if (ScriptRuntime.isJSLineTerminator(charAt)) {
                        i2++;
                    }
                }
                i++;
            }
            int i3 = i;
            while (i3 < this.sourceString.length() && !ScriptRuntime.isJSLineTerminator(this.sourceString.charAt(i3))) {
                i3++;
            }
            this.savedLineno = lineno;
            if (i3 == 0) {
                this.savedLine = "";
                this.savedLineOffset = 0;
            } else {
                this.savedLine = this.sourceString.substring(i, i3);
                this.savedLineOffset = (getPosition() - i) + 1;
            }
        }

        @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
        public int getLength() {
            return this.stack.peek().getLength();
        }

        @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
        public String getLine() {
            cutAndSaveLine();
            return this.savedLine;
        }

        @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
        public int getLineno() {
            return this.stack.peek().getLineno();
        }

        @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
        public int getOffset() {
            cutAndSaveLine();
            return this.savedLineOffset;
        }

        @Override // org.mozilla.javascript.Parser.CurrentPositionReporter
        public int getPosition() {
            return this.stack.peek().getAbsolutePosition();
        }

        public void pop() {
            this.stack.pop();
        }

        public void push(AstNode astNode) {
            this.stack.push(astNode);
        }
    }

    public IRFactory(CompilerEnvirons compilerEnvirons, String str, String str2, ErrorReporter errorReporter) {
        this.parser = new Parser(compilerEnvirons, errorReporter);
        AstNodePosition astNodePosition = new AstNodePosition(str2);
        this.astNodePos = astNodePosition;
        Parser parser = this.parser;
        parser.currentPos = astNodePosition;
        parser.setSourceURI(str);
    }

    private static void addSwitchCase(Node node, Node node2, Node node3) {
        if (node.getType() != 143) {
            throw Kit.codeBug();
        }
        Jump jump = (Jump) node.getFirstChild();
        if (jump.getType() != 127) {
            throw Kit.codeBug();
        }
        Node newTarget = Node.newTarget();
        if (node2 != null) {
            Jump jump2 = new Jump(128, node2);
            jump2.target = newTarget;
            jump.addChildToBack(jump2);
        } else {
            jump.setDefault(newTarget);
        }
        node.addChildToBack(newTarget);
        node.addChildToBack(node3);
    }

    private Node arrayCompTransformHelper(ArrayComprehension arrayComprehension, String str) {
        ArrayComprehensionLoop arrayComprehensionLoop;
        Scope createLoopNode;
        int i;
        Node node;
        String str2;
        int lineno = arrayComprehension.getLineno();
        int column = arrayComprehension.getColumn();
        Node transform = transform(arrayComprehension.getResult());
        List<ArrayComprehensionLoop> loops = arrayComprehension.getLoops();
        int size = loops.size();
        Node[] nodeArr = new Node[size];
        Node[] nodeArr2 = new Node[size];
        int i2 = 0;
        Node node2 = transform;
        for (int i3 = 0; i3 < size; i3++) {
            ArrayComprehensionLoop arrayComprehensionLoop2 = loops.get(i3);
            AstNode iterator = arrayComprehensionLoop2.getIterator();
            this.astNodePos.push(iterator);
            try {
                if (iterator.getType() == 44) {
                    str2 = iterator.getString();
                } else {
                    String nextTempName = this.parser.currentScriptOrFn.getNextTempName();
                    this.parser.defineSymbol(96, nextTempName, false);
                    node2 = createBinary(98, createAssignment(99, iterator, this.parser.createName(nextTempName)), node2);
                    str2 = nextTempName;
                }
                Node createName = this.parser.createName(str2);
                this.parser.defineSymbol(Token.LET, str2, false);
                nodeArr[i3] = createName;
                this.astNodePos.pop();
                nodeArr2[i3] = transform(arrayComprehensionLoop2.getIteratedObject());
            } catch (Throwable th) {
                this.astNodePos.pop();
                throw th;
            }
        }
        Node createCallOrNew = createCallOrNew(43, createPropertyGet(this.parser.createName(str), null, "push", 0, arrayComprehension.type));
        Node node3 = new Node(Token.EXPR_VOID, createCallOrNew);
        node3.setLineColumnNumber(lineno, column);
        Node node4 = null;
        if (arrayComprehension.getFilter() != null) {
            node3 = createIf(transform(arrayComprehension.getFilter()), node3, null, lineno, column);
        }
        Node node5 = node3;
        int i4 = size - 1;
        int i5 = 0;
        while (i4 >= 0) {
            try {
                arrayComprehensionLoop = loops.get(i4);
                createLoopNode = createLoopNode(node4, arrayComprehensionLoop.getLineno(), arrayComprehensionLoop.getColumn());
                this.parser.pushScope(createLoopNode);
                i = i5 + 1;
                node = node4;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                node5 = createForIn(Token.LET, createLoopNode, nodeArr[i4], nodeArr2[i4], node5, arrayComprehensionLoop, arrayComprehensionLoop.isForEach(), arrayComprehensionLoop.isForOf());
                i4--;
                i5 = i;
                node4 = node;
            } catch (Throwable th3) {
                th = th3;
                i5 = i;
                while (i2 < i5) {
                    this.parser.popScope();
                    i2++;
                }
                throw th;
            }
        }
        while (i2 < i5) {
            this.parser.popScope();
            i2++;
        }
        createCallOrNew.addChildToBack(node2);
        return node5;
    }

    private static void closeSwitch(Node node) {
        if (node.getType() != 143) {
            throw Kit.codeBug();
        }
        Jump jump = (Jump) node.getFirstChild();
        if (jump.getType() != 127) {
            throw Kit.codeBug();
        }
        Node newTarget = Node.newTarget();
        jump.target = newTarget;
        Node node2 = jump.getDefault();
        if (node2 == null) {
            node2 = newTarget;
        }
        node.addChildAfter(makeJump(5, node2), jump);
        node.addChildToBack(newTarget);
    }

    private Node createAssignment(int i, Node node, Node node2) {
        int i2;
        Node makeReference = makeReference(node);
        if (makeReference == null) {
            if (node.getType() != 71 && node.getType() != 72) {
                this.parser.reportError("msg.bad.assign.left");
                return node2;
            }
            Parser parser = this.parser;
            if (i == 99) {
                return parser.createDestructuringAssignment(-1, node, node2, new IRFactory$$ExternalSyntheticLambda0(this));
            }
            parser.reportError("msg.bad.destruct.op");
            return node2;
        }
        switch (i) {
            case 99:
                return propagateSuperFromLhs(this.parser.simpleAssignment(makeReference, node2), makeReference);
            case 100:
                i2 = 9;
                break;
            case Token.ASSIGN_LOGICAL_OR /* 101 */:
                i2 = Token.OR;
                break;
            case Token.ASSIGN_BITXOR /* 102 */:
                i2 = 10;
                break;
            case Token.ASSIGN_BITAND /* 103 */:
                i2 = 11;
                break;
            case Token.ASSIGN_LOGICAL_AND /* 104 */:
                i2 = Token.AND;
                break;
            case Token.ASSIGN_LSH /* 105 */:
                i2 = 18;
                break;
            case Token.ASSIGN_RSH /* 106 */:
                i2 = 19;
                break;
            case Token.ASSIGN_URSH /* 107 */:
                i2 = 20;
                break;
            case Token.ASSIGN_ADD /* 108 */:
                i2 = 21;
                break;
            case Token.ASSIGN_SUB /* 109 */:
                i2 = 22;
                break;
            case 110:
                i2 = 23;
                break;
            case Token.ASSIGN_DIV /* 111 */:
                i2 = 24;
                break;
            case Token.ASSIGN_MOD /* 112 */:
                i2 = 25;
                break;
            case Token.ASSIGN_EXP /* 113 */:
                i2 = 81;
                break;
            case 114:
                i2 = Token.NULLISH_COALESCING;
                break;
            default:
                throw Kit.codeBug();
        }
        int type = makeReference.getType();
        if (type == 33 || type == 39) {
            return propagateSuperFromLhs(new Node(type == 33 ? Token.SETPROP_OP : Token.SETELEM_OP, makeReference.getFirstChild(), makeReference.getLastChild(), new Node(i2, new Node(Token.USE_STACK), node2)), makeReference);
        }
        if (type == 44) {
            return propagateSuperFromLhs(new Node(8, Node.newString(54, makeReference.getString()), new Node(i2, makeReference, node2)), makeReference);
        }
        if (type != 73) {
            throw Kit.codeBug();
        }
        Node firstChild = makeReference.getFirstChild();
        this.parser.checkMutableReference(firstChild);
        return propagateSuperFromLhs(new Node(Token.SET_REF_OP, firstChild, new Node(i2, new Node(Token.USE_STACK), node2)), makeReference);
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f1, code lost:
    
        if (r0 == 1) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fd, code lost:
    
        return r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00fb, code lost:
    
        if (r0 == (-1)) goto L77;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.mozilla.javascript.Node createBinary(int r7, org.mozilla.javascript.Node r8, org.mozilla.javascript.Node r9) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.IRFactory.createBinary(int, org.mozilla.javascript.Node, org.mozilla.javascript.Node):org.mozilla.javascript.Node");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        if (r7.getLastChild().getString().equals("eval") != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.Node createCallOrNew(int r6, org.mozilla.javascript.Node r7) {
        /*
            r5 = this;
            int r0 = r7.getType()
            r1 = 44
            r2 = 1
            java.lang.String r3 = "eval"
            r4 = 0
            if (r0 != r1) goto L21
            java.lang.String r0 = r7.getString()
            boolean r1 = r0.equals(r3)
            if (r1 == 0) goto L17
            goto L39
        L17:
            java.lang.String r1 = "With"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L38
            r2 = 2
            goto L39
        L21:
            int r0 = r7.getType()
            r1 = 33
            if (r0 != r1) goto L38
            org.mozilla.javascript.Node r0 = r7.getLastChild()
            java.lang.String r0 = r0.getString()
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto L38
            goto L39
        L38:
            r2 = r4
        L39:
            org.mozilla.javascript.Node r0 = new org.mozilla.javascript.Node
            r0.<init>(r6, r7)
            if (r2 == 0) goto L4a
            org.mozilla.javascript.Parser r5 = r5.parser
            r5.setRequiresActivation()
            r5 = 10
            r0.putIntProp(r5, r2)
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.IRFactory.createCallOrNew(int, org.mozilla.javascript.Node):org.mozilla.javascript.Node");
    }

    private Node createCatch(Node node, Node node2, Node node3, int i, int i2) {
        if (node == null) {
            node = new Node(Token.EMPTY);
        }
        Node node4 = node;
        if (node2 == null) {
            node2 = new Node(Token.EMPTY);
        }
        return new Node(Token.CATCH, node4, node2, node3, i, i2);
    }

    private static Node createCondExpr(Node node, Node node2, Node node3) {
        int isAlwaysDefinedBoolean = isAlwaysDefinedBoolean(node);
        return isAlwaysDefinedBoolean == 1 ? node2 : isAlwaysDefinedBoolean == -1 ? node3 : new Node(Token.HOOK, node, node2, node3);
    }

    private Node createElementGet(Node node, String str, Node node2, int i) {
        if (str != null || i != 0) {
            return createMemberRefGet(node, str, node2, i);
        }
        if (node != null) {
            return new Node(39, node, node2);
        }
        throw Kit.codeBug();
    }

    private static Node createExprStatementNoReturn(Node node, int i, int i2) {
        return new Node(Token.EXPR_VOID, node, i, i2);
    }

    private static Node createFor(Scope scope, Node node, Node node2, Node node3, Node node4) {
        if (node.getType() != 167) {
            return createLoop(scope, 2, node4, node2, node, node3);
        }
        Scope splitScope = Scope.splitScope(scope);
        splitScope.setType(Token.LET);
        splitScope.addChildrenToBack(node);
        splitScope.addChildToBack(createLoop(scope, 2, node4, node2, new Node(Token.EMPTY), node3));
        return splitScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bc A[Catch: all -> 0x0037, TRY_ENTER, TryCatch #0 {all -> 0x0037, blocks: (B:3:0x000b, B:9:0x0026, B:11:0x002c, B:17:0x007a, B:20:0x0092, B:23:0x00bc, B:29:0x00d0, B:30:0x00dc, B:34:0x0107, B:35:0x0104, B:36:0x00d8, B:42:0x003d, B:44:0x0041, B:46:0x004b, B:52:0x005c, B:53:0x0067, B:54:0x006d, B:56:0x0071), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d8 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:3:0x000b, B:9:0x0026, B:11:0x002c, B:17:0x007a, B:20:0x0092, B:23:0x00bc, B:29:0x00d0, B:30:0x00dc, B:34:0x0107, B:35:0x0104, B:36:0x00d8, B:42:0x003d, B:44:0x0041, B:46:0x004b, B:52:0x005c, B:53:0x0067, B:54:0x006d, B:56:0x0071), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.Node createForIn(int r20, org.mozilla.javascript.Node r21, org.mozilla.javascript.Node r22, org.mozilla.javascript.Node r23, org.mozilla.javascript.Node r24, org.mozilla.javascript.ast.AstNode r25, boolean r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.IRFactory.createForIn(int, org.mozilla.javascript.Node, org.mozilla.javascript.Node, org.mozilla.javascript.Node, org.mozilla.javascript.Node, org.mozilla.javascript.ast.AstNode, boolean, boolean):org.mozilla.javascript.Node");
    }

    private static Node createIf(Node node, Node node2, Node node3, int i, int i2) {
        int isAlwaysDefinedBoolean = isAlwaysDefinedBoolean(node);
        if (isAlwaysDefinedBoolean == 1) {
            return node2;
        }
        if (isAlwaysDefinedBoolean == -1) {
            return node3 != null ? node3 : new Node(Token.BLOCK, i, i2);
        }
        Node node4 = new Node(Token.BLOCK, i, i2);
        Node newTarget = Node.newTarget();
        Jump jump = new Jump(7, node);
        jump.target = newTarget;
        node4.addChildToBack(jump);
        node4.addChildrenToBack(node2);
        if (node3 != null) {
            Node newTarget2 = Node.newTarget();
            node4.addChildToBack(makeJump(5, newTarget2));
            node4.addChildToBack(newTarget);
            node4.addChildrenToBack(node3);
            node4.addChildToBack(newTarget2);
        } else {
            node4.addChildToBack(newTarget);
        }
        if (node.getFirstChild() != null) {
            Node firstChild = node.getFirstChild();
            node4.setLineColumnNumber(firstChild.getLineno(), firstChild.getColumn());
        }
        return node4;
    }

    private static Node createIncDec(int i, boolean z, Node node) {
        Node makeReference = makeReference(node);
        int type = makeReference.getType();
        if (type != 33 && type != 39 && type != 44 && type != 73) {
            throw Kit.codeBug();
        }
        Node node2 = new Node(i, makeReference);
        int i2 = i == 120 ? 1 : 0;
        if (z) {
            i2 |= 2;
        }
        node2.putIntProp(13, i2);
        return node2;
    }

    private static Node createLoop(Jump jump, int i, Node node, Node node2, Node node3, Node node4) {
        Node newTarget = Node.newTarget();
        Node newTarget2 = Node.newTarget();
        if (i == 2 && node2.getType() == 141) {
            node2 = new Node(50);
        }
        Jump jump2 = new Jump(6, node2);
        jump2.target = newTarget;
        Node newTarget3 = Node.newTarget();
        jump.addChildToBack(newTarget);
        jump.addChildrenToBack(node);
        if (i == 1 || i == 2) {
            jump.addChildrenToBack(new Node(Token.EMPTY, jump.getLineno(), jump.getColumn()));
        }
        jump.addChildToBack(newTarget2);
        jump.addChildToBack(jump2);
        jump.addChildToBack(newTarget3);
        jump.target = newTarget3;
        if (i == 1 || i == 2) {
            jump.addChildToFront(makeJump(5, newTarget2));
            if (i == 2) {
                int type = node3.getType();
                if (type != 141) {
                    if (type != 135 && type != 167) {
                        node3 = new Node(Token.EXPR_VOID, node3);
                    }
                    jump.addChildToFront(node3);
                }
                newTarget2 = Node.newTarget();
                jump.addChildAfter(newTarget2, node);
                if (node4.getType() != 141) {
                    jump.addChildAfter(new Node(Token.EXPR_VOID, node4), newTarget2);
                }
            }
        }
        jump.setContinue(newTarget2);
        return jump;
    }

    private Scope createLoopNode(Node node, int i, int i2) {
        Scope createScopeNode = this.parser.createScopeNode(Token.LOOP, i, i2);
        if (node != null) {
            ((Jump) node).setLoop(createScopeNode);
        }
        return createScopeNode;
    }

    private Node createMemberRefGet(Node node, String str, Node node2, int i) {
        Node node3 = str != null ? str.equals("*") ? new Node(47) : this.parser.createName(str) : null;
        Node node4 = node == null ? str == null ? new Node(87, node2) : new Node(88, node3, node2) : str == null ? new Node(85, node, node2) : new Node(86, node, node3, node2);
        if (i != 0) {
            node4.putIntProp(16, i);
        }
        return new Node(73, node4);
    }

    private Node createPropertyGet(Node node, String str, String str2, int i, int i2) {
        if (str != null || i != 0) {
            return createMemberRefGet(node, str, Node.newString(str2), i | 1);
        }
        Parser parser = this.parser;
        if (node == null) {
            return parser.createName(str2);
        }
        parser.checkActivationName(str2, 33);
        if (!ScriptRuntime.isSpecialProperty(str2)) {
            Node node2 = new Node(33, node, Node.newString(str2));
            if (i2 == 186) {
                node2.putIntProp(30, 1);
            }
            if (node.getType() == 79) {
                node2.putIntProp(31, 1);
            }
            return node2;
        }
        if (node.getType() == 79) {
            if (!(node instanceof KeywordLiteral)) {
                throw Kit.codeBug();
            }
            KeywordLiteral keywordLiteral = (KeywordLiteral) node;
            KeywordLiteral keywordLiteral2 = new KeywordLiteral(keywordLiteral.getPosition(), keywordLiteral.getLength(), 48);
            keywordLiteral2.setLineColumnNumber(keywordLiteral.getLineno(), keywordLiteral.getColumn());
            node = keywordLiteral2;
        }
        Node node3 = new Node(77, node);
        node3.putProp(17, str2);
        Node node4 = new Node(73, node3);
        if (i2 == 186) {
            node3.putIntProp(30, 1);
            node4.putIntProp(30, 1);
        }
        return node4;
    }

    private static Node createString(String str) {
        return Node.newString(str);
    }

    private Node createTryCatchFinally(Node node, Node node2, Node node3, int i, int i2) {
        boolean z = false;
        boolean z2 = node3 != null && (node3.getType() != 143 || node3.hasChildren());
        if (node.getType() != 143 || node.hasChildren() || z2) {
            boolean hasChildren = node2.hasChildren();
            if (z2 || hasChildren) {
                Node node4 = new Node(Token.LOCAL_BLOCK);
                Jump jump = new Jump(90, node);
                jump.setLineColumnNumber(i, i2);
                int i3 = 3;
                jump.putProp(3, node4);
                if (hasChildren) {
                    Node newTarget = Node.newTarget();
                    jump.addChildToBack(makeJump(5, newTarget));
                    Node newTarget2 = Node.newTarget();
                    jump.target = newTarget2;
                    jump.addChildToBack(newTarget2);
                    Node node5 = new Node(Token.LOCAL_BLOCK);
                    Node firstChild = node2.getFirstChild();
                    int i4 = 0;
                    while (firstChild != null) {
                        int lineno = firstChild.getLineno();
                        int column = firstChild.getColumn();
                        Node firstChild2 = firstChild.getFirstChild();
                        Node next = firstChild2.getNext();
                        Node next2 = next.getNext();
                        firstChild.removeChild(firstChild2);
                        firstChild.removeChild(next);
                        firstChild.removeChild(next2);
                        next2.addChildToBack(new Node(i3));
                        next2.addChildToBack(makeJump(5, newTarget));
                        if (next.getType() == 141) {
                            z = true;
                        } else {
                            next2 = createIf(next, next2, null, lineno, column);
                        }
                        Node node6 = new Node(62, firstChild2, createUseLocal(node4));
                        node6.putProp(3, node5);
                        node6.putIntProp(14, i4);
                        node5.addChildToBack(node6);
                        node5.addChildToBack(createWith(createUseLocal(node5), next2, lineno, column));
                        firstChild = firstChild.getNext();
                        i4++;
                        i3 = 3;
                    }
                    jump.addChildToBack(node5);
                    if (!z) {
                        Node node7 = new Node(56);
                        node7.putProp(3, node4);
                        jump.addChildToBack(node7);
                    }
                    jump.addChildToBack(newTarget);
                }
                if (z2) {
                    Node newTarget3 = Node.newTarget();
                    jump.setFinally(newTarget3);
                    jump.addChildToBack(makeJump(Token.JSR, newTarget3));
                    Node newTarget4 = Node.newTarget();
                    jump.addChildToBack(makeJump(5, newTarget4));
                    jump.addChildToBack(newTarget3);
                    Node node8 = new Node(138, node3);
                    node8.putProp(3, node4);
                    jump.addChildToBack(node8);
                    jump.addChildToBack(newTarget4);
                }
                node4.addChildToBack(jump);
                return node4;
            }
        }
        return node;
    }

    private static Node createUnary(int i, Node node) {
        Node node2;
        int type = node.getType();
        switch (i) {
            case 26:
                int isAlwaysDefinedBoolean = isAlwaysDefinedBoolean(node);
                if (isAlwaysDefinedBoolean != 0) {
                    int i2 = isAlwaysDefinedBoolean == 1 ? 49 : 50;
                    if (type != 50 && type != 49) {
                        return new Node(i2);
                    }
                    node.setType(i2);
                    return node;
                }
                break;
            case 27:
                if (type == 45) {
                    node.setDouble(~ScriptRuntime.toInt32(node.getDouble()));
                    return node;
                }
                break;
            case 29:
                if (type == 45) {
                    node.setDouble(-node.getDouble());
                    return node;
                }
                break;
            case 31:
                if (type == 44) {
                    node.setType(54);
                    node2 = new Node(i, node, Node.newString(node.getString()));
                } else if (type == 33 || type == 39) {
                    Node firstChild = node.getFirstChild();
                    Node lastChild = node.getLastChild();
                    node.removeChild(firstChild);
                    node.removeChild(lastChild);
                    node2 = new Node(i, firstChild, lastChild);
                } else if (type == 73) {
                    Node firstChild2 = node.getFirstChild();
                    node.removeChild(firstChild2);
                    node2 = new Node(75, firstChild2);
                } else {
                    node2 = new Node(i, new Node(50), node);
                }
                if (node.getIntProp(31, 0) == 1) {
                    node2.putIntProp(31, 1);
                }
                return node2;
            case 32:
                if (type == 44) {
                    node.setType(Token.TYPEOFNAME);
                    return node;
                }
                break;
        }
        return new Node(i, node);
    }

    private static Node createUseLocal(Node node) {
        if (155 != node.getType()) {
            throw Kit.codeBug();
        }
        Node node2 = new Node(59);
        node2.putProp(3, node);
        return node2;
    }

    private Node createWith(Node node, Node node2, int i, int i2) {
        this.parser.setRequiresActivation();
        Node node3 = new Node(Token.BLOCK, i, i2);
        node3.addChildToBack(new Node(2, node));
        node3.addChildrenToBack(new Node(Token.WITH, node2, i, i2));
        node3.addChildToBack(new Node(3));
        return node3;
    }

    private Node genExprTransformHelper(GeneratorExpression generatorExpression) {
        String str;
        int lineno = generatorExpression.getLineno();
        int column = generatorExpression.getColumn();
        Node transform = transform(generatorExpression.getResult());
        List<GeneratorExpressionLoop> loops = generatorExpression.getLoops();
        int size = loops.size();
        Node[] nodeArr = new Node[size];
        Node[] nodeArr2 = new Node[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            GeneratorExpressionLoop generatorExpressionLoop = loops.get(i2);
            AstNode iterator = generatorExpressionLoop.getIterator();
            this.astNodePos.push(iterator);
            try {
                if (iterator.getType() == 44) {
                    str = iterator.getString();
                } else {
                    String nextTempName = this.parser.currentScriptOrFn.getNextTempName();
                    this.parser.defineSymbol(96, nextTempName, false);
                    transform = createBinary(98, createAssignment(99, iterator, this.parser.createName(nextTempName)), transform);
                    str = nextTempName;
                }
                Node createName = this.parser.createName(str);
                this.parser.defineSymbol(Token.LET, str, false);
                nodeArr[i2] = createName;
                this.astNodePos.pop();
                nodeArr2[i2] = transform(generatorExpressionLoop.getIteratedObject());
            } catch (Throwable th) {
                this.astNodePos.pop();
                throw th;
            }
        }
        Node node = new Node(Token.EXPR_VOID, new Node(78, transform, generatorExpression.getLineno(), generatorExpression.getColumn()), lineno, column);
        if (generatorExpression.getFilter() != null) {
            node = createIf(transform(generatorExpression.getFilter()), node, null, lineno, column);
        }
        Node node2 = node;
        int i3 = size - 1;
        int i4 = 0;
        while (i3 >= 0) {
            try {
                GeneratorExpressionLoop generatorExpressionLoop2 = loops.get(i3);
                Scope createLoopNode = createLoopNode(null, generatorExpressionLoop2.getLineno(), generatorExpressionLoop2.getColumn());
                this.parser.pushScope(createLoopNode);
                int i5 = i4 + 1;
                try {
                    node2 = createForIn(Token.LET, createLoopNode, nodeArr[i3], nodeArr2[i3], node2, generatorExpressionLoop2, generatorExpressionLoop2.isForEach(), generatorExpressionLoop2.isForOf());
                    i3--;
                    i4 = i5;
                } catch (Throwable th2) {
                    th = th2;
                    i4 = i5;
                    while (i < i4) {
                        this.parser.popScope();
                        i++;
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        while (i < i4) {
            this.parser.popScope();
            i++;
        }
        return node2;
    }

    private static Node initFunction(FunctionNode functionNode, int i, Node node, int i2) {
        Name functionName;
        functionNode.setFunctionType(i2);
        functionNode.addChildToBack(node);
        if (functionNode.getFunctionCount() != 0) {
            functionNode.setRequiresActivation();
        }
        if (i2 == 2 && (functionName = functionNode.getFunctionName()) != null && functionName.length() != 0 && functionNode.getSymbol(functionName.getIdentifier()) == null) {
            functionNode.putSymbol(new org.mozilla.javascript.ast.Symbol(Token.FUNCTION, functionName.getIdentifier()));
            node.addChildrenToFront(new Node(Token.EXPR_VOID, new Node(8, Node.newString(54, functionName.getIdentifier()), new Node(69))));
        }
        Node lastChild = node.getLastChild();
        if (lastChild == null || lastChild.getType() != 4) {
            node.addChildToBack(new Node(4));
        }
        Node newString = Node.newString(Token.FUNCTION, functionNode.getName());
        newString.putIntProp(1, i);
        return newString;
    }

    private static int isAlwaysDefinedBoolean(Node node) {
        int type = node.getType();
        if (type == 45) {
            double d = node.getDouble();
            return (Double.isNaN(d) || d == 0.0d) ? -1 : 1;
        }
        if (type == 47 || type == 49) {
            return -1;
        }
        return type != 50 ? 0 : 1;
    }

    private static Jump makeJump(int i, Node node) {
        Jump jump = new Jump(i);
        jump.target = node;
        return jump;
    }

    private static Node makeReference(Node node) {
        int type = node.getType();
        if (type != 33 && type != 39 && type != 73) {
            if (type == 43) {
                node.setType(76);
                return new Node(73, node);
            }
            if (type != 44) {
                return null;
            }
        }
        return node;
    }

    private Node propagateSuperFromLhs(Node node, Node node2) {
        if (node2.getIntProp(31, 0) == 1) {
            node.putIntProp(31, 1);
        }
        return node;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:120:0x015b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mozilla.javascript.Node transform(org.mozilla.javascript.ast.AstNode r3) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.IRFactory.transform(org.mozilla.javascript.ast.AstNode):org.mozilla.javascript.Node");
    }

    private Node transformArrayComp(ArrayComprehension arrayComprehension) {
        int lineno = arrayComprehension.getLineno();
        int column = arrayComprehension.getColumn();
        Scope createScopeNode = this.parser.createScopeNode(Token.ARRAYCOMP, lineno, column);
        String nextTempName = this.parser.currentScriptOrFn.getNextTempName();
        this.parser.pushScope(createScopeNode);
        try {
            this.astNodePos.push(arrayComprehension);
            try {
                this.parser.defineSymbol(Token.LET, nextTempName, false);
                Node node = new Node(Token.BLOCK);
                node.setLineColumnNumber(lineno, column);
                node.addChildToBack(new Node(Token.EXPR_VOID, createAssignment(99, this.parser.createName(nextTempName), createCallOrNew(30, this.parser.createName("Array"))), lineno, column));
                node.addChildToBack(arrayCompTransformHelper(arrayComprehension, nextTempName));
                createScopeNode.addChildToBack(node);
                createScopeNode.addChildToBack(this.parser.createName(nextTempName));
                return createScopeNode;
            } finally {
                this.astNodePos.pop();
            }
        } finally {
            this.parser.popScope();
        }
    }

    private Node transformArrayLiteral(ArrayLiteral arrayLiteral) {
        if (arrayLiteral.isDestructuring()) {
            return arrayLiteral;
        }
        List<AstNode> elements = arrayLiteral.getElements();
        Node node = new Node(71);
        ArrayList arrayList = null;
        for (int i = 0; i < elements.size(); i++) {
            AstNode astNode = elements.get(i);
            if (astNode.getType() != 141) {
                node.addChildToBack(transform(astNode));
            } else {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(Integer.valueOf(i));
            }
        }
        node.putIntProp(21, arrayLiteral.getDestructuringLength());
        if (arrayList != null) {
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            node.putProp(11, iArr);
        }
        return node;
    }

    private Node transformAssignment(Assignment assignment) {
        AstNode right = assignment.getRight();
        AstNode transformAssignmentLeft = transformAssignmentLeft(assignment, this.parser.removeParens(assignment.getLeft()), right);
        Node transform = isDestructuring(transformAssignmentLeft) ? transformAssignmentLeft : transform(transformAssignmentLeft);
        this.astNodePos.push(transformAssignmentLeft);
        try {
            return createAssignment(assignment.getType(), transform, transform(right));
        } finally {
            this.astNodePos.pop();
        }
    }

    private AstNode transformAssignmentLeft(Assignment assignment, AstNode astNode, AstNode astNode2) {
        Name functionName;
        if (astNode2.getType() == 47 && assignment.getType() == 99 && (astNode instanceof Name) && (astNode2 instanceof KeywordLiteral)) {
            String identifier = ((Name) astNode).getIdentifier();
            for (AstNode parent = assignment.getParent(); parent != null; parent = parent.getParent()) {
                if ((parent instanceof FunctionNode) && (functionName = ((FunctionNode) parent).getFunctionName()) != null && functionName.getIdentifier().equals(identifier)) {
                    PropertyGet propertyGet = new PropertyGet();
                    KeywordLiteral keywordLiteral = new KeywordLiteral();
                    keywordLiteral.setType(48);
                    propertyGet.setLeft(keywordLiteral);
                    propertyGet.setRight(astNode);
                    assignment.setLeft(propertyGet);
                    return propertyGet;
                }
            }
        }
        return astNode;
    }

    private Node transformBlock(AstNode astNode) {
        boolean z = astNode instanceof Scope;
        if (z) {
            this.parser.pushScope((Scope) astNode);
        }
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<Node> it = astNode.iterator();
            while (it.hasNext()) {
                arrayList.add(transform((AstNode) it.next()));
            }
            astNode.removeChildren();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                astNode.addChildToBack((Node) it2.next());
            }
            if (astNode instanceof Scope) {
                this.parser.popScope();
            }
            return astNode;
        } catch (Throwable th) {
            if (z) {
                this.parser.popScope();
            }
            throw th;
        }
    }

    private Node transformComputedPropertyKey(ComputedPropertyKey computedPropertyKey) {
        return new Node(computedPropertyKey.type, transform(computedPropertyKey.getExpression()));
    }

    private Node transformCondExpr(ConditionalExpression conditionalExpression) {
        return createCondExpr(transform(conditionalExpression.getTestExpression()), transform(conditionalExpression.getTrueExpression()), transform(conditionalExpression.getFalseExpression()));
    }

    private Node transformDefaultXmlNamespace(UnaryExpression unaryExpression) {
        return createUnary(82, transform(unaryExpression.getOperand()));
    }

    private Node transformDoLoop(DoLoop doLoop) {
        doLoop.setType(Token.LOOP);
        this.parser.pushScope(doLoop);
        try {
            return createLoop(doLoop, 0, transform(doLoop.getBody()), transform(doLoop.getCondition()), null, null);
        } finally {
            this.parser.popScope();
        }
    }

    private Node transformElementGet(ElementGet elementGet) {
        Node transform = transform(elementGet.getTarget());
        Node node = new Node(39, transform, transform(elementGet.getElement()));
        if (elementGet.type == 186) {
            node.putIntProp(30, 1);
        }
        if (transform.getType() == 79) {
            node.putIntProp(31, 1);
        }
        return node;
    }

    private Node transformExprStmt(ExpressionStatement expressionStatement) {
        return new Node(expressionStatement.getType(), transform(expressionStatement.getExpression()), expressionStatement.getLineno(), expressionStatement.getColumn());
    }

    private Node transformForInLoop(ForInLoop forInLoop) {
        IRFactory iRFactory;
        Throwable th;
        int type;
        forInLoop.setType(Token.LOOP);
        this.parser.pushScope(forInLoop);
        try {
            AstNode iterator = forInLoop.getIterator();
            if (iterator instanceof VariableDeclaration) {
                try {
                    type = iterator.getType();
                } catch (Throwable th2) {
                    th = th2;
                    iRFactory = this;
                    iRFactory.parser.popScope();
                    throw th;
                }
            } else {
                type = -1;
            }
            iRFactory = this;
            try {
                Node createForIn = iRFactory.createForIn(type, forInLoop, transform(iterator), transform(forInLoop.getIteratedObject()), transform(forInLoop.getBody()), forInLoop, forInLoop.isForEach(), forInLoop.isForOf());
                iRFactory.parser.popScope();
                return createForIn;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                iRFactory.parser.popScope();
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            iRFactory = this;
        }
    }

    private Node transformForLoop(ForLoop forLoop) {
        forLoop.setType(Token.LOOP);
        Parser parser = this.parser;
        Scope scope = parser.currentScope;
        parser.currentScope = forLoop;
        try {
            return createFor(forLoop, transform(forLoop.getInitializer()), transform(forLoop.getCondition()), transform(forLoop.getIncrement()), transform(forLoop.getBody()));
        } finally {
            this.parser.currentScope = scope;
        }
    }

    private Node transformFunction(FunctionNode functionNode) {
        Parser.PerFunctionVariables perFunctionVariables;
        boolean z;
        Node decompileFunctionHeader = decompileFunctionHeader(functionNode);
        int addFunction = this.parser.currentScriptOrFn.addFunction(functionNode);
        Parser.PerFunctionVariables createPerFunctionVariables = this.parser.createPerFunctionVariables(functionNode);
        boolean z2 = true;
        try {
            Node node = (Node) functionNode.getProp(23);
            functionNode.removeProp(23);
            int lineno = functionNode.getBody().getLineno();
            int column = functionNode.getBody().getColumn();
            this.parser.nestingOfFunction++;
            Node transform = transform(functionNode.getBody());
            List<Object> defaultParams = functionNode.getDefaultParams();
            if (defaultParams != null) {
                int size = defaultParams.size() - 1;
                while (size > 0) {
                    if (defaultParams.get(size) instanceof AstNode) {
                        int i = size - 1;
                        if (defaultParams.get(i) instanceof String) {
                            AstNode astNode = (AstNode) defaultParams.get(size);
                            String str = (String) defaultParams.get(i);
                            z = z2;
                            try {
                                perFunctionVariables = createPerFunctionVariables;
                                try {
                                    transform.addChildToFront(createIf(createBinary(51, this.parser.createName(str), this.parser.createName("undefined")), new Node(Token.EXPR_VOID, createAssignment(99, this.parser.createName(str), transform(astNode)), transform.getLineno(), transform.getColumn()), null, transform.getLineno(), transform.getColumn()));
                                    size -= 2;
                                    z2 = z;
                                    createPerFunctionVariables = perFunctionVariables;
                                } catch (Throwable th) {
                                    th = th;
                                    Parser parser = this.parser;
                                    parser.nestingOfFunction--;
                                    perFunctionVariables.restore();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                perFunctionVariables = createPerFunctionVariables;
                                Parser parser2 = this.parser;
                                parser2.nestingOfFunction--;
                                perFunctionVariables.restore();
                                throw th;
                            }
                        }
                    }
                    perFunctionVariables = createPerFunctionVariables;
                    z = z2;
                    size -= 2;
                    z2 = z;
                    createPerFunctionVariables = perFunctionVariables;
                }
            }
            perFunctionVariables = createPerFunctionVariables;
            boolean z3 = z2;
            List<Node[]> destructuringRvalues = functionNode.getDestructuringRvalues();
            if (destructuringRvalues != null) {
                for (Node[] nodeArr : destructuringRvalues) {
                    Node node2 = nodeArr[0];
                    Node node3 = nodeArr[z3 ? 1 : 0];
                    if (node3 instanceof AstNode) {
                        AstNode astNode2 = (AstNode) node3;
                        node2.replaceChild(astNode2, transform(astNode2));
                    }
                }
            }
            if (node != null) {
                transform.addChildToFront(new Node(Token.EXPR_VOID, node, lineno, column));
            }
            int functionType = functionNode.getFunctionType();
            Node initFunction = initFunction(functionNode, addFunction, transform, functionType);
            if (decompileFunctionHeader != null) {
                this.astNodePos.push(functionNode);
                try {
                    initFunction = createAssignment(99, decompileFunctionHeader, initFunction);
                    this.astNodePos.pop();
                    if (functionType != 2) {
                        initFunction = createExprStatementNoReturn(initFunction, functionNode.getLineno(), functionNode.getColumn());
                    }
                } catch (Throwable th3) {
                    this.astNodePos.pop();
                    throw th3;
                }
            }
            Parser parser3 = this.parser;
            parser3.nestingOfFunction--;
            perFunctionVariables.restore();
            return initFunction;
        } catch (Throwable th4) {
            th = th4;
            perFunctionVariables = createPerFunctionVariables;
        }
    }

    private Node transformFunctionCall(FunctionCall functionCall) {
        this.astNodePos.push(functionCall);
        try {
            Node transform = transform(functionCall.getTarget());
            Node createCallOrNew = createCallOrNew(43, transform);
            createCallOrNew.setLineColumnNumber(functionCall.getLineno(), functionCall.getColumn());
            List<AstNode> arguments = functionCall.getArguments();
            for (int i = 0; i < arguments.size(); i++) {
                createCallOrNew.addChildToBack(transform(arguments.get(i)));
            }
            if (functionCall.isOptionalCall()) {
                createCallOrNew.putIntProp(30, 1);
            }
            if (transform.getIntProp(31, 0) == 1) {
                createCallOrNew.putIntProp(31, 1);
            }
            this.astNodePos.pop();
            return createCallOrNew;
        } catch (Throwable th) {
            this.astNodePos.pop();
            throw th;
        }
    }

    private Node transformGenExpr(GeneratorExpression generatorExpression) {
        FunctionNode functionNode = new FunctionNode();
        functionNode.setSourceName(this.parser.currentScriptOrFn.getNextTempName());
        functionNode.setIsGenerator();
        functionNode.setFunctionType(2);
        functionNode.setRequiresActivation();
        Node decompileFunctionHeader = decompileFunctionHeader(functionNode);
        int addFunction = this.parser.currentScriptOrFn.addFunction(functionNode);
        Parser.PerFunctionVariables createPerFunctionVariables = this.parser.createPerFunctionVariables(functionNode);
        try {
            Node node = (Node) functionNode.getProp(23);
            functionNode.removeProp(23);
            int lineno = generatorExpression.getLineno();
            int column = generatorExpression.getColumn();
            this.parser.nestingOfFunction++;
            Node genExprTransformHelper = genExprTransformHelper(generatorExpression);
            if (node != null) {
                genExprTransformHelper.addChildToFront(new Node(Token.EXPR_VOID, node, lineno, column));
            }
            int functionType = functionNode.getFunctionType();
            Node initFunction = initFunction(functionNode, addFunction, genExprTransformHelper, functionType);
            if (decompileFunctionHeader != null) {
                this.astNodePos.push(functionNode);
                try {
                    initFunction = createAssignment(99, decompileFunctionHeader, initFunction);
                    if (functionType != 2) {
                        initFunction = createExprStatementNoReturn(initFunction, functionNode.getLineno(), functionNode.getColumn());
                    }
                } finally {
                    this.astNodePos.pop();
                }
            }
            Parser parser = this.parser;
            parser.nestingOfFunction--;
            createPerFunctionVariables.restore();
            Node createCallOrNew = createCallOrNew(43, initFunction);
            createCallOrNew.setLineColumnNumber(generatorExpression.getLineno(), generatorExpression.getColumn());
            return createCallOrNew;
        } catch (Throwable th) {
            Parser parser2 = this.parser;
            parser2.nestingOfFunction--;
            createPerFunctionVariables.restore();
            throw th;
        }
    }

    private Node transformGeneratorMethodDefinition(GeneratorMethodDefinition generatorMethodDefinition) {
        return transform(generatorMethodDefinition.getMethodName());
    }

    private Node transformIf(IfStatement ifStatement) {
        return createIf(transform(ifStatement.getCondition()), transform(ifStatement.getThenPart()), ifStatement.getElsePart() != null ? transform(ifStatement.getElsePart()) : null, ifStatement.getLineno(), ifStatement.getColumn());
    }

    private Node transformInfix(InfixExpression infixExpression) {
        Node transform = transform(infixExpression.getLeft());
        Node transform2 = transform(infixExpression.getRight());
        Node createBinary = createBinary(infixExpression.getType(), transform, transform2);
        if (createBinary != transform && createBinary != transform2) {
            createBinary.setLineColumnNumber(infixExpression.getLineno(), infixExpression.getColumn());
        }
        return createBinary;
    }

    private Node transformLabeledStatement(LabeledStatement labeledStatement) {
        Label firstLabel = labeledStatement.getFirstLabel();
        Node transform = transform(labeledStatement.getStatement());
        Node newTarget = Node.newTarget();
        Node node = new Node(Token.BLOCK, firstLabel, transform, newTarget);
        firstLabel.target = newTarget;
        return node;
    }

    private Node transformLetNode(LetNode letNode) {
        this.parser.pushScope(letNode);
        try {
            letNode.addChildToBack(transformVariableInitializers(letNode.getVariables()));
            letNode.getType();
            if (letNode.getBody() != null) {
                letNode.addChildToBack(transform(letNode.getBody()));
            }
            return letNode;
        } finally {
            this.parser.popScope();
        }
    }

    private Node transformLiteral(AstNode astNode) {
        if ((astNode.getParent() instanceof FunctionCall) && astNode.getType() == 79) {
            this.parser.reportError("msg.super.shorthand.function");
        }
        return astNode;
    }

    private Node transformNewExpr(NewExpression newExpression) {
        Node createCallOrNew = createCallOrNew(30, transform(newExpression.getTarget()));
        createCallOrNew.setLineColumnNumber(newExpression.getLineno(), newExpression.getColumn());
        List<AstNode> arguments = newExpression.getArguments();
        for (int i = 0; i < arguments.size(); i++) {
            createCallOrNew.addChildToBack(transform(arguments.get(i)));
        }
        if (newExpression.getInitializer() != null) {
            createCallOrNew.addChildToBack(transformObjectLiteral(newExpression.getInitializer()));
        }
        return createCallOrNew;
    }

    private Node transformObjectLiteral(ObjectLiteral objectLiteral) {
        Object[] objArr;
        int i;
        if (objectLiteral.isDestructuring()) {
            return objectLiteral;
        }
        List<ObjectProperty> elements = objectLiteral.getElements();
        Node node = new Node(72);
        node.setLineColumnNumber(objectLiteral.getLineno(), objectLiteral.getColumn());
        if (elements.isEmpty()) {
            objArr = ScriptRuntime.emptyArgs;
        } else {
            Object[] objArr2 = new Object[elements.size()];
            int i2 = 0;
            for (ObjectProperty objectProperty : elements) {
                Object propKey = Parser.getPropKey(objectProperty.getLeft());
                if (propKey == null) {
                    i = i2 + 1;
                    objArr2[i2] = transform(objectProperty.getLeft());
                } else {
                    i = i2 + 1;
                    objArr2[i2] = propKey;
                }
                i2 = i;
                Node transform = transform(objectProperty.getRight());
                if (objectProperty.isGetterMethod()) {
                    transform = createUnary(Token.GET, transform);
                } else if (objectProperty.isSetterMethod()) {
                    transform = createUnary(Token.SET, transform);
                } else if (objectProperty.isNormalMethod()) {
                    transform = createUnary(Token.METHOD, transform);
                }
                node.addChildToBack(transform);
            }
            objArr = objArr2;
        }
        node.putProp(12, objArr);
        return node;
    }

    private Node transformParenExpr(ParenthesizedExpression parenthesizedExpression) {
        AstNode expression = parenthesizedExpression.getExpression();
        while (expression instanceof ParenthesizedExpression) {
            expression = ((ParenthesizedExpression) expression).getExpression();
        }
        Node transform = transform(expression);
        transform.putProp(19, Boolean.TRUE);
        return transform;
    }

    private Node transformPropertyGet(PropertyGet propertyGet) {
        return createPropertyGet(transform(propertyGet.getTarget()), null, propertyGet.getProperty().getIdentifier(), 0, propertyGet.type);
    }

    private Node transformRegExp(RegExpLiteral regExpLiteral) {
        this.parser.currentScriptOrFn.addRegExp(regExpLiteral);
        return regExpLiteral;
    }

    private Node transformReturn(ReturnStatement returnStatement) {
        AstNode returnValue = returnStatement.getReturnValue();
        return returnValue == null ? new Node(4, returnStatement.getLineno(), returnStatement.getColumn()) : new Node(4, returnValue == null ? null : transform(returnValue), returnStatement.getLineno(), returnStatement.getColumn());
    }

    private Node transformScript(ScriptNode scriptNode) {
        if (this.parser.currentScope != null) {
            Kit.codeBug();
        }
        this.parser.currentScope = scriptNode;
        Node node = new Node(Token.BLOCK);
        Iterator<Node> it = scriptNode.iterator();
        while (it.hasNext()) {
            node.addChildToBack(transform((AstNode) it.next()));
        }
        scriptNode.removeChildren();
        Node firstChild = node.getFirstChild();
        if (firstChild != null) {
            scriptNode.addChildrenToBack(firstChild);
        }
        return scriptNode;
    }

    private Node transformString(StringLiteral stringLiteral) {
        Node newString = Node.newString(stringLiteral.getValue());
        newString.setLineColumnNumber(stringLiteral.getLineno(), stringLiteral.getColumn());
        return newString;
    }

    private Node transformSwitch(SwitchStatement switchStatement) {
        switchStatement.addChildToBack(transform(switchStatement.getExpression()));
        Node node = new Node(Token.BLOCK, switchStatement, switchStatement.getLineno(), switchStatement.getColumn());
        for (SwitchCase switchCase : switchStatement.getCases()) {
            AstNode expression = switchCase.getExpression();
            Node transform = expression != null ? transform(expression) : null;
            List<AstNode> statements = switchCase.getStatements();
            Block block = new Block();
            if (statements != null) {
                Iterator<AstNode> it = statements.iterator();
                while (it.hasNext()) {
                    block.addChildToBack(transform(it.next()));
                }
            }
            addSwitchCase(node, transform, block);
        }
        closeSwitch(node);
        return node;
    }

    private Node transformTemplateLiteral(TemplateLiteral templateLiteral) {
        List<AstNode> elements = templateLiteral.getElements();
        Node newString = Node.newString("");
        for (AstNode astNode : elements) {
            if (astNode.getType() != 181) {
                newString = createBinary(21, newString, transform(astNode));
            } else {
                String value = ((TemplateCharacters) astNode).getValue();
                if (value.length() > 0) {
                    newString = createBinary(21, newString, Node.newString(value));
                }
            }
        }
        return newString;
    }

    private Node transformTemplateLiteralCall(TaggedTemplateLiteral taggedTemplateLiteral) {
        Node transform = transform(taggedTemplateLiteral.getTarget());
        Node createCallOrNew = createCallOrNew(43, transform);
        createCallOrNew.setLineColumnNumber(taggedTemplateLiteral.getLineno(), taggedTemplateLiteral.getColumn());
        if (transform.getIntProp(31, 0) == 1) {
            createCallOrNew.putIntProp(31, 1);
        }
        TemplateLiteral templateLiteral = (TemplateLiteral) taggedTemplateLiteral.getTemplateLiteral();
        List<AstNode> elements = templateLiteral.getElements();
        createCallOrNew.addChildToBack(templateLiteral);
        for (AstNode astNode : elements) {
            if (astNode.getType() != 181) {
                createCallOrNew.addChildToBack(transform(astNode));
            }
        }
        this.parser.currentScriptOrFn.addTemplateLiteral(templateLiteral);
        return createCallOrNew;
    }

    private Node transformThrow(ThrowStatement throwStatement) {
        Node transform = transform(throwStatement.getExpression());
        transform.setLineColumnNumber(throwStatement.getLineno(), throwStatement.getColumn());
        Node node = new Node(55, transform);
        node.setLineColumnNumber(throwStatement.getLineno(), throwStatement.getColumn());
        return node;
    }

    private Node transformTry(TryStatement tryStatement) {
        Node node;
        Node node2;
        Node transform = transform(tryStatement.getTryBlock());
        Block block = new Block();
        Iterator<CatchClause> it = tryStatement.getCatchClauses().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            CatchClause next = it.next();
            Name varName = next.getVarName();
            if (varName != null) {
                Node createName = this.parser.createName(varName.getIdentifier());
                AstNode catchCondition = next.getCatchCondition();
                node = createName;
                node2 = catchCondition != null ? this.transform(catchCondition) : new EmptyExpression();
            } else {
                node = null;
                node2 = null;
            }
            IRFactory iRFactory = this;
            block.addChildToBack(iRFactory.createCatch(node, node2, this.transform(next.getBody()), next.getLineno(), next.getColumn()));
            this = iRFactory;
        }
        IRFactory iRFactory2 = this;
        return iRFactory2.createTryCatchFinally(transform, block, tryStatement.getFinallyBlock() != null ? iRFactory2.transform(tryStatement.getFinallyBlock()) : null, tryStatement.getLineno(), tryStatement.getColumn());
    }

    private Node transformUnary(UnaryExpression unaryExpression) {
        int type = unaryExpression.getType();
        return type == 82 ? transformDefaultXmlNamespace(unaryExpression) : createUnary(type, transform(unaryExpression.getOperand()));
    }

    private Node transformUpdate(UpdateExpression updateExpression) {
        return createIncDec(updateExpression.getType(), updateExpression.isPostfix(), transform(updateExpression.getOperand()));
    }

    private Node transformVariableInitializers(VariableDeclaration variableDeclaration) {
        for (VariableInitializer variableInitializer : variableDeclaration.getVariables()) {
            AstNode target = variableInitializer.getTarget();
            AstNode initializer = variableInitializer.getInitializer();
            Node node = target;
            if (!variableInitializer.isDestructuring()) {
                node = transform(target);
            }
            Node transform = initializer != null ? transform(initializer) : null;
            if (!variableInitializer.isDestructuring()) {
                if (transform != null) {
                    node.addChildToBack(transform);
                }
                variableDeclaration.addChildToBack(node);
            } else if (transform == null) {
                variableDeclaration.addChildToBack(node);
            } else {
                this.astNodePos.push(variableInitializer);
                try {
                    variableDeclaration.addChildToBack(this.parser.createDestructuringAssignment(variableDeclaration.getType(), node, transform, new IRFactory$$ExternalSyntheticLambda0(this)));
                } finally {
                    this.astNodePos.pop();
                }
            }
        }
        return variableDeclaration;
    }

    private Node transformVariables(VariableDeclaration variableDeclaration) {
        transformVariableInitializers(variableDeclaration);
        return variableDeclaration;
    }

    private Node transformWhileLoop(WhileLoop whileLoop) {
        whileLoop.setType(Token.LOOP);
        this.parser.pushScope(whileLoop);
        try {
            return createLoop(whileLoop, 1, transform(whileLoop.getBody()), transform(whileLoop.getCondition()), null, null);
        } finally {
            this.parser.popScope();
        }
    }

    private Node transformWith(WithStatement withStatement) {
        return createWith(transform(withStatement.getExpression()), transform(withStatement.getStatement()), withStatement.getLineno(), withStatement.getColumn());
    }

    private Node transformXmlLiteral(XmlLiteral xmlLiteral) {
        Node node = new Node(30, xmlLiteral.getLineno(), xmlLiteral.getColumn());
        List<XmlFragment> fragments = xmlLiteral.getFragments();
        node.addChildToBack(this.parser.createName(((XmlString) fragments.get(0)).getXml().trim().startsWith("<>") ? "XMLList" : "XML"));
        Node node2 = null;
        for (XmlFragment xmlFragment : fragments) {
            if (xmlFragment instanceof XmlString) {
                String xml = ((XmlString) xmlFragment).getXml();
                node2 = node2 == null ? createString(xml) : createBinary(21, node2, createString(xml));
            } else {
                XmlExpression xmlExpression = (XmlExpression) xmlFragment;
                boolean isXmlAttribute = xmlExpression.isXmlAttribute();
                Node createString = xmlExpression.getExpression() instanceof EmptyExpression ? createString("") : transform(xmlExpression.getExpression());
                node2 = createBinary(21, node2, isXmlAttribute ? createBinary(21, createBinary(21, createString("\""), createUnary(83, createString)), createString("\"")) : createUnary(84, createString));
            }
        }
        node.addChildToBack(node2);
        return node;
    }

    private Node transformXmlMemberGet(XmlMemberGet xmlMemberGet) {
        XmlRef memberRef = xmlMemberGet.getMemberRef();
        Node transform = transform(xmlMemberGet.getLeft());
        int i = memberRef.isAttributeAccess() ? 2 : 0;
        if (xmlMemberGet.getType() == 157) {
            i |= 4;
        }
        return transformXmlRef(transform, memberRef, i);
    }

    private Node transformXmlRef(Node node, XmlRef xmlRef, int i) {
        Name namespace = xmlRef.getNamespace();
        String identifier = namespace != null ? namespace.getIdentifier() : null;
        return xmlRef instanceof XmlPropRef ? createPropertyGet(node, identifier, ((XmlPropRef) xmlRef).getPropName().getIdentifier(), i, xmlRef.type) : createElementGet(node, identifier, transform(((XmlElemRef) xmlRef).getExpression()), i);
    }

    private Node transformYield(Yield yield) {
        Node transform = yield.getValue() == null ? null : transform(yield.getValue());
        return transform != null ? new Node(yield.getType(), transform, yield.getLineno(), yield.getColumn()) : new Node(yield.getType(), yield.getLineno(), yield.getColumn());
    }

    public Node decompileFunctionHeader(FunctionNode functionNode) {
        if (functionNode.getFunctionName() == null && functionNode.getMemberExprNode() != null) {
            return transform(functionNode.getMemberExprNode());
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isDestructuring(Node node) {
        return (node instanceof DestructuringForm) && ((DestructuringForm) node).isDestructuring();
    }

    public ScriptNode transformTree(AstRoot astRoot) {
        Parser parser = this.parser;
        parser.currentScriptOrFn = astRoot;
        parser.inUseStrictDirective = astRoot.isInStrictMode();
        this.astNodePos.push(astRoot);
        try {
            try {
                return (ScriptNode) transform(astRoot);
            } catch (Parser.ParserException unused) {
                this.parser.reportErrorsIfExists(astRoot.getLineno());
                this.astNodePos.pop();
                return null;
            }
        } finally {
            this.astNodePos.pop();
        }
    }

    private Node transformBigInt(BigIntLiteral bigIntLiteral) {
        return bigIntLiteral;
    }

    private Node transformBreak(BreakStatement breakStatement) {
        return breakStatement;
    }

    private Node transformContinue(ContinueStatement continueStatement) {
        return continueStatement;
    }

    private Node transformName(Name name) {
        return name;
    }

    private Node transformNumber(NumberLiteral numberLiteral) {
        return numberLiteral;
    }

    @Deprecated
    public IRFactory(CompilerEnvirons compilerEnvirons, String str, ErrorReporter errorReporter) {
        this(compilerEnvirons, null, str, errorReporter);
    }

    public IRFactory(CompilerEnvirons compilerEnvirons, String str) {
        this(compilerEnvirons, null, str, compilerEnvirons.getErrorReporter());
    }

    private Node transformXmlRef(XmlRef xmlRef) {
        return transformXmlRef(null, xmlRef, xmlRef.isAttributeAccess() ? 2 : 0);
    }
}
