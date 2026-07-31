package org.schabi.newpipe.extractor.utils.jsextractor;

import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Lexer$ParenMetaToken extends PriorityQueue {
    public final Lexer$Paren paren;

    public Lexer$ParenMetaToken(Token token, int i, Lexer$Paren lexer$Paren) {
        super(token, i, 12);
        this.paren = lexer$Paren;
    }
}
