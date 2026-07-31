package org.wikipedia.edit.richtext;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SyntaxRule {
    public final char[] endChars;
    public final SyntaxRuleStyle spanStyle;
    public final char[] startChars;

    public SyntaxRule(String str, String str2, SyntaxRuleStyle syntaxRuleStyle) {
        syntaxRuleStyle.getClass();
        this.spanStyle = syntaxRuleStyle;
        char[] charArray = str.toCharArray();
        charArray.getClass();
        this.startChars = charArray;
        char[] charArray2 = str2.toCharArray();
        charArray2.getClass();
        this.endChars = charArray2;
    }
}
