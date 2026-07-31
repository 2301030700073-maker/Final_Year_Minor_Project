package org.jsoup.parser;

import java.util.Arrays;
import okhttp3.FormBody;
import org.jsoup.helper.ValidationException;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Tokeniser {
    public static final char[] notCharRefCharsSorted;
    public static final int[] win1252Extensions = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
    public final Token.EndTag endPending;
    public final ParseErrorList errors;
    public String lastStartCloseSeq;
    public String lastStartTag;
    public int markupStartPos;
    public final CharacterReader reader;
    public final Token.StartTag startPending;
    public Token.Tag tagPending;
    public final Token.XmlDecl xmlDeclPending;
    public TokeniserState state = TokeniserState.Data;
    public Token emitPending = null;
    public boolean isEmitPending = false;
    public final FormBody.Builder dataBuffer = new FormBody.Builder(25, false);
    public final Token.Character charPending = new Token.Character();
    public final Token.Doctype doctypePending = new Token.Doctype();
    public final Token.Comment commentPending = new Token.Comment();
    public int charStartPos = 0;
    public final int[] codepointHolder = new int[1];
    public final int[] multipointHolder = new int[2];
    public final Document.OutputSettings.Syntax syntax = Document.OutputSettings.Syntax.html;

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        notCharRefCharsSorted = cArr;
        Arrays.sort(cArr);
    }

    public Tokeniser(HtmlTreeBuilder htmlTreeBuilder) {
        Token.StartTag startTag = new Token.StartTag(htmlTreeBuilder);
        this.startPending = startTag;
        this.tagPending = startTag;
        this.endPending = new Token.EndTag(htmlTreeBuilder);
        Token.XmlDecl xmlDecl = new Token.XmlDecl(Token.TokenType.XmlDecl, htmlTreeBuilder);
        xmlDecl.isDeclaration = true;
        this.xmlDeclPending = xmlDecl;
        this.reader = htmlTreeBuilder.reader;
        this.errors = htmlTreeBuilder.parser.errors;
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
            tag.mo889reset();
        } else {
            tag = this.endPending;
            tag.mo889reset();
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
        Token.TokenType tokenType = (Token.TokenType) token.type;
        if (tokenType == Token.TokenType.StartTag) {
            this.lastStartTag = ((Token.StartTag) token).tagName.value();
            this.lastStartCloseSeq = null;
        } else if (tokenType == Token.TokenType.EndTag) {
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
