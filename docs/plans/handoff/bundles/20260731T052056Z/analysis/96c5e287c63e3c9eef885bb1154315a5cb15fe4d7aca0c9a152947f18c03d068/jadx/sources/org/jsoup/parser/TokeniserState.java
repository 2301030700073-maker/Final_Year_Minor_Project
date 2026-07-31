package org.jsoup.parser;

import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Token;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TokeniserState {
    private static final /* synthetic */ TokeniserState[] $VALUES;
    public static final TokeniserState AfterAttributeName;
    public static final TokeniserState AfterAttributeValue_quoted;
    public static final TokeniserState AfterDoctypeName;
    public static final TokeniserState AfterDoctypePublicIdentifier;
    public static final TokeniserState AfterDoctypePublicKeyword;
    public static final TokeniserState AfterDoctypeSystemIdentifier;
    public static final TokeniserState AfterDoctypeSystemKeyword;
    public static final TokeniserState AttributeName;
    public static final TokeniserState AttributeValue_doubleQuoted;
    public static final TokeniserState AttributeValue_singleQuoted;
    public static final TokeniserState AttributeValue_unquoted;
    public static final TokeniserState BeforeAttributeName;
    public static final TokeniserState BeforeAttributeValue;
    public static final TokeniserState BeforeDoctypeName;
    public static final TokeniserState BeforeDoctypePublicIdentifier;
    public static final TokeniserState BeforeDoctypeSystemIdentifier;
    public static final TokeniserState BetweenDoctypePublicAndSystemIdentifiers;
    public static final TokeniserState BogusComment;
    public static final TokeniserState BogusDoctype;
    public static final TokeniserState CdataSection;
    public static final TokeniserState CharacterReferenceInData;
    public static final TokeniserState CharacterReferenceInRcdata;
    public static final TokeniserState Comment;
    public static final TokeniserState CommentEnd;
    public static final TokeniserState CommentEndBang;
    public static final TokeniserState CommentEndDash;
    public static final TokeniserState CommentStart;
    public static final TokeniserState CommentStartDash;
    public static final TokeniserState Data;
    public static final TokeniserState Doctype;
    public static final TokeniserState DoctypeInternalSubset;
    public static final TokeniserState DoctypeName;
    public static final TokeniserState DoctypePublicIdentifier_doubleQuoted;
    public static final TokeniserState DoctypePublicIdentifier_singleQuoted;
    public static final TokeniserState DoctypeSystemIdentifier_doubleQuoted;
    public static final TokeniserState DoctypeSystemIdentifier_singleQuoted;
    public static final TokeniserState EndTagOpen;
    public static final TokeniserState MarkupDeclarationOpen;
    public static final TokeniserState MarkupProcessingOpen;
    public static final TokeniserState PLAINTEXT;
    public static final TokeniserState RCDATAEndTagName;
    public static final TokeniserState RCDATAEndTagOpen;
    public static final TokeniserState Rawtext;
    public static final TokeniserState RawtextEndTagName;
    public static final TokeniserState RawtextEndTagOpen;
    public static final TokeniserState RawtextLessthanSign;
    public static final TokeniserState Rcdata;
    public static final TokeniserState RcdataLessthanSign;
    public static final TokeniserState ScriptData;
    public static final TokeniserState ScriptDataDoubleEscapeEnd;
    public static final TokeniserState ScriptDataDoubleEscapeStart;
    public static final TokeniserState ScriptDataDoubleEscaped;
    public static final TokeniserState ScriptDataDoubleEscapedDash;
    public static final TokeniserState ScriptDataDoubleEscapedDashDash;
    public static final TokeniserState ScriptDataDoubleEscapedLessthanSign;
    public static final TokeniserState ScriptDataEndTagName;
    public static final TokeniserState ScriptDataEndTagOpen;
    public static final TokeniserState ScriptDataEscapeStart;
    public static final TokeniserState ScriptDataEscapeStartDash;
    public static final TokeniserState ScriptDataEscaped;
    public static final TokeniserState ScriptDataEscapedDash;
    public static final TokeniserState ScriptDataEscapedDashDash;
    public static final TokeniserState ScriptDataEscapedEndTagName;
    public static final TokeniserState ScriptDataEscapedEndTagOpen;
    public static final TokeniserState ScriptDataEscapedLessthanSign;
    public static final TokeniserState ScriptDataLessthanSign;
    public static final TokeniserState SelfClosingStartTag;
    public static final TokeniserState TagName;
    public static final TokeniserState TagOpen;
    static final char[] attributeNameCharsSorted;
    static final char[] attributeValueUnquoted;
    private static final char eof = 65535;
    static final char nullChar = 0;
    private static final char replacementChar = 65533;
    private static final String replacementStr;

    static {
        TokeniserState tokeniserState = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.1
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    tokeniser.emit(characterReader.consume());
                } else {
                    if (current == '&') {
                        tokeniser.advanceTransition(TokeniserState.CharacterReferenceInData);
                        return;
                    }
                    if (current == '<') {
                        tokeniser.advanceTransition(TokeniserState.TagOpen);
                    } else if (current != 65535) {
                        tokeniser.emit(characterReader.consumeData());
                    } else {
                        tokeniser.emit(new Token.EOF());
                    }
                }
            }
        };
        Data = tokeniserState;
        TokeniserState tokeniserState2 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.2
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState tokeniserState3 = TokeniserState.Data;
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
                if (consumeCharacterReference == null) {
                    tokeniser.emit('&');
                } else {
                    tokeniser.emit(new String(consumeCharacterReference, 0, consumeCharacterReference.length));
                }
                tokeniser.transition(tokeniserState3);
            }
        };
        CharacterReferenceInData = tokeniserState2;
        TokeniserState tokeniserState3 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.3
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit(TokeniserState.replacementChar);
                } else {
                    if (current == '&') {
                        tokeniser.advanceTransition(TokeniserState.CharacterReferenceInRcdata);
                        return;
                    }
                    if (current == '<') {
                        tokeniser.advanceTransition(TokeniserState.RcdataLessthanSign);
                    } else if (current != 65535) {
                        tokeniser.emit(characterReader.consumeData());
                    } else {
                        tokeniser.emit(new Token.EOF());
                    }
                }
            }
        };
        Rcdata = tokeniserState3;
        TokeniserState tokeniserState4 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.4
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState tokeniserState5 = TokeniserState.Rcdata;
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
                if (consumeCharacterReference == null) {
                    tokeniser.emit('&');
                } else {
                    tokeniser.emit(new String(consumeCharacterReference, 0, consumeCharacterReference.length));
                }
                tokeniser.transition(tokeniserState5);
            }
        };
        CharacterReferenceInRcdata = tokeniserState4;
        TokeniserState tokeniserState5 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.5
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.readRawData(tokeniser, characterReader, this, TokeniserState.RawtextLessthanSign);
            }
        };
        Rawtext = tokeniserState5;
        TokeniserState tokeniserState6 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.6
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.readRawData(tokeniser, characterReader, this, TokeniserState.ScriptDataLessthanSign);
            }
        };
        ScriptData = tokeniserState6;
        TokeniserState tokeniserState7 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.7
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit(TokeniserState.replacementChar);
                } else if (current != 65535) {
                    tokeniser.emit(characterReader.consumeTo(TokeniserState.nullChar));
                } else {
                    tokeniser.emit(new Token.EOF());
                }
            }
        };
        PLAINTEXT = tokeniserState7;
        TokeniserState tokeniserState8 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.8
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == '!') {
                    tokeniser.advanceTransition(TokeniserState.MarkupDeclarationOpen);
                    return;
                }
                if (current == '/') {
                    tokeniser.advanceTransition(TokeniserState.EndTagOpen);
                    return;
                }
                if (current == '?') {
                    if (tokeniser.syntax == Document.OutputSettings.Syntax.xml) {
                        tokeniser.advanceTransition(TokeniserState.MarkupProcessingOpen);
                        return;
                    } else {
                        tokeniser.commentPending.mo889reset();
                        tokeniser.transition(TokeniserState.BogusComment);
                        return;
                    }
                }
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(true);
                    tokeniser.transition(TokeniserState.TagName);
                } else {
                    tokeniser.error(this);
                    tokeniser.emit('<');
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        TagOpen = tokeniserState8;
        TokeniserState tokeniserState9 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.9
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.Data);
                } else if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(TokeniserState.TagName);
                } else {
                    if (characterReader.matches('>')) {
                        tokeniser.error(this);
                        tokeniser.advanceTransition(TokeniserState.Data);
                        return;
                    }
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.mo889reset();
                    comment.append('/');
                    tokeniser.transition(TokeniserState.BogusComment);
                }
            }
        };
        EndTagOpen = tokeniserState9;
        TokeniserState tokeniserState10 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.10
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.tagPending.appendTagName(characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda0()));
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.tagPending.appendTagName(TokeniserState.replacementStr);
                    return;
                }
                if (consume != ' ') {
                    if (consume == '/') {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (consume == '>') {
                        tokeniser.emitTagPending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                        tokeniser.tagPending.appendTagName(String.valueOf(consume));
                        return;
                    }
                }
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            }
        };
        TagName = tokeniserState10;
        TokeniserState tokeniserState11 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.11
            /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
            
                if (r0 >= r7.bufPos) goto L33;
             */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0075  */
            @Override // org.jsoup.parser.TokeniserState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void read(org.jsoup.parser.Tokeniser r6, org.jsoup.parser.CharacterReader r7) {
                /*
                    r5 = this;
                    r5 = 47
                    boolean r5 = r7.matches(r5)
                    if (r5 == 0) goto L11
                    r6.createTempBuffer()
                    org.jsoup.parser.TokeniserState r5 = org.jsoup.parser.TokeniserState.RCDATAEndTagOpen
                    r6.advanceTransition(r5)
                    return
                L11:
                    boolean r5 = r7.readFully
                    if (r5 == 0) goto L89
                    boolean r5 = r7.matchesAsciiAlpha()
                    if (r5 == 0) goto L89
                    java.lang.String r5 = r6.lastStartTag
                    if (r5 == 0) goto L89
                    java.lang.String r5 = r6.lastStartCloseSeq
                    if (r5 != 0) goto L35
                    java.lang.StringBuilder r5 = new java.lang.StringBuilder
                    java.lang.String r0 = "</"
                    r5.<init>(r0)
                    java.lang.String r0 = r6.lastStartTag
                    r5.append(r0)
                    java.lang.String r5 = r5.toString()
                    r6.lastStartCloseSeq = r5
                L35:
                    java.lang.String r0 = r7.lastIcSeq
                    boolean r0 = r5.equals(r0)
                    r1 = 0
                    r2 = 1
                    r3 = -1
                    if (r0 == 0) goto L4b
                    int r0 = r7.lastIcIndex
                    if (r0 != r3) goto L46
                    r2 = r1
                    goto L73
                L46:
                    int r4 = r7.bufPos
                    if (r0 < r4) goto L4b
                    goto L73
                L4b:
                    r7.lastIcSeq = r5
                    java.util.Locale r0 = java.util.Locale.ENGLISH
                    java.lang.String r4 = r5.toLowerCase(r0)
                    int r4 = r7.nextIndexOf(r4)
                    if (r4 <= r3) goto L5f
                    int r5 = r7.bufPos
                    int r5 = r5 + r4
                    r7.lastIcIndex = r5
                    goto L73
                L5f:
                    java.lang.String r5 = r5.toUpperCase(r0)
                    int r5 = r7.nextIndexOf(r5)
                    if (r5 <= r3) goto L6a
                    goto L6b
                L6a:
                    r2 = r1
                L6b:
                    if (r2 == 0) goto L71
                    int r0 = r7.bufPos
                    int r3 = r0 + r5
                L71:
                    r7.lastIcIndex = r3
                L73:
                    if (r2 != 0) goto L89
                    org.jsoup.parser.Token$Tag r5 = r6.createTagPending(r1)
                    java.lang.String r7 = r6.lastStartTag
                    r5.name(r7)
                    r6.tagPending = r5
                    r6.emitTagPending()
                    org.jsoup.parser.TokeniserState r5 = org.jsoup.parser.TokeniserState.TagOpen
                    r6.transition(r5)
                    return
                L89:
                    r5 = 60
                    r6.emit(r5)
                    org.jsoup.parser.TokeniserState r5 = org.jsoup.parser.TokeniserState.Rcdata
                    r6.transition(r5)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokeniserState.AnonymousClass11.read(org.jsoup.parser.Tokeniser, org.jsoup.parser.CharacterReader):void");
            }
        };
        RcdataLessthanSign = tokeniserState11;
        TokeniserState tokeniserState12 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.12
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matchesAsciiAlpha()) {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.Rcdata);
                } else {
                    tokeniser.createTagPending(false);
                    tokeniser.tagPending.appendTagName(String.valueOf(characterReader.current()));
                    tokeniser.dataBuffer.append(characterReader.current());
                    tokeniser.advanceTransition(TokeniserState.RCDATAEndTagName);
                }
            }
        };
        RCDATAEndTagOpen = tokeniserState12;
        TokeniserState tokeniserState13 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.13
            public static void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.emit("</");
                tokeniser.emit(tokeniser.dataBuffer.value());
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.Rcdata);
            }

            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    String consumeMatching = characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda0());
                    tokeniser.tagPending.appendTagName(consumeMatching);
                    tokeniser.dataBuffer.append(consumeMatching);
                    return;
                }
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    if (tokeniser.isAppropriateEndTagToken()) {
                        tokeniser.transition(TokeniserState.BeforeAttributeName);
                        return;
                    } else {
                        anythingElse(tokeniser, characterReader);
                        return;
                    }
                }
                if (consume == '/') {
                    if (tokeniser.isAppropriateEndTagToken()) {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    } else {
                        anythingElse(tokeniser, characterReader);
                        return;
                    }
                }
                if (consume != '>') {
                    anythingElse(tokeniser, characterReader);
                } else if (!tokeniser.isAppropriateEndTagToken()) {
                    anythingElse(tokeniser, characterReader);
                } else {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        RCDATAEndTagName = tokeniserState13;
        TokeniserState tokeniserState14 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.14
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matches('/')) {
                    tokeniser.createTempBuffer();
                    tokeniser.advanceTransition(TokeniserState.RawtextEndTagOpen);
                } else {
                    tokeniser.emit('<');
                    tokeniser.transition(TokeniserState.Rawtext);
                }
            }
        };
        RawtextLessthanSign = tokeniserState14;
        TokeniserState tokeniserState15 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.15
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState tokeniserState16 = TokeniserState.RawtextEndTagName;
                TokeniserState tokeniserState17 = TokeniserState.Rawtext;
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(tokeniserState16);
                } else {
                    tokeniser.emit("</");
                    tokeniser.transition(tokeniserState17);
                }
            }
        };
        RawtextEndTagOpen = tokeniserState15;
        TokeniserState tokeniserState16 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.16
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.handleDataEndTag(tokeniser, characterReader, TokeniserState.Rawtext);
            }
        };
        RawtextEndTagName = tokeniserState16;
        TokeniserState tokeniserState17 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.17
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '!') {
                    tokeniser.emit("<!");
                    tokeniser.transition(TokeniserState.ScriptDataEscapeStart);
                    return;
                }
                if (consume == '/') {
                    tokeniser.createTempBuffer();
                    tokeniser.transition(TokeniserState.ScriptDataEndTagOpen);
                } else if (consume != 65535) {
                    tokeniser.emit('<');
                    characterReader.unconsume();
                    tokeniser.transition(TokeniserState.ScriptData);
                } else {
                    tokeniser.emit('<');
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataLessthanSign = tokeniserState17;
        TokeniserState tokeniserState18 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.18
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState tokeniserState19 = TokeniserState.ScriptDataEndTagName;
                TokeniserState tokeniserState20 = TokeniserState.ScriptData;
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(tokeniserState19);
                } else {
                    tokeniser.emit("</");
                    tokeniser.transition(tokeniserState20);
                }
            }
        };
        ScriptDataEndTagOpen = tokeniserState18;
        TokeniserState tokeniserState19 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.19
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.handleDataEndTag(tokeniser, characterReader, TokeniserState.ScriptData);
            }
        };
        ScriptDataEndTagName = tokeniserState19;
        TokeniserState tokeniserState20 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.20
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matches('-')) {
                    tokeniser.transition(TokeniserState.ScriptData);
                } else {
                    tokeniser.emit('-');
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapeStartDash);
                }
            }
        };
        ScriptDataEscapeStart = tokeniserState20;
        TokeniserState tokeniserState21 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.21
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matches('-')) {
                    tokeniser.transition(TokeniserState.ScriptData);
                } else {
                    tokeniser.emit('-');
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedDashDash);
                }
            }
        };
        ScriptDataEscapeStartDash = tokeniserState21;
        TokeniserState tokeniserState22 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.22
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit(TokeniserState.replacementChar);
                } else if (current == '-') {
                    tokeniser.emit('-');
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedDash);
                } else if (current != '<') {
                    tokeniser.emit(characterReader.consumeToAny('-', '<', TokeniserState.nullChar));
                } else {
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedLessthanSign);
                }
            }
        };
        ScriptDataEscaped = tokeniserState22;
        TokeniserState tokeniserState23 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.23
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                } else if (consume == '-') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataEscapedDashDash);
                } else if (consume == '<') {
                    tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
                } else {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                }
            }
        };
        ScriptDataEscapedDash = tokeniserState23;
        TokeniserState tokeniserState24 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.24
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                } else {
                    if (consume == '-') {
                        tokeniser.emit(consume);
                        return;
                    }
                    if (consume == '<') {
                        tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
                    } else if (consume != '>') {
                        tokeniser.emit(consume);
                        tokeniser.transition(TokeniserState.ScriptDataEscaped);
                    } else {
                        tokeniser.emit(consume);
                        tokeniser.transition(TokeniserState.ScriptData);
                    }
                }
            }
        };
        ScriptDataEscapedDashDash = tokeniserState24;
        TokeniserState tokeniserState25 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.25
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTempBuffer();
                    tokeniser.dataBuffer.append(characterReader.current());
                    tokeniser.emit('<');
                    tokeniser.emit(characterReader.current());
                    tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapeStart);
                    return;
                }
                if (characterReader.matches('/')) {
                    tokeniser.createTempBuffer();
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedEndTagOpen);
                } else {
                    tokeniser.emit('<');
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                }
            }
        };
        ScriptDataEscapedLessthanSign = tokeniserState25;
        TokeniserState tokeniserState26 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.26
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matchesAsciiAlpha()) {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                } else {
                    tokeniser.createTagPending(false);
                    tokeniser.tagPending.appendTagName(String.valueOf(characterReader.current()));
                    tokeniser.dataBuffer.append(characterReader.current());
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedEndTagName);
                }
            }
        };
        ScriptDataEscapedEndTagOpen = tokeniserState26;
        TokeniserState tokeniserState27 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.27
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.handleDataEndTag(tokeniser, characterReader, TokeniserState.ScriptDataEscaped);
            }
        };
        ScriptDataEscapedEndTagName = tokeniserState27;
        TokeniserState tokeniserState28 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.28
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, TokeniserState.ScriptDataDoubleEscaped, TokeniserState.ScriptDataEscaped);
            }
        };
        ScriptDataDoubleEscapeStart = tokeniserState28;
        TokeniserState tokeniserState29 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.29
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit(TokeniserState.replacementChar);
                } else if (current == '-') {
                    tokeniser.emit(current);
                    tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedDash);
                } else if (current == '<') {
                    tokeniser.emit(current);
                    tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
                } else if (current != 65535) {
                    tokeniser.emit(characterReader.consumeToAny('-', '<', TokeniserState.nullChar));
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscaped = tokeniserState29;
        TokeniserState tokeniserState30 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.30
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                } else if (consume == '-') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedDashDash);
                } else if (consume == '<') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
                } else if (consume != 65535) {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscapedDash = tokeniserState30;
        TokeniserState tokeniserState31 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.31
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                    return;
                }
                if (consume == '-') {
                    tokeniser.emit(consume);
                    return;
                }
                if (consume == '<') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
                } else if (consume == '>') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptData);
                } else if (consume != 65535) {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscapedDashDash = tokeniserState31;
        TokeniserState tokeniserState32 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.32
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matches('/')) {
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscaped);
                    return;
                }
                tokeniser.emit('/');
                tokeniser.createTempBuffer();
                tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapeEnd);
            }
        };
        ScriptDataDoubleEscapedLessthanSign = tokeniserState32;
        TokeniserState tokeniserState33 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.33
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.handleDataDoubleEscapeTag(tokeniser, characterReader, TokeniserState.ScriptDataEscaped, TokeniserState.ScriptDataDoubleEscaped);
            }
        };
        ScriptDataDoubleEscapeEnd = tokeniserState33;
        TokeniserState tokeniserState34 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.34
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.transition(TokeniserState.AttributeName);
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume == '/') {
                            tokeniser.transition(TokeniserState.SelfClosingStartTag);
                            return;
                        }
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        switch (consume) {
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(TokeniserState.Data);
                                return;
                            case '?':
                                if (tokeniser.tagPending instanceof Token.XmlDecl) {
                                    return;
                                }
                                break;
                        }
                        tokeniser.tagPending.newAttribute();
                        characterReader.unconsume();
                        tokeniser.transition(TokeniserState.AttributeName);
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.tagPending.attrName.append(consume);
                    tokeniser.transition(TokeniserState.AttributeName);
                }
            }
        };
        BeforeAttributeName = tokeniserState34;
        TokeniserState tokeniserState35 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.35
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                characterReader.pos();
                String consumeToAnySorted = characterReader.consumeToAnySorted(TokeniserState.attributeNameCharsSorted);
                Token.Tag tag = tokeniser.tagPending;
                tag.attrName.append(consumeToAnySorted.replace(TokeniserState.nullChar, TokeniserState.replacementChar));
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.AfterAttributeName);
                    return;
                }
                if (consume != '\"' && consume != '\'') {
                    if (consume == '/') {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                    switch (consume) {
                        case '=':
                            tokeniser.transition(TokeniserState.BeforeAttributeValue);
                            return;
                        case '>':
                            tokeniser.emitTagPending();
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        case '?':
                            if (tokeniser.syntax == Document.OutputSettings.Syntax.xml && (tokeniser.tagPending instanceof Token.XmlDecl)) {
                                tokeniser.transition(TokeniserState.AfterAttributeName);
                                return;
                            }
                            break;
                    }
                    tokeniser.tagPending.attrName.append(consume);
                    return;
                }
                tokeniser.error(this);
                tokeniser.tagPending.attrName.append(consume);
            }
        };
        AttributeName = tokeniserState35;
        TokeniserState tokeniserState36 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.36
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.attrName.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.AttributeName);
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume == '/') {
                            tokeniser.transition(TokeniserState.SelfClosingStartTag);
                            return;
                        }
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        switch (consume) {
                            case '<':
                                break;
                            case '=':
                                tokeniser.transition(TokeniserState.BeforeAttributeValue);
                                break;
                            case '>':
                                tokeniser.emitTagPending();
                                tokeniser.transition(TokeniserState.Data);
                                break;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(TokeniserState.AttributeName);
                                break;
                        }
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.tagPending.attrName.append(consume);
                    tokeniser.transition(TokeniserState.AttributeName);
                }
            }
        };
        AfterAttributeName = tokeniserState36;
        TokeniserState tokeniserState37 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.37
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(TokeniserState.replacementChar, characterReader.pos() - 1, characterReader.pos());
                    tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                    return;
                }
                if (consume != ' ') {
                    if (consume == '\"') {
                        tokeniser.transition(TokeniserState.AttributeValue_doubleQuoted);
                        return;
                    }
                    if (consume != '`') {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.emitTagPending();
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        if (consume == '&') {
                            characterReader.unconsume();
                            tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                            return;
                        }
                        if (consume == '\'') {
                            tokeniser.transition(TokeniserState.AttributeValue_singleQuoted);
                            return;
                        }
                        switch (consume) {
                            case '<':
                            case '=':
                                break;
                            case '>':
                                tokeniser.error(this);
                                tokeniser.emitTagPending();
                                tokeniser.transition(TokeniserState.Data);
                                break;
                            default:
                                characterReader.unconsume();
                                tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                                break;
                        }
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(consume, characterReader.pos() - 1, characterReader.pos());
                    tokeniser.transition(TokeniserState.AttributeValue_unquoted);
                }
            }
        };
        BeforeAttributeValue = tokeniserState37;
        TokeniserState tokeniserState38 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.38
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char c;
                characterReader.pos();
                characterReader.bufferUp();
                int i = characterReader.bufPos;
                int i2 = characterReader.bufLength;
                char[] cArr = characterReader.charBuf;
                int i3 = i;
                while (i3 < i2 && (c = cArr[i3]) != 0 && c != '&' && c != '\"') {
                    i3++;
                }
                characterReader.bufPos = i3;
                String cacheString = i3 > i ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i, i3 - i) : "";
                if (cacheString.length() > 0) {
                    tokeniser.tagPending.attrValue.append(cacheString);
                } else {
                    tokeniser.tagPending.hasEmptyAttrValue = true;
                }
                int pos = characterReader.pos();
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(TokeniserState.replacementChar, pos, characterReader.pos());
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.AfterAttributeValue_quoted);
                    return;
                }
                if (consume != '&') {
                    if (consume != 65535) {
                        tokeniser.tagPending.appendAttributeValue(consume, pos, characterReader.pos());
                        return;
                    } else {
                        tokeniser.eofError(this);
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                }
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference('\"', true);
                Token.Tag tag = tokeniser.tagPending;
                if (consumeCharacterReference != null) {
                    tag.appendAttributeValue(pos, characterReader.pos(), consumeCharacterReference);
                } else {
                    tag.appendAttributeValue('&', pos, characterReader.pos());
                }
            }
        };
        AttributeValue_doubleQuoted = tokeniserState38;
        TokeniserState tokeniserState39 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.39
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char c;
                characterReader.pos();
                characterReader.bufferUp();
                int i = characterReader.bufPos;
                int i2 = characterReader.bufLength;
                char[] cArr = characterReader.charBuf;
                int i3 = i;
                while (i3 < i2 && (c = cArr[i3]) != 0 && c != '&' && c != '\'') {
                    i3++;
                }
                characterReader.bufPos = i3;
                String cacheString = i3 > i ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i, i3 - i) : "";
                if (cacheString.length() > 0) {
                    tokeniser.tagPending.attrValue.append(cacheString);
                } else {
                    tokeniser.tagPending.hasEmptyAttrValue = true;
                }
                int pos = characterReader.pos();
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(TokeniserState.replacementChar, pos, characterReader.pos());
                    return;
                }
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != '&') {
                    if (consume != '\'') {
                        tokeniser.tagPending.appendAttributeValue(consume, pos, characterReader.pos());
                        return;
                    } else {
                        tokeniser.transition(TokeniserState.AfterAttributeValue_quoted);
                        return;
                    }
                }
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference('\'', true);
                Token.Tag tag = tokeniser.tagPending;
                if (consumeCharacterReference != null) {
                    tag.appendAttributeValue(pos, characterReader.pos(), consumeCharacterReference);
                } else {
                    tag.appendAttributeValue('&', pos, characterReader.pos());
                }
            }
        };
        AttributeValue_singleQuoted = tokeniserState39;
        TokeniserState tokeniserState40 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.40
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                characterReader.pos();
                String consumeToAnySorted = characterReader.consumeToAnySorted(TokeniserState.attributeValueUnquoted);
                if (consumeToAnySorted.length() > 0) {
                    tokeniser.tagPending.attrValue.append(consumeToAnySorted);
                }
                int pos = characterReader.pos();
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(TokeniserState.replacementChar, pos, characterReader.pos());
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '`') {
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(TokeniserState.Data);
                            return;
                        }
                        if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                            if (consume == '&') {
                                int[] consumeCharacterReference = tokeniser.consumeCharacterReference('>', true);
                                Token.Tag tag = tokeniser.tagPending;
                                if (consumeCharacterReference != null) {
                                    tag.appendAttributeValue(pos, characterReader.pos(), consumeCharacterReference);
                                    return;
                                } else {
                                    tag.appendAttributeValue('&', pos, characterReader.pos());
                                    return;
                                }
                            }
                            if (consume != '\'') {
                                switch (consume) {
                                    case '<':
                                    case '=':
                                        break;
                                    case '>':
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(TokeniserState.Data);
                                        break;
                                    default:
                                        tokeniser.tagPending.appendAttributeValue(consume, pos, characterReader.pos());
                                        break;
                                }
                                return;
                            }
                        }
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(consume, pos, characterReader.pos());
                    return;
                }
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            }
        };
        AttributeValue_unquoted = tokeniserState40;
        TokeniserState tokeniserState41 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.41
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                    return;
                }
                if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                    return;
                }
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume == '>') {
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    if (consume == '?' && (tokeniser.tagPending instanceof Token.XmlDecl)) {
                        return;
                    }
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                }
            }
        };
        AfterAttributeValue_quoted = tokeniserState41;
        TokeniserState tokeniserState42 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.42
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '>') {
                    tokeniser.tagPending.selfClosing = true;
                    tokeniser.emitTagPending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                }
            }
        };
        SelfClosingStartTag = tokeniserState42;
        TokeniserState tokeniserState43 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.43
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                Token.Comment comment = tokeniser.commentPending;
                comment.data.append(characterReader.consumeTo('>'));
                char current = characterReader.current();
                if (current == '>' || current == 65535) {
                    characterReader.consume();
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        BogusComment = tokeniserState43;
        TokeniserState tokeniserState44 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.44
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchConsume("--")) {
                    tokeniser.commentPending.mo889reset();
                    tokeniser.transition(TokeniserState.CommentStart);
                    return;
                }
                if (characterReader.matchConsumeIgnoreCase("DOCTYPE")) {
                    tokeniser.transition(TokeniserState.Doctype);
                    return;
                }
                if (characterReader.matchConsume("[CDATA[")) {
                    tokeniser.createTempBuffer();
                    tokeniser.transition(TokeniserState.CdataSection);
                    return;
                }
                if (tokeniser.syntax != Document.OutputSettings.Syntax.xml || !characterReader.matchesAsciiAlpha()) {
                    tokeniser.error(this);
                    tokeniser.commentPending.mo889reset();
                    tokeniser.transition(TokeniserState.BogusComment);
                } else {
                    Token.XmlDecl xmlDecl = tokeniser.xmlDeclPending;
                    xmlDecl.mo889reset();
                    xmlDecl.isDeclaration = true;
                    tokeniser.tagPending = xmlDecl;
                    tokeniser.transition(TokeniserState.TagName);
                }
            }
        };
        MarkupDeclarationOpen = tokeniserState44;
        TokeniserState tokeniserState45 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.45
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    Token.XmlDecl xmlDecl = tokeniser.xmlDeclPending;
                    xmlDecl.mo889reset();
                    xmlDecl.isDeclaration = false;
                    tokeniser.tagPending = xmlDecl;
                    tokeniser.transition(TokeniserState.TagName);
                    return;
                }
                tokeniser.error(this);
                Token.Comment comment = tokeniser.commentPending;
                comment.mo889reset();
                comment.append('?');
                tokeniser.transition(TokeniserState.BogusComment);
            }
        };
        MarkupProcessingOpen = tokeniserState45;
        TokeniserState tokeniserState46 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.46
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.commentPending.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.Comment);
                    return;
                }
                if (consume == '-') {
                    tokeniser.transition(TokeniserState.CommentStartDash);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume != 65535) {
                    characterReader.unconsume();
                    tokeniser.transition(TokeniserState.Comment);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        CommentStart = tokeniserState46;
        TokeniserState tokeniserState47 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.47
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.commentPending.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.Comment);
                    return;
                }
                if (consume == '-') {
                    tokeniser.transition(TokeniserState.CommentEnd);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume != 65535) {
                    tokeniser.commentPending.append(consume);
                    tokeniser.transition(TokeniserState.Comment);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        CommentStartDash = tokeniserState47;
        TokeniserState tokeniserState48 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.48
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.commentPending.append(TokeniserState.replacementChar);
                } else {
                    if (current == '-') {
                        tokeniser.advanceTransition(TokeniserState.CommentEndDash);
                        return;
                    }
                    if (current != 65535) {
                        Token.Comment comment = tokeniser.commentPending;
                        comment.data.append(characterReader.consumeToAny('-', TokeniserState.nullChar));
                    } else {
                        tokeniser.eofError(this);
                        tokeniser.emitCommentPending();
                        tokeniser.transition(TokeniserState.Data);
                    }
                }
            }
        };
        Comment = tokeniserState48;
        TokeniserState tokeniserState49 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.49
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append('-');
                    comment.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.Comment);
                    return;
                }
                if (consume == '-') {
                    tokeniser.transition(TokeniserState.CommentEnd);
                    return;
                }
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    Token.Comment comment2 = tokeniser.commentPending;
                    comment2.data.append('-');
                    comment2.append(consume);
                    tokeniser.transition(TokeniserState.Comment);
                }
            }
        };
        CommentEndDash = tokeniserState49;
        TokeniserState tokeniserState50 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.50
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append("--");
                    comment.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.Comment);
                    return;
                }
                if (consume == '!') {
                    tokeniser.transition(TokeniserState.CommentEndBang);
                    return;
                }
                if (consume == '-') {
                    tokeniser.commentPending.append('-');
                    return;
                }
                if (consume == '>') {
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    Token.Comment comment2 = tokeniser.commentPending;
                    comment2.data.append("--");
                    comment2.append(consume);
                    tokeniser.transition(TokeniserState.Comment);
                }
            }
        };
        CommentEnd = tokeniserState50;
        TokeniserState tokeniserState51 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.51
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append("--!");
                    comment.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.Comment);
                    return;
                }
                if (consume == '-') {
                    tokeniser.commentPending.data.append("--!");
                    tokeniser.transition(TokeniserState.CommentEndDash);
                    return;
                }
                if (consume == '>') {
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    Token.Comment comment2 = tokeniser.commentPending;
                    comment2.data.append("--!");
                    comment2.append(consume);
                    tokeniser.transition(TokeniserState.Comment);
                }
            }
        };
        CommentEndBang = tokeniserState51;
        TokeniserState tokeniserState52 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.52
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeDoctypeName);
                    return;
                }
                if (consume != '>') {
                    if (consume != 65535) {
                        tokeniser.error(this);
                        tokeniser.transition(TokeniserState.BeforeDoctypeName);
                        return;
                    }
                    tokeniser.eofError(this);
                }
                tokeniser.error(this);
                Token.Doctype doctype = tokeniser.doctypePending;
                doctype.mo889reset();
                doctype.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        Doctype = tokeniserState52;
        TokeniserState tokeniserState53 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.53
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.doctypePending.mo889reset();
                    tokeniser.transition(TokeniserState.DoctypeName);
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Doctype doctype = tokeniser.doctypePending;
                    doctype.mo889reset();
                    doctype.name.append(TokeniserState.replacementChar);
                    tokeniser.transition(TokeniserState.DoctypeName);
                    return;
                }
                if (consume != ' ') {
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        Token.Doctype doctype2 = tokeniser.doctypePending;
                        doctype2.mo889reset();
                        doctype2.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                    if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                        return;
                    }
                    tokeniser.doctypePending.mo889reset();
                    tokeniser.doctypePending.name.append(consume);
                    tokeniser.transition(TokeniserState.DoctypeName);
                }
            }
        };
        BeforeDoctypeName = tokeniserState53;
        TokeniserState tokeniserState54 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.54
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.doctypePending.name.append(characterReader.consumeLetterSequence());
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.name.append(TokeniserState.replacementChar);
                    return;
                }
                if (consume != ' ') {
                    if (consume == '>') {
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                    if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                        tokeniser.doctypePending.name.append(consume);
                        return;
                    }
                }
                tokeniser.transition(TokeniserState.AfterDoctypeName);
            }
        };
        DoctypeName = tokeniserState54;
        TokeniserState tokeniserState55 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.55
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (characterReader.matchesAny('\t', '\n', '\r', '\f', ' ')) {
                    characterReader.advance();
                    return;
                }
                if (characterReader.matches('>')) {
                    tokeniser.emitDoctypePending();
                    tokeniser.advanceTransition(TokeniserState.Data);
                    return;
                }
                Document.OutputSettings.Syntax syntax = tokeniser.syntax;
                Token.Doctype doctype = tokeniser.doctypePending;
                if (syntax == Document.OutputSettings.Syntax.xml && characterReader.matches('[')) {
                    tokeniser.advanceTransition(TokeniserState.DoctypeInternalSubset);
                    return;
                }
                if (characterReader.matchConsumeIgnoreCase("PUBLIC")) {
                    doctype.pubSysKey = "PUBLIC";
                    tokeniser.transition(TokeniserState.AfterDoctypePublicKeyword);
                } else if (characterReader.matchConsumeIgnoreCase("SYSTEM")) {
                    doctype.pubSysKey = "SYSTEM";
                    tokeniser.transition(TokeniserState.AfterDoctypeSystemKeyword);
                } else {
                    tokeniser.error(this);
                    doctype.forceQuirks = true;
                    tokeniser.advanceTransition(TokeniserState.BogusDoctype);
                }
            }
        };
        AfterDoctypeName = tokeniserState55;
        TokeniserState tokeniserState56 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.56
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeDoctypePublicIdentifier);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        AfterDoctypePublicKeyword = tokeniserState56;
        TokeniserState tokeniserState57 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.57
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.DoctypePublicIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.DoctypePublicIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        BeforeDoctypePublicIdentifier = tokeniserState57;
        TokeniserState tokeniserState58 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.58
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.publicIdentifier.append(TokeniserState.replacementChar);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.publicIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        DoctypePublicIdentifier_doubleQuoted = tokeniserState58;
        TokeniserState tokeniserState59 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.59
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.publicIdentifier.append(TokeniserState.replacementChar);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.publicIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        DoctypePublicIdentifier_singleQuoted = tokeniserState59;
        TokeniserState tokeniserState60 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.60
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BetweenDoctypePublicAndSystemIdentifiers);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                } else if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        AfterDoctypePublicIdentifier = tokeniserState60;
        TokeniserState tokeniserState61 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.61
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    return;
                }
                if (consume == '\"') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume == '[') {
                    Document.OutputSettings.Syntax syntax = tokeniser.syntax;
                    Token.Doctype doctype = tokeniser.doctypePending;
                    if (syntax == Document.OutputSettings.Syntax.xml) {
                        tokeniser.transition(TokeniserState.DoctypeInternalSubset);
                        return;
                    }
                    tokeniser.error(this);
                    doctype.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        BetweenDoctypePublicAndSystemIdentifiers = tokeniserState61;
        TokeniserState tokeniserState62 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.62
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(TokeniserState.BeforeDoctypeSystemIdentifier);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        AfterDoctypeSystemKeyword = tokeniserState62;
        TokeniserState tokeniserState63 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.63
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_doubleQuoted);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.DoctypeSystemIdentifier_singleQuoted);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        BeforeDoctypeSystemIdentifier = tokeniserState63;
        TokeniserState tokeniserState64 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.64
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.systemIdentifier.append(TokeniserState.replacementChar);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.systemIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        DoctypeSystemIdentifier_doubleQuoted = tokeniserState64;
        TokeniserState tokeniserState65 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.65
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.systemIdentifier.append(TokeniserState.replacementChar);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
                    return;
                }
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.systemIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        DoctypeSystemIdentifier_singleQuoted = tokeniserState65;
        TokeniserState tokeniserState66 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.66
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    return;
                }
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                if (consume == '[') {
                    if (tokeniser.syntax == Document.OutputSettings.Syntax.xml) {
                        tokeniser.transition(TokeniserState.DoctypeInternalSubset);
                        return;
                    } else {
                        tokeniser.error(this);
                        tokeniser.transition(TokeniserState.BogusDoctype);
                        return;
                    }
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        AfterDoctypeSystemIdentifier = tokeniserState66;
        TokeniserState tokeniserState67 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.67
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                } else {
                    if (consume != 65535) {
                        return;
                    }
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        BogusDoctype = tokeniserState67;
        TokeniserState tokeniserState68 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.68
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char c;
                FormBody.Builder builder = tokeniser.doctypePending.internalSubset;
                while (true) {
                    char c2 = 0;
                    while (true) {
                        char consume = characterReader.consume();
                        if (consume == 0) {
                            tokeniser.error(this);
                            builder.append(TokeniserState.replacementChar);
                        } else if (consume == '\"') {
                            builder.append(consume);
                            c = 2;
                            if (c2 == 0) {
                                c2 = c;
                            } else if (c2 == 2) {
                                break;
                            }
                        } else if (consume == '\'') {
                            builder.append(consume);
                            c = 1;
                            if (c2 == 0) {
                                c2 = c;
                            } else if (c2 == 1) {
                                break;
                            }
                        } else if (consume == '-') {
                            builder.append(consume);
                            if (c2 == 3 && characterReader.matchConsume("->")) {
                                builder.append("->");
                                break;
                            }
                        } else if (consume == '<') {
                            builder.append(consume);
                            if (c2 == 0) {
                                if (characterReader.matchConsume("!--")) {
                                    builder.append("!--");
                                    c2 = 3;
                                } else if (characterReader.matchConsume("?")) {
                                    builder.append('?');
                                    c2 = 4;
                                }
                            }
                        } else if (consume == '?') {
                            builder.append(consume);
                            if (c2 == 4 && characterReader.matches('>')) {
                                characterReader.advance();
                                builder.append('>');
                                break;
                            }
                        } else if (consume != ']') {
                            if (consume == 65535) {
                                tokeniser.eofError(this);
                                tokeniser.emitDoctypePending();
                                tokeniser.transition(TokeniserState.Data);
                                return;
                            }
                            builder.append(consume);
                        } else if (c2 == 0) {
                            characterReader.bufferUp();
                            int i = characterReader.bufPos;
                            int i2 = characterReader.bufLength;
                            char[] cArr = characterReader.charBuf;
                            int i3 = i;
                            while (i3 < i2 && StringUtil.isWhitespace(cArr[i3])) {
                                i3++;
                            }
                            characterReader.bufPos = i3;
                            String cacheString = i3 > i ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i, i3 - i) : "";
                            if (characterReader.matches('>')) {
                                characterReader.advance();
                                tokeniser.emitDoctypePending();
                                tokeniser.transition(TokeniserState.Data);
                                return;
                            }
                            builder.append(consume);
                            builder.append(cacheString);
                        } else {
                            builder.append(consume);
                        }
                    }
                }
            }
        };
        DoctypeInternalSubset = tokeniserState68;
        TokeniserState tokeniserState69 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.69
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                String cacheString;
                int nextIndexOf = characterReader.nextIndexOf("]]>");
                if (nextIndexOf != -1) {
                    cacheString = CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, characterReader.bufPos, nextIndexOf);
                    characterReader.bufPos += nextIndexOf;
                } else {
                    int i = characterReader.bufLength;
                    int i2 = characterReader.bufPos;
                    if (i - i2 < 3) {
                        cacheString = characterReader.consumeToEnd();
                    } else {
                        int i3 = i - 2;
                        cacheString = CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i2, i3 - i2);
                        characterReader.bufPos = i3;
                    }
                }
                tokeniser.dataBuffer.append(cacheString);
                if (characterReader.matchConsume("]]>") || characterReader.isEmpty()) {
                    String value = tokeniser.dataBuffer.value();
                    Token.CData cData = new Token.CData();
                    FormBody.Builder builder = cData.data;
                    builder.reset();
                    builder.names = value;
                    tokeniser.emit(cData);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        CdataSection = tokeniserState69;
        $VALUES = new TokeniserState[]{tokeniserState, tokeniserState2, tokeniserState3, tokeniserState4, tokeniserState5, tokeniserState6, tokeniserState7, tokeniserState8, tokeniserState9, tokeniserState10, tokeniserState11, tokeniserState12, tokeniserState13, tokeniserState14, tokeniserState15, tokeniserState16, tokeniserState17, tokeniserState18, tokeniserState19, tokeniserState20, tokeniserState21, tokeniserState22, tokeniserState23, tokeniserState24, tokeniserState25, tokeniserState26, tokeniserState27, tokeniserState28, tokeniserState29, tokeniserState30, tokeniserState31, tokeniserState32, tokeniserState33, tokeniserState34, tokeniserState35, tokeniserState36, tokeniserState37, tokeniserState38, tokeniserState39, tokeniserState40, tokeniserState41, tokeniserState42, tokeniserState43, tokeniserState44, tokeniserState45, tokeniserState46, tokeniserState47, tokeniserState48, tokeniserState49, tokeniserState50, tokeniserState51, tokeniserState52, tokeniserState53, tokeniserState54, tokeniserState55, tokeniserState56, tokeniserState57, tokeniserState58, tokeniserState59, tokeniserState60, tokeniserState61, tokeniserState62, tokeniserState63, tokeniserState64, tokeniserState65, tokeniserState66, tokeniserState67, tokeniserState68, tokeniserState69};
        attributeNameCharsSorted = new char[]{'\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>', '?'};
        attributeValueUnquoted = new char[]{nullChar, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
        replacementStr = String.valueOf(replacementChar);
    }

    public static void handleDataDoubleEscapeTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        if (characterReader.matchesAsciiAlpha()) {
            String consumeLetterSequence = characterReader.consumeLetterSequence();
            tokeniser.dataBuffer.append(consumeLetterSequence);
            tokeniser.emit(consumeLetterSequence);
            return;
        }
        char consume = characterReader.consume();
        if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r' && consume != ' ' && consume != '/' && consume != '>') {
            characterReader.unconsume();
            tokeniser.transition(tokeniserState2);
        } else {
            if (tokeniser.dataBuffer.value().equals("script")) {
                tokeniser.transition(tokeniserState);
            } else {
                tokeniser.transition(tokeniserState2);
            }
            tokeniser.emit(consume);
        }
    }

    public static void handleDataEndTag(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState) {
        if (characterReader.matchesAsciiAlpha()) {
            String consumeMatching = characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda0());
            tokeniser.tagPending.appendTagName(consumeMatching);
            tokeniser.dataBuffer.append(consumeMatching);
            return;
        }
        boolean isAppropriateEndTagToken = tokeniser.isAppropriateEndTagToken();
        FormBody.Builder builder = tokeniser.dataBuffer;
        if (isAppropriateEndTagToken && !characterReader.isEmpty()) {
            char consume = characterReader.consume();
            if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                tokeniser.transition(BeforeAttributeName);
                return;
            }
            if (consume == '/') {
                tokeniser.transition(SelfClosingStartTag);
                return;
            } else {
                if (consume == '>') {
                    tokeniser.emitTagPending();
                    tokeniser.transition(Data);
                    return;
                }
                builder.append(consume);
            }
        }
        tokeniser.emit("</");
        tokeniser.emit(builder.value());
        tokeniser.transition(tokeniserState);
    }

    public static void readRawData(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char current = characterReader.current();
        if (current == 0) {
            tokeniser.error(tokeniserState);
            characterReader.advance();
            tokeniser.emit(replacementChar);
            return;
        }
        if (current == '<') {
            tokeniser.advanceTransition(tokeniserState2);
            return;
        }
        if (current == 65535) {
            tokeniser.emit(new Token.EOF());
            return;
        }
        characterReader.bufferUp();
        int i = characterReader.bufPos;
        int i2 = characterReader.bufLength;
        char[] cArr = characterReader.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == '<' || c == 0) {
                break;
            } else {
                i3++;
            }
        }
        characterReader.bufPos = i3;
        tokeniser.emit(i3 > i ? CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i, i3 - i) : "");
    }

    public static TokeniserState valueOf(String str) {
        return (TokeniserState) Enum.valueOf(TokeniserState.class, str);
    }

    public static TokeniserState[] values() {
        return (TokeniserState[]) $VALUES.clone();
    }

    public abstract void read(Tokeniser tokeniser, CharacterReader characterReader);
}
