package org.jsoup.select;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.TokenQueue;
import org.jsoup.select.CombiningEvaluator;
import org.jsoup.select.Evaluator;
import org.jsoup.select.StructuralEvaluator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QueryParser {
    public final ArrayList evals = new ArrayList();
    public final String query;
    public final TokenQueue tq;
    public static final char[] Combinators = {',', '>', '+', '~', ' '};
    public static final String[] AttributeEvals = {"=", "!=", "^=", "$=", "*=", "~="};
    public static final Pattern NthStepOffset = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    public static final Pattern NthOffset = Pattern.compile("([+-])?(\\d+)");

    public QueryParser(String str) {
        Validate.notEmpty(str);
        String trim = str.trim();
        this.query = trim;
        this.tq = new TokenQueue(trim);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Type inference failed for: r10v14, types: [org.jsoup.select.CombiningEvaluator] */
    /* JADX WARN: Type inference failed for: r1v15, types: [org.jsoup.select.CombiningEvaluator$Or] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [org.jsoup.select.StructuralEvaluator$ImmediateParentRun] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void combinator(char r10) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.QueryParser.combinator(char):void");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Evaluator consumeEvaluator() {
        char c;
        TokenQueue tokenQueue = this.tq;
        boolean matchChomp = tokenQueue.matchChomp("#");
        int i = 0;
        String[] strArr = TokenQueue.CssIdentifierChars;
        if (matchChomp) {
            String consumeEscapedCssIdentifier = tokenQueue.consumeEscapedCssIdentifier(strArr);
            Validate.notEmpty(consumeEscapedCssIdentifier);
            return new Evaluator.Id(0, consumeEscapedCssIdentifier, false);
        }
        if (tokenQueue.matchChomp(".")) {
            String consumeEscapedCssIdentifier2 = tokenQueue.consumeEscapedCssIdentifier(strArr);
            Validate.notEmpty(consumeEscapedCssIdentifier2);
            return new Evaluator.Id(3, consumeEscapedCssIdentifier2.trim(), false);
        }
        int i2 = 2;
        if ((!tokenQueue.isEmpty() && Character.isLetterOrDigit(tokenQueue.queue.charAt(tokenQueue.pos))) || tokenQueue.matches("*|")) {
            String normalize = Functions.normalize(tokenQueue.consumeEscapedCssIdentifier(TokenQueue.ElementSelectorChars));
            Validate.notEmpty(normalize);
            if (!normalize.startsWith("*|")) {
                if (normalize.endsWith("|*")) {
                    return new Evaluator.Id(11, normalize.substring(0, normalize.length() - 2).concat(":"), false);
                }
                if (normalize.contains("|")) {
                    normalize = normalize.replace("|", ":");
                }
                return new Evaluator.Id(9, normalize, false);
            }
            String substring = normalize.substring(2);
            List asList = Arrays.asList(new Evaluator.Id(9, substring, false), new Evaluator.Id(10, ":".concat(substring), false));
            CombiningEvaluator.Or or = new CombiningEvaluator.Or();
            int i3 = or.num;
            ArrayList arrayList = or.evaluators;
            if (i3 > 1) {
                arrayList.add(new CombiningEvaluator.And(asList));
            } else {
                arrayList.addAll(asList);
            }
            or.updateEvaluators();
            return or;
        }
        boolean matches = tokenQueue.matches("[");
        String str = this.query;
        if (matches) {
            TokenQueue tokenQueue2 = new TokenQueue(tokenQueue.chompBalanced('[', ']'));
            int i4 = tokenQueue2.pos;
            loop0: while (!tokenQueue2.isEmpty()) {
                for (int i5 = 0; i5 < 6; i5++) {
                    if (tokenQueue2.matches(AttributeEvals[i5])) {
                        break loop0;
                    }
                }
                tokenQueue2.pos++;
            }
            String substring2 = tokenQueue2.queue.substring(i4, tokenQueue2.pos);
            Validate.notEmpty(substring2);
            tokenQueue2.consumeWhitespace();
            if (tokenQueue2.isEmpty()) {
                return substring2.startsWith("^") ? new Evaluator.Id(substring2.substring(1), 2) : substring2.equals("*") ? new Evaluator.Id("", 2) : new Evaluator.Id(1, substring2, false);
            }
            if (tokenQueue2.matchChomp("=")) {
                return new Evaluator.AttributeWithValue(0, substring2, tokenQueue2.remainder(), true);
            }
            if (tokenQueue2.matchChomp("!=")) {
                return new Evaluator.AttributeWithValue(3, substring2, tokenQueue2.remainder(), true);
            }
            if (tokenQueue2.matchChomp("^=")) {
                return new Evaluator.AttributeWithValue(4, substring2, tokenQueue2.remainder(), false);
            }
            if (tokenQueue2.matchChomp("$=")) {
                return new Evaluator.AttributeWithValue(2, substring2, tokenQueue2.remainder(), false);
            }
            if (tokenQueue2.matchChomp("*=")) {
                return new Evaluator.AttributeWithValue(1, substring2, tokenQueue2.remainder(), true);
            }
            if (tokenQueue2.matchChomp("~=")) {
                return new Evaluator.AttributeWithValueMatching(substring2, Pattern.compile(tokenQueue2.remainder()));
            }
            throw new Selector$SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", str, tokenQueue2.remainder());
        }
        if (tokenQueue.matchChomp("*")) {
            return new Evaluator.IsRoot(1);
        }
        if (!tokenQueue.matchChomp(":")) {
            throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", str, tokenQueue.remainder());
        }
        String consumeEscapedCssIdentifier3 = tokenQueue.consumeEscapedCssIdentifier(strArr);
        char c2 = 65535;
        switch (consumeEscapedCssIdentifier3.hashCode()) {
            case -2141736343:
                if (consumeEscapedCssIdentifier3.equals("containsData")) {
                    c2 = 0;
                    break;
                }
                break;
            case -2136991809:
                if (consumeEscapedCssIdentifier3.equals("first-child")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1939921007:
                if (consumeEscapedCssIdentifier3.equals("matchesWholeText")) {
                    c2 = 2;
                    break;
                }
                break;
            case -1754914063:
                if (consumeEscapedCssIdentifier3.equals("nth-child")) {
                    c2 = 3;
                    break;
                }
                break;
            case -1629748624:
                if (consumeEscapedCssIdentifier3.equals("nth-last-child")) {
                    c2 = 4;
                    break;
                }
                break;
            case -947996741:
                if (consumeEscapedCssIdentifier3.equals("only-child")) {
                    c2 = 5;
                    break;
                }
                break;
            case -897532411:
                if (consumeEscapedCssIdentifier3.equals("nth-of-type")) {
                    c2 = 6;
                    break;
                }
                break;
            case -872629820:
                if (consumeEscapedCssIdentifier3.equals("nth-last-of-type")) {
                    c2 = 7;
                    break;
                }
                break;
            case -567445985:
                if (consumeEscapedCssIdentifier3.equals("contains")) {
                    c = '\b';
                    c2 = c;
                    break;
                }
                break;
            case -55413797:
                if (consumeEscapedCssIdentifier3.equals("containsWholeOwnText")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 3244:
                if (consumeEscapedCssIdentifier3.equals("eq")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 3309:
                if (consumeEscapedCssIdentifier3.equals("gt")) {
                    c2 = 11;
                    break;
                }
                break;
            case 3370:
                if (consumeEscapedCssIdentifier3.equals("is")) {
                    c = '\f';
                    c2 = c;
                    break;
                }
                break;
            case 3464:
                if (consumeEscapedCssIdentifier3.equals("lt")) {
                    c = '\r';
                    c2 = c;
                    break;
                }
                break;
            case 103066:
                if (consumeEscapedCssIdentifier3.equals("has")) {
                    c = 14;
                    c2 = c;
                    break;
                }
                break;
            case 109267:
                if (consumeEscapedCssIdentifier3.equals("not")) {
                    c = 15;
                    c2 = c;
                    break;
                }
                break;
            case 3506402:
                if (consumeEscapedCssIdentifier3.equals("root")) {
                    c = 16;
                    c2 = c;
                    break;
                }
                break;
            case 96634189:
                if (consumeEscapedCssIdentifier3.equals("empty")) {
                    c = 17;
                    c2 = c;
                    break;
                }
                break;
            case 208017639:
                if (consumeEscapedCssIdentifier3.equals("containsOwn")) {
                    c = 18;
                    c2 = c;
                    break;
                }
                break;
            case 614017170:
                if (consumeEscapedCssIdentifier3.equals("matchText")) {
                    c = 19;
                    c2 = c;
                    break;
                }
                break;
            case 835834661:
                if (consumeEscapedCssIdentifier3.equals("last-child")) {
                    c = 20;
                    c2 = c;
                    break;
                }
                break;
            case 840862003:
                if (consumeEscapedCssIdentifier3.equals("matches")) {
                    c = 21;
                    c2 = c;
                    break;
                }
                break;
            case 1255901423:
                if (consumeEscapedCssIdentifier3.equals("matchesWholeOwnText")) {
                    c = 22;
                    c2 = c;
                    break;
                }
                break;
            case 1292941139:
                if (consumeEscapedCssIdentifier3.equals("first-of-type")) {
                    c = 23;
                    c2 = c;
                    break;
                }
                break;
            case 1455900751:
                if (consumeEscapedCssIdentifier3.equals("only-of-type")) {
                    c = 24;
                    c2 = c;
                    break;
                }
                break;
            case 1870740819:
                if (consumeEscapedCssIdentifier3.equals("matchesOwn")) {
                    c = 25;
                    c2 = c;
                    break;
                }
                break;
            case 2014184485:
                if (consumeEscapedCssIdentifier3.equals("containsWholeText")) {
                    c = 26;
                    c2 = c;
                    break;
                }
                break;
            case 2025926969:
                if (consumeEscapedCssIdentifier3.equals("last-of-type")) {
                    c = 27;
                    c2 = c;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                String unescape = TokenQueue.unescape(consumeParens());
                Validate.notEmpty(unescape, ":containsData(text) query must not be empty");
                return new Evaluator.Id(unescape, 4);
            case 1:
                return new Evaluator.IsRoot(3);
            case 2:
                return matchesWholeText(false);
            case 3:
                return cssNthChild(false, false);
            case 4:
                return cssNthChild(true, false);
            case 5:
                return new Evaluator.IsRoot(5);
            case 6:
                return cssNthChild(false, true);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return cssNthChild(true, true);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return contains(false);
            case '\t':
                return containsWholeText(true);
            case '\n':
                return new Evaluator.IndexEquals(consumeIndex(), 0);
            case 11:
                return new Evaluator.IndexEquals(consumeIndex(), 1);
            case BasicTextKt.ShiftMeta /* 12 */:
                String consumeParens = consumeParens();
                Validate.notEmpty(consumeParens, ":is(selector) sub-select must not be empty");
                return new StructuralEvaluator.Is(parse(consumeParens), i);
            case '\r':
                return new Evaluator.IndexEquals(consumeIndex(), 2);
            case 14:
                String consumeParens2 = consumeParens();
                Validate.notEmpty(consumeParens2, ":has(selector) sub-select must not be empty");
                return new StructuralEvaluator.Has(parse(consumeParens2));
            case OffsetKt.Horizontal /* 15 */:
                String consumeParens3 = consumeParens();
                Validate.notEmpty(consumeParens3, ":not(selector) subselect must not be empty");
                return new StructuralEvaluator.Is(parse(consumeParens3), i2);
            case 16:
                return new Evaluator.IsRoot(0);
            case 17:
                return new Evaluator.IsRoot(2);
            case 18:
                return contains(true);
            case 19:
                return new Evaluator.IsRoot(7);
            case 20:
                return new Evaluator.IsRoot(4);
            case 21:
                return matches(false);
            case 22:
                return matchesWholeText(true);
            case 23:
                return new Evaluator.IsFirstOfType(0, 1, 3);
            case 24:
                return new Evaluator.IsRoot(6);
            case 25:
                return matches(true);
            case 26:
                return containsWholeText(false);
            case 27:
                return new Evaluator.IsLastOfType(0, 1, 2);
            default:
                throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", str, tokenQueue.remainder());
        }
    }

    public final int consumeIndex() {
        String trim = consumeParens().trim();
        String[] strArr = StringUtil.padding;
        boolean z = false;
        if (trim != null && trim.length() != 0) {
            int length = trim.length();
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = true;
                    break;
                }
                if (!Character.isDigit(trim.codePointAt(i))) {
                    break;
                }
                i++;
            }
        }
        Validate.isTrue("Index must be numeric", z);
        return Integer.parseInt(trim);
    }

    public final String consumeParens() {
        return this.tq.chompBalanced('(', ')');
    }

    public final Evaluator contains(boolean z) {
        String str = z ? ":containsOwn" : ":contains";
        String unescape = TokenQueue.unescape(consumeParens());
        Validate.notEmpty(unescape, str.concat("(text) query must not be empty"));
        return z ? new Evaluator.Id(unescape, 5) : new Evaluator.Id(unescape, 6);
    }

    public final Evaluator containsWholeText(boolean z) {
        String str = z ? ":containsWholeOwnText" : ":containsWholeText";
        String unescape = TokenQueue.unescape(consumeParens());
        Validate.notEmpty(unescape, str.concat("(text) query must not be empty"));
        return z ? new Evaluator.Id(7, unescape, false) : new Evaluator.Id(8, unescape, false);
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
            java.lang.String r9 = org.jsoup.internal.Functions.normalize(r9)
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

    public final Evaluator matches(boolean z) {
        String str = z ? ":matchesOwn" : ":matches";
        String consumeParens = consumeParens();
        Validate.notEmpty(consumeParens, str.concat("(regex) query must not be empty"));
        return z ? new Evaluator.Matches(Pattern.compile(consumeParens), 1) : new Evaluator.Matches(Pattern.compile(consumeParens), 0);
    }

    public final Evaluator matchesWholeText(boolean z) {
        String str = z ? ":matchesWholeOwnText" : ":matchesWholeText";
        String consumeParens = consumeParens();
        Validate.notEmpty(consumeParens, str.concat("(regex) query must not be empty"));
        return z ? new Evaluator.Matches(Pattern.compile(consumeParens), 2) : new Evaluator.Matches(Pattern.compile(consumeParens), 3);
    }

    public final Evaluator parse() {
        TokenQueue tokenQueue = this.tq;
        tokenQueue.consumeWhitespace();
        char[] cArr = Combinators;
        boolean matchesAny = tokenQueue.matchesAny(cArr);
        ArrayList arrayList = this.evals;
        if (matchesAny) {
            arrayList.add(new Evaluator.IsRoot(8));
            combinator(tokenQueue.consume());
        } else {
            arrayList.add(consumeEvaluator());
        }
        while (!tokenQueue.isEmpty()) {
            boolean consumeWhitespace = tokenQueue.consumeWhitespace();
            if (tokenQueue.matchesAny(cArr)) {
                combinator(tokenQueue.consume());
            } else if (consumeWhitespace) {
                combinator(' ');
            } else {
                arrayList.add(consumeEvaluator());
            }
        }
        return arrayList.size() == 1 ? (Evaluator) arrayList.get(0) : new CombiningEvaluator.And(arrayList);
    }

    public final String toString() {
        return this.query;
    }

    public static Evaluator parse(String str) {
        try {
            return new QueryParser(str).parse();
        } catch (IllegalArgumentException e) {
            throw new Selector$SelectorParseException(e.getMessage());
        }
    }
}
