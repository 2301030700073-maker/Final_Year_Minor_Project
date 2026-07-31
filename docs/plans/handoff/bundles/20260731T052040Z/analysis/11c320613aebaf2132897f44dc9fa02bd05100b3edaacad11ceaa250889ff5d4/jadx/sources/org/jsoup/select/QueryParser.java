package org.jsoup.select;

import androidx.sqlite.SQLite;
import java.util.Arrays;
import java.util.regex.Pattern;
import org.jsoup.helper.Regex;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.CombiningEvaluator;
import org.jsoup.select.Evaluator;
import org.jsoup.select.NodeEvaluator;
import org.jsoup.select.StructuralEvaluator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class QueryParser implements AutoCloseable {
    public boolean inNodeContext;
    public final String query;
    public final TokenQueue tq;
    public static final char[] Combinators = {'>', '+', '~'};
    public static final String[] AttributeEvals = {"=", "!=", "^=", "$=", "*=", "~="};
    public static final char[] SequenceEnders = {',', ')'};
    public static final Pattern NthStepOffset = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    public static final Pattern NthOffset = Pattern.compile("([+-])?(\\d+)");

    public QueryParser(String str) {
        SQLite.notEmpty(str);
        String trim = str.trim();
        this.query = trim;
        this.tq = new TokenQueue(trim);
    }

    public static Evaluator and(Evaluator evaluator, Evaluator evaluator2) {
        if (evaluator == null) {
            return evaluator2;
        }
        if (!(evaluator instanceof CombiningEvaluator.And)) {
            return new CombiningEvaluator.And(Arrays.asList(evaluator, evaluator2));
        }
        CombiningEvaluator.And and = (CombiningEvaluator.And) evaluator;
        and.evaluators.add(evaluator2);
        and.updateEvaluators();
        return evaluator;
    }

    public static Evaluator parse(String str) {
        try {
            QueryParser queryParser = new QueryParser(str);
            try {
                Evaluator parseSelectorGroup = queryParser.parseSelectorGroup();
                TokenQueue tokenQueue = queryParser.tq;
                tokenQueue.consumeWhitespace();
                CharacterReader characterReader = tokenQueue.reader;
                if (!characterReader.isEmpty()) {
                    throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", queryParser.query, characterReader.consumeToEnd());
                }
                queryParser.close();
                return parseSelectorGroup;
            } finally {
            }
        } catch (IllegalArgumentException e) {
            throw new Selector$SelectorParseException(e.getMessage());
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.tq.close();
    }

    public final int consumeIndex() {
        String trim = consumeParens().trim();
        boolean z = false;
        if (trim != null && trim.length() != 0) {
            int length = trim.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                if (!StringUtil.isDigit(trim.charAt(i))) {
                    break;
                }
                i++;
            }
        }
        SQLite.isTrue("Index must be numeric", z);
        return Integer.parseInt(trim);
    }

    public final String consumeParens() {
        return this.tq.chompBalanced('(', ')');
    }

    public final Evaluator contains(boolean z) {
        String str = z ? ":containsOwn" : ":contains";
        String unescape = TokenQueue.unescape(consumeParens());
        SQLite.notEmpty(unescape, str.concat("(text) query must not be empty"));
        return this.inNodeContext ? new NodeEvaluator.MatchesValue(unescape) : z ? new Evaluator.Id(unescape, 5) : new Evaluator.Id(unescape, 6);
    }

    public final Evaluator containsWholeText(boolean z) {
        String str = z ? ":containsWholeOwnText" : ":containsWholeText";
        String unescape = TokenQueue.unescape(consumeParens());
        SQLite.notEmpty(unescape, str.concat("(text) query must not be empty"));
        boolean z2 = false;
        return z ? new Evaluator.Id(7, unescape, z2) : new Evaluator.Id(8, unescape, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.jsoup.select.Evaluator.IsNthChild cssNthChild(boolean r10, boolean r11) {
        /*
            r9 = this;
            java.lang.String r9 = r9.consumeParens()
            java.lang.String r9 = org.jsoup.internal.QuietAppendable$BaseAppendable.normalize(r9)
            java.lang.String r0 = "odd"
            boolean r0 = r0.equals(r9)
            r1 = 3
            r2 = 0
            r3 = 1
            r4 = 2
            if (r0 == 0) goto L18
            r0 = r3
        L15:
            r9 = r4
            goto L83
        L18:
            java.lang.String r0 = "even"
            boolean r0 = r0.equals(r9)
            if (r0 == 0) goto L22
            r0 = r2
            goto L15
        L22:
            java.util.regex.Pattern r0 = org.jsoup.select.QueryParser.NthStepOffset
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r5 = r0.matches()
            java.lang.String r6 = ""
            java.lang.String r7 = "^\\+"
            if (r5 == 0) goto L6a
            java.lang.String r9 = r0.group(r1)
            if (r9 == 0) goto L45
            java.lang.String r9 = r0.group(r3)
            java.lang.String r9 = r9.replaceFirst(r7, r6)
            int r9 = java.lang.Integer.parseInt(r9)
            goto L54
        L45:
            java.lang.String r9 = "-"
            java.lang.String r5 = r0.group(r4)
            boolean r9 = r9.equals(r5)
            if (r9 == 0) goto L53
            r9 = -1
            goto L54
        L53:
            r9 = r3
        L54:
            r5 = 4
            java.lang.String r8 = r0.group(r5)
            if (r8 == 0) goto L68
            java.lang.String r0 = r0.group(r5)
            java.lang.String r0 = r0.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r0)
            goto L83
        L68:
            r0 = r2
            goto L83
        L6a:
            java.util.regex.Pattern r0 = org.jsoup.select.QueryParser.NthOffset
            java.util.regex.Matcher r0 = r0.matcher(r9)
            boolean r5 = r0.matches()
            if (r5 == 0) goto La1
            java.lang.String r9 = r0.group()
            java.lang.String r9 = r9.replaceFirst(r7, r6)
            int r0 = java.lang.Integer.parseInt(r9)
            r9 = r2
        L83:
            if (r11 == 0) goto L93
            if (r10 == 0) goto L8d
            org.jsoup.select.Evaluator$IsNthChild r10 = new org.jsoup.select.Evaluator$IsNthChild
            r10.<init>(r9, r0, r4)
            return r10
        L8d:
            org.jsoup.select.Evaluator$IsNthChild r10 = new org.jsoup.select.Evaluator$IsNthChild
            r10.<init>(r9, r0, r1)
            return r10
        L93:
            if (r10 == 0) goto L9b
            org.jsoup.select.Evaluator$IsNthChild r10 = new org.jsoup.select.Evaluator$IsNthChild
            r10.<init>(r9, r0, r3)
            return r10
        L9b:
            org.jsoup.select.Evaluator$IsNthChild r10 = new org.jsoup.select.Evaluator$IsNthChild
            r10.<init>(r9, r0, r2)
            return r10
        La1:
            org.jsoup.select.Selector$SelectorParseException r10 = new org.jsoup.select.Selector$SelectorParseException
            java.lang.Object[] r11 = new java.lang.Object[r3]
            r11[r2] = r9
            java.lang.String r9 = "Could not parse nth-index '%s': unexpected format"
            r10.<init>(r9, r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.cssNthChild(boolean, boolean):org.jsoup.select.Evaluator$IsNthChild");
    }

    public final Evaluator evaluatorForAttribute(TokenQueue tokenQueue) {
        boolean z;
        CharacterReader characterReader = tokenQueue.reader;
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        loop0: while (true) {
            z = false;
            if (characterReader.isEmpty()) {
                break;
            }
            for (int i = 0; i < 6; i++) {
                if (characterReader.matchesIgnoreCase(AttributeEvals[i])) {
                    break loop0;
                }
            }
            borrowBuilder.append(characterReader.consume());
        }
        String normalize = QuietAppendable$BaseAppendable.normalize(StringUtil.releaseBuilder(borrowBuilder));
        SQLite.notEmpty(normalize);
        if (normalize.equals("abs:")) {
            throw new ValidationException("Absolute attribute key must have a name");
        }
        tokenQueue.consumeWhitespace();
        int i2 = 1;
        if (characterReader.isEmpty()) {
            return normalize.startsWith("^") ? new Evaluator.Id(normalize.substring(1), 2) : normalize.equals("*") ? new Evaluator.Id("", 2) : new Evaluator.Id(i2, normalize, z);
        }
        if (tokenQueue.matchChomp('=')) {
            return new Evaluator.AttributeWithValue(normalize, characterReader.consumeToEnd(), 0);
        }
        if (characterReader.matchConsumeIgnoreCase("!=")) {
            return new Evaluator.AttributeWithValue(normalize, characterReader.consumeToEnd(), 3);
        }
        if (characterReader.matchConsumeIgnoreCase("^=")) {
            return new Evaluator.AttributeWithValue(normalize, characterReader.consumeToEnd(), 4);
        }
        if (characterReader.matchConsumeIgnoreCase("$=")) {
            return new Evaluator.AttributeWithValue(normalize, characterReader.consumeToEnd(), 2);
        }
        if (characterReader.matchConsumeIgnoreCase("*=")) {
            return new Evaluator.AttributeWithValue(normalize, characterReader.consumeToEnd(), 1);
        }
        if (characterReader.matchConsumeIgnoreCase("~=")) {
            return new Evaluator.AttributeWithValueMatching(normalize, Regex.compile(characterReader.consumeToEnd()));
        }
        throw new Selector$SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.query, characterReader.consumeToEnd());
    }

    public final Evaluator matches(boolean z) {
        String str = z ? ":matchesOwn" : ":matches";
        String consumeParens = consumeParens();
        SQLite.notEmpty(consumeParens, str.concat("(regex) query must not be empty"));
        Regex compile = Regex.compile(consumeParens);
        return this.inNodeContext ? new NodeEvaluator.MatchesValue(compile) : z ? new Evaluator.Matches(compile, 1) : new Evaluator.Matches(compile, 0);
    }

    public final Evaluator matchesWholeText(boolean z) {
        String str = z ? ":matchesWholeOwnText" : ":matchesWholeText";
        String consumeParens = consumeParens();
        SQLite.notEmpty(consumeParens, str.concat("(regex) query must not be empty"));
        Regex compile = Regex.compile(consumeParens);
        return z ? new Evaluator.Matches(compile, 2) : new Evaluator.Matches(compile, 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r3v4, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [org.jsoup.select.StructuralEvaluator, org.jsoup.select.StructuralEvaluator$ImmediateParentRun] */
    /* JADX WARN: Type inference failed for: r3v8, types: [org.jsoup.select.Evaluator] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public final Evaluator parseSelector() {
        TokenQueue tokenQueue = this.tq;
        tokenQueue.consumeWhitespace();
        CharacterReader characterReader = tokenQueue.reader;
        char[] cArr = Combinators;
        ?? isRoot = characterReader.matchesAny(cArr) ? new Evaluator.IsRoot(8) : parseSimpleSequence();
        while (true) {
            char c = tokenQueue.consumeWhitespace() ? ' ' : (char) 0;
            if (!characterReader.matchesAny(cArr)) {
                if (characterReader.matchesAny(SequenceEnders)) {
                    break;
                }
            } else {
                c = characterReader.consume();
            }
            if (c == 0) {
                break;
            }
            Evaluator parseSimpleSequence = parseSimpleSequence();
            int i = 1;
            if (c == ' ') {
                isRoot = and(new StructuralEvaluator.Is(isRoot, i), parseSimpleSequence);
            } else if (c == '+') {
                isRoot = and(new StructuralEvaluator.ImmediatePreviousSibling(isRoot), parseSimpleSequence);
            } else if (c == '>') {
                isRoot = isRoot instanceof StructuralEvaluator.ImmediateParentRun ? (StructuralEvaluator.ImmediateParentRun) isRoot : new StructuralEvaluator.ImmediateParentRun(isRoot);
                isRoot.evaluators.add(parseSimpleSequence);
                isRoot.cost = parseSimpleSequence.cost() + isRoot.cost;
                isRoot.wantsNodes |= parseSimpleSequence.wantsNodes();
            } else {
                if (c != '~') {
                    throw new Selector$SelectorParseException("Unknown combinator '%s'", Character.valueOf(c));
                }
                isRoot = and(new StructuralEvaluator.PreviousSibling(isRoot), parseSimpleSequence);
            }
        }
        return isRoot;
    }

    public final Evaluator parseSelectorGroup() {
        Evaluator parseSelector = parseSelector();
        while (this.tq.matchChomp(',')) {
            Evaluator parseSelector2 = parseSelector();
            if (parseSelector instanceof CombiningEvaluator.Or) {
                CombiningEvaluator.Or or = (CombiningEvaluator.Or) parseSelector;
                or.evaluators.add(parseSelector2);
                or.updateEvaluators();
            } else {
                parseSelector = new CombiningEvaluator.Or(parseSelector, parseSelector2);
            }
        }
        return parseSelector;
    }

    public final Evaluator parseSimpleSequence() {
        Evaluator id;
        Evaluator evaluator;
        TokenQueue tokenQueue = this.tq;
        tokenQueue.consumeWhitespace();
        CharacterReader characterReader = tokenQueue.reader;
        int i = 1;
        boolean z = false;
        if (Character.isLetterOrDigit(characterReader.current()) || characterReader.matchesIgnoreCase("*|")) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            while (!characterReader.isEmpty()) {
                char current = characterReader.current();
                if (current != '\\') {
                    if (!Character.isLetterOrDigit(characterReader.current()) && !characterReader.matchesAny(TokenQueue.ElementSelectorChars)) {
                        break;
                    }
                    borrowBuilder.append(current);
                    tokenQueue.advance();
                } else {
                    tokenQueue.advance();
                    if (characterReader.isEmpty()) {
                        break;
                    }
                    borrowBuilder.append(characterReader.consume());
                }
            }
            String normalize = QuietAppendable$BaseAppendable.normalize(StringUtil.releaseBuilder(borrowBuilder));
            SQLite.notEmpty(normalize);
            int i2 = 9;
            if (normalize.startsWith("*|")) {
                String substring = normalize.substring(2);
                id = new CombiningEvaluator.Or(new Evaluator.Id(i2, substring, z), new Evaluator.Id(10, ":".concat(substring), z));
            } else if (normalize.endsWith("|*")) {
                id = new Evaluator.Id(11, normalize.substring(0, normalize.length() - 2).concat(":"), z);
            } else {
                if (normalize.contains("|")) {
                    normalize = normalize.replace("|", ":");
                }
                id = new Evaluator.Id(i2, normalize, z);
            }
            evaluator = id;
        } else {
            evaluator = tokenQueue.matchChomp('*') ? new Evaluator.IsRoot(i) : null;
        }
        while (true) {
            Evaluator parseSubclass = parseSubclass();
            if (parseSubclass == null) {
                break;
            }
            evaluator = and(evaluator, parseSubclass);
        }
        if (evaluator != null) {
            return evaluator;
        }
        throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.query, characterReader.consumeToEnd());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0093, code lost:
    
        if (r0.equals("cdata") == false) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.jsoup.select.Evaluator parseSubclass() {
        /*
            Method dump skipped, instructions count: 1168
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.parseSubclass():org.jsoup.select.Evaluator");
    }

    public final String toString() {
        return this.query;
    }
}
