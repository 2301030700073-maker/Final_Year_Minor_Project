package org.schabi.newpipe.extractor.utils.jsextractor;

import okio.PriorityQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Lexer$BraceMetaToken extends PriorityQueue {
    public final Lexer$Brace brace;

    public Lexer$BraceMetaToken(Token token, int i, Lexer$Brace lexer$Brace) {
        super(token, i, 12);
        this.brace = lexer$Brace;
    }
}
