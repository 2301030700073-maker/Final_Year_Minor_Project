package org.jsoup.parser;

import java.util.Arrays;
import org.jsoup.helper.ValidationException;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Tokeniser {
    public static final char[] notCharRefCharsSorted;
    public static final int[] win1252Extensions = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, org.mozilla.javascript.Token.EMPTY, 381, org.mozilla.javascript.Token.BLOCK, org.mozilla.javascript.Token.LABEL, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, org.mozilla.javascript.Token.DOTDOT, 382, 376};
    public final Token.EndTag endPending;
    public final ParseErrorList errors;
    public String lastStartCloseSeq;
    public String lastStartTag;
    public int markupStartPos;
    public final CharacterReader reader;
    public final Token.StartTag startPending;
    public final int syntax;
    public Token.Tag tagPending;
    public final Token.XmlDecl xmlDeclPending;
    public TokeniserState state = TokeniserState.Data;
    public Token emitPending = null;
    public boolean isEmitPending = false;
    public final TokenData dataBuffer = new TokenData(0);
    public final Token.Character charPending = new Token.Character();
    public final Token.Doctype doctypePending = new Token.Doctype();
    public final Token.Comment commentPending = new Token.Comment();
    public int charStartPos = 0;
    public final int[] codepointHolder = new int[1];
    public final int[] multipointHolder = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        notCharRefCharsSorted = cArr;
        Arrays.sort(cArr);
    }

    public Tokeniser(TreeBuilder treeBuilder) {
        this.syntax = treeBuilder instanceof XmlTreeBuilder ? 2 : 1;
        Token.StartTag startTag = new Token.StartTag(2, treeBuilder);
        this.startPending = startTag;
        this.tagPending = startTag;
        this.endPending = new Token.EndTag(3, treeBuilder);
        Token.XmlDecl xmlDecl = new Token.XmlDecl(6, treeBuilder);
        xmlDecl.isDeclaration = true;
        this.xmlDeclPending = xmlDecl;
        this.reader = treeBuilder.reader;
        this.errors = treeBuilder.parser.errors;
    }

    public final void advanceTransition(TokeniserState tokeniserState) {
        transition(tokeniserState);
        this.reader.advance();
    }

    public final void characterReferenceError(String str, Object... objArr) {
        ParseErrorList parseErrorList = this.errors;
        if (parseErrorList.canAddError()) {
            parseErrorList.add(new ParseError(this.reader, String.format("Invalid character reference: ".concat(str), objArr)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x01c8, code lost:
    
        if (r0.matchesAny('=', '-', '_') == false) goto L110;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] consumeCharacterReference(java.lang.Character r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.Tokeniser.consumeCharacterReference(java.lang.Character, boolean):int[]");
    }

    public final Token.Tag createTagPending(boolean z) {
        Token.Tag tag;
        if (z) {
            tag = this.startPending;
            tag.mo741reset();
        } else {
            tag = this.endPending;
            tag.mo741reset();
        }
        this.tagPending = tag;
        return tag;
    }

    public final void createTempBuffer() {
        this.dataBuffer.reset();
    }

    public final void emit(Token token) {
        if (this.isEmitPending) {
            throw new ValidationException("Must be false");
        }
        this.emitPending = token;
        this.isEmitPending = true;
        token.startPos = this.markupStartPos;
        CharacterReader characterReader = this.reader;
        token.endPos = characterReader.pos();
        this.charStartPos = characterReader.pos();
        int i = token.type;
        if (i == 2) {
            this.lastStartTag = ((Token.StartTag) token).tagName.value();
            this.lastStartCloseSeq = null;
        } else if (i == 3) {
            Token.EndTag endTag = (Token.EndTag) token;
            if (endTag.attributes != null) {
                Object[] objArr = {endTag.normalName()};
                ParseErrorList parseErrorList = this.errors;
                if (parseErrorList.canAddError()) {
                    parseErrorList.add(new ParseError(characterReader, "Attributes incorrectly present on end tag [/%s]", objArr));
                }
            }
        }
    }

    public final void emitCommentPending() {
        emit(this.commentPending);
    }

    public final void emitDoctypePending() {
        emit(this.doctypePending);
    }

    public final void emitTagPending() {
        Token.Tag tag = this.tagPending;
        if (tag.attrName.hasData()) {
            tag.newAttribute();
        }
        emit(this.tagPending);
    }

    public final void eofError(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.errors;
        if (parseErrorList.canAddError()) {
            parseErrorList.add(new ParseError(this.reader, "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[]{tokeniserState}));
        }
    }

    public final void error(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.errors;
        if (parseErrorList.canAddError()) {
            CharacterReader characterReader = this.reader;
            parseErrorList.add(new ParseError(characterReader, "Unexpected character '%s' in input state [%s]", new Object[]{Character.valueOf(characterReader.current()), tokeniserState}));
        }
    }

    public final boolean isAppropriateEndTagToken() {
        return this.lastStartTag != null && this.tagPending.tagName.value().equalsIgnoreCase(this.lastStartTag);
    }

    public final void transition(TokeniserState tokeniserState) {
        if (tokeniserState == TokeniserState.TagOpen) {
            this.markupStartPos = this.reader.pos();
        }
        this.state = tokeniserState;
    }

    public final void emit(char c) {
        Token.Character character = this.charPending;
        character.data.append(c);
        character.startPos = this.charStartPos;
        character.endPos = this.reader.pos();
    }

    public final void emit(String str) {
        Token.Character character = this.charPending;
        character.data.append(str);
        character.startPos = this.charStartPos;
        character.endPos = this.reader.pos();
    }
}
