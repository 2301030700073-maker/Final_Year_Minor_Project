package org.mozilla.javascript;

import androidx.compose.ui.node.Owner;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.mozilla.javascript.Token;
import org.mozilla.javascript.ast.ArrayComprehension;
import org.mozilla.javascript.ast.ArrayLiteral;
import org.mozilla.javascript.ast.Assignment;
import org.mozilla.javascript.ast.AstNode;
import org.mozilla.javascript.ast.AstRoot;
import org.mozilla.javascript.ast.BigIntLiteral;
import org.mozilla.javascript.ast.Block;
import org.mozilla.javascript.ast.BreakStatement;
import org.mozilla.javascript.ast.Comment;
import org.mozilla.javascript.ast.ComputedPropertyKey;
import org.mozilla.javascript.ast.ConditionalExpression;
import org.mozilla.javascript.ast.ContinueStatement;
import org.mozilla.javascript.ast.DestructuringForm;
import org.mozilla.javascript.ast.DoLoop;
import org.mozilla.javascript.ast.ElementGet;
import org.mozilla.javascript.ast.EmptyExpression;
import org.mozilla.javascript.ast.EmptyStatement;
import org.mozilla.javascript.ast.ErrorNode;
import org.mozilla.javascript.ast.ExpressionStatement;
import org.mozilla.javascript.ast.FunctionCall;
import org.mozilla.javascript.ast.FunctionNode;
import org.mozilla.javascript.ast.GeneratorExpression;
import org.mozilla.javascript.ast.GeneratorExpressionLoop;
import org.mozilla.javascript.ast.GeneratorMethodDefinition;
import org.mozilla.javascript.ast.IdeErrorReporter;
import org.mozilla.javascript.ast.IfStatement;
import org.mozilla.javascript.ast.InfixExpression;
import org.mozilla.javascript.ast.Jump;
import org.mozilla.javascript.ast.KeywordLiteral;
import org.mozilla.javascript.ast.Label;
import org.mozilla.javascript.ast.LabeledStatement;
import org.mozilla.javascript.ast.LetNode;
import org.mozilla.javascript.ast.Loop;
import org.mozilla.javascript.ast.Name;
import org.mozilla.javascript.ast.NewExpression;
import org.mozilla.javascript.ast.NumberLiteral;
import org.mozilla.javascript.ast.ObjectLiteral;
import org.mozilla.javascript.ast.ObjectProperty;
import org.mozilla.javascript.ast.ParenthesizedExpression;
import org.mozilla.javascript.ast.PropertyGet;
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
import org.mozilla.javascript.ast.UnaryExpression;
import org.mozilla.javascript.ast.UpdateExpression;
import org.mozilla.javascript.ast.VariableDeclaration;
import org.mozilla.javascript.ast.VariableInitializer;
import org.mozilla.javascript.ast.WhileLoop;
import org.mozilla.javascript.ast.WithStatement;
import org.mozilla.javascript.ast.XmlDotQuery;
import org.mozilla.javascript.ast.XmlElemRef;
import org.mozilla.javascript.ast.XmlExpression;
import org.mozilla.javascript.ast.XmlLiteral;
import org.mozilla.javascript.ast.XmlMemberGet;
import org.mozilla.javascript.ast.XmlPropRef;
import org.mozilla.javascript.ast.XmlRef;
import org.mozilla.javascript.ast.XmlString;
import org.mozilla.javascript.ast.Yield;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Parser {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ARGC_LIMIT = 65536;
    static final int CLEAR_TI_MASK = 65535;
    private static final int GET_ENTRY = 2;
    private static final int METHOD_ENTRY = 8;
    private static final int PROP_ENTRY = 1;
    private static final int SET_ENTRY = 4;
    static final int TI_AFTER_EOL = 65536;
    static final int TI_CHECK_LABEL = 131072;
    boolean calledByCompileFunction;
    CompilerEnvirons compilerEnv;
    private int currentFlaggedToken;
    private Comment currentJsDocComment;
    private LabeledStatement currentLabel;
    CurrentPositionReporter currentPos;
    Scope currentScope;
    ScriptNode currentScriptOrFn;
    private int currentToken;
    private boolean defaultUseStrictDirective;
    private int endFlags;
    private IdeErrorReporter errorCollector;
    private ErrorReporter errorReporter;
    private boolean inDestructuringAssignment;
    private boolean inForInit;
    protected boolean inUseStrictDirective;
    private boolean insideMethod;
    private Map<String, LabeledStatement> labelSet;
    private int lastTokenColumn;
    private int lastTokenLineno;
    private List<Jump> loopAndSwitchSet;
    private List<Loop> loopSet;
    protected int nestingOfFunction;
    protected int nestingOfFunctionParams;
    private boolean parseFinished;
    private int prevNameTokenColumn;
    private int prevNameTokenLineno;
    private int prevNameTokenStart;
    private String prevNameTokenString;
    private List<Comment> scannedComments;
    private char[] sourceChars;
    private String sourceURI;
    private int syntaxErrorCount;
    private TokenStream ts;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface CurrentPositionReporter {
        int getLength();

        String getLine();

        int getLineno();

        int getOffset();

        int getPosition();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class ParserException extends RuntimeException {
        private static final long serialVersionUID = 5882582646773765630L;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class PerFunctionVariables {
        private Scope savedCurrentScope;
        private ScriptNode savedCurrentScriptOrFn;
        private int savedEndFlags;
        private boolean savedInForInit;
        private Map<String, LabeledStatement> savedLabelSet;
        private List<Jump> savedLoopAndSwitchSet;
        private List<Loop> savedLoopSet;

        public PerFunctionVariables(FunctionNode functionNode) {
            this.savedCurrentScriptOrFn = Parser.this.currentScriptOrFn;
            Parser.this.currentScriptOrFn = functionNode;
            this.savedCurrentScope = Parser.this.currentScope;
            Parser.this.currentScope = functionNode;
            this.savedLabelSet = Parser.this.labelSet;
            Parser.this.labelSet = null;
            this.savedLoopSet = Parser.this.loopSet;
            Parser.this.loopSet = null;
            this.savedLoopAndSwitchSet = Parser.this.loopAndSwitchSet;
            Parser.this.loopAndSwitchSet = null;
            this.savedEndFlags = Parser.this.endFlags;
            Parser.this.endFlags = 0;
            this.savedInForInit = Parser.this.inForInit;
            Parser.this.inForInit = false;
        }

        public void restore() {
            Parser parser = Parser.this;
            parser.currentScriptOrFn = this.savedCurrentScriptOrFn;
            parser.currentScope = this.savedCurrentScope;
            parser.labelSet = this.savedLabelSet;
            Parser.this.loopSet = this.savedLoopSet;
            Parser.this.loopAndSwitchSet = this.savedLoopAndSwitchSet;
            Parser.this.endFlags = this.savedEndFlags;
            Parser.this.inForInit = this.savedInForInit;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Transformer {
        Node transform(AstNode astNode);
    }

    public Parser(CompilerEnvirons compilerEnvirons, ErrorReporter errorReporter) {
        this.currentFlaggedToken = 0;
        this.prevNameTokenString = "";
        this.lastTokenLineno = -1;
        this.lastTokenColumn = -1;
        this.compilerEnv = compilerEnvirons;
        this.errorReporter = errorReporter;
        if (errorReporter instanceof IdeErrorReporter) {
            this.errorCollector = (IdeErrorReporter) errorReporter;
        }
    }

    private AstNode addExpr() {
        AstNode mulExpr = mulExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            if (peekToken != 21 && peekToken != 22) {
                return mulExpr;
            }
            consumeToken();
            mulExpr = new InfixExpression(peekToken, mulExpr, mulExpr(), i);
        }
    }

    private AstNode andExpr() {
        AstNode bitOrExpr = bitOrExpr();
        if (!matchToken(Token.AND, true)) {
            return bitOrExpr;
        }
        return new InfixExpression(Token.AND, bitOrExpr, andExpr(), this.ts.tokenBeg);
    }

    /* JADX WARN: Finally extract failed */
    private List<AstNode> argumentList() {
        if (matchToken(97, true)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = this.inForInit;
        this.inForInit = false;
        do {
            try {
                if (peekToken() == 97) {
                    break;
                }
                if (peekToken() == 78) {
                    reportError("msg.yield.parenthesized");
                }
                AstNode assignExpr = assignExpr();
                if (peekToken() == 132) {
                    try {
                        arrayList.add(generatorExpression(assignExpr, 0, true));
                    } catch (IOException unused) {
                    }
                } else {
                    arrayList.add(assignExpr);
                }
            } catch (Throwable th) {
                this.inForInit = z;
                throw th;
            }
        } while (matchToken(98, true));
        this.inForInit = z;
        mustMatchToken(97, "msg.no.paren.arg", true);
        return arrayList;
    }

    private AstNode arrayComprehension(AstNode astNode, int i) {
        int i2;
        ConditionData conditionData;
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 132) {
            arrayList.add(arrayComprehensionLoop());
        }
        if (peekToken() == 125) {
            consumeToken();
            i2 = this.ts.tokenBeg - i;
            conditionData = condition();
        } else {
            i2 = -1;
            conditionData = null;
        }
        mustMatchToken(93, "msg.no.bracket.arg", true);
        ArrayComprehension arrayComprehension = new ArrayComprehension(i, this.ts.tokenEnd - i);
        arrayComprehension.setResult(astNode);
        arrayComprehension.setLoops(arrayList);
        if (conditionData != null) {
            arrayComprehension.setIfPosition(i2);
            arrayComprehension.setFilter(conditionData.condition);
            arrayComprehension.setFilterLp(conditionData.lp - i);
            arrayComprehension.setFilterRp(conditionData.rp - i);
        }
        return arrayComprehension;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:12:0x003e, B:14:0x0046, B:15:0x004d, B:21:0x005b, B:22:0x0071, B:24:0x0077, B:25:0x0082, B:30:0x00b1, B:32:0x00b8, B:34:0x00c6, B:35:0x00cd, B:38:0x00e5, B:45:0x008e, B:46:0x0095, B:49:0x00a5, B:50:0x00aa, B:51:0x0062, B:52:0x006a, B:54:0x003a), top: B:5:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:12:0x003e, B:14:0x0046, B:15:0x004d, B:21:0x005b, B:22:0x0071, B:24:0x0077, B:25:0x0082, B:30:0x00b1, B:32:0x00b8, B:34:0x00c6, B:35:0x00cd, B:38:0x00e5, B:45:0x008e, B:46:0x0095, B:49:0x00a5, B:50:0x00aa, B:51:0x0062, B:52:0x006a, B:54:0x003a), top: B:5:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c6 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:12:0x003e, B:14:0x0046, B:15:0x004d, B:21:0x005b, B:22:0x0071, B:24:0x0077, B:25:0x0082, B:30:0x00b1, B:32:0x00b8, B:34:0x00c6, B:35:0x00cd, B:38:0x00e5, B:45:0x008e, B:46:0x0095, B:49:0x00a5, B:50:0x00aa, B:51:0x0062, B:52:0x006a, B:54:0x003a), top: B:5:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:12:0x003e, B:14:0x0046, B:15:0x004d, B:21:0x005b, B:22:0x0071, B:24:0x0077, B:25:0x0082, B:30:0x00b1, B:32:0x00b8, B:34:0x00c6, B:35:0x00cd, B:38:0x00e5, B:45:0x008e, B:46:0x0095, B:49:0x00a5, B:50:0x00aa, B:51:0x0062, B:52:0x006a, B:54:0x003a), top: B:5:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x006a A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:6:0x001a, B:9:0x0023, B:11:0x0031, B:12:0x003e, B:14:0x0046, B:15:0x004d, B:21:0x005b, B:22:0x0071, B:24:0x0077, B:25:0x0082, B:30:0x00b1, B:32:0x00b8, B:34:0x00c6, B:35:0x00cd, B:38:0x00e5, B:45:0x008e, B:46:0x0095, B:49:0x00a5, B:50:0x00aa, B:51:0x0062, B:52:0x006a, B:54:0x003a), top: B:5:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.ArrayComprehensionLoop arrayComprehensionLoop() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.arrayComprehensionLoop():org.mozilla.javascript.ast.ArrayComprehensionLoop");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
    
        r14 = r4.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0092, code lost:
    
        if (r14.hasNext() == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0094, code lost:
    
        r5.addElement((org.mozilla.javascript.ast.AstNode) r14.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009e, code lost:
    
        r5.setLength(r0 - r1);
        r5.setLineColumnNumber(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a5, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstNode arrayLiteral() {
        /*
            r14 = this;
            int r0 = r14.currentToken
            r1 = 92
            if (r0 == r1) goto L9
            r14.codeBug()
        L9:
            org.mozilla.javascript.TokenStream r0 = r14.ts
            int r1 = r0.tokenBeg
            int r0 = r0.tokenEnd
            int r2 = r14.lineNumber()
            int r3 = r14.columnNumber()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            org.mozilla.javascript.ast.ArrayLiteral r5 = new org.mozilla.javascript.ast.ArrayLiteral
            r5.<init>(r1)
            r6 = 0
            r7 = -1
            r8 = 1
            r10 = r6
            r11 = r7
        L26:
            r9 = r8
        L27:
            int r12 = r14.peekToken()
            r13 = 98
            if (r12 != r13) goto L48
            r14.consumeToken()
            org.mozilla.javascript.TokenStream r11 = r14.ts
            int r11 = r11.tokenEnd
            if (r9 != 0) goto L39
            goto L26
        L39:
            org.mozilla.javascript.ast.EmptyExpression r12 = new org.mozilla.javascript.ast.EmptyExpression
            org.mozilla.javascript.TokenStream r13 = r14.ts
            int r13 = r13.tokenBeg
            r12.<init>(r13, r8)
            r4.add(r12)
            int r10 = r10 + 1
            goto L27
        L48:
            r13 = 175(0xaf, float:2.45E-43)
            if (r12 != r13) goto L50
            r14.consumeToken()
            goto L27
        L50:
            r13 = 93
            if (r12 != r13) goto L6c
            r14.consumeToken()
            org.mozilla.javascript.TokenStream r0 = r14.ts
            int r0 = r0.tokenEnd
            int r6 = r4.size()
            int r6 = r6 + r9
            r5.setDestructuringLength(r6)
            r5.setSkipCount(r10)
            if (r11 == r7) goto L8a
            r14.warnTrailingComma(r1, r4, r11)
            goto L8a
        L6c:
            r11 = 132(0x84, float:1.85E-43)
            if (r12 != r11) goto L83
            if (r9 != 0) goto L83
            int r11 = r4.size()
            if (r11 != r8) goto L83
            java.lang.Object r0 = r4.get(r6)
            org.mozilla.javascript.ast.AstNode r0 = (org.mozilla.javascript.ast.AstNode) r0
            org.mozilla.javascript.ast.AstNode r14 = r14.arrayComprehension(r0, r1)
            return r14
        L83:
            java.lang.String r11 = "msg.no.bracket.arg"
            if (r12 != 0) goto La6
            r14.reportError(r11)
        L8a:
            java.util.Iterator r14 = r4.iterator()
        L8e:
            boolean r4 = r14.hasNext()
            if (r4 == 0) goto L9e
            java.lang.Object r4 = r14.next()
            org.mozilla.javascript.ast.AstNode r4 = (org.mozilla.javascript.ast.AstNode) r4
            r5.addElement(r4)
            goto L8e
        L9e:
            int r0 = r0 - r1
            r5.setLength(r0)
            r5.setLineColumnNumber(r2, r3)
            return r5
        La6:
            if (r9 != 0) goto Lab
            r14.reportError(r11)
        Lab:
            org.mozilla.javascript.ast.AstNode r9 = r14.assignExpr()
            r4.add(r9)
            r9 = r6
            r11 = r7
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.arrayLiteral():org.mozilla.javascript.ast.AstNode");
    }

    private AstNode arrowFunction(AstNode astNode, int i, int i2) {
        Parser parser;
        int lineNumber = lineNumber();
        int position = astNode != null ? astNode.getPosition() : -1;
        FunctionNode functionNode = new FunctionNode(position);
        functionNode.setFunctionType(4);
        functionNode.setJsDocNode(getAndResetJsDoc());
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashSet hashSet = new HashSet();
        PerFunctionVariables perFunctionVariables = new PerFunctionVariables(functionNode);
        try {
            if (astNode instanceof ParenthesizedExpression) {
                functionNode.setParens(0, astNode.getLength());
                if (astNode.getIntProp(28, 0) == 1) {
                    functionNode.putIntProp(28, 1);
                }
                AstNode expression = ((ParenthesizedExpression) astNode).getExpression();
                if (expression instanceof EmptyExpression) {
                    parser = this;
                } else {
                    parser = this;
                    parser.arrowFunctionParams(functionNode, expression, hashMap, hashMap2, hashSet);
                }
            } else {
                parser = this;
                parser.arrowFunctionParams(functionNode, astNode, hashMap, hashMap2, hashSet);
            }
            if (!hashMap.isEmpty()) {
                Node node = new Node(98);
                for (Map.Entry entry : hashMap.entrySet()) {
                    node.addChildToBack(parser.createDestructuringAssignment(135, (Node) entry.getValue(), parser.createName((String) entry.getKey()), (AstNode) hashMap2.get(entry.getKey())));
                }
                functionNode.putProp(23, node);
            }
            AstNode parseFunctionBody = parser.parseFunctionBody(4, functionNode);
            functionNode.setBody(parseFunctionBody);
            int position2 = parseFunctionBody.getPosition() + position + parseFunctionBody.getLength();
            functionNode.setRawSourceBounds(position, position2);
            functionNode.setLength(position2 - position);
            perFunctionVariables.restore();
            if (functionNode.isGenerator()) {
                parser.reportError("msg.arrowfunction.generator");
                return parser.makeErrorNode();
            }
            functionNode.setSourceName(parser.sourceURI);
            functionNode.setBaseLineno(lineNumber);
            functionNode.setEndLineno(parser.lineNumber());
            functionNode.setLineColumnNumber(i, i2);
            return functionNode;
        } catch (Throwable th) {
            perFunctionVariables.restore();
            throw th;
        }
    }

    private void arrowFunctionParams(FunctionNode functionNode, AstNode astNode, Map<String, Node> map, Map<String, AstNode> map2, Set<String> set) {
        if ((astNode instanceof ArrayLiteral) || (astNode instanceof ObjectLiteral)) {
            markDestructuring(astNode);
            functionNode.addParam(astNode);
            String nextTempName = this.currentScriptOrFn.getNextTempName();
            defineSymbol(96, nextTempName, false);
            map.put(nextTempName, astNode);
            return;
        }
        if ((astNode instanceof InfixExpression) && astNode.getType() == 98) {
            InfixExpression infixExpression = (InfixExpression) astNode;
            arrowFunctionParams(functionNode, infixExpression.getLeft(), map, map2, set);
            arrowFunctionParams(functionNode, infixExpression.getRight(), map, map2, set);
            return;
        }
        if (astNode instanceof Name) {
            functionNode.addParam(astNode);
            String identifier = ((Name) astNode).getIdentifier();
            defineSymbol(96, identifier);
            if (this.inUseStrictDirective) {
                if ("eval".equals(identifier) || "arguments".equals(identifier)) {
                    reportError("msg.bad.id.strict", identifier);
                }
                if (set.contains(identifier)) {
                    addError("msg.dup.param.strict", identifier);
                }
                set.add(identifier);
                return;
            }
            return;
        }
        if (!(astNode instanceof Assignment)) {
            reportError("msg.no.parm", astNode.getPosition(), astNode.getLength());
            functionNode.addParam(makeErrorNode());
            return;
        }
        if (this.compilerEnv.getLanguageVersion() < 200) {
            reportError("msg.default.args");
            return;
        }
        Assignment assignment = (Assignment) astNode;
        AstNode right = assignment.getRight();
        AstNode left = assignment.getLeft();
        if (left instanceof Name) {
            functionNode.putDefaultParams(((Name) left).getIdentifier(), right);
            arrowFunctionParams(functionNode, left, map, map2, set);
            return;
        }
        if (!(left instanceof ArrayLiteral) && !(left instanceof ObjectLiteral)) {
            reportError("msg.no.parm", astNode.getPosition(), astNode.getLength());
            functionNode.addParam(makeErrorNode());
            return;
        }
        markDestructuring(left);
        functionNode.addParam(left);
        String nextTempName2 = this.currentScriptOrFn.getNextTempName();
        defineSymbol(96, nextTempName2, false);
        map.put(nextTempName2, left);
        map2.put(nextTempName2, right);
    }

    private AstNode assignExpr() {
        boolean z;
        int peekToken = peekToken();
        if (peekToken == 78) {
            return returnOrYield(peekToken, true);
        }
        TokenStream tokenStream = this.ts;
        int i = tokenStream.lineno;
        int tokenColumn = tokenStream.getTokenColumn();
        AstNode condExpr = condExpr();
        int peekTokenOrEOL = peekTokenOrEOL();
        if (peekTokenOrEOL == 1) {
            peekTokenOrEOL = peekToken();
            z = true;
        } else {
            z = false;
        }
        if (99 <= peekTokenOrEOL && peekTokenOrEOL <= 114) {
            consumeToken();
            Comment andResetJsDoc = getAndResetJsDoc();
            markDestructuring(condExpr);
            int i2 = this.ts.tokenBeg;
            if (isNotValidSimpleAssignmentTarget(condExpr)) {
                reportError("msg.syntax.invalid.assignment.lhs");
            }
            Assignment assignment = new Assignment(peekTokenOrEOL, condExpr, assignExpr(), i2);
            if (andResetJsDoc != null) {
                assignment.setJsDocNode(andResetJsDoc);
            }
            return assignment;
        }
        if (peekTokenOrEOL == 91) {
            if (this.currentJsDocComment != null) {
                condExpr.setJsDocNode(getAndResetJsDoc());
                return condExpr;
            }
        } else {
            if (!z && peekTokenOrEOL == 178) {
                consumeToken();
                return arrowFunction(condExpr, i, tokenColumn);
            }
            if (condExpr.getIntProp(29, 0) == 1 && !this.inDestructuringAssignment) {
                reportError("msg.syntax");
            }
        }
        return condExpr;
    }

    private AstNode attributeAccess() {
        int nextToken = nextToken();
        int i = this.ts.tokenBeg;
        if (nextToken == 23) {
            saveNameTokenData(i, "*", lineNumber(), columnNumber());
            return propertyName(i, 0);
        }
        if (nextToken == 44) {
            return propertyName(i, 0);
        }
        if (nextToken == 92) {
            return xmlElemRef(i, null, -1);
        }
        reportError("msg.no.name.after.xmlAttr");
        return makeErrorNode();
    }

    private void autoInsertSemicolon(AstNode astNode) {
        int peekFlaggedToken = peekFlaggedToken();
        int position = astNode.getPosition();
        int i = CLEAR_TI_MASK & peekFlaggedToken;
        if (i != -1 && i != 0) {
            if (i == 91) {
                consumeToken();
                astNode.setLength(this.ts.tokenEnd - position);
                return;
            } else if (i != 95) {
                if ((peekFlaggedToken & 65536) == 0) {
                    reportError("msg.no.semi.stmt");
                    return;
                } else {
                    warnMissingSemi(position, nodeEnd(astNode));
                    return;
                }
            }
        }
        warnMissingSemi(position, Math.max(position + 1, nodeEnd(astNode)));
    }

    private AstNode bitAndExpr() {
        AstNode eqExpr = eqExpr();
        while (matchToken(11, true)) {
            eqExpr = new InfixExpression(11, eqExpr, eqExpr(), this.ts.tokenBeg);
        }
        return eqExpr;
    }

    private AstNode bitOrExpr() {
        AstNode bitXorExpr = bitXorExpr();
        while (matchToken(9, true)) {
            bitXorExpr = new InfixExpression(9, bitXorExpr, bitXorExpr(), this.ts.tokenBeg);
        }
        return bitXorExpr;
    }

    private AstNode bitXorExpr() {
        AstNode bitAndExpr = bitAndExpr();
        while (matchToken(10, true)) {
            bitAndExpr = new InfixExpression(10, bitAndExpr, bitAndExpr(), this.ts.tokenBeg);
        }
        return bitAndExpr;
    }

    private AstNode block() {
        if (this.currentToken != 94) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.tokenBeg;
        Scope scope = new Scope(i);
        scope.setLineColumnNumber(lineNumber(), columnNumber());
        pushScope(scope);
        try {
            statements(scope);
            mustMatchToken(95, "msg.no.brace.block", true);
            scope.setLength(this.ts.tokenEnd - i);
            return scope;
        } finally {
            popScope();
        }
    }

    private BreakStatement breakStatement() {
        int i;
        Name name;
        if (this.currentToken != 133) {
            codeBug();
        }
        consumeToken();
        int lineNumber = lineNumber();
        TokenStream tokenStream = this.ts;
        int i2 = tokenStream.tokenBeg;
        int i3 = tokenStream.tokenEnd;
        int columnNumber = columnNumber();
        if (peekTokenOrEOL() == 44) {
            name = createNameNode();
            i = getNodeEnd(name);
        } else {
            i = i3;
            name = null;
        }
        LabeledStatement matchJumpLabelName = matchJumpLabelName();
        Jump firstLabel = matchJumpLabelName != null ? matchJumpLabelName.getFirstLabel() : null;
        if (firstLabel == null && name == null) {
            List<Jump> list = this.loopAndSwitchSet;
            if (list == null || list.size() == 0) {
                reportError("msg.bad.break", i2, i - i2);
            } else {
                firstLabel = this.loopAndSwitchSet.get(r5.size() - 1);
            }
        }
        if (name != null) {
            name.setLineColumnNumber(lineNumber(), columnNumber());
        }
        BreakStatement breakStatement = new BreakStatement(i2, i - i2);
        breakStatement.setBreakLabel(name);
        if (firstLabel != null) {
            breakStatement.setBreakTarget(firstLabel);
        }
        breakStatement.setLineColumnNumber(lineNumber, columnNumber);
        return breakStatement;
    }

    private void checkBadIncDec(UpdateExpression updateExpression) {
        int type = removeParens(updateExpression.getOperand()).getType();
        if (type == 44 || type == 33 || type == 39 || type == 73 || type == 43) {
            return;
        }
        reportError(updateExpression.getType() == 119 ? "msg.bad.incr" : "msg.bad.decr");
    }

    private void checkCallRequiresActivation(AstNode astNode) {
        if ((astNode.getType() == 44 && "eval".equals(((Name) astNode).getIdentifier())) || (astNode.getType() == 33 && "eval".equals(((PropertyGet) astNode).getProperty().getIdentifier()))) {
            setRequiresActivation();
        }
    }

    private RuntimeException codeBug() {
        TokenStream tokenStream = this.ts;
        throw Kit.codeBug("ts.cursor=" + tokenStream.cursor + ", ts.tokenBeg=" + tokenStream.tokenBeg + ", currentToken=" + this.currentToken);
    }

    private int columnNumber() {
        return this.lastTokenColumn;
    }

    private AstNode condExpr() {
        AstNode nullishCoalescingExpr = nullishCoalescingExpr();
        if (!matchToken(Token.HOOK, true)) {
            return nullishCoalescingExpr;
        }
        int i = this.ts.tokenBeg;
        boolean z = this.inForInit;
        this.inForInit = false;
        try {
            AstNode assignExpr = assignExpr();
            this.inForInit = z;
            int i2 = mustMatchToken(116, "msg.no.colon.cond", true) ? this.ts.tokenBeg : -1;
            AstNode assignExpr2 = assignExpr();
            int position = nullishCoalescingExpr.getPosition();
            ConditionalExpression conditionalExpression = new ConditionalExpression(position, getNodeEnd(assignExpr2) - position);
            conditionalExpression.setLineColumnNumber(nullishCoalescingExpr.getLineno(), nullishCoalescingExpr.getColumn());
            conditionalExpression.setTestExpression(nullishCoalescingExpr);
            conditionalExpression.setTrueExpression(assignExpr);
            conditionalExpression.setFalseExpression(assignExpr2);
            conditionalExpression.setQuestionMarkPosition(i - position);
            conditionalExpression.setColonPosition(i2 - position);
            return conditionalExpression;
        } catch (Throwable th) {
            this.inForInit = z;
            throw th;
        }
    }

    private ConditionData condition() {
        ConditionData conditionData = new ConditionData(0);
        if (mustMatchToken(96, "msg.no.paren.cond", true)) {
            conditionData.lp = this.ts.tokenBeg;
        }
        conditionData.condition = expr(false);
        if (mustMatchToken(97, "msg.no.paren.after.cond", true)) {
            conditionData.rp = this.ts.tokenBeg;
        }
        AstNode astNode = conditionData.condition;
        if (astNode instanceof Assignment) {
            addStrictWarning("msg.equal.as.assign", "", astNode.getPosition(), conditionData.condition.getLength());
        }
        return conditionData;
    }

    private void consumeToken() {
        this.currentFlaggedToken = 0;
        this.lastTokenLineno = this.ts.getTokenStartLineno();
        this.lastTokenColumn = this.ts.getTokenColumn();
    }

    private ContinueStatement continueStatement() {
        int i;
        Name name;
        if (this.currentToken != 134) {
            codeBug();
        }
        consumeToken();
        int lineNumber = lineNumber();
        TokenStream tokenStream = this.ts;
        int i2 = tokenStream.tokenBeg;
        int i3 = tokenStream.tokenEnd;
        int columnNumber = columnNumber();
        Loop loop = null;
        if (peekTokenOrEOL() == 44) {
            name = createNameNode();
            i = getNodeEnd(name);
        } else {
            i = i3;
            name = null;
        }
        LabeledStatement matchJumpLabelName = matchJumpLabelName();
        if (matchJumpLabelName == null && name == null) {
            List<Loop> list = this.loopSet;
            if (list == null || list.size() == 0) {
                reportError("msg.continue.outside");
            } else {
                loop = this.loopSet.get(r5.size() - 1);
            }
        } else {
            if (matchJumpLabelName == null || !(matchJumpLabelName.getStatement() instanceof Loop)) {
                reportError("msg.continue.nonloop", i2, i - i2);
            }
            if (matchJumpLabelName != null) {
                loop = (Loop) matchJumpLabelName.getStatement();
            }
        }
        if (name != null) {
            name.setLineColumnNumber(lineNumber(), columnNumber());
        }
        ContinueStatement continueStatement = new ContinueStatement(i2, i - i2);
        if (loop != null) {
            continueStatement.setTarget(loop);
        }
        continueStatement.setLabel(name);
        continueStatement.setLineColumnNumber(lineNumber, columnNumber);
        return continueStatement;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.Name createNameNode(boolean r7, int r8) {
        /*
            r6 = this;
            org.mozilla.javascript.TokenStream r0 = r6.ts
            int r1 = r0.tokenBeg
            java.lang.String r0 = r0.getString()
            int r2 = r6.lineNumber()
            int r3 = r6.columnNumber()
            java.lang.String r4 = r6.prevNameTokenString
            java.lang.String r5 = ""
            boolean r4 = r5.equals(r4)
            if (r4 != 0) goto L2b
            int r1 = r6.prevNameTokenStart
            java.lang.String r0 = r6.prevNameTokenString
            int r2 = r6.prevNameTokenLineno
            int r3 = r6.prevNameTokenColumn
            r4 = 0
            r6.prevNameTokenStart = r4
            r6.prevNameTokenString = r5
            r6.prevNameTokenLineno = r4
            r6.prevNameTokenColumn = r4
        L2b:
            if (r0 != 0) goto L39
            org.mozilla.javascript.CompilerEnvirons r4 = r6.compilerEnv
            boolean r4 = r4.isIdeMode()
            if (r4 == 0) goto L36
            goto L3a
        L36:
            r6.codeBug()
        L39:
            r5 = r0
        L3a:
            org.mozilla.javascript.ast.Name r0 = new org.mozilla.javascript.ast.Name
            r0.<init>(r1, r5)
            r0.setLineColumnNumber(r2, r3)
            if (r7 == 0) goto L47
            r6.checkActivationName(r5, r8)
        L47:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.createNameNode(boolean, int):org.mozilla.javascript.ast.Name");
    }

    private AstNode createNumericLiteral(int i, boolean z) {
        AstNode numberLiteral;
        String string = this.ts.getString();
        if (this.inUseStrictDirective && this.ts.isNumericOldOctal() && (this.compilerEnv.getLanguageVersion() >= 200 || !z)) {
            if (i == 89) {
                reportError("msg.no.old.octal.bigint");
            } else {
                reportError("msg.no.old.octal.strict");
            }
        }
        if (this.compilerEnv.getLanguageVersion() >= 200 || !z) {
            if (this.ts.isNumericBinary()) {
                string = Owner.CC.m("0b", string);
            } else if (this.ts.isNumericOldOctal()) {
                string = Owner.CC.m("0", string);
            } else if (this.ts.isNumericOctal()) {
                string = Owner.CC.m("0o", string);
            } else if (this.ts.isNumericHex()) {
                string = Owner.CC.m("0x", string);
            }
        }
        if (i == 89) {
            numberLiteral = new BigIntLiteral(this.ts.tokenBeg, Owner.CC.m$1(string, "n"), this.ts.getBigInt());
        } else {
            TokenStream tokenStream = this.ts;
            numberLiteral = new NumberLiteral(tokenStream.tokenBeg, string, tokenStream.getNumber());
        }
        numberLiteral.setLineColumnNumber(lineNumber(), columnNumber());
        return numberLiteral;
    }

    private StringLiteral createStringLiteral() {
        TokenStream tokenStream = this.ts;
        int i = tokenStream.tokenBeg;
        StringLiteral stringLiteral = new StringLiteral(i, tokenStream.tokenEnd - i);
        stringLiteral.setLineColumnNumber(lineNumber(), columnNumber());
        stringLiteral.setValue(this.ts.getString());
        stringLiteral.setQuoteCharacter(this.ts.getQuoteChar());
        return stringLiteral;
    }

    private TemplateCharacters createTemplateLiteralCharacters(int i) {
        TemplateCharacters templateCharacters = new TemplateCharacters(i, (this.ts.tokenEnd - i) - 1);
        templateCharacters.setValue(this.ts.getString());
        templateCharacters.setRawValue(this.ts.getRawString());
        return templateCharacters;
    }

    private AstNode defaultXmlNamespace() {
        if (this.currentToken != 129) {
            codeBug();
        }
        consumeToken();
        mustHaveXML();
        setRequiresActivation();
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        int i = this.ts.tokenBeg;
        if (!matchToken(44, true) || !"xml".equals(this.ts.getString())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(44, true) || !"namespace".equals(this.ts.getString())) {
            reportError("msg.bad.namespace");
        }
        if (!matchToken(99, true)) {
            reportError("msg.bad.namespace");
        }
        AstNode expr = expr(false);
        UnaryExpression unaryExpression = new UnaryExpression(i, getNodeEnd(expr) - i);
        unaryExpression.setOperator(82);
        unaryExpression.setOperand(expr);
        unaryExpression.setLineColumnNumber(lineNumber, columnNumber);
        return new ExpressionStatement((AstNode) unaryExpression, true);
    }

    private AstNode destructuringAssignExpr() {
        try {
            this.inDestructuringAssignment = true;
            return assignExpr();
        } finally {
            this.inDestructuringAssignment = false;
        }
    }

    private AstNode destructuringPrimaryExpr() {
        try {
            this.inDestructuringAssignment = true;
            return primaryExpr();
        } finally {
            this.inDestructuringAssignment = false;
        }
    }

    private DoLoop doLoop() {
        if (this.currentToken != 131) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.tokenBeg;
        DoLoop doLoop = new DoLoop(i);
        doLoop.setLineColumnNumber(lineNumber(), columnNumber());
        enterLoop(doLoop);
        try {
            AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(doLoop);
            mustMatchToken(130, "msg.no.while.do", true);
            doLoop.setWhilePosition(this.ts.tokenBeg - i);
            ConditionData condition = condition();
            doLoop.setCondition(condition.condition);
            doLoop.setParens(condition.lp - i, condition.rp - i);
            int nodeEnd = getNodeEnd(nextStatementAfterInlineComments);
            restoreRelativeLoopPosition(doLoop);
            doLoop.setBody(nextStatementAfterInlineComments);
            exitLoop();
            if (matchToken(91, true)) {
                nodeEnd = this.ts.tokenEnd;
            }
            doLoop.setLength(nodeEnd - i);
            return doLoop;
        } catch (Throwable th) {
            exitLoop();
            throw th;
        }
    }

    private void enterLoop(Loop loop) {
        if (this.loopSet == null) {
            this.loopSet = new ArrayList();
        }
        this.loopSet.add(loop);
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(loop);
        pushScope(loop);
        LabeledStatement labeledStatement = this.currentLabel;
        if (labeledStatement != null) {
            labeledStatement.setStatement(loop);
            this.currentLabel.getFirstLabel().setLoop(loop);
            loop.setRelative(-this.currentLabel.getPosition());
        }
    }

    private void enterSwitch(SwitchStatement switchStatement) {
        if (this.loopAndSwitchSet == null) {
            this.loopAndSwitchSet = new ArrayList();
        }
        this.loopAndSwitchSet.add(switchStatement);
    }

    private AstNode eqExpr() {
        AstNode relExpr = relExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            if (peekToken != 12 && peekToken != 13 && peekToken != 51 && peekToken != 52) {
                return relExpr;
            }
            consumeToken();
            if (this.compilerEnv.getLanguageVersion() == 120) {
                if (peekToken == 12) {
                    peekToken = 51;
                } else if (peekToken == 13) {
                    peekToken = 52;
                }
            }
            relExpr = new InfixExpression(peekToken, relExpr, relExpr(), i);
        }
    }

    private void exitLoop() {
        this.loopSet.remove(r0.size() - 1);
        this.loopAndSwitchSet.remove(r0.size() - 1);
        popScope();
    }

    private void exitSwitch() {
        this.loopAndSwitchSet.remove(r1.size() - 1);
    }

    private AstNode expExpr() {
        AstNode unaryExpr = unaryExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            if (peekToken != 81) {
                return unaryExpr;
            }
            if (unaryExpr instanceof UnaryExpression) {
                reportError("msg.no.unary.expr.on.left.exp", AstNode.operatorToString(unaryExpr.getType()));
                return makeErrorNode();
            }
            consumeToken();
            unaryExpr = new InfixExpression(peekToken, unaryExpr, expExpr(), i);
        }
    }

    private AstNode expr(boolean z) {
        AstNode assignExpr = assignExpr();
        int position = assignExpr.getPosition();
        while (matchToken(98, true)) {
            int i = this.ts.tokenBeg;
            if (this.compilerEnv.isStrictMode() && !assignExpr.hasSideEffects()) {
                addStrictWarning("msg.no.side.effects", "", position, nodeEnd(assignExpr) - position);
            }
            if (peekToken() == 78) {
                reportError("msg.yield.parenthesized");
            }
            if (z && peekToken() == 97) {
                assignExpr.putIntProp(28, 1);
                return assignExpr;
            }
            assignExpr = new InfixExpression(98, assignExpr, assignExpr(), i);
        }
        return assignExpr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:6:0x0025, B:9:0x002e, B:11:0x003c, B:12:0x004b, B:14:0x0053, B:15:0x005a, B:17:0x006d, B:18:0x0105, B:20:0x010d, B:24:0x0119, B:25:0x015f, B:28:0x017c, B:37:0x018e, B:38:0x0191, B:39:0x0128, B:41:0x0131, B:43:0x013e, B:46:0x0147, B:47:0x014c, B:49:0x007e, B:51:0x0088, B:53:0x008e, B:55:0x009c, B:56:0x00ac, B:58:0x00b9, B:60:0x00d8, B:62:0x00e7, B:64:0x0100, B:65:0x00d3, B:67:0x0046, B:27:0x016a), top: B:5:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006d A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:6:0x0025, B:9:0x002e, B:11:0x003c, B:12:0x004b, B:14:0x0053, B:15:0x005a, B:17:0x006d, B:18:0x0105, B:20:0x010d, B:24:0x0119, B:25:0x015f, B:28:0x017c, B:37:0x018e, B:38:0x0191, B:39:0x0128, B:41:0x0131, B:43:0x013e, B:46:0x0147, B:47:0x014c, B:49:0x007e, B:51:0x0088, B:53:0x008e, B:55:0x009c, B:56:0x00ac, B:58:0x00b9, B:60:0x00d8, B:62:0x00e7, B:64:0x0100, B:65:0x00d3, B:67:0x0046, B:27:0x016a), top: B:5:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x010d A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:6:0x0025, B:9:0x002e, B:11:0x003c, B:12:0x004b, B:14:0x0053, B:15:0x005a, B:17:0x006d, B:18:0x0105, B:20:0x010d, B:24:0x0119, B:25:0x015f, B:28:0x017c, B:37:0x018e, B:38:0x0191, B:39:0x0128, B:41:0x0131, B:43:0x013e, B:46:0x0147, B:47:0x014c, B:49:0x007e, B:51:0x0088, B:53:0x008e, B:55:0x009c, B:56:0x00ac, B:58:0x00b9, B:60:0x00d8, B:62:0x00e7, B:64:0x0100, B:65:0x00d3, B:67:0x0046, B:27:0x016a), top: B:5:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007e A[Catch: all -> 0x0043, TryCatch #0 {all -> 0x0043, blocks: (B:6:0x0025, B:9:0x002e, B:11:0x003c, B:12:0x004b, B:14:0x0053, B:15:0x005a, B:17:0x006d, B:18:0x0105, B:20:0x010d, B:24:0x0119, B:25:0x015f, B:28:0x017c, B:37:0x018e, B:38:0x0191, B:39:0x0128, B:41:0x0131, B:43:0x013e, B:46:0x0147, B:47:0x014c, B:49:0x007e, B:51:0x0088, B:53:0x008e, B:55:0x009c, B:56:0x00ac, B:58:0x00b9, B:60:0x00d8, B:62:0x00e7, B:64:0x0100, B:65:0x00d3, B:67:0x0046, B:27:0x016a), top: B:5:0x0025, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.Loop forLoop() {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.forLoop():org.mozilla.javascript.ast.Loop");
    }

    private AstNode forLoopInit(int i) {
        AstNode variables;
        try {
            this.inForInit = true;
            if (i == 91) {
                variables = new EmptyExpression(this.ts.tokenBeg, 1);
                variables.setLineColumnNumber(this.ts.getLineno(), this.ts.getTokenColumn());
            } else {
                if (i != 135 && i != 167) {
                    variables = expr(false);
                }
                consumeToken();
                variables = variables(i, this.ts.tokenBeg, false);
            }
            this.inForInit = false;
            return variables;
        } catch (Throwable th) {
            this.inForInit = false;
            throw th;
        }
    }

    private FunctionNode function(int i, boolean z) {
        AstNode astNode;
        Name createNameNode;
        int lineNumber = lineNumber();
        int i2 = this.ts.tokenBeg;
        int columnNumber = columnNumber();
        boolean z2 = false;
        while (true) {
            astNode = null;
            if (matchToken(44, true)) {
                createNameNode = createNameNode(true, 44);
                if (this.inUseStrictDirective) {
                    String identifier = createNameNode.getIdentifier();
                    if ("eval".equals(identifier) || "arguments".equals(identifier)) {
                        reportError("msg.bad.id.strict", identifier);
                    }
                }
                if (!matchToken(96, true)) {
                    if (this.compilerEnv.isAllowMemberExprAsFunctionName()) {
                        AstNode memberExprTail = memberExprTail(false, createNameNode);
                        createNameNode = null;
                        astNode = memberExprTail;
                    }
                    mustMatchToken(96, "msg.no.paren.parms", true);
                }
            } else {
                if (matchToken(96, true)) {
                    createNameNode = null;
                    break;
                }
                if (!matchToken(23, true) || this.compilerEnv.getLanguageVersion() < 200) {
                    break;
                }
                z2 = true;
            }
        }
        AstNode memberExpr = this.compilerEnv.isAllowMemberExprAsFunctionName() ? memberExpr(false) : null;
        mustMatchToken(96, "msg.no.paren.parms", true);
        createNameNode = null;
        astNode = memberExpr;
        int i3 = this.currentToken == 96 ? this.ts.tokenBeg : -1;
        if ((astNode != null ? 2 : i) != 2 && createNameNode != null && createNameNode.length() > 0) {
            defineSymbol(Token.FUNCTION, createNameNode.getIdentifier());
        }
        FunctionNode functionNode = new FunctionNode(i2, createNameNode);
        functionNode.setMethodDefinition(z);
        functionNode.setFunctionType(i);
        if (z2) {
            functionNode.setIsES6Generator();
        }
        if (i3 != -1) {
            functionNode.setLp(i3 - i2);
        }
        functionNode.setJsDocNode(getAndResetJsDoc());
        PerFunctionVariables perFunctionVariables = new PerFunctionVariables(functionNode);
        boolean z3 = this.insideMethod;
        this.insideMethod = z;
        try {
            parseFunctionParams(functionNode);
            AstNode parseFunctionBody = parseFunctionBody(i, functionNode);
            functionNode.setBody(parseFunctionBody);
            int position = parseFunctionBody.getPosition() + i2 + parseFunctionBody.getLength();
            functionNode.setRawSourceBounds(i2, position);
            functionNode.setLength(position - i2);
            if (this.compilerEnv.isStrictMode() && !functionNode.getBody().hasConsistentReturnUsage()) {
                addStrictWarning((createNameNode == null || createNameNode.length() <= 0) ? "msg.anon.no.return.value" : "msg.no.return.value", createNameNode == null ? "" : createNameNode.getIdentifier());
            }
            perFunctionVariables.restore();
            this.insideMethod = z3;
            if (astNode != null) {
                Kit.codeBug();
                functionNode.setMemberExprNode(astNode);
            }
            functionNode.setSourceName(this.sourceURI);
            functionNode.setLineColumnNumber(lineNumber, columnNumber);
            functionNode.setEndLineno(lineNumber());
            if (this.compilerEnv.isIdeMode()) {
                functionNode.setParentScope(this.currentScope);
            }
            return functionNode;
        } catch (Throwable th) {
            perFunctionVariables.restore();
            this.insideMethod = z3;
            throw th;
        }
    }

    private AstNode generatorExpression(AstNode astNode, int i, boolean z) {
        int i2;
        ConditionData conditionData;
        ArrayList arrayList = new ArrayList();
        while (peekToken() == 132) {
            arrayList.add(generatorExpressionLoop());
        }
        if (peekToken() == 125) {
            consumeToken();
            i2 = this.ts.tokenBeg - i;
            conditionData = condition();
        } else {
            i2 = -1;
            conditionData = null;
        }
        if (!z) {
            mustMatchToken(97, "msg.no.paren.let", true);
        }
        GeneratorExpression generatorExpression = new GeneratorExpression(i, this.ts.tokenEnd - i);
        generatorExpression.setResult(astNode);
        generatorExpression.setLoops(arrayList);
        if (conditionData != null) {
            generatorExpression.setIfPosition(i2);
            generatorExpression.setFilter(conditionData.condition);
            generatorExpression.setFilterLp(conditionData.lp - i);
            generatorExpression.setFilterRp(conditionData.rp - i);
        }
        return generatorExpression;
    }

    private GeneratorExpressionLoop generatorExpressionLoop() {
        AstNode createNameNode;
        if (nextToken() != 132) {
            codeBug();
        }
        int i = this.ts.tokenBeg;
        GeneratorExpressionLoop generatorExpressionLoop = new GeneratorExpressionLoop(i);
        pushScope(generatorExpressionLoop);
        try {
            int i2 = mustMatchToken(96, "msg.no.paren.for", true) ? this.ts.tokenBeg - i : -1;
            int peekToken = peekToken();
            if (peekToken == 44) {
                consumeToken();
                createNameNode = createNameNode();
            } else if (peekToken == 92 || peekToken == 94) {
                createNameNode = destructuringPrimaryExpr();
                markDestructuring(createNameNode);
            } else {
                reportError("msg.bad.var");
                createNameNode = null;
            }
            if (createNameNode.getType() == 44) {
                defineSymbol(Token.LET, this.ts.getString(), true);
            }
            int i3 = mustMatchToken(57, "msg.in.after.for.name", true) ? this.ts.tokenBeg - i : -1;
            AstNode expr = expr(false);
            int i4 = mustMatchToken(97, "msg.no.paren.for.ctrl", true) ? this.ts.tokenBeg - i : -1;
            generatorExpressionLoop.setLength(this.ts.tokenEnd - i);
            generatorExpressionLoop.setIterator(createNameNode);
            generatorExpressionLoop.setIteratedObject(expr);
            generatorExpressionLoop.setInPosition(i3);
            generatorExpressionLoop.setParens(i2, i4);
            popScope();
            return generatorExpressionLoop;
        } catch (Throwable th) {
            popScope();
            throw th;
        }
    }

    private Comment getAndResetJsDoc() {
        Comment comment = this.currentJsDocComment;
        this.currentJsDocComment = null;
        return comment;
    }

    private static String getDirective(AstNode astNode) {
        if (!(astNode instanceof ExpressionStatement)) {
            return null;
        }
        AstNode expression = ((ExpressionStatement) astNode).getExpression();
        if (expression instanceof StringLiteral) {
            return ((StringLiteral) expression).getValue();
        }
        return null;
    }

    private AstNode getNextStatementAfterInlineComments(AstNode astNode) {
        AstNode statement = statement();
        if (175 != statement.getType()) {
            return statement;
        }
        AstNode statement2 = statement();
        if (astNode != null) {
            astNode.setInlineComment(statement);
            return statement2;
        }
        statement2.setInlineComment(statement);
        return statement2;
    }

    private static int getNodeEnd(AstNode astNode) {
        return astNode.getLength() + astNode.getPosition();
    }

    public static Object getPropKey(Node node) {
        if (node instanceof Name) {
            return ScriptRuntime.getIndexObject(((Name) node).getIdentifier());
        }
        if (node instanceof StringLiteral) {
            return ScriptRuntime.getIndexObject(((StringLiteral) node).getValue());
        }
        if (node instanceof NumberLiteral) {
            return ScriptRuntime.getIndexObject(((NumberLiteral) node).getNumber());
        }
        if (node instanceof GeneratorMethodDefinition) {
            return getPropKey(((GeneratorMethodDefinition) node).getMethodName());
        }
        return null;
    }

    private IfStatement ifStatement() {
        int i;
        AstNode astNode;
        if (this.currentToken != 125) {
            codeBug();
        }
        consumeToken();
        int i2 = this.ts.tokenBeg;
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        IfStatement ifStatement = new IfStatement(i2);
        ConditionData condition = condition();
        AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(ifStatement);
        if (matchToken(Token.ELSE, true)) {
            if (peekToken() == 175) {
                List<Comment> list = this.scannedComments;
                ifStatement.setElseKeyWordInlineComment(list.get(list.size() - 1));
                consumeToken();
            }
            i = this.ts.tokenBeg - i2;
            astNode = statement();
        } else {
            i = -1;
            astNode = null;
        }
        ifStatement.setLength(getNodeEnd(astNode != null ? astNode : nextStatementAfterInlineComments) - i2);
        ifStatement.setCondition(condition.condition);
        ifStatement.setParens(condition.lp - i2, condition.rp - i2);
        ifStatement.setThenPart(nextStatementAfterInlineComments);
        ifStatement.setElsePart(astNode);
        ifStatement.setElsePosition(i);
        ifStatement.setLineColumnNumber(lineNumber, columnNumber);
        return ifStatement;
    }

    private static boolean isNotValidSimpleAssignmentTarget(AstNode astNode) {
        return astNode.getType() == 33 ? isNotValidSimpleAssignmentTarget(((PropertyGet) astNode).getLeft()) : astNode.getType() == 186;
    }

    private AstNode let(boolean z, int i) {
        LetNode letNode = new LetNode(i);
        letNode.setLineColumnNumber(lineNumber(), columnNumber());
        if (mustMatchToken(96, "msg.no.paren.after.let", true)) {
            letNode.setLp(this.ts.tokenBeg - i);
        }
        pushScope(letNode);
        try {
            letNode.setVariables(variables(Token.LET, this.ts.tokenBeg, z));
            if (mustMatchToken(97, "msg.no.paren.let", true)) {
                letNode.setRp(this.ts.tokenBeg - i);
            }
            if (z && peekToken() == 94) {
                consumeToken();
                int i2 = this.ts.tokenBeg;
                AstNode statements = statements();
                mustMatchToken(95, "msg.no.curly.let", true);
                statements.setLength(this.ts.tokenEnd - i2);
                letNode.setLength(this.ts.tokenEnd - i);
                letNode.setBody(statements);
                letNode.setType(Token.LET);
            } else {
                AstNode expr = expr(false);
                letNode.setLength(getNodeEnd(expr) - i);
                letNode.setBody(expr);
                if (z) {
                    ExpressionStatement expressionStatement = new ExpressionStatement(letNode, !insideFunctionBody());
                    expressionStatement.setLineColumnNumber(letNode.getLineno(), letNode.getColumn());
                    popScope();
                    return expressionStatement;
                }
            }
            popScope();
            return letNode;
        } catch (Throwable th) {
            popScope();
            throw th;
        }
    }

    private AstNode letStatement() {
        if (this.currentToken != 167) {
            codeBug();
        }
        consumeToken();
        int lineNumber = lineNumber();
        int i = this.ts.tokenBeg;
        int columnNumber = columnNumber();
        AstNode let = peekToken() == 96 ? let(true, i) : variables(Token.LET, i, true);
        let.setLineColumnNumber(lineNumber, columnNumber);
        return let;
    }

    private int lineBeginningFor(int i) {
        char[] cArr = this.sourceChars;
        if (cArr == null) {
            return -1;
        }
        if (i <= 0) {
            return 0;
        }
        if (i >= cArr.length) {
            i = cArr.length - 1;
        }
        while (true) {
            int i2 = i - 1;
            if (i2 < 0) {
                return 0;
            }
            if (ScriptRuntime.isJSLineTerminator(cArr[i2])) {
                return i;
            }
            i = i2;
        }
    }

    private int lineNumber() {
        return this.lastTokenLineno;
    }

    private ElementGet makeElemGet(AstNode astNode, int i) {
        int i2;
        int position = astNode.getPosition();
        AstNode expr = expr(false);
        int nodeEnd = getNodeEnd(expr);
        if (mustMatchToken(93, "msg.no.bracket.index", true)) {
            TokenStream tokenStream = this.ts;
            int i3 = tokenStream.tokenBeg;
            nodeEnd = tokenStream.tokenEnd;
            i2 = i3;
        } else {
            i2 = -1;
        }
        ElementGet elementGet = new ElementGet(position, nodeEnd - position);
        elementGet.setTarget(astNode);
        elementGet.setElement(expr);
        elementGet.setParens(i, i2);
        return elementGet;
    }

    private ErrorNode makeErrorNode() {
        TokenStream tokenStream = this.ts;
        int i = tokenStream.tokenBeg;
        ErrorNode errorNode = new ErrorNode(i, tokenStream.tokenEnd - i);
        errorNode.setLineColumnNumber(lineNumber(), columnNumber());
        return errorNode;
    }

    private FunctionCall makeFunctionCall(AstNode astNode, int i, boolean z) {
        consumeToken();
        checkCallRequiresActivation(astNode);
        FunctionCall functionCall = new FunctionCall(i);
        functionCall.setTarget(astNode);
        functionCall.setLp(this.ts.tokenBeg - i);
        List<AstNode> argumentList = argumentList();
        if (argumentList != null && argumentList.size() > 65536) {
            reportError("msg.too.many.function.args");
        }
        functionCall.setArguments(argumentList);
        functionCall.setRp(this.ts.tokenBeg - i);
        functionCall.setLength(this.ts.tokenEnd - i);
        if (z) {
            functionCall.markIsOptionalCall();
        }
        return functionCall;
    }

    private LabeledStatement matchJumpLabelName() {
        if (peekTokenOrEOL() == 44) {
            consumeToken();
            Map<String, LabeledStatement> map = this.labelSet;
            r2 = map != null ? map.get(this.ts.getString()) : null;
            if (r2 == null) {
                reportError("msg.undef.label");
            }
        }
        return r2;
    }

    private boolean matchToken(int i, boolean z) {
        int peekToken = peekToken();
        while (peekToken == 175 && z) {
            consumeToken();
            peekToken = peekToken();
        }
        if (peekToken != i) {
            return false;
        }
        consumeToken();
        return true;
    }

    private AstNode memberExpr(boolean z) {
        AstNode astNode;
        if (peekToken() != 30) {
            astNode = primaryExpr();
        } else {
            consumeToken();
            int i = this.ts.tokenBeg;
            int lineNumber = lineNumber();
            int columnNumber = columnNumber();
            NewExpression newExpression = new NewExpression(i);
            AstNode memberExpr = memberExpr(false);
            int nodeEnd = getNodeEnd(memberExpr);
            newExpression.setTarget(memberExpr);
            newExpression.setLineColumnNumber(lineNumber, columnNumber);
            if (matchToken(96, true)) {
                int i2 = this.ts.tokenBeg;
                List<AstNode> argumentList = argumentList();
                if (argumentList != null && argumentList.size() > 65536) {
                    reportError("msg.too.many.constructor.args");
                }
                TokenStream tokenStream = this.ts;
                int i3 = tokenStream.tokenBeg;
                nodeEnd = tokenStream.tokenEnd;
                if (argumentList != null) {
                    newExpression.setArguments(argumentList);
                }
                newExpression.setParens(i2 - i, i3 - i);
            }
            if (matchToken(94, true)) {
                ObjectLiteral objectLiteral = objectLiteral();
                nodeEnd = getNodeEnd(objectLiteral);
                newExpression.setInitializer(objectLiteral);
            }
            newExpression.setLength(nodeEnd - i);
            astNode = newExpression;
        }
        return memberExprTail(z, astNode);
    }

    private AstNode memberExprTail(boolean z, AstNode astNode) {
        int i;
        if (astNode == null) {
            codeBug();
        }
        int position = astNode.getPosition();
        boolean z2 = false;
        while (true) {
            int lineNumber = lineNumber();
            int columnNumber = columnNumber();
            int peekToken = peekToken();
            if (peekToken == 92) {
                consumeToken();
                astNode = makeElemGet(astNode, this.ts.tokenBeg);
            } else if (peekToken != 96) {
                if (peekToken != 121 && peekToken != 157) {
                    if (peekToken == 160) {
                        consumeToken();
                        int i2 = this.ts.tokenBeg;
                        mustHaveXML();
                        setRequiresActivation();
                        AstNode expr = expr(false);
                        int nodeEnd = getNodeEnd(expr);
                        if (mustMatchToken(97, "msg.no.paren", true)) {
                            TokenStream tokenStream = this.ts;
                            int i3 = tokenStream.tokenBeg;
                            nodeEnd = tokenStream.tokenEnd;
                            i = i3;
                        } else {
                            i = -1;
                        }
                        XmlDotQuery xmlDotQuery = new XmlDotQuery(position, nodeEnd - position);
                        xmlDotQuery.setLeft(astNode);
                        xmlDotQuery.setRight(expr);
                        xmlDotQuery.setOperatorPosition(i2);
                        xmlDotQuery.setRp(i - position);
                        xmlDotQuery.setLineColumnNumber(lineNumber, columnNumber);
                        astNode = xmlDotQuery;
                    } else if (peekToken == 175) {
                        int i4 = this.currentFlaggedToken;
                        peekUntilNonComment(peekToken);
                        int i5 = this.currentFlaggedToken;
                        if ((65536 & i5) != 0) {
                            i4 = i5;
                        }
                        this.currentFlaggedToken = i4;
                    } else if (peekToken == 180) {
                        consumeToken();
                        astNode = taggedTemplateLiteral(astNode);
                    } else if (peekToken != 186) {
                        break;
                    }
                }
                z2 |= peekToken == 186;
                astNode = propertyAccess(peekToken, astNode, z2);
            } else {
                if (!z) {
                    break;
                }
                astNode = makeFunctionCall(astNode, position, z2);
            }
        }
        return astNode;
    }

    private ObjectProperty methodDefinition(int i, AstNode astNode, int i2, boolean z) {
        FunctionNode function = function(2, true);
        Name functionName = function.getFunctionName();
        if (functionName != null && functionName.length() != 0) {
            reportError("msg.bad.prop");
        }
        ObjectProperty objectProperty = new ObjectProperty(i);
        if (i2 == 2) {
            objectProperty.setIsGetterMethod();
            function.setFunctionIsGetterMethod();
        } else if (i2 == 4) {
            objectProperty.setIsSetterMethod();
            function.setFunctionIsSetterMethod();
        } else if (i2 == 8) {
            objectProperty.setIsNormalMethod();
            function.setFunctionIsNormalMethod();
            if (z) {
                function.setIsES6Generator();
            }
        }
        int nodeEnd = getNodeEnd(function);
        objectProperty.setLeft(astNode);
        objectProperty.setRight(function);
        objectProperty.setLength(nodeEnd - i);
        return objectProperty;
    }

    private AstNode mulExpr() {
        AstNode expExpr = expExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            switch (peekToken) {
                case 23:
                case 24:
                case 25:
                    consumeToken();
                    expExpr = new InfixExpression(peekToken, expExpr, expExpr(), i);
                default:
                    return expExpr;
            }
        }
    }

    private void mustHaveXML() {
        if (this.compilerEnv.isXmlAvailable()) {
            return;
        }
        reportError("msg.XML.not.available");
    }

    private boolean mustMatchToken(int i, String str, boolean z) {
        TokenStream tokenStream = this.ts;
        int i2 = tokenStream.tokenBeg;
        return mustMatchToken(i, str, i2, tokenStream.tokenEnd - i2, z);
    }

    private AstNode name(int i, int i2) {
        String string = this.ts.getString();
        int i3 = this.ts.tokenBeg;
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        if ((i & 131072) == 0 || peekToken() != 116) {
            saveNameTokenData(i3, string, lineNumber, columnNumber);
            return this.compilerEnv.isXmlAvailable() ? propertyName(-1, 0) : createNameNode(true, 44);
        }
        Label label = new Label(i3, this.ts.tokenEnd - i3);
        label.setName(string);
        label.setLineColumnNumber(lineNumber(), columnNumber());
        return label;
    }

    private AstNode nameOrLabel() {
        AstNode astNode;
        if (this.currentToken != 44) {
            throw codeBug();
        }
        int i = this.ts.tokenBeg;
        this.currentFlaggedToken |= 131072;
        AstNode expr = expr(false);
        if (expr.getType() != 144) {
            ExpressionStatement expressionStatement = new ExpressionStatement(expr, !insideFunctionBody());
            expressionStatement.setLineColumnNumber(expr.getLineno(), expr.getColumn());
            return expressionStatement;
        }
        LabeledStatement labeledStatement = new LabeledStatement(i);
        recordLabel((Label) expr, labeledStatement);
        labeledStatement.setLineColumnNumber(expr.getLineno(), expr.getColumn());
        while (true) {
            if (peekToken() != 44) {
                astNode = null;
                break;
            }
            this.currentFlaggedToken |= 131072;
            AstNode expr2 = expr(false);
            if (expr2.getType() != 144) {
                astNode = new ExpressionStatement(expr2, !insideFunctionBody());
                autoInsertSemicolon(astNode);
                break;
            }
            recordLabel((Label) expr2, labeledStatement);
        }
        try {
            this.currentLabel = labeledStatement;
            if (astNode == null) {
                astNode = statementHelper();
                if (peekToken() == 175) {
                    if (astNode.getLineno() == this.scannedComments.get(r3.size() - 1).getLineno()) {
                        astNode.setInlineComment(this.scannedComments.get(r2.size() - 1));
                        consumeToken();
                    }
                }
            }
            labeledStatement.setLength(astNode.getParent() == null ? getNodeEnd(astNode) - i : getNodeEnd(astNode));
            labeledStatement.setStatement(astNode);
            return labeledStatement;
        } finally {
            this.currentLabel = null;
            Iterator<Label> it = labeledStatement.getLabels().iterator();
            while (it.hasNext()) {
                this.labelSet.remove(it.next().getName());
            }
        }
    }

    private int nextToken() {
        int peekToken = peekToken();
        consumeToken();
        return peekToken;
    }

    private static int nodeEnd(AstNode astNode) {
        return astNode.getLength() + astNode.getPosition();
    }

    private static final boolean nowAllSet(int i, int i2, int i3) {
        return (i & i3) != i3 && (i2 & i3) == i3;
    }

    private AstNode nullishCoalescingExpr() {
        AstNode orExpr = orExpr();
        if (!matchToken(Token.NULLISH_COALESCING, true)) {
            return orExpr;
        }
        int i = this.ts.tokenBeg;
        AstNode nullishCoalescingExpr = nullishCoalescingExpr();
        if (orExpr.getType() == 117 || orExpr.getType() == 118 || nullishCoalescingExpr.getType() == 117 || nullishCoalescingExpr.getType() == 118) {
            reportError("msg.nullish.bad.token");
        }
        return new InfixExpression(Token.NULLISH_COALESCING, orExpr, nullishCoalescingExpr, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x016b, code lost:
    
        if (r2 != 8) goto L100;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.ObjectLiteral objectLiteral() {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.objectLiteral():org.mozilla.javascript.ast.ObjectLiteral");
    }

    private AstNode objliteralProperty() {
        int peekToken = peekToken();
        if (peekToken == 23) {
            if (this.compilerEnv.getLanguageVersion() < 200) {
                reportError("msg.bad.prop");
                return null;
            }
            int i = this.ts.tokenBeg;
            nextToken();
            int lineNumber = lineNumber();
            int columnNumber = columnNumber();
            GeneratorMethodDefinition generatorMethodDefinition = new GeneratorMethodDefinition(i, this.ts.tokenEnd - i, objliteralProperty());
            generatorMethodDefinition.setLineColumnNumber(lineNumber, columnNumber);
            return generatorMethodDefinition;
        }
        if (peekToken != 89) {
            if (peekToken == 92) {
                if (this.compilerEnv.getLanguageVersion() < 200) {
                    reportError("msg.bad.prop");
                    return null;
                }
                int i2 = this.ts.tokenBeg;
                nextToken();
                int lineNumber2 = lineNumber();
                int columnNumber2 = columnNumber();
                AstNode assignExpr = assignExpr();
                if (peekToken() != 93) {
                    reportError("msg.bad.prop");
                }
                nextToken();
                ComputedPropertyKey computedPropertyKey = new ComputedPropertyKey(i2, this.ts.tokenEnd - i2);
                computedPropertyKey.setLineColumnNumber(lineNumber2, columnNumber2);
                computedPropertyKey.setExpression(assignExpr);
                return computedPropertyKey;
            }
            switch (peekToken) {
                case Token.NAME /* 44 */:
                    return createNameNode();
                case Token.NUMBER /* 45 */:
                    break;
                case Token.STRING /* 46 */:
                    return createStringLiteral();
                default:
                    if (this.compilerEnv.isReservedKeywordAsIdentifier() && TokenStream.isKeyword(this.ts.getString(), this.compilerEnv.getLanguageVersion(), this.inUseStrictDirective)) {
                        return createNameNode();
                    }
                    return null;
            }
        }
        return createNumericLiteral(peekToken, true);
    }

    private AstNode orExpr() {
        AstNode andExpr = andExpr();
        if (!matchToken(Token.OR, true)) {
            return andExpr;
        }
        return new InfixExpression(Token.OR, andExpr, orExpr(), this.ts.tokenBeg);
    }

    private AstNode parenExpr() {
        boolean z = this.inForInit;
        this.inForInit = false;
        try {
            Comment andResetJsDoc = getAndResetJsDoc();
            int lineNumber = lineNumber();
            int columnNumber = columnNumber();
            int i = this.ts.tokenBeg;
            AstNode emptyExpression = peekToken() == 97 ? new EmptyExpression(i) : expr(true);
            if (peekToken() == 132) {
                AstNode generatorExpression = generatorExpression(emptyExpression, i);
                this.inForInit = z;
                return generatorExpression;
            }
            mustMatchToken(97, "msg.no.paren", true);
            int i2 = this.ts.tokenEnd - i;
            boolean z2 = emptyExpression.getIntProp(29, 0) == 1;
            boolean z3 = emptyExpression.getIntProp(28, 0) == 1;
            if ((z3 || z2 || emptyExpression.getType() == 141) && peekToken() != 178) {
                reportError("msg.syntax");
                ErrorNode makeErrorNode = makeErrorNode();
                this.inForInit = z;
                return makeErrorNode;
            }
            ParenthesizedExpression parenthesizedExpression = new ParenthesizedExpression(i, i2, emptyExpression);
            parenthesizedExpression.setLineColumnNumber(lineNumber, columnNumber);
            if (andResetJsDoc == null) {
                andResetJsDoc = getAndResetJsDoc();
            }
            if (andResetJsDoc != null) {
                parenthesizedExpression.setJsDocNode(andResetJsDoc);
            }
            if (z3) {
                parenthesizedExpression.putIntProp(28, 1);
            }
            this.inForInit = z;
            return parenthesizedExpression;
        } catch (Throwable th) {
            this.inForInit = z;
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstRoot parse() {
        /*
            r10 = this;
            org.mozilla.javascript.ast.AstRoot r0 = new org.mozilla.javascript.ast.AstRoot
            r1 = 0
            r0.<init>(r1)
            r10.currentScriptOrFn = r0
            r10.currentScope = r0
            org.mozilla.javascript.TokenStream r2 = r10.ts
            int r3 = r2.lineno
            int r2 = r2.getLineno()
            r10.prevNameTokenLineno = r2
            org.mozilla.javascript.TokenStream r2 = r10.ts
            int r2 = r2.getTokenColumn()
            r10.prevNameTokenColumn = r2
            boolean r2 = r10.inUseStrictDirective
            boolean r4 = r10.defaultUseStrictDirective
            r10.inUseStrictDirective = r4
            r5 = 1
            if (r4 == 0) goto L28
            r0.setInStrictMode(r5)
        L28:
            r6 = r1
            r4 = r5
        L2a:
            int r7 = r10.peekToken()     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            if (r7 > 0) goto L31
            goto L47
        L31:
            r8 = 122(0x7a, float:1.71E-43)
            if (r7 != r8) goto L4a
            r10.consumeToken()     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            boolean r7 = r10.calledByCompileFunction     // Catch: java.lang.Throwable -> L44 org.mozilla.javascript.Parser.ParserException -> L47 java.lang.StackOverflowError -> L86
            if (r7 == 0) goto L3e
            r7 = 2
            goto L3f
        L3e:
            r7 = r5
        L3f:
            org.mozilla.javascript.ast.FunctionNode r7 = r10.function(r7)     // Catch: java.lang.Throwable -> L44 org.mozilla.javascript.Parser.ParserException -> L47 java.lang.StackOverflowError -> L86
            goto L7b
        L44:
            r0 = move-exception
            goto Le8
        L47:
            r10.inUseStrictDirective = r2
            goto L95
        L4a:
            r8 = 175(0xaf, float:2.45E-43)
            if (r7 != r8) goto L5f
            java.util.List<org.mozilla.javascript.ast.Comment> r7 = r10.scannedComments     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            int r8 = r7.size()     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            int r8 = r8 - r5
            java.lang.Object r7 = r7.get(r8)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            org.mozilla.javascript.ast.AstNode r7 = (org.mozilla.javascript.ast.AstNode) r7     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            r10.consumeToken()     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            goto L7b
        L5f:
            org.mozilla.javascript.ast.AstNode r7 = r10.statement()     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            if (r4 == 0) goto L7b
            java.lang.String r8 = getDirective(r7)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            if (r8 != 0) goto L6d
            r4 = r1
            goto L7b
        L6d:
            java.lang.String r9 = "use strict"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            if (r8 == 0) goto L7b
            r10.inUseStrictDirective = r5     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            r0.setInStrictMode(r5)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
        L7b:
            int r6 = getNodeEnd(r7)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            r0.addChildToBack(r7)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            r7.setParent(r0)     // Catch: java.lang.Throwable -> L44 java.lang.StackOverflowError -> L86
            goto L2a
        L86:
            java.lang.String r4 = "msg.too.deep.parser.recursion"
            java.lang.String r4 = r10.lookupMessage(r4)     // Catch: java.lang.Throwable -> L44
            org.mozilla.javascript.CompilerEnvirons r7 = r10.compilerEnv     // Catch: java.lang.Throwable -> L44
            boolean r7 = r7.isIdeMode()     // Catch: java.lang.Throwable -> L44
            if (r7 == 0) goto Ldc
            goto L47
        L95:
            r10.reportErrorsIfExists(r3)
            java.util.List<org.mozilla.javascript.ast.Comment> r1 = r10.scannedComments
            if (r1 == 0) goto Lc7
            int r1 = r1.size()
            int r1 = r1 - r5
            java.util.List<org.mozilla.javascript.ast.Comment> r2 = r10.scannedComments
            java.lang.Object r1 = r2.get(r1)
            org.mozilla.javascript.ast.AstNode r1 = (org.mozilla.javascript.ast.AstNode) r1
            int r1 = getNodeEnd(r1)
            int r6 = java.lang.Math.max(r6, r1)
            java.util.List<org.mozilla.javascript.ast.Comment> r1 = r10.scannedComments
            java.util.Iterator r1 = r1.iterator()
        Lb7:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto Lc7
            java.lang.Object r2 = r1.next()
            org.mozilla.javascript.ast.Comment r2 = (org.mozilla.javascript.ast.Comment) r2
            r0.addComment(r2)
            goto Lb7
        Lc7:
            r0.setLength(r6)
            java.lang.String r1 = r10.sourceURI
            r0.setSourceName(r1)
            r0.setBaseLineno(r3)
            org.mozilla.javascript.TokenStream r10 = r10.ts
            int r10 = r10.getLineno()
            r0.setEndLineno(r10)
            return r0
        Ldc:
            java.lang.String r0 = r10.sourceURI     // Catch: java.lang.Throwable -> L44
            int r3 = r10.lineNumber()     // Catch: java.lang.Throwable -> L44
            r5 = 0
            org.mozilla.javascript.EvaluatorException r0 = org.mozilla.javascript.Context.reportRuntimeError(r4, r0, r3, r5, r1)     // Catch: java.lang.Throwable -> L44
            throw r0     // Catch: java.lang.Throwable -> L44
        Le8:
            r10.inUseStrictDirective = r2
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.parse():org.mozilla.javascript.ast.AstRoot");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:3|(8:7|(1:9)(1:65)|10|11|(3:13|(1:15)|16)(5:21|(2:22|(1:1)(3:26|(2:28|(2:30|(1:48)(2:32|(2:34|35)(2:37|(1:47)(4:39|(1:41)|42|(2:44|45)(1:46)))))(2:49|50))(2:51|52)|36))|54|(1:56)|57)|17|18|19)(1:6))|66|(0)(0)|10|11|(0)(0)|17|18|19|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0072, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fc, code lost:
    
        r8.nestingOfFunction--;
        r8.inUseStrictDirective = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0103, code lost:
    
        throw r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0044 A[Catch: all -> 0x0072, ParserException -> 0x00f4, TRY_ENTER, TryCatch #2 {ParserException -> 0x00f4, all -> 0x0072, blocks: (B:13:0x0044, B:15:0x006c, B:16:0x0075, B:22:0x0082, B:30:0x0097, B:32:0x009d, B:37:0x00a5, B:39:0x00ae, B:41:0x00b4, B:42:0x00b9, B:44:0x00c0, B:36:0x00dc, B:49:0x00c4, B:51:0x00d5, B:54:0x00e0, B:56:0x00ec, B:57:0x00f0), top: B:11:0x0042 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstNode parseFunctionBody(int r9, org.mozilla.javascript.ast.FunctionNode r10) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.parseFunctionBody(int, org.mozilla.javascript.ast.FunctionNode):org.mozilla.javascript.ast.AstNode");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0169 A[EDGE_INSN: B:55:0x0169->B:56:0x0169 BREAK  A[LOOP:0: B:10:0x002b->B:72:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[LOOP:0: B:10:0x002b->B:72:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parseFunctionParams(org.mozilla.javascript.ast.FunctionNode r15) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.parseFunctionParams(org.mozilla.javascript.ast.FunctionNode):void");
    }

    private int peekFlaggedToken() {
        peekToken();
        return this.currentFlaggedToken;
    }

    private int peekToken() {
        if (this.currentFlaggedToken != 0) {
            return this.currentToken;
        }
        int token = this.ts.getToken();
        boolean z = false;
        while (true) {
            if (token != 1 && token != 175) {
                break;
            }
            if (token == 1) {
                token = this.ts.getToken();
                z = true;
            } else {
                boolean isRecordingComments = this.compilerEnv.isRecordingComments();
                TokenStream tokenStream = this.ts;
                if (isRecordingComments) {
                    recordComment(this.ts.getTokenStartLineno(), this.ts.getTokenColumn(), tokenStream.getAndResetCurrentComment());
                    break;
                }
                token = tokenStream.getToken();
            }
        }
        this.currentToken = token;
        this.currentFlaggedToken = (z ? 65536 : 0) | token;
        return token;
    }

    private int peekTokenOrEOL() {
        int peekToken = peekToken();
        if ((this.currentFlaggedToken & 65536) != 0) {
            return 1;
        }
        return peekToken;
    }

    private int peekUntilNonComment(int i) {
        while (i == 175) {
            consumeToken();
            i = peekToken();
        }
        return i;
    }

    private ObjectProperty plainProperty(AstNode astNode, int i) {
        int peekToken = peekToken();
        if ((peekToken == 98 || peekToken == 95) && i == 44 && this.compilerEnv.getLanguageVersion() >= 180) {
            if (!this.inDestructuringAssignment && this.compilerEnv.getLanguageVersion() < 200) {
                reportError("msg.bad.object.init");
            }
            Name name = new Name(astNode.getPosition(), astNode.getString());
            ObjectProperty objectProperty = new ObjectProperty();
            objectProperty.setIsShorthand(true);
            objectProperty.setLeftAndRight(astNode, name);
            return objectProperty;
        }
        if (peekToken != 99) {
            mustMatchToken(116, "msg.no.colon.prop", true);
            ObjectProperty objectProperty2 = new ObjectProperty();
            objectProperty2.setOperatorPosition(this.ts.tokenBeg);
            objectProperty2.setLeftAndRight(astNode, assignExpr());
            return objectProperty2;
        }
        ObjectProperty objectProperty3 = new ObjectProperty();
        consumeToken();
        Assignment assignment = new Assignment(astNode, assignExpr());
        assignment.setType(99);
        objectProperty3.setLeftAndRight(astNode, assignment);
        return objectProperty3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.AstNode primaryExpr() {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.primaryExpr():org.mozilla.javascript.ast.AstNode");
    }

    private void processDestructuringDefaults(int i, Node node, List<String> list, Assignment assignment, Node node2, int i2, Transformer transformer) {
        AstNode left = assignment.getLeft();
        if (left.getType() == 44) {
            String string = left.getString();
            AstNode right = assignment.getRight();
            Node node3 = right;
            if (transformer != null) {
                node3 = transformer.transform(right);
            }
            Node node4 = new Node(Token.HOOK, new Node(51, createName("undefined"), node2), node3, node2);
            Node node5 = new Node(Token.HOOK, new Node(51, createName("undefined"), createName(string)), node4, left);
            if (transformer == null) {
                this.currentScriptOrFn.putDestructuringRvalues(node4, node3);
            }
            node.addChildToBack(new Node(i2, createName(54, string, null), node5));
            if (i != -1) {
                defineSymbol(i, string, true);
                list.add(string);
            }
        }
    }

    private AstNode propertyAccess(int i, AstNode astNode, boolean z) {
        int i2;
        AstNode propertyName;
        String keywordToName;
        if (astNode == null) {
            codeBug();
        }
        if (astNode.getType() == 79 && z) {
            reportError("msg.optional.super");
            return makeErrorNode();
        }
        int lineNumber = lineNumber();
        int i3 = this.ts.tokenBeg;
        int columnNumber = columnNumber();
        consumeToken();
        if (i == 157) {
            mustHaveXML();
            i2 = 4;
        } else {
            i2 = 0;
        }
        if (!this.compilerEnv.isXmlAvailable()) {
            if (nextToken() != 44 && (!this.compilerEnv.isReservedKeywordAsIdentifier() || !TokenStream.isKeyword(this.ts.getString(), this.compilerEnv.getLanguageVersion(), this.inUseStrictDirective))) {
                reportError("msg.no.name.after.dot");
            }
            PropertyGet propertyGet = new PropertyGet(astNode, createNameNode(true, 33), i3);
            propertyGet.setLineColumnNumber(lineNumber, columnNumber);
            return propertyGet;
        }
        int nextToken = nextToken();
        if (nextToken == 23) {
            saveNameTokenData(this.ts.tokenBeg, "*", lineNumber(), columnNumber());
            propertyName = propertyName(-1, i2);
        } else if (nextToken == 44) {
            propertyName = propertyName(-1, i2);
        } else if (nextToken == 55) {
            saveNameTokenData(this.ts.tokenBeg, "throw", lineNumber(), columnNumber());
            propertyName = propertyName(-1, i2);
        } else {
            if (nextToken == 92) {
                if (i != 186) {
                    reportError("msg.no.name.after.dot");
                    return makeErrorNode();
                }
                consumeToken();
                ElementGet makeElemGet = makeElemGet(astNode, this.ts.tokenBeg);
                makeElemGet.setType(Token.QUESTION_DOT);
                return makeElemGet;
            }
            if (nextToken == 96) {
                if (i == 186) {
                    return makeFunctionCall(astNode, astNode.getPosition(), z);
                }
                reportError("msg.no.name.after.dot");
                return makeErrorNode();
            }
            if (nextToken == 140) {
                saveNameTokenData(this.ts.tokenBeg, this.ts.getString(), lineNumber(), columnNumber());
                propertyName = propertyName(-1, i2);
            } else if (nextToken == 161) {
                propertyName = attributeAccess();
            } else {
                if (!this.compilerEnv.isReservedKeywordAsIdentifier() || (keywordToName = Token.keywordToName(nextToken)) == null) {
                    reportError("msg.no.name.after.dot");
                    return makeErrorNode();
                }
                saveNameTokenData(this.ts.tokenBeg, keywordToName, lineNumber(), columnNumber());
                propertyName = propertyName(-1, i2);
            }
        }
        boolean z2 = propertyName instanceof XmlRef;
        InfixExpression xmlMemberGet = z2 ? new XmlMemberGet() : new PropertyGet();
        if (z2 && i == 121) {
            xmlMemberGet.setType(Token.DOT);
        }
        if (z) {
            xmlMemberGet.setType(Token.QUESTION_DOT);
        }
        int position = astNode.getPosition();
        xmlMemberGet.setPosition(position);
        xmlMemberGet.setLength(getNodeEnd(propertyName) - position);
        xmlMemberGet.setOperatorPosition(i3 - position);
        xmlMemberGet.setLineColumnNumber(lineNumber, columnNumber);
        xmlMemberGet.setLeft(astNode);
        xmlMemberGet.setRight(propertyName);
        return xmlMemberGet;
    }

    private AstNode propertyName(int i, int i2) {
        Name name;
        int i3;
        int i4 = i != -1 ? i : this.ts.tokenBeg;
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        Name createNameNode = createNameNode(true, this.currentToken);
        if (matchToken(Token.COLONCOLON, true)) {
            i3 = this.ts.tokenBeg;
            int nextToken = nextToken();
            if (nextToken == 23) {
                saveNameTokenData(this.ts.tokenBeg, "*", lineNumber(), columnNumber());
                name = createNameNode(false, -1);
            } else {
                if (nextToken != 44) {
                    if (nextToken == 92) {
                        return xmlElemRef(i, createNameNode, i3);
                    }
                    reportError("msg.no.name.after.coloncolon");
                    return makeErrorNode();
                }
                name = createNameNode();
            }
        } else {
            createNameNode = null;
            name = createNameNode;
            i3 = -1;
        }
        if (createNameNode == null && i2 == 0 && i == -1) {
            return name;
        }
        XmlPropRef xmlPropRef = new XmlPropRef(i4, getNodeEnd(name) - i4);
        xmlPropRef.setAtPos(i);
        xmlPropRef.setNamespace(createNameNode);
        xmlPropRef.setColonPos(i3);
        xmlPropRef.setPropName(name);
        xmlPropRef.setLineColumnNumber(lineNumber, columnNumber);
        return xmlPropRef;
    }

    private void recordComment(int i, int i2, String str) {
        if (this.scannedComments == null) {
            this.scannedComments = new ArrayList();
        }
        TokenStream tokenStream = this.ts;
        Comment comment = new Comment(tokenStream.tokenBeg, tokenStream.getTokenLength(), this.ts.commentType, str);
        if (this.ts.commentType == Token.CommentType.JSDOC && this.compilerEnv.isRecordingLocalJsDocComments()) {
            TokenStream tokenStream2 = this.ts;
            Comment comment2 = new Comment(tokenStream2.tokenBeg, tokenStream2.getTokenLength(), this.ts.commentType, str);
            this.currentJsDocComment = comment2;
            comment2.setLineColumnNumber(i, i2);
        }
        comment.setLineColumnNumber(i, i2);
        this.scannedComments.add(comment);
    }

    private void recordLabel(Label label, LabeledStatement labeledStatement) {
        if (peekToken() != 116) {
            codeBug();
        }
        consumeToken();
        String name = label.getName();
        Map<String, LabeledStatement> map = this.labelSet;
        if (map == null) {
            this.labelSet = new HashMap();
        } else {
            LabeledStatement labeledStatement2 = map.get(name);
            if (labeledStatement2 != null) {
                if (this.compilerEnv.isIdeMode()) {
                    Label labelByName = labeledStatement2.getLabelByName(name);
                    reportError("msg.dup.label", labelByName.getAbsolutePosition(), labelByName.getLength());
                }
                reportError("msg.dup.label", label.getPosition(), label.getLength());
            }
        }
        labeledStatement.addLabel(label);
        this.labelSet.put(name, labeledStatement);
    }

    private AstNode relExpr() {
        AstNode shiftExpr = shiftExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            if (peekToken != 57) {
                if (peekToken != 58) {
                    switch (peekToken) {
                    }
                } else {
                    continue;
                }
                consumeToken();
                shiftExpr = new InfixExpression(peekToken, shiftExpr, shiftExpr(), i);
            } else if (!this.inForInit) {
                consumeToken();
                shiftExpr = new InfixExpression(peekToken, shiftExpr, shiftExpr(), i);
            }
        }
        return shiftExpr;
    }

    private void restoreRelativeLoopPosition(Loop loop) {
        if (loop.getParent() != null) {
            loop.setRelative(loop.getParent().getPosition());
        }
    }

    private AstNode returnOrYield(int i, boolean z) {
        boolean z2;
        int i2;
        AstNode astNode;
        AstNode yield;
        if (!insideFunctionBody()) {
            reportError(i == 4 ? "msg.bad.return" : "msg.bad.yield");
        }
        consumeToken();
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        TokenStream tokenStream = this.ts;
        int i3 = tokenStream.tokenBeg;
        int i4 = tokenStream.tokenEnd;
        if (i == 78 && this.compilerEnv.getLanguageVersion() >= 200 && peekToken() == 23) {
            consumeToken();
            z2 = true;
        } else {
            z2 = false;
        }
        int peekTokenOrEOL = peekTokenOrEOL();
        if (peekTokenOrEOL == -1 || peekTokenOrEOL == 0 || peekTokenOrEOL == 1 || (peekTokenOrEOL == 78 ? this.compilerEnv.getLanguageVersion() < 200 : peekTokenOrEOL == 91 || peekTokenOrEOL == 93 || peekTokenOrEOL == 95 || peekTokenOrEOL == 97)) {
            i2 = i4;
            astNode = null;
        } else {
            astNode = expr(false);
            i2 = getNodeEnd(astNode);
        }
        int i5 = this.endFlags;
        if (i == 4) {
            this.endFlags = i5 | (astNode == null ? 2 : 4);
            int i6 = i2 - i3;
            yield = new ReturnStatement(i3, i6, astNode);
            if (nowAllSet(i5, this.endFlags, 6)) {
                addStrictWarning("msg.return.inconsistent", "", i3, i6);
            }
        } else {
            if (!insideFunctionBody()) {
                reportError("msg.bad.yield");
            }
            this.endFlags |= 8;
            yield = new Yield(i3, i2 - i3, astNode, z2);
            setRequiresActivation();
            setIsGenerator();
            if (!z) {
                yield.setLineColumnNumber(lineNumber, columnNumber);
                yield = new ExpressionStatement(yield);
            }
        }
        if (insideFunctionBody() && nowAllSet(i5, this.endFlags, 12) && !((FunctionNode) this.currentScriptOrFn).isES6Generator()) {
            Name functionName = ((FunctionNode) this.currentScriptOrFn).getFunctionName();
            if (functionName == null || functionName.length() == 0) {
                addError("msg.anon.generator.returns", "");
            } else {
                addError("msg.generator.returns", functionName.getIdentifier());
            }
        }
        yield.setLineColumnNumber(lineNumber, columnNumber);
        return yield;
    }

    private void saveNameTokenData(int i, String str, int i2, int i3) {
        this.prevNameTokenStart = i;
        this.prevNameTokenString = str;
        this.prevNameTokenLineno = i2;
        this.prevNameTokenColumn = i3;
    }

    private void setupDefaultValues(String str, Node node, AstNode astNode, int i, Transformer transformer) {
        Node node2 = astNode;
        if (astNode != null) {
            if (transformer != null) {
                node2 = transformer.transform(astNode);
            }
            Node node3 = new Node(Token.HOOK, new Node(51, createName(str), createName("undefined")), node2, createName(str));
            if (transformer == null) {
                this.currentScriptOrFn.putDestructuringRvalues(node3, node2);
            }
            node.addChildToBack(new Node(i, createName(54, str, null), node3));
        }
    }

    private AstNode shiftExpr() {
        AstNode addExpr = addExpr();
        while (true) {
            int peekToken = peekToken();
            int i = this.ts.tokenBeg;
            switch (peekToken) {
                case 18:
                case 19:
                case 20:
                    consumeToken();
                    addExpr = new InfixExpression(peekToken, addExpr, addExpr(), i);
                default:
                    return addExpr;
            }
        }
    }

    private AstNode statement() {
        int peekTokenOrEOL;
        int i = this.ts.tokenBeg;
        try {
            AstNode statementHelper = statementHelper();
            if (statementHelper != null) {
                if (this.compilerEnv.isStrictMode() && !statementHelper.hasSideEffects()) {
                    int position = statementHelper.getPosition();
                    int max = Math.max(position, lineBeginningFor(position));
                    addStrictWarning(statementHelper instanceof EmptyStatement ? "msg.extra.trailing.semi" : "msg.no.side.effects", "", max, nodeEnd(statementHelper) - max);
                }
                if (peekToken() == 175) {
                    int lineno = statementHelper.getLineno();
                    List<Comment> list = this.scannedComments;
                    if (lineno == list.get(list.size() - 1).getLineno()) {
                        List<Comment> list2 = this.scannedComments;
                        statementHelper.setInlineComment(list2.get(list2.size() - 1));
                        consumeToken();
                    }
                }
                return statementHelper;
            }
        } catch (ParserException unused) {
        }
        do {
            peekTokenOrEOL = peekTokenOrEOL();
            consumeToken();
            if (peekTokenOrEOL == -1 || peekTokenOrEOL == 0 || peekTokenOrEOL == 1) {
                break;
            }
        } while (peekTokenOrEOL != 91);
        return new EmptyStatement(i, this.ts.tokenBeg - i);
    }

    private AstNode statementHelper() {
        AstNode returnOrYield;
        LabeledStatement labeledStatement = this.currentLabel;
        if (labeledStatement != null && labeledStatement.getStatement() != null) {
            this.currentLabel = null;
        }
        int peekToken = peekToken();
        TokenStream tokenStream = this.ts;
        int i = tokenStream.tokenBeg;
        if (peekToken == -1) {
            consumeToken();
            return makeErrorNode();
        }
        if (peekToken != 4) {
            if (peekToken == 44) {
                returnOrYield = nameOrLabel();
                if (!(returnOrYield instanceof ExpressionStatement)) {
                    return returnOrYield;
                }
            } else if (peekToken == 55) {
                returnOrYield = throwStatement();
            } else if (peekToken != 78) {
                if (peekToken == 94) {
                    return block();
                }
                if (peekToken == 122) {
                    consumeToken();
                    return function(3);
                }
                if (peekToken == 125) {
                    return ifStatement();
                }
                if (peekToken == 127) {
                    return switchStatement();
                }
                if (peekToken == 90) {
                    return tryStatement();
                }
                if (peekToken == 91) {
                    consumeToken();
                    int i2 = this.ts.tokenBeg;
                    EmptyStatement emptyStatement = new EmptyStatement(i2, this.ts.tokenEnd - i2);
                    emptyStatement.setLineColumnNumber(lineNumber(), columnNumber());
                    return emptyStatement;
                }
                if (peekToken != 167) {
                    if (peekToken != 168) {
                        if (peekToken == 174) {
                            consumeToken();
                            TokenStream tokenStream2 = this.ts;
                            int i3 = tokenStream2.tokenBeg;
                            returnOrYield = new KeywordLiteral(i3, tokenStream2.tokenEnd - i3, peekToken);
                            returnOrYield.setLineColumnNumber(lineNumber(), columnNumber());
                        } else {
                            if (peekToken == 175) {
                                List<Comment> list = this.scannedComments;
                                return list.get(list.size() - 1);
                            }
                            switch (peekToken) {
                                case 129:
                                    returnOrYield = defaultXmlNamespace();
                                    break;
                                case 130:
                                    return whileLoop();
                                case Token.DO /* 131 */:
                                    return doLoop();
                                case Token.FOR /* 132 */:
                                    return forLoop();
                                case Token.BREAK /* 133 */:
                                    returnOrYield = breakStatement();
                                    break;
                                case 134:
                                    returnOrYield = continueStatement();
                                    break;
                                case 135:
                                    break;
                                case Token.WITH /* 136 */:
                                    if (this.inUseStrictDirective) {
                                        reportError("msg.no.with.strict");
                                    }
                                    return withStatement();
                                default:
                                    int lineno = tokenStream.getLineno();
                                    int tokenColumn = this.ts.getTokenColumn();
                                    returnOrYield = new ExpressionStatement(expr(false), true ^ insideFunctionBody());
                                    returnOrYield.setLineColumnNumber(lineno, tokenColumn);
                                    break;
                            }
                        }
                    }
                    consumeToken();
                    int lineNumber = lineNumber();
                    int columnNumber = columnNumber();
                    returnOrYield = variables(this.currentToken, this.ts.tokenBeg, true);
                    returnOrYield.setLineColumnNumber(lineNumber, columnNumber);
                } else {
                    AstNode letStatement = letStatement();
                    if (!(letStatement instanceof VariableDeclaration) || peekToken() != 91) {
                        return letStatement;
                    }
                    returnOrYield = letStatement;
                }
            }
            autoInsertSemicolon(returnOrYield);
            return returnOrYield;
        }
        returnOrYield = returnOrYield(peekToken, false);
        autoInsertSemicolon(returnOrYield);
        return returnOrYield;
    }

    private AstNode statements(AstNode astNode) {
        if (this.currentToken != 94 && !this.compilerEnv.isIdeMode()) {
            codeBug();
        }
        int i = this.ts.tokenBeg;
        if (astNode == null) {
            astNode = new Block(i);
        }
        astNode.setLineColumnNumber(lineNumber(), columnNumber());
        while (true) {
            int peekToken = peekToken();
            if (peekToken <= 0 || peekToken == 95) {
                break;
            }
            astNode.addChild(statement());
        }
        astNode.setLength(this.ts.tokenBeg - i);
        return astNode;
    }

    private SwitchStatement switchStatement() {
        boolean z;
        AstNode astNode;
        if (this.currentToken != 127) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.tokenBeg;
        SwitchStatement switchStatement = new SwitchStatement(i);
        switchStatement.setLineColumnNumber(lineNumber(), columnNumber());
        if (mustMatchToken(96, "msg.no.paren.switch", true)) {
            switchStatement.setLp(this.ts.tokenBeg - i);
        }
        switchStatement.setExpression(expr(false));
        enterSwitch(switchStatement);
        try {
            if (mustMatchToken(97, "msg.no.paren.after.switch", true)) {
                switchStatement.setRp(this.ts.tokenBeg - i);
            }
            mustMatchToken(94, "msg.no.brace.switch", true);
            boolean z2 = false;
            while (true) {
                int nextToken = nextToken();
                int i2 = this.ts.tokenBeg;
                int lineNumber = lineNumber();
                int columnNumber = columnNumber();
                if (nextToken == 95) {
                    switchStatement.setLength(this.ts.tokenEnd - i);
                    break;
                }
                if (nextToken != 175) {
                    if (nextToken == 128) {
                        AstNode expr = expr(false);
                        mustMatchToken(116, "msg.no.colon.case", true);
                        z = z2;
                        astNode = expr;
                    } else {
                        if (nextToken != 129) {
                            reportError("msg.bad.switch");
                            break;
                        }
                        if (z2) {
                            reportError("msg.double.switch.default");
                        }
                        mustMatchToken(116, "msg.no.colon.case", true);
                        astNode = null;
                        z = true;
                    }
                    SwitchCase switchCase = new SwitchCase(i2);
                    switchCase.setExpression(astNode);
                    switchCase.setLength(this.ts.tokenEnd - i);
                    switchCase.setLineColumnNumber(lineNumber, columnNumber);
                    while (true) {
                        int peekToken = peekToken();
                        if (peekToken == 95 || peekToken == 128 || peekToken == 129 || peekToken == 0) {
                            break;
                        }
                        if (peekToken == 175) {
                            List<Comment> list = this.scannedComments;
                            Comment comment = list.get(list.size() - 1);
                            if (switchCase.getInlineComment() == null && comment.getLineno() == switchCase.getLineno()) {
                                switchCase.setInlineComment(comment);
                            } else {
                                switchCase.addStatement(comment);
                            }
                            consumeToken();
                        } else {
                            switchCase.addStatement(statement());
                        }
                    }
                    switchStatement.addCase(switchCase);
                    z2 = z;
                } else {
                    List<Comment> list2 = this.scannedComments;
                    switchStatement.addChild(list2.get(list2.size() - 1));
                }
            }
            exitSwitch();
            return switchStatement;
        } catch (Throwable th) {
            exitSwitch();
            throw th;
        }
    }

    private AstNode taggedTemplateLiteral(AstNode astNode) {
        AstNode templateLiteral = templateLiteral(true);
        TaggedTemplateLiteral taggedTemplateLiteral = new TaggedTemplateLiteral();
        taggedTemplateLiteral.setTarget(astNode);
        taggedTemplateLiteral.setTemplateLiteral(templateLiteral);
        taggedTemplateLiteral.setLineColumnNumber(astNode.getLineno(), astNode.getColumn());
        return taggedTemplateLiteral;
    }

    private AstNode templateLiteral(boolean z) {
        if (this.currentToken != 180) {
            codeBug();
        }
        TokenStream tokenStream = this.ts;
        int i = tokenStream.tokenBeg;
        int i2 = tokenStream.tokenEnd;
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        ArrayList arrayList = new ArrayList();
        TemplateLiteral templateLiteral = new TemplateLiteral(i);
        TokenStream tokenStream2 = this.ts;
        int i3 = tokenStream2.tokenBeg + 1;
        int readTemplateLiteral = tokenStream2.readTemplateLiteral(z);
        while (readTemplateLiteral == 182) {
            arrayList.add(createTemplateLiteralCharacters(i3));
            arrayList.add(expr(false));
            mustMatchToken(95, "msg.syntax", true);
            TokenStream tokenStream3 = this.ts;
            i3 = tokenStream3.tokenBeg + 1;
            readTemplateLiteral = tokenStream3.readTemplateLiteral(z);
        }
        if (readTemplateLiteral == -1) {
            return makeErrorNode();
        }
        arrayList.add(createTemplateLiteralCharacters(i3));
        int i4 = this.ts.tokenEnd;
        templateLiteral.setElements(arrayList);
        templateLiteral.setLength(i4 - i);
        templateLiteral.setLineColumnNumber(lineNumber, columnNumber);
        return templateLiteral;
    }

    private ThrowStatement throwStatement() {
        if (this.currentToken != 55) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.tokenBeg;
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        if (peekTokenOrEOL() == 1) {
            reportError("msg.bad.throw.eol");
        }
        ThrowStatement throwStatement = new ThrowStatement(i, expr(false));
        throwStatement.setLineColumnNumber(lineNumber, columnNumber);
        return throwStatement;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x017f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.mozilla.javascript.ast.TryStatement tryStatement() {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.Parser.tryStatement():org.mozilla.javascript.ast.TryStatement");
    }

    private AstNode unaryExpr() {
        int peekToken = peekToken();
        if (peekToken == 175) {
            consumeToken();
            peekToken = peekUntilNonComment(peekToken);
        }
        if (peekToken == -1) {
            consumeToken();
            return makeErrorNode();
        }
        if (peekToken != 14) {
            if (peekToken != 139) {
                if (peekToken == 21) {
                    consumeToken();
                    int lineNumber = lineNumber();
                    int columnNumber = columnNumber();
                    UnaryExpression unaryExpression = new UnaryExpression(28, this.ts.tokenBeg, unaryExpr());
                    unaryExpression.setLineColumnNumber(lineNumber, columnNumber);
                    return unaryExpression;
                }
                if (peekToken == 22) {
                    consumeToken();
                    int lineNumber2 = lineNumber();
                    int columnNumber2 = columnNumber();
                    UnaryExpression unaryExpression2 = new UnaryExpression(29, this.ts.tokenBeg, unaryExpr());
                    unaryExpression2.setLineColumnNumber(lineNumber2, columnNumber2);
                    return unaryExpression2;
                }
                if (peekToken != 26 && peekToken != 27) {
                    if (peekToken == 31) {
                        consumeToken();
                        int lineNumber3 = lineNumber();
                        int columnNumber3 = columnNumber();
                        UnaryExpression unaryExpression3 = new UnaryExpression(peekToken, this.ts.tokenBeg, unaryExpr());
                        unaryExpression3.setLineColumnNumber(lineNumber3, columnNumber3);
                        return unaryExpression3;
                    }
                    if (peekToken != 32) {
                        if (peekToken == 119 || peekToken == 120) {
                            consumeToken();
                            int lineNumber4 = lineNumber();
                            int columnNumber4 = columnNumber();
                            UpdateExpression updateExpression = new UpdateExpression(peekToken, this.ts.tokenBeg, memberExpr(true));
                            updateExpression.setLineColumnNumber(lineNumber4, columnNumber4);
                            checkBadIncDec(updateExpression);
                            return updateExpression;
                        }
                    }
                }
            }
            consumeToken();
            int lineNumber5 = lineNumber();
            int columnNumber5 = columnNumber();
            UnaryExpression unaryExpression4 = new UnaryExpression(peekToken, this.ts.tokenBeg, unaryExpr());
            unaryExpression4.setLineColumnNumber(lineNumber5, columnNumber5);
            return unaryExpression4;
        }
        if (this.compilerEnv.isXmlAvailable()) {
            consumeToken();
            return memberExprTail(true, xmlInitializer());
        }
        AstNode memberExpr = memberExpr(true);
        int peekTokenOrEOL = peekTokenOrEOL();
        if (peekTokenOrEOL != 119 && peekTokenOrEOL != 120) {
            return memberExpr;
        }
        consumeToken();
        UpdateExpression updateExpression2 = new UpdateExpression(peekTokenOrEOL, this.ts.tokenBeg, memberExpr, true);
        updateExpression2.setLineColumnNumber(memberExpr.getLineno(), memberExpr.getColumn());
        checkBadIncDec(updateExpression2);
        return updateExpression2;
    }

    private VariableDeclaration variables(int i, int i2, boolean z) {
        AstNode destructuringPrimaryExpr;
        int i3;
        Name name;
        VariableDeclaration variableDeclaration = new VariableDeclaration(i2);
        variableDeclaration.setType(i);
        variableDeclaration.setLineColumnNumber(lineNumber(), columnNumber());
        Comment andResetJsDoc = getAndResetJsDoc();
        if (andResetJsDoc != null) {
            variableDeclaration.setJsDocNode(andResetJsDoc);
        }
        do {
            int peekToken = peekToken();
            TokenStream tokenStream = this.ts;
            int i4 = tokenStream.tokenBeg;
            int i5 = tokenStream.tokenEnd;
            AstNode astNode = null;
            if (peekToken == 92 || peekToken == 94) {
                destructuringPrimaryExpr = destructuringPrimaryExpr();
                int nodeEnd = getNodeEnd(destructuringPrimaryExpr);
                if (!(destructuringPrimaryExpr instanceof DestructuringForm)) {
                    reportError("msg.bad.assign.left", i4, nodeEnd - i4);
                }
                markDestructuring(destructuringPrimaryExpr);
                i3 = nodeEnd;
                name = null;
            } else {
                mustMatchToken(44, "msg.bad.var", true);
                Name createNameNode = createNameNode();
                createNameNode.setLineColumnNumber(lineNumber(), columnNumber());
                if (this.inUseStrictDirective) {
                    String string = this.ts.getString();
                    if ("eval".equals(string) || "arguments".equals(this.ts.getString())) {
                        reportError("msg.bad.id.strict", string);
                    }
                }
                defineSymbol(i, this.ts.getString(), this.inForInit);
                i3 = i5;
                name = createNameNode;
                destructuringPrimaryExpr = null;
            }
            int lineNumber = lineNumber();
            int columnNumber = columnNumber();
            Comment andResetJsDoc2 = getAndResetJsDoc();
            if (matchToken(99, true)) {
                astNode = assignExpr();
                i3 = getNodeEnd(astNode);
            }
            VariableInitializer variableInitializer = new VariableInitializer(i4, i3 - i4);
            if (destructuringPrimaryExpr != null) {
                if (astNode == null && !this.inForInit) {
                    reportError("msg.destruct.assign.no.init");
                }
                variableInitializer.setTarget(destructuringPrimaryExpr);
            } else {
                variableInitializer.setTarget(name);
            }
            variableInitializer.setInitializer(astNode);
            variableInitializer.setType(i);
            variableInitializer.setJsDocNode(andResetJsDoc2);
            variableInitializer.setLineColumnNumber(lineNumber, columnNumber);
            variableDeclaration.addVariable(variableInitializer);
        } while (matchToken(98, true));
        variableDeclaration.setLength(i3 - i2);
        variableDeclaration.setIsStatement(z);
        return variableDeclaration;
    }

    private void warnMissingSemi(int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            int[] iArr = new int[2];
            String line = this.ts.getLine(i2, iArr);
            if (this.compilerEnv.isIdeMode()) {
                i = Math.max(i, i2 - iArr[1]);
            }
            int i3 = i;
            if (line != null) {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3, iArr[0], line, iArr[1]);
            } else {
                addStrictWarning("msg.missing.semi", "", i3, i2 - i3);
            }
        }
    }

    private void warnTrailingComma(int i, List<?> list, int i2) {
        if (this.compilerEnv.getWarnTrailingComma()) {
            if (!list.isEmpty()) {
                i = ((AstNode) list.get(0)).getPosition();
            }
            int max = Math.max(i, lineBeginningFor(i2));
            addWarning("msg.extra.trailing.comma", max, i2 - max);
        }
    }

    private WhileLoop whileLoop() {
        if (this.currentToken != 130) {
            codeBug();
        }
        consumeToken();
        int i = this.ts.tokenBeg;
        WhileLoop whileLoop = new WhileLoop(i);
        whileLoop.setLineColumnNumber(lineNumber(), columnNumber());
        enterLoop(whileLoop);
        try {
            ConditionData condition = condition();
            whileLoop.setCondition(condition.condition);
            whileLoop.setParens(condition.lp - i, condition.rp - i);
            AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(whileLoop);
            whileLoop.setLength(getNodeEnd(nextStatementAfterInlineComments) - i);
            restoreRelativeLoopPosition(whileLoop);
            whileLoop.setBody(nextStatementAfterInlineComments);
            return whileLoop;
        } finally {
            exitLoop();
        }
    }

    private WithStatement withStatement() {
        if (this.currentToken != 136) {
            codeBug();
        }
        consumeToken();
        Comment andResetJsDoc = getAndResetJsDoc();
        int lineNumber = lineNumber();
        int columnNumber = columnNumber();
        int i = this.ts.tokenBeg;
        int i2 = mustMatchToken(96, "msg.no.paren.with", true) ? this.ts.tokenBeg : -1;
        AstNode expr = expr(false);
        int i3 = mustMatchToken(97, "msg.no.paren.after.with", true) ? this.ts.tokenBeg : -1;
        WithStatement withStatement = new WithStatement(i);
        AstNode nextStatementAfterInlineComments = getNextStatementAfterInlineComments(withStatement);
        withStatement.setLength(getNodeEnd(nextStatementAfterInlineComments) - i);
        withStatement.setJsDocNode(andResetJsDoc);
        withStatement.setExpression(expr);
        withStatement.setStatement(nextStatementAfterInlineComments);
        withStatement.setParens(i2, i3);
        withStatement.setLineColumnNumber(lineNumber, columnNumber);
        return withStatement;
    }

    private XmlElemRef xmlElemRef(int i, Name name, int i2) {
        int i3 = this.ts.tokenBeg;
        int i4 = -1;
        int i5 = i != -1 ? i : i3;
        AstNode expr = expr(false);
        int nodeEnd = getNodeEnd(expr);
        if (mustMatchToken(93, "msg.no.bracket.index", true)) {
            TokenStream tokenStream = this.ts;
            i4 = tokenStream.tokenBeg;
            nodeEnd = tokenStream.tokenEnd;
        }
        XmlElemRef xmlElemRef = new XmlElemRef(i5, nodeEnd - i5);
        xmlElemRef.setNamespace(name);
        xmlElemRef.setColonPos(i2);
        xmlElemRef.setAtPos(i);
        xmlElemRef.setExpression(expr);
        xmlElemRef.setBrackets(i3, i4);
        return xmlElemRef;
    }

    private AstNode xmlInitializer() {
        if (this.currentToken != 14) {
            codeBug();
        }
        TokenStream tokenStream = this.ts;
        int i = tokenStream.tokenBeg;
        int firstXMLToken = tokenStream.getFirstXMLToken();
        if (firstXMLToken != 159 && firstXMLToken != 162) {
            reportError("msg.syntax");
            return makeErrorNode();
        }
        XmlLiteral xmlLiteral = new XmlLiteral(i);
        xmlLiteral.setLineColumnNumber(lineNumber(), columnNumber());
        while (firstXMLToken == 159) {
            TokenStream tokenStream2 = this.ts;
            xmlLiteral.addFragment(new XmlString(tokenStream2.tokenBeg, tokenStream2.getString()));
            mustMatchToken(94, "msg.syntax", true);
            int i2 = this.ts.tokenBeg;
            AstNode emptyExpression = peekToken() == 95 ? new EmptyExpression(i2, this.ts.tokenEnd - i2) : expr(false);
            mustMatchToken(95, "msg.syntax", true);
            XmlExpression xmlExpression = new XmlExpression(i2, emptyExpression);
            xmlExpression.setIsXmlAttribute(this.ts.isXMLAttribute());
            xmlExpression.setLength(this.ts.tokenEnd - i2);
            xmlLiteral.addFragment(xmlExpression);
            firstXMLToken = this.ts.getNextXMLToken();
        }
        if (firstXMLToken != 162) {
            reportError("msg.syntax");
            return makeErrorNode();
        }
        TokenStream tokenStream3 = this.ts;
        xmlLiteral.addFragment(new XmlString(tokenStream3.tokenBeg, tokenStream3.getString()));
        return xmlLiteral;
    }

    public void addError(String str, String str2, int i, int i2) {
        this.syntaxErrorCount++;
        String lookupMessage = lookupMessage(str, str2);
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.error(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.error(lookupMessage, this.sourceURI, this.currentPos.getLineno(), this.currentPos.getLine(), this.currentPos.getOffset());
        }
    }

    public void addStrictWarning(String str, String str2) {
        addStrictWarning(str, str2, this.currentPos.getPosition(), this.currentPos.getLength());
    }

    public void addWarning(String str, String str2, int i, int i2) {
        String lookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2);
            return;
        }
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.warning(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(lookupMessage, this.sourceURI, this.currentPos.getLineno(), this.currentPos.getLine(), this.currentPos.getOffset());
        }
    }

    public void checkActivationName(String str, int i) {
        if (insideFunctionBody()) {
            if ((!"arguments".equals(str) || ((FunctionNode) this.currentScriptOrFn).getFunctionType() == 4) && ((this.compilerEnv.getActivationNames() == null || !this.compilerEnv.getActivationNames().contains(str)) && !("length".equals(str) && i == 33 && this.compilerEnv.getLanguageVersion() == 120))) {
                return;
            }
            setRequiresActivation();
        }
    }

    public void checkMutableReference(Node node) {
        if ((node.getIntProp(16, 0) & 4) != 0) {
            reportError("msg.bad.assign.left");
        }
    }

    public Node createDestructuringAssignment(int i, Node node, Node node2, AstNode astNode, Transformer transformer) {
        String nextTempName = this.currentScriptOrFn.getNextTempName();
        Node destructuringAssignmentHelper = destructuringAssignmentHelper(i, node, node2, nextTempName, astNode, transformer);
        destructuringAssignmentHelper.getLastChild().addChildToBack(createName(nextTempName));
        return destructuringAssignmentHelper;
    }

    public Node createName(int i, String str, Node node) {
        Node createName = createName(str);
        createName.setType(i);
        if (node != null) {
            createName.addChildToBack(node);
        }
        return createName;
    }

    public Node createNumber(double d) {
        return Node.newNumber(d);
    }

    public PerFunctionVariables createPerFunctionVariables(FunctionNode functionNode) {
        return new PerFunctionVariables(functionNode);
    }

    public Scope createScopeNode(int i, int i2, int i3) {
        Scope scope = new Scope();
        scope.setType(i);
        scope.setLineColumnNumber(i2, i3);
        return scope;
    }

    public void defineSymbol(int i, String str, boolean z) {
        if (str == null) {
            if (this.compilerEnv.isIdeMode()) {
                return;
            } else {
                codeBug();
            }
        }
        Scope definingScope = this.currentScope.getDefiningScope(str);
        org.mozilla.javascript.ast.Symbol symbol = definingScope != null ? definingScope.getSymbol(str) : null;
        int declType = symbol != null ? symbol.getDeclType() : -1;
        String str2 = "msg.var.redecl";
        if (symbol != null && (declType == 168 || i == 168 || (definingScope == this.currentScope && declType == 167))) {
            if (declType == 168) {
                str2 = "msg.const.redecl";
            } else if (declType == 167) {
                str2 = "msg.let.redecl";
            } else if (declType != 135) {
                str2 = declType == 122 ? "msg.fn.redecl" : "msg.parm.redecl";
            }
            addError(str2, str);
            return;
        }
        if (i == 96) {
            if (symbol != null) {
                addWarning("msg.dup.parms", str);
            }
            this.currentScriptOrFn.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
            return;
        }
        if (i != 122 && i != 135) {
            if (i == 167) {
                if (z || !(this.currentScope.getType() == 125 || (this.currentScope instanceof Loop))) {
                    this.currentScope.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
                    return;
                } else {
                    addError("msg.let.decl.not.in.block");
                    return;
                }
            }
            if (i != 168) {
                throw codeBug();
            }
        }
        if (symbol == null) {
            this.currentScriptOrFn.putSymbol(new org.mozilla.javascript.ast.Symbol(i, str));
        } else if (declType == 135) {
            addStrictWarning("msg.var.redecl", str);
        } else if (declType == 96) {
            addStrictWarning("msg.var.hides.arg", str);
        }
    }

    public boolean destructuringArray(ArrayLiteral arrayLiteral, int i, String str, Node node, List<String> list, AstNode astNode, Transformer transformer) {
        Node node2;
        boolean z;
        int i2;
        Parser parser = this;
        int i3 = i;
        int i4 = i3 == 168 ? Token.SETCONST : 8;
        boolean z2 = false;
        int i5 = 0;
        boolean z3 = true;
        for (AstNode astNode2 : arrayLiteral.getElements()) {
            if (astNode2.getType() == 141) {
                i5++;
            } else {
                Node node3 = new Node(39, parser.createName(str), parser.createNumber(i5));
                if (astNode == null || z2) {
                    node2 = node;
                    z = z2;
                } else {
                    node2 = node;
                    parser.setupDefaultValues(str, node2, astNode, i4, transformer);
                    z = true;
                }
                if (astNode2.getType() == 44) {
                    String string = astNode2.getString();
                    node2.addChildToBack(new Node(i4, parser.createName(54, string, null), node3));
                    if (i3 != -1) {
                        parser.defineSymbol(i3, string, true);
                        list.add(string);
                    }
                    i2 = i4;
                } else if (astNode2.getType() == 99) {
                    int i6 = i3;
                    int i7 = i4;
                    parser.processDestructuringDefaults(i6, node2, list, (Assignment) astNode2, node3, i7, transformer);
                    i2 = i7;
                } else {
                    i2 = i4;
                    node2.addChildToBack(parser.destructuringAssignmentHelper(i, astNode2, node3, parser.currentScriptOrFn.getNextTempName(), null, transformer));
                }
                i5++;
                parser = this;
                i3 = i;
                z3 = false;
                i4 = i2;
                z2 = z;
            }
        }
        return z3;
    }

    public Node destructuringAssignmentHelper(int i, Node node, Node node2, String str, AstNode astNode, Transformer transformer) {
        Scope createScopeNode = createScopeNode(172, node.getLineno(), node.getColumn());
        createScopeNode.addChildToFront(new Node(Token.LET, createName(44, str, node2)));
        try {
            pushScope(createScopeNode);
            boolean z = true;
            defineSymbol(Token.LET, str, true);
            popScope();
            Node node3 = new Node(98);
            createScopeNode.addChildToBack(node3);
            List<String> arrayList = new ArrayList<>();
            if (node instanceof ArrayLiteral) {
                z = destructuringArray((ArrayLiteral) node, i, str, node3, arrayList, astNode, transformer);
            } else if (node instanceof ObjectLiteral) {
                z = destructuringObject((ObjectLiteral) node, i, str, node3, arrayList, astNode, transformer);
            } else if (node.getType() == 33 || node.getType() == 39) {
                if (i == 135 || i == 167 || i == 168) {
                    reportError("msg.bad.assign.left");
                }
                node3.addChildToBack(simpleAssignment(node, createName(str), transformer));
            } else {
                reportError("msg.bad.assign.left");
            }
            if (z) {
                node3.addChildToBack(createNumber(0.0d));
            }
            createScopeNode.putProp(22, arrayList);
            return createScopeNode;
        } catch (Throwable th) {
            popScope();
            throw th;
        }
    }

    public boolean destructuringObject(ObjectLiteral objectLiteral, int i, String str, Node node, List<String> list, AstNode astNode, Transformer transformer) {
        int i2;
        int i3;
        Node node2;
        Node node3;
        int i4;
        int i5 = i;
        String str2 = str;
        int i6 = i5 == 168 ? Token.SETCONST : 8;
        boolean z = false;
        boolean z2 = true;
        for (ObjectProperty objectProperty : objectLiteral.getElements()) {
            if (this.ts != null) {
                i2 = lineNumber();
                i3 = columnNumber();
            } else {
                i2 = 0;
                i3 = 0;
            }
            AstNode left = objectProperty.getLeft();
            if (left instanceof Name) {
                node2 = new Node(33, createName(str2), Node.newString(((Name) left).getIdentifier()));
            } else if (left instanceof StringLiteral) {
                node2 = new Node(33, createName(str2), Node.newString(((StringLiteral) left).getValue()));
            } else {
                if (!(left instanceof NumberLiteral)) {
                    if (!(left instanceof ComputedPropertyKey)) {
                        throw codeBug();
                    }
                    reportError("msg.bad.computed.property.in.destruct");
                    return false;
                }
                node2 = new Node(39, createName(str2), createNumber((int) ((NumberLiteral) left).getNumber()));
            }
            Node node4 = node2;
            node4.setLineColumnNumber(i2, i3);
            if (astNode == null || z) {
                node3 = node;
            } else {
                node3 = node;
                setupDefaultValues(str2, node3, astNode, i6, transformer);
                z = true;
            }
            AstNode right = objectProperty.getRight();
            if (right.getType() == 44) {
                String identifier = ((Name) right).getIdentifier();
                node3.addChildToBack(new Node(i6, createName(54, identifier, null), node4));
                if (i5 != -1) {
                    defineSymbol(i5, identifier, true);
                    list.add(identifier);
                }
            } else if (right.getType() == 99) {
                processDestructuringDefaults(i5, node3, list, (Assignment) right, node4, i6, transformer);
            } else {
                i4 = i6;
                node3.addChildToBack(destructuringAssignmentHelper(i, right, node4, this.currentScriptOrFn.getNextTempName(), null, transformer));
                i5 = i;
                str2 = str;
                z2 = false;
                i6 = i4;
            }
            i4 = i6;
            i5 = i;
            str2 = str;
            z2 = false;
            i6 = i4;
        }
        return z2;
    }

    public boolean eof() {
        return this.ts.eof();
    }

    public boolean inUseStrictDirective() {
        return this.inUseStrictDirective;
    }

    public boolean insideFunctionBody() {
        return this.nestingOfFunction != 0;
    }

    public boolean insideFunctionParams() {
        return this.nestingOfFunctionParams != 0;
    }

    public String lookupMessage(String str, String str2) {
        return str2 == null ? ScriptRuntime.getMessageById(str, new Object[0]) : ScriptRuntime.getMessageById(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void markDestructuring(AstNode astNode) {
        if (astNode instanceof DestructuringForm) {
            ((DestructuringForm) astNode).setIsDestructuring(true);
        } else if (astNode instanceof ParenthesizedExpression) {
            markDestructuring(((ParenthesizedExpression) astNode).getExpression());
        }
    }

    public void popScope() {
        this.currentScope = this.currentScope.getParentScope();
    }

    public void pushScope(Scope scope) {
        Scope parentScope = scope.getParentScope();
        Scope scope2 = this.currentScope;
        if (parentScope == null) {
            scope2.addChildScope(scope);
        } else if (parentScope != scope2) {
            codeBug();
        }
        this.currentScope = scope;
    }

    public AstNode removeParens(AstNode astNode) {
        while (astNode instanceof ParenthesizedExpression) {
            astNode = ((ParenthesizedExpression) astNode).getExpression();
        }
        return astNode;
    }

    public void reportError(String str, String str2, int i, int i2) {
        addError(str, str2, i, i2);
        if (!this.compilerEnv.recoverFromErrors()) {
            throw new ParserException();
        }
    }

    public void reportErrorsIfExists(int i) {
        int i2 = this.syntaxErrorCount;
        if (i2 != 0) {
            String lookupMessage = lookupMessage("msg.got.syntax.errors", String.valueOf(i2));
            if (!this.compilerEnv.isIdeMode()) {
                throw this.errorReporter.runtimeError(lookupMessage, this.sourceURI, i, null, 0);
            }
        }
    }

    public void setDefaultUseStrictDirective(boolean z) {
        this.defaultUseStrictDirective = z;
    }

    public void setIsGenerator() {
        if (insideFunctionBody()) {
            ((FunctionNode) this.currentScriptOrFn).setIsGenerator();
        }
    }

    public void setRequiresActivation() {
        if (insideFunctionBody()) {
            ((FunctionNode) this.currentScriptOrFn).setRequiresActivation();
        }
    }

    public void setSourceURI(String str) {
        this.sourceURI = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.mozilla.javascript.Node] */
    /* JADX WARN: Type inference failed for: r4v3, types: [org.mozilla.javascript.ast.AstNode] */
    /* JADX WARN: Type inference failed for: r4v4, types: [org.mozilla.javascript.Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [org.mozilla.javascript.Node] */
    /* JADX WARN: Type inference failed for: r4v7, types: [org.mozilla.javascript.ast.Name] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.mozilla.javascript.Parser$Transformer] */
    public Node simpleAssignment(Node node, Node node2, Transformer transformer) {
        Node firstChild;
        ?? lastChild;
        int i;
        int type = node.getType();
        if (type != 33 && type != 39) {
            if (type != 44) {
                if (type != 73) {
                    throw codeBug();
                }
                Node firstChild2 = node.getFirstChild();
                checkMutableReference(firstChild2);
                return new Node(74, firstChild2, node2);
            }
            String identifier = ((Name) node).getIdentifier();
            if (this.inUseStrictDirective && ("eval".equals(identifier) || "arguments".equals(identifier))) {
                reportError("msg.bad.id.strict", identifier);
            }
            node.setType(54);
            return new Node(8, node, node2);
        }
        if (node instanceof PropertyGet) {
            PropertyGet propertyGet = (PropertyGet) node;
            AstNode target = propertyGet.getTarget();
            firstChild = target;
            if (transformer != 0) {
                firstChild = transformer.transform(target);
            }
            lastChild = propertyGet.getProperty();
        } else if (node instanceof ElementGet) {
            ElementGet elementGet = (ElementGet) node;
            AstNode target2 = elementGet.getTarget();
            lastChild = elementGet.getElement();
            firstChild = target2;
            if (transformer != 0) {
                firstChild = transformer.transform(target2);
            }
            if (transformer != 0) {
                lastChild = transformer.transform(lastChild);
            }
        } else {
            firstChild = node.getFirstChild();
            lastChild = node.getLastChild();
        }
        if (type == 33) {
            lastChild.setType(46);
            i = 37;
        } else {
            i = 41;
        }
        return new Node(i, firstChild, (Node) lastChild, node2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static class ConditionData {
        AstNode condition;
        int lp;
        int rp;

        private ConditionData() {
            this.lp = -1;
            this.rp = -1;
        }

        public /* synthetic */ ConditionData(int i) {
            this();
        }
    }

    public Node createName(String str) {
        checkActivationName(str, 44);
        return Node.newString(44, str);
    }

    public void addStrictWarning(String str, String str2, int i, int i2) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2);
        }
    }

    private void addStrictWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        if (this.compilerEnv.isStrictMode()) {
            addWarning(str, str2, i, i2, i3, str3, i4);
        }
    }

    private boolean mustMatchToken(int i, String str, int i2, int i3, boolean z) {
        if (matchToken(i, z)) {
            return true;
        }
        reportError(str, i2, i3);
        return false;
    }

    public void reportError(String str, String str2) {
        reportError(str, str2, this.currentPos.getPosition(), this.currentPos.getLength());
    }

    public void reportError(String str, int i, int i2) {
        reportError(str, null, i, i2);
    }

    public String lookupMessage(String str) {
        return lookupMessage(str, null);
    }

    public void reportError(String str) {
        reportError(str, null);
    }

    public Parser(CompilerEnvirons compilerEnvirons) {
        this(compilerEnvirons, compilerEnvirons.getErrorReporter());
    }

    public Node createDestructuringAssignment(int i, Node node, Node node2, Transformer transformer) {
        return createDestructuringAssignment(i, node, node2, null, transformer);
    }

    public Parser() {
        this(new CompilerEnvirons());
    }

    public Node createDestructuringAssignment(int i, Node node, Node node2, AstNode astNode) {
        return createDestructuringAssignment(i, node, node2, astNode, null);
    }

    public void addError(String str, int i, int i2) {
        addError(str, null, i, i2);
    }

    public void addError(String str, String str2) {
        addError(str, str2, this.currentPos.getPosition(), this.currentPos.getLength());
    }

    public void addError(String str, int i) {
        addError(str, Character.toString((char) i));
    }

    public void addError(String str) {
        addError(str, this.currentPos.getPosition(), this.currentPos.getLength());
    }

    private void addError(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        this.syntaxErrorCount++;
        String lookupMessage = lookupMessage(str, str2);
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.error(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.error(lookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    public void addWarning(String str, int i, int i2) {
        addWarning(str, null, i, i2);
    }

    public void addWarning(String str, String str2) {
        addWarning(str, str2, this.currentPos.getPosition(), this.currentPos.getLength());
    }

    private void addWarning(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        String lookupMessage = lookupMessage(str, str2);
        if (this.compilerEnv.reportWarningAsError()) {
            addError(str, str2, i, i2, i3, str3, i4);
            return;
        }
        IdeErrorReporter ideErrorReporter = this.errorCollector;
        if (ideErrorReporter != null) {
            ideErrorReporter.warning(lookupMessage, this.sourceURI, i, i2);
        } else {
            this.errorReporter.warning(lookupMessage, this.sourceURI, i3, str3, i4);
        }
    }

    private AstNode statements() {
        return statements(null);
    }

    private Name createNameNode() {
        return createNameNode(false, 44);
    }

    private AstNode generatorExpression(AstNode astNode, int i) {
        return generatorExpression(astNode, i, false);
    }

    public Node simpleAssignment(Node node, Node node2) {
        return simpleAssignment(node, node2, null);
    }

    public void defineSymbol(int i, String str) {
        defineSymbol(i, str, false);
    }

    @Deprecated
    public AstRoot parse(Reader reader, String str, int i) {
        if (!this.parseFinished) {
            if (this.compilerEnv.isIdeMode()) {
                return parse(Kit.readReader(reader), str, i);
            }
            try {
                this.sourceURI = str;
                TokenStream tokenStream = new TokenStream(this, reader, null, i);
                this.ts = tokenStream;
                this.currentPos = tokenStream;
                return parse();
            } finally {
                this.parseFinished = true;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("parser reused");
        return null;
    }

    public AstRoot parse(String str, String str2, int i) {
        if (!this.parseFinished) {
            this.sourceURI = str2;
            if (this.compilerEnv.isIdeMode()) {
                this.sourceChars = str.toCharArray();
            }
            TokenStream tokenStream = new TokenStream(this, null, str, i);
            this.ts = tokenStream;
            this.currentPos = tokenStream;
            try {
                try {
                    return parse();
                } catch (IOException unused) {
                    throw new IllegalStateException();
                }
            } finally {
                this.parseFinished = true;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("parser reused");
        return null;
    }

    private FunctionNode function(int i) {
        return function(i, false);
    }
}
