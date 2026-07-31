package org.jsoup.parser;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.Token;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TokeniserState {
    public static final /* synthetic */ TokeniserState[] $VALUES;
    public static final AnonymousClass36 AfterAttributeName;
    public static final AnonymousClass41 AfterAttributeValue_quoted;
    public static final AnonymousClass55 AfterDoctypeName;
    public static final AnonymousClass60 AfterDoctypePublicIdentifier;
    public static final AnonymousClass56 AfterDoctypePublicKeyword;
    public static final AnonymousClass66 AfterDoctypeSystemIdentifier;
    public static final AnonymousClass62 AfterDoctypeSystemKeyword;
    public static final AnonymousClass35 AttributeName;
    public static final AnonymousClass38 AttributeValue_doubleQuoted;
    public static final AnonymousClass39 AttributeValue_singleQuoted;
    public static final AnonymousClass40 AttributeValue_unquoted;
    public static final AnonymousClass34 BeforeAttributeName;
    public static final AnonymousClass37 BeforeAttributeValue;
    public static final AnonymousClass53 BeforeDoctypeName;
    public static final AnonymousClass57 BeforeDoctypePublicIdentifier;
    public static final AnonymousClass63 BeforeDoctypeSystemIdentifier;
    public static final AnonymousClass61 BetweenDoctypePublicAndSystemIdentifiers;
    public static final AnonymousClass43 BogusComment;
    public static final AnonymousClass67 BogusDoctype;
    public static final AnonymousClass69 CdataSection;
    public static final AnonymousClass2 CharacterReferenceInData;
    public static final AnonymousClass4 CharacterReferenceInRcdata;
    public static final AnonymousClass48 Comment;
    public static final AnonymousClass50 CommentEnd;
    public static final AnonymousClass51 CommentEndBang;
    public static final AnonymousClass49 CommentEndDash;
    public static final AnonymousClass46 CommentStart;
    public static final AnonymousClass47 CommentStartDash;
    public static final AnonymousClass1 Data;
    public static final AnonymousClass52 Doctype;
    public static final AnonymousClass68 DoctypeInternalSubset;
    public static final AnonymousClass54 DoctypeName;
    public static final AnonymousClass58 DoctypePublicIdentifier_doubleQuoted;
    public static final AnonymousClass59 DoctypePublicIdentifier_singleQuoted;
    public static final AnonymousClass64 DoctypeSystemIdentifier_doubleQuoted;
    public static final AnonymousClass65 DoctypeSystemIdentifier_singleQuoted;
    public static final AnonymousClass9 EndTagOpen;
    public static final AnonymousClass44 MarkupDeclarationOpen;
    public static final AnonymousClass45 MarkupProcessingOpen;
    public static final AnonymousClass7 PLAINTEXT;
    public static final AnonymousClass13 RCDATAEndTagName;
    public static final AnonymousClass12 RCDATAEndTagOpen;
    public static final AnonymousClass5 Rawtext;
    public static final AnonymousClass16 RawtextEndTagName;
    public static final AnonymousClass15 RawtextEndTagOpen;
    public static final AnonymousClass14 RawtextLessthanSign;
    public static final AnonymousClass3 Rcdata;
    public static final AnonymousClass11 RcdataLessthanSign;
    public static final AnonymousClass6 ScriptData;
    public static final AnonymousClass33 ScriptDataDoubleEscapeEnd;
    public static final AnonymousClass28 ScriptDataDoubleEscapeStart;
    public static final AnonymousClass29 ScriptDataDoubleEscaped;
    public static final AnonymousClass30 ScriptDataDoubleEscapedDash;
    public static final AnonymousClass31 ScriptDataDoubleEscapedDashDash;
    public static final AnonymousClass32 ScriptDataDoubleEscapedLessthanSign;
    public static final AnonymousClass19 ScriptDataEndTagName;
    public static final AnonymousClass18 ScriptDataEndTagOpen;
    public static final AnonymousClass20 ScriptDataEscapeStart;
    public static final AnonymousClass21 ScriptDataEscapeStartDash;
    public static final AnonymousClass22 ScriptDataEscaped;
    public static final AnonymousClass23 ScriptDataEscapedDash;
    public static final AnonymousClass24 ScriptDataEscapedDashDash;
    public static final AnonymousClass27 ScriptDataEscapedEndTagName;
    public static final AnonymousClass26 ScriptDataEscapedEndTagOpen;
    public static final AnonymousClass25 ScriptDataEscapedLessthanSign;
    public static final AnonymousClass17 ScriptDataLessthanSign;
    public static final AnonymousClass42 SelfClosingStartTag;
    public static final AnonymousClass10 TagName;
    public static final AnonymousClass8 TagOpen;
    public static final char[] attributeNameCharsSorted;
    public static final char[] attributeValueUnquoted;
    public static final String replacementStr;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.TokeniserState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.TokeniserState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.TokeniserState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.TokeniserState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.TokeniserState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.TokeniserState$15] */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.jsoup.parser.TokeniserState$16] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.TokeniserState$17] */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.jsoup.parser.TokeniserState$18] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.TokeniserState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.TokeniserState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.TokeniserState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.TokeniserState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.TokeniserState$22] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.jsoup.parser.TokeniserState$23] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.jsoup.parser.TokeniserState$24] */
    /* JADX WARN: Type inference failed for: r24v0, types: [org.jsoup.parser.TokeniserState$25] */
    /* JADX WARN: Type inference failed for: r25v0, types: [org.jsoup.parser.TokeniserState$26] */
    /* JADX WARN: Type inference failed for: r26v0, types: [org.jsoup.parser.TokeniserState$27] */
    /* JADX WARN: Type inference failed for: r27v0, types: [org.jsoup.parser.TokeniserState$28] */
    /* JADX WARN: Type inference failed for: r28v0, types: [org.jsoup.parser.TokeniserState$29] */
    /* JADX WARN: Type inference failed for: r29v0, types: [org.jsoup.parser.TokeniserState$30] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.TokeniserState$3] */
    /* JADX WARN: Type inference failed for: r30v0, types: [org.jsoup.parser.TokeniserState$31] */
    /* JADX WARN: Type inference failed for: r31v0, types: [org.jsoup.parser.TokeniserState$32] */
    /* JADX WARN: Type inference failed for: r32v0, types: [org.jsoup.parser.TokeniserState$33] */
    /* JADX WARN: Type inference failed for: r33v0, types: [org.jsoup.parser.TokeniserState$34] */
    /* JADX WARN: Type inference failed for: r34v0, types: [org.jsoup.parser.TokeniserState$35] */
    /* JADX WARN: Type inference failed for: r35v0, types: [org.jsoup.parser.TokeniserState$36] */
    /* JADX WARN: Type inference failed for: r36v0, types: [org.jsoup.parser.TokeniserState$37] */
    /* JADX WARN: Type inference failed for: r37v0, types: [org.jsoup.parser.TokeniserState$38] */
    /* JADX WARN: Type inference failed for: r38v0, types: [org.jsoup.parser.TokeniserState$39] */
    /* JADX WARN: Type inference failed for: r39v0, types: [org.jsoup.parser.TokeniserState$40] */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.jsoup.parser.TokeniserState$4] */
    /* JADX WARN: Type inference failed for: r40v0, types: [org.jsoup.parser.TokeniserState$41] */
    /* JADX WARN: Type inference failed for: r41v0, types: [org.jsoup.parser.TokeniserState$42] */
    /* JADX WARN: Type inference failed for: r42v0, types: [org.jsoup.parser.TokeniserState$43] */
    /* JADX WARN: Type inference failed for: r43v0, types: [org.jsoup.parser.TokeniserState$44] */
    /* JADX WARN: Type inference failed for: r44v0, types: [org.jsoup.parser.TokeniserState$45] */
    /* JADX WARN: Type inference failed for: r45v0, types: [org.jsoup.parser.TokeniserState$46] */
    /* JADX WARN: Type inference failed for: r46v0, types: [org.jsoup.parser.TokeniserState$47] */
    /* JADX WARN: Type inference failed for: r47v0, types: [org.jsoup.parser.TokeniserState$48] */
    /* JADX WARN: Type inference failed for: r48v0, types: [org.jsoup.parser.TokeniserState$49] */
    /* JADX WARN: Type inference failed for: r49v0, types: [org.jsoup.parser.TokeniserState$50] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.TokeniserState$5] */
    /* JADX WARN: Type inference failed for: r50v0, types: [org.jsoup.parser.TokeniserState$51] */
    /* JADX WARN: Type inference failed for: r51v0, types: [org.jsoup.parser.TokeniserState$52] */
    /* JADX WARN: Type inference failed for: r52v0, types: [org.jsoup.parser.TokeniserState$53] */
    /* JADX WARN: Type inference failed for: r53v0, types: [org.jsoup.parser.TokeniserState$54] */
    /* JADX WARN: Type inference failed for: r54v0, types: [org.jsoup.parser.TokeniserState$55] */
    /* JADX WARN: Type inference failed for: r55v0, types: [org.jsoup.parser.TokeniserState$56] */
    /* JADX WARN: Type inference failed for: r56v0, types: [org.jsoup.parser.TokeniserState$57] */
    /* JADX WARN: Type inference failed for: r57v0, types: [org.jsoup.parser.TokeniserState$58] */
    /* JADX WARN: Type inference failed for: r58v0, types: [org.jsoup.parser.TokeniserState$59] */
    /* JADX WARN: Type inference failed for: r59v0, types: [org.jsoup.parser.TokeniserState$60] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.TokeniserState$6] */
    /* JADX WARN: Type inference failed for: r60v0, types: [org.jsoup.parser.TokeniserState$61] */
    /* JADX WARN: Type inference failed for: r61v0, types: [org.jsoup.parser.TokeniserState$62] */
    /* JADX WARN: Type inference failed for: r62v0, types: [org.jsoup.parser.TokeniserState$63] */
    /* JADX WARN: Type inference failed for: r63v0, types: [org.jsoup.parser.TokeniserState$64] */
    /* JADX WARN: Type inference failed for: r64v0, types: [org.jsoup.parser.TokeniserState$65] */
    /* JADX WARN: Type inference failed for: r65v0, types: [org.jsoup.parser.TokeniserState$66] */
    /* JADX WARN: Type inference failed for: r66v0, types: [org.jsoup.parser.TokeniserState$67] */
    /* JADX WARN: Type inference failed for: r67v0, types: [org.jsoup.parser.TokeniserState$68] */
    /* JADX WARN: Type inference failed for: r68v0, types: [org.jsoup.parser.TokeniserState$69] */
    /* JADX WARN: Type inference failed for: r6v0, types: [org.jsoup.parser.TokeniserState$7] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.TokeniserState$8] */
    /* JADX WARN: Type inference failed for: r8v0, types: [org.jsoup.parser.TokeniserState$9] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.TokeniserState$10] */
    static {
        ?? r0 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.1
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
        Data = r0;
        ?? r1 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.2
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
                if (consumeCharacterReference == null) {
                    tokeniser.emit('&');
                } else {
                    tokeniser.emit(new String(consumeCharacterReference, 0, consumeCharacterReference.length));
                }
                tokeniser.transition(TokeniserState.Data);
            }
        };
        CharacterReferenceInData = r1;
        ?? r2 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.3
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit((char) 65533);
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
        Rcdata = r2;
        ?? r3 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.4
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                int[] consumeCharacterReference = tokeniser.consumeCharacterReference(null, false);
                if (consumeCharacterReference == null) {
                    tokeniser.emit('&');
                } else {
                    tokeniser.emit(new String(consumeCharacterReference, 0, consumeCharacterReference.length));
                }
                tokeniser.transition(TokeniserState.Rcdata);
            }
        };
        CharacterReferenceInRcdata = r3;
        ?? r4 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.5
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$200(tokeniser, characterReader, this, TokeniserState.RawtextLessthanSign);
            }
        };
        Rawtext = r4;
        ?? r5 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.6
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$200(tokeniser, characterReader, this, TokeniserState.ScriptDataLessthanSign);
            }
        };
        ScriptData = r5;
        ?? r6 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.7
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit((char) 65533);
                } else if (current != 65535) {
                    tokeniser.emit(characterReader.consumeTo((char) 0));
                } else {
                    tokeniser.emit(new Token.EOF());
                }
            }
        };
        PLAINTEXT = r6;
        ?? r7 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.8
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
                    if (tokeniser.syntax == 2) {
                        tokeniser.advanceTransition(TokeniserState.MarkupProcessingOpen);
                        return;
                    } else {
                        tokeniser.commentPending.mo741reset();
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
        TagOpen = r7;
        ?? r8 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.9
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean isEmpty = characterReader.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (isEmpty) {
                    tokeniser.eofError(this);
                    tokeniser.emit("</");
                    tokeniser.transition(anonymousClass1);
                } else if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(TokeniserState.TagName);
                } else {
                    if (characterReader.matches('>')) {
                        tokeniser.error(this);
                        tokeniser.advanceTransition(anonymousClass1);
                        return;
                    }
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.mo741reset();
                    comment.append('/');
                    tokeniser.transition(TokeniserState.BogusComment);
                }
            }
        };
        EndTagOpen = r8;
        ?? r9 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.10
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.tagPending.appendTagName(characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda1(20)));
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
                    AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                    if (consume == '>') {
                        tokeniser.emitTagPending();
                        tokeniser.transition(anonymousClass1);
                        return;
                    }
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(anonymousClass1);
                        return;
                    } else if (consume != '\t' && consume != '\n' && consume != '\f' && consume != '\r') {
                        Token.Tag tag = tokeniser.tagPending;
                        tag.getClass();
                        tag.appendTagName(String.valueOf(consume));
                        return;
                    }
                }
                tokeniser.transition(TokeniserState.BeforeAttributeName);
            }
        };
        TagName = r9;
        ?? r10 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.11
            /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
            
                if (r0 >= r7.bufPos) goto L33;
             */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
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
                    org.jsoup.parser.TokeniserState$12 r5 = org.jsoup.parser.TokeniserState.RCDATAEndTagOpen
                    r6.advanceTransition(r5)
                    return
                L11:
                    boolean r5 = r7.readFully
                    if (r5 == 0) goto L8b
                    boolean r5 = r7.matchesAsciiAlpha()
                    if (r5 == 0) goto L8b
                    java.lang.String r5 = r6.lastStartTag
                    if (r5 == 0) goto L8b
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
                    java.lang.String r5 = r6.lastStartCloseSeq
                    java.lang.String r0 = r7.lastIcSeq
                    boolean r0 = r5.equals(r0)
                    r1 = 0
                    r2 = 1
                    r3 = -1
                    if (r0 == 0) goto L4d
                    int r0 = r7.lastIcIndex
                    if (r0 != r3) goto L48
                    r2 = r1
                    goto L75
                L48:
                    int r4 = r7.bufPos
                    if (r0 < r4) goto L4d
                    goto L75
                L4d:
                    r7.lastIcSeq = r5
                    java.util.Locale r0 = java.util.Locale.ENGLISH
                    java.lang.String r4 = r5.toLowerCase(r0)
                    int r4 = r7.nextIndexOf(r4)
                    if (r4 <= r3) goto L61
                    int r5 = r7.bufPos
                    int r5 = r5 + r4
                    r7.lastIcIndex = r5
                    goto L75
                L61:
                    java.lang.String r5 = r5.toUpperCase(r0)
                    int r5 = r7.nextIndexOf(r5)
                    if (r5 <= r3) goto L6c
                    goto L6d
                L6c:
                    r2 = r1
                L6d:
                    if (r2 == 0) goto L73
                    int r0 = r7.bufPos
                    int r3 = r0 + r5
                L73:
                    r7.lastIcIndex = r3
                L75:
                    if (r2 != 0) goto L8b
                    org.jsoup.parser.Token$Tag r5 = r6.createTagPending(r1)
                    java.lang.String r7 = r6.lastStartTag
                    r5.name(r7)
                    r6.tagPending = r5
                    r6.emitTagPending()
                    org.jsoup.parser.TokeniserState$8 r5 = org.jsoup.parser.TokeniserState.TagOpen
                    r6.transition(r5)
                    return
                L8b:
                    r5 = 60
                    r6.emit(r5)
                    org.jsoup.parser.TokeniserState$3 r5 = org.jsoup.parser.TokeniserState.Rcdata
                    r6.transition(r5)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.TokeniserState.AnonymousClass11.read(org.jsoup.parser.Tokeniser, org.jsoup.parser.CharacterReader):void");
            }
        };
        RcdataLessthanSign = r10;
        ?? r11 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.12
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matchesAsciiAlpha()) {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.Rcdata);
                    return;
                }
                tokeniser.createTagPending(false);
                Token.Tag tag = tokeniser.tagPending;
                char current = characterReader.current();
                tag.getClass();
                tag.appendTagName(String.valueOf(current));
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(TokeniserState.RCDATAEndTagName);
            }
        };
        RCDATAEndTagOpen = r11;
        ?? r12 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.13
            public static void anythingElse(Tokeniser tokeniser, CharacterReader characterReader) {
                tokeniser.emit("</");
                tokeniser.emit(tokeniser.dataBuffer.value());
                characterReader.unconsume();
                tokeniser.transition(TokeniserState.Rcdata);
            }

            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    String consumeMatching = characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda1(20));
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
        RCDATAEndTagName = r12;
        ?? r13 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.14
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
        RawtextLessthanSign = r13;
        ?? r14 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.15
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(TokeniserState.RawtextEndTagName);
                } else {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.Rawtext);
                }
            }
        };
        RawtextEndTagOpen = r14;
        ?? r15 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.16
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$500(tokeniser, characterReader, TokeniserState.Rawtext);
            }
        };
        RawtextEndTagName = r15;
        ?? r16 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.17
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
        ScriptDataLessthanSign = r16;
        ?? r17 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.18
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.createTagPending(false);
                    tokeniser.transition(TokeniserState.ScriptDataEndTagName);
                } else {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.ScriptData);
                }
            }
        };
        ScriptDataEndTagOpen = r17;
        ?? r18 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.19
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$500(tokeniser, characterReader, TokeniserState.ScriptData);
            }
        };
        ScriptDataEndTagName = r18;
        ?? r19 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.20
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
        ScriptDataEscapeStart = r19;
        ?? r20 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.21
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
        ScriptDataEscapeStartDash = r20;
        ?? r21 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.22
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
                    tokeniser.emit((char) 65533);
                } else if (current == '-') {
                    tokeniser.emit('-');
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedDash);
                } else if (current != '<') {
                    tokeniser.emit(characterReader.consumeToAny('-', '<', 0));
                } else {
                    tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedLessthanSign);
                }
            }
        };
        ScriptDataEscaped = r21;
        ?? r22 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.23
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                char consume = characterReader.consume();
                AnonymousClass22 anonymousClass22 = TokeniserState.ScriptDataEscaped;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit((char) 65533);
                    tokeniser.transition(anonymousClass22);
                } else if (consume == '-') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataEscapedDashDash);
                } else if (consume == '<') {
                    tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
                } else {
                    tokeniser.emit(consume);
                    tokeniser.transition(anonymousClass22);
                }
            }
        };
        ScriptDataEscapedDash = r22;
        ?? r23 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.24
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.isEmpty()) {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                    return;
                }
                char consume = characterReader.consume();
                AnonymousClass22 anonymousClass22 = TokeniserState.ScriptDataEscaped;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit((char) 65533);
                    tokeniser.transition(anonymousClass22);
                } else {
                    if (consume == '-') {
                        tokeniser.emit(consume);
                        return;
                    }
                    if (consume == '<') {
                        tokeniser.transition(TokeniserState.ScriptDataEscapedLessthanSign);
                    } else if (consume != '>') {
                        tokeniser.emit(consume);
                        tokeniser.transition(anonymousClass22);
                    } else {
                        tokeniser.emit(consume);
                        tokeniser.transition(TokeniserState.ScriptData);
                    }
                }
            }
        };
        ScriptDataEscapedDashDash = r23;
        ?? r24 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.25
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
        ScriptDataEscapedLessthanSign = r24;
        ?? r25 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.26
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (!characterReader.matchesAsciiAlpha()) {
                    tokeniser.emit("</");
                    tokeniser.transition(TokeniserState.ScriptDataEscaped);
                    return;
                }
                tokeniser.createTagPending(false);
                Token.Tag tag = tokeniser.tagPending;
                char current = characterReader.current();
                tag.getClass();
                tag.appendTagName(String.valueOf(current));
                tokeniser.dataBuffer.append(characterReader.current());
                tokeniser.advanceTransition(TokeniserState.ScriptDataEscapedEndTagName);
            }
        };
        ScriptDataEscapedEndTagOpen = r25;
        ?? r26 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.27
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$500(tokeniser, characterReader, TokeniserState.ScriptDataEscaped);
            }
        };
        ScriptDataEscapedEndTagName = r26;
        ?? r27 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.28
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$600(tokeniser, characterReader, TokeniserState.ScriptDataDoubleEscaped, TokeniserState.ScriptDataEscaped);
            }
        };
        ScriptDataDoubleEscapeStart = r27;
        ?? r28 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.29
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.emit((char) 65533);
                } else if (current == '-') {
                    tokeniser.emit(current);
                    tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedDash);
                } else if (current == '<') {
                    tokeniser.emit(current);
                    tokeniser.advanceTransition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
                } else if (current != 65535) {
                    tokeniser.emit(characterReader.consumeToAny('-', '<', 0));
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscaped = r28;
        ?? r29 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.30
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass29 anonymousClass29 = TokeniserState.ScriptDataDoubleEscaped;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit((char) 65533);
                    tokeniser.transition(anonymousClass29);
                } else if (consume == '-') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedDashDash);
                } else if (consume == '<') {
                    tokeniser.emit(consume);
                    tokeniser.transition(TokeniserState.ScriptDataDoubleEscapedLessthanSign);
                } else if (consume != 65535) {
                    tokeniser.emit(consume);
                    tokeniser.transition(anonymousClass29);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscapedDash = r29;
        ?? r30 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.31
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass29 anonymousClass29 = TokeniserState.ScriptDataDoubleEscaped;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.emit((char) 65533);
                    tokeniser.transition(anonymousClass29);
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
                    tokeniser.transition(anonymousClass29);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        ScriptDataDoubleEscapedDashDash = r30;
        ?? r31 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.32
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
        ScriptDataDoubleEscapedLessthanSign = r31;
        ?? r32 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.33
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                TokeniserState.access$600(tokeniser, characterReader, TokeniserState.ScriptDataEscaped, TokeniserState.ScriptDataDoubleEscaped);
            }
        };
        ScriptDataDoubleEscapeEnd = r32;
        ?? r33 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.34
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass35 anonymousClass35 = TokeniserState.AttributeName;
                if (consume == 0) {
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.transition(anonymousClass35);
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume == '/') {
                            tokeniser.transition(TokeniserState.SelfClosingStartTag);
                            return;
                        }
                        AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(anonymousClass1);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        switch (consume) {
                            case org.mozilla.javascript.Token.CATCH_SCOPE /* 62 */:
                                tokeniser.emitTagPending();
                                tokeniser.transition(anonymousClass1);
                                return;
                            case org.mozilla.javascript.Token.ENUM_INIT_KEYS /* 63 */:
                                if (tokeniser.tagPending instanceof Token.XmlDecl) {
                                    return;
                                }
                                break;
                        }
                        tokeniser.tagPending.newAttribute();
                        characterReader.unconsume();
                        tokeniser.transition(anonymousClass35);
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.tagPending.attrName.append(consume);
                    tokeniser.transition(anonymousClass35);
                }
            }
        };
        BeforeAttributeName = r33;
        ?? r34 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.35
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                characterReader.pos();
                String consumeToAnySorted = characterReader.consumeToAnySorted(TokeniserState.attributeNameCharsSorted);
                Token.Tag tag = tokeniser.tagPending;
                tag.getClass();
                tag.attrName.append(consumeToAnySorted.replace((char) 0, (char) 65533));
                char consume = characterReader.consume();
                AnonymousClass36 anonymousClass36 = TokeniserState.AfterAttributeName;
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(anonymousClass36);
                    return;
                }
                if (consume != '\"' && consume != '\'') {
                    if (consume == '/') {
                        tokeniser.transition(TokeniserState.SelfClosingStartTag);
                        return;
                    }
                    AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.transition(anonymousClass1);
                        return;
                    }
                    switch (consume) {
                        case org.mozilla.javascript.Token.SETVAR /* 61 */:
                            tokeniser.transition(TokeniserState.BeforeAttributeValue);
                            return;
                        case org.mozilla.javascript.Token.CATCH_SCOPE /* 62 */:
                            tokeniser.emitTagPending();
                            tokeniser.transition(anonymousClass1);
                            return;
                        case org.mozilla.javascript.Token.ENUM_INIT_KEYS /* 63 */:
                            if (tokeniser.syntax == 2 && (tokeniser.tagPending instanceof Token.XmlDecl)) {
                                tokeniser.transition(anonymousClass36);
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
        AttributeName = r34;
        ?? r35 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.36
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass35 anonymousClass35 = TokeniserState.AttributeName;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.attrName.append((char) 65533);
                    tokeniser.transition(anonymousClass35);
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '\'') {
                        if (consume == '/') {
                            tokeniser.transition(TokeniserState.SelfClosingStartTag);
                            return;
                        }
                        AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(anonymousClass1);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        switch (consume) {
                            case org.mozilla.javascript.Token.GETVAR /* 60 */:
                                break;
                            case org.mozilla.javascript.Token.SETVAR /* 61 */:
                                tokeniser.transition(TokeniserState.BeforeAttributeValue);
                                break;
                            case org.mozilla.javascript.Token.CATCH_SCOPE /* 62 */:
                                tokeniser.emitTagPending();
                                tokeniser.transition(anonymousClass1);
                                break;
                            default:
                                tokeniser.tagPending.newAttribute();
                                characterReader.unconsume();
                                tokeniser.transition(anonymousClass35);
                                break;
                        }
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.newAttribute();
                    tokeniser.tagPending.attrName.append(consume);
                    tokeniser.transition(anonymousClass35);
                }
            }
        };
        AfterAttributeName = r35;
        ?? r36 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.37
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass40 anonymousClass40 = TokeniserState.AttributeValue_unquoted;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue((char) 65533, characterReader.pos() - 1, characterReader.pos());
                    tokeniser.transition(anonymousClass40);
                    return;
                }
                if (consume != ' ') {
                    if (consume == '\"') {
                        tokeniser.transition(TokeniserState.AttributeValue_doubleQuoted);
                        return;
                    }
                    if (consume != '`') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.emitTagPending();
                            tokeniser.transition(anonymousClass1);
                            return;
                        }
                        if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                            return;
                        }
                        if (consume == '&') {
                            characterReader.unconsume();
                            tokeniser.transition(anonymousClass40);
                            return;
                        }
                        if (consume == '\'') {
                            tokeniser.transition(TokeniserState.AttributeValue_singleQuoted);
                            return;
                        }
                        switch (consume) {
                            case org.mozilla.javascript.Token.GETVAR /* 60 */:
                            case org.mozilla.javascript.Token.SETVAR /* 61 */:
                                break;
                            case org.mozilla.javascript.Token.CATCH_SCOPE /* 62 */:
                                tokeniser.error(this);
                                tokeniser.emitTagPending();
                                tokeniser.transition(anonymousClass1);
                                break;
                            default:
                                characterReader.unconsume();
                                tokeniser.transition(anonymousClass40);
                                break;
                        }
                        return;
                    }
                    tokeniser.error(this);
                    tokeniser.tagPending.appendAttributeValue(consume, characterReader.pos() - 1, characterReader.pos());
                    tokeniser.transition(anonymousClass40);
                }
            }
        };
        BeforeAttributeValue = r36;
        ?? r37 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.38
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
                    tokeniser.tagPending.appendAttributeValue((char) 65533, pos, characterReader.pos());
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
        AttributeValue_doubleQuoted = r37;
        ?? r38 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.39
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
                    tokeniser.tagPending.appendAttributeValue((char) 65533, pos, characterReader.pos());
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
        AttributeValue_singleQuoted = r38;
        ?? r39 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.40
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
                    tokeniser.tagPending.appendAttributeValue((char) 65533, pos, characterReader.pos());
                    return;
                }
                if (consume != ' ') {
                    if (consume != '\"' && consume != '`') {
                        AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                        if (consume == 65535) {
                            tokeniser.eofError(this);
                            tokeniser.transition(anonymousClass1);
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
                                    case org.mozilla.javascript.Token.GETVAR /* 60 */:
                                    case org.mozilla.javascript.Token.SETVAR /* 61 */:
                                        break;
                                    case org.mozilla.javascript.Token.CATCH_SCOPE /* 62 */:
                                        tokeniser.emitTagPending();
                                        tokeniser.transition(anonymousClass1);
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
        AttributeValue_unquoted = r39;
        ?? r40 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.41
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass34 anonymousClass34 = TokeniserState.BeforeAttributeName;
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(anonymousClass34);
                    return;
                }
                if (consume == '/') {
                    tokeniser.transition(TokeniserState.SelfClosingStartTag);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(anonymousClass1);
                } else if (consume == '>') {
                    tokeniser.emitTagPending();
                    tokeniser.transition(anonymousClass1);
                } else {
                    if (consume == '?' && (tokeniser.tagPending instanceof Token.XmlDecl)) {
                        return;
                    }
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.transition(anonymousClass34);
                }
            }
        };
        AfterAttributeValue_quoted = r40;
        ?? r41 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.42
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.tagPending.selfClosing = true;
                    tokeniser.emitTagPending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.transition(anonymousClass1);
                } else {
                    characterReader.unconsume();
                    tokeniser.error(this);
                    tokeniser.transition(TokeniserState.BeforeAttributeName);
                }
            }
        };
        SelfClosingStartTag = r41;
        ?? r42 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.43
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
        BogusComment = r42;
        ?? r43 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.44
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchConsume("--")) {
                    tokeniser.commentPending.mo741reset();
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
                if (tokeniser.syntax != 2 || !characterReader.matchesAsciiAlpha()) {
                    tokeniser.error(this);
                    tokeniser.commentPending.mo741reset();
                    tokeniser.transition(TokeniserState.BogusComment);
                } else {
                    Token.XmlDecl xmlDecl = tokeniser.xmlDeclPending;
                    xmlDecl.mo741reset();
                    xmlDecl.isDeclaration = true;
                    tokeniser.tagPending = xmlDecl;
                    tokeniser.transition(TokeniserState.TagName);
                }
            }
        };
        MarkupDeclarationOpen = r43;
        ?? r44 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.45
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    Token.XmlDecl xmlDecl = tokeniser.xmlDeclPending;
                    xmlDecl.mo741reset();
                    xmlDecl.isDeclaration = false;
                    tokeniser.tagPending = xmlDecl;
                    tokeniser.transition(TokeniserState.TagName);
                    return;
                }
                tokeniser.error(this);
                Token.Comment comment = tokeniser.commentPending;
                comment.mo741reset();
                comment.append('?');
                tokeniser.transition(TokeniserState.BogusComment);
            }
        };
        MarkupProcessingOpen = r44;
        ?? r45 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.46
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Comment;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.commentPending.append((char) 65533);
                    tokeniser.transition(anonymousClass48);
                    return;
                }
                if (consume == '-') {
                    tokeniser.transition(TokeniserState.CommentStartDash);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume != 65535) {
                    characterReader.unconsume();
                    tokeniser.transition(anonymousClass48);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        CommentStart = r45;
        ?? r46 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.47
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Comment;
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.commentPending.append((char) 65533);
                    tokeniser.transition(anonymousClass48);
                    return;
                }
                if (consume == '-') {
                    tokeniser.transition(TokeniserState.CommentEnd);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume != 65535) {
                    tokeniser.commentPending.append(consume);
                    tokeniser.transition(anonymousClass48);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        CommentStartDash = r46;
        ?? r47 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.48
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char current = characterReader.current();
                if (current == 0) {
                    tokeniser.error(this);
                    characterReader.advance();
                    tokeniser.commentPending.append((char) 65533);
                } else {
                    if (current == '-') {
                        tokeniser.advanceTransition(TokeniserState.CommentEndDash);
                        return;
                    }
                    if (current != 65535) {
                        Token.Comment comment = tokeniser.commentPending;
                        comment.data.append(characterReader.consumeToAny('-', 0));
                    } else {
                        tokeniser.eofError(this);
                        tokeniser.emitCommentPending();
                        tokeniser.transition(TokeniserState.Data);
                    }
                }
            }
        };
        Comment = r47;
        ?? r48 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.49
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Comment;
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append('-');
                    comment.append((char) 65533);
                    tokeniser.transition(anonymousClass48);
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
                    tokeniser.transition(anonymousClass48);
                }
            }
        };
        CommentEndDash = r48;
        ?? r49 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.50
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Comment;
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append("--");
                    comment.append((char) 65533);
                    tokeniser.transition(anonymousClass48);
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else {
                    Token.Comment comment2 = tokeniser.commentPending;
                    comment2.data.append("--");
                    comment2.append(consume);
                    tokeniser.transition(anonymousClass48);
                }
            }
        };
        CommentEnd = r49;
        ?? r50 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.51
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass48 anonymousClass48 = TokeniserState.Comment;
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Comment comment = tokeniser.commentPending;
                    comment.data.append("--!");
                    comment.append((char) 65533);
                    tokeniser.transition(anonymousClass48);
                    return;
                }
                if (consume == '-') {
                    tokeniser.commentPending.data.append("--!");
                    tokeniser.transition(TokeniserState.CommentEndDash);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume == 65535) {
                    tokeniser.eofError(this);
                    tokeniser.emitCommentPending();
                    tokeniser.transition(anonymousClass1);
                } else {
                    Token.Comment comment2 = tokeniser.commentPending;
                    comment2.data.append("--!");
                    comment2.append(consume);
                    tokeniser.transition(anonymousClass48);
                }
            }
        };
        CommentEndBang = r50;
        ?? r51 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.52
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass53 anonymousClass53 = TokeniserState.BeforeDoctypeName;
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    tokeniser.transition(anonymousClass53);
                    return;
                }
                if (consume != '>') {
                    if (consume != 65535) {
                        tokeniser.error(this);
                        tokeniser.transition(anonymousClass53);
                        return;
                    }
                    tokeniser.eofError(this);
                }
                tokeniser.error(this);
                Token.Doctype doctype = tokeniser.doctypePending;
                doctype.mo741reset();
                doctype.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(TokeniserState.Data);
            }
        };
        Doctype = r51;
        ?? r52 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.53
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean matchesAsciiAlpha = characterReader.matchesAsciiAlpha();
                AnonymousClass54 anonymousClass54 = TokeniserState.DoctypeName;
                if (matchesAsciiAlpha) {
                    tokeniser.doctypePending.mo741reset();
                    tokeniser.transition(anonymousClass54);
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    Token.Doctype doctype = tokeniser.doctypePending;
                    doctype.mo741reset();
                    doctype.name.append((char) 65533);
                    tokeniser.transition(anonymousClass54);
                    return;
                }
                if (consume != ' ') {
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        Token.Doctype doctype2 = tokeniser.doctypePending;
                        doctype2.mo741reset();
                        doctype2.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(TokeniserState.Data);
                        return;
                    }
                    if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r') {
                        return;
                    }
                    tokeniser.doctypePending.mo741reset();
                    tokeniser.doctypePending.name.append(consume);
                    tokeniser.transition(anonymousClass54);
                }
            }
        };
        BeforeDoctypeName = r52;
        ?? r53 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.54
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                if (characterReader.matchesAsciiAlpha()) {
                    tokeniser.doctypePending.name.append(characterReader.consumeLetterSequence());
                    return;
                }
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.name.append((char) 65533);
                    return;
                }
                if (consume != ' ') {
                    AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                    if (consume == '>') {
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(anonymousClass1);
                        return;
                    }
                    if (consume == 65535) {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(anonymousClass1);
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
        DoctypeName = r53;
        ?? r54 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.55
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                boolean isEmpty = characterReader.isEmpty();
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (isEmpty) {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                if (characterReader.matchesAny('\t', '\n', '\r', '\f', ' ')) {
                    characterReader.advance();
                    return;
                }
                if (characterReader.matches('>')) {
                    tokeniser.emitDoctypePending();
                    tokeniser.advanceTransition(anonymousClass1);
                    return;
                }
                int i = tokeniser.syntax;
                Token.Doctype doctype = tokeniser.doctypePending;
                if (i == 2 && characterReader.matches('[')) {
                    doctype.sawInternalSubset = true;
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
        AfterDoctypeName = r54;
        ?? r55 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.56
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
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
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        AfterDoctypePublicKeyword = r55;
        ?? r56 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.57
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
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
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        BeforeDoctypePublicIdentifier = r56;
        ?? r57 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.58
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.publicIdentifier.append((char) 65533);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.publicIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(anonymousClass1);
            }
        };
        DoctypePublicIdentifier_doubleQuoted = r57;
        ?? r58 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.59
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.publicIdentifier.append((char) 65533);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.AfterDoctypePublicIdentifier);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.publicIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(anonymousClass1);
            }
        };
        DoctypePublicIdentifier_singleQuoted = r58;
        ?? r59 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.60
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                } else if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.transition(TokeniserState.BogusDoctype);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        AfterDoctypePublicIdentifier = r59;
        ?? r60 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.61
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                AnonymousClass67 anonymousClass67 = TokeniserState.BogusDoctype;
                if (consume != '[') {
                    if (consume != 65535) {
                        tokeniser.error(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.transition(anonymousClass67);
                        return;
                    } else {
                        tokeniser.eofError(this);
                        tokeniser.doctypePending.forceQuirks = true;
                        tokeniser.emitDoctypePending();
                        tokeniser.transition(anonymousClass1);
                        return;
                    }
                }
                int i = tokeniser.syntax;
                Token.Doctype doctype = tokeniser.doctypePending;
                if (i == 2) {
                    doctype.sawInternalSubset = true;
                    tokeniser.transition(TokeniserState.DoctypeInternalSubset);
                } else {
                    tokeniser.error(this);
                    doctype.forceQuirks = true;
                    tokeniser.transition(anonymousClass67);
                }
            }
        };
        BetweenDoctypePublicAndSystemIdentifiers = r60;
        ?? r61 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.62
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
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
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        AfterDoctypeSystemKeyword = r61;
        ?? r62 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.63
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
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
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
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        BeforeDoctypeSystemIdentifier = r62;
        ?? r63 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.64
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.systemIdentifier.append((char) 65533);
                    return;
                }
                if (consume == '\"') {
                    tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.systemIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(anonymousClass1);
            }
        };
        DoctypeSystemIdentifier_doubleQuoted = r63;
        ?? r64 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.65
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == 0) {
                    tokeniser.error(this);
                    tokeniser.doctypePending.systemIdentifier.append((char) 65533);
                    return;
                }
                if (consume == '\'') {
                    tokeniser.transition(TokeniserState.AfterDoctypeSystemIdentifier);
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.error(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                if (consume != 65535) {
                    tokeniser.doctypePending.systemIdentifier.append(consume);
                    return;
                }
                tokeniser.eofError(this);
                tokeniser.doctypePending.forceQuirks = true;
                tokeniser.emitDoctypePending();
                tokeniser.transition(anonymousClass1);
            }
        };
        DoctypeSystemIdentifier_singleQuoted = r64;
        ?? r65 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.66
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                if (consume == '\t' || consume == '\n' || consume == '\f' || consume == '\r' || consume == ' ') {
                    return;
                }
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                    return;
                }
                AnonymousClass67 anonymousClass67 = TokeniserState.BogusDoctype;
                if (consume == '[') {
                    if (tokeniser.syntax == 2) {
                        tokeniser.doctypePending.sawInternalSubset = true;
                        tokeniser.transition(TokeniserState.DoctypeInternalSubset);
                        return;
                    } else {
                        tokeniser.error(this);
                        tokeniser.transition(anonymousClass67);
                        return;
                    }
                }
                if (consume != 65535) {
                    tokeniser.error(this);
                    tokeniser.transition(anonymousClass67);
                } else {
                    tokeniser.eofError(this);
                    tokeniser.doctypePending.forceQuirks = true;
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        AfterDoctypeSystemIdentifier = r65;
        ?? r66 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.67
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char consume = characterReader.consume();
                AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                if (consume == '>') {
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                } else {
                    if (consume != 65535) {
                        return;
                    }
                    tokeniser.emitDoctypePending();
                    tokeniser.transition(anonymousClass1);
                }
            }
        };
        BogusDoctype = r66;
        ?? r67 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.68
            @Override // org.jsoup.parser.TokeniserState
            public final void read(Tokeniser tokeniser, CharacterReader characterReader) {
                char c;
                TokenData tokenData = tokeniser.doctypePending.internalSubset;
                while (true) {
                    char c2 = 0;
                    while (true) {
                        char consume = characterReader.consume();
                        if (consume == 0) {
                            tokeniser.error(this);
                            tokenData.append((char) 65533);
                        } else if (consume == '\"') {
                            tokenData.append(consume);
                            c = 2;
                            if (c2 == 0) {
                                c2 = c;
                            } else if (c2 == 2) {
                                break;
                            }
                        } else if (consume == '\'') {
                            tokenData.append(consume);
                            c = 1;
                            if (c2 == 0) {
                                c2 = c;
                            } else if (c2 == 1) {
                                break;
                            }
                        } else if (consume == '-') {
                            tokenData.append(consume);
                            if (c2 == 3 && characterReader.matchConsume("->")) {
                                tokenData.append("->");
                                break;
                            }
                        } else if (consume == '<') {
                            tokenData.append(consume);
                            if (c2 == 0) {
                                if (characterReader.matchConsume("!--")) {
                                    tokenData.append("!--");
                                    c2 = 3;
                                } else if (characterReader.matchConsume("?")) {
                                    tokenData.append('?');
                                    c2 = 4;
                                }
                            }
                        } else if (consume == '?') {
                            tokenData.append(consume);
                            if (c2 == 4 && characterReader.matches('>')) {
                                characterReader.advance();
                                tokenData.append('>');
                                break;
                            }
                        } else {
                            AnonymousClass1 anonymousClass1 = TokeniserState.Data;
                            if (consume != ']') {
                                if (consume == 65535) {
                                    tokeniser.eofError(this);
                                    tokeniser.emitDoctypePending();
                                    tokeniser.transition(anonymousClass1);
                                    return;
                                }
                                tokenData.append(consume);
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
                                    tokeniser.transition(anonymousClass1);
                                    return;
                                }
                                tokenData.append(consume);
                                tokenData.append(cacheString);
                            } else {
                                tokenData.append(consume);
                            }
                        }
                    }
                }
            }
        };
        DoctypeInternalSubset = r67;
        ?? r68 = new TokeniserState() { // from class: org.jsoup.parser.TokeniserState.69
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
                    TokenData tokenData = cData.data;
                    tokenData.reset();
                    tokenData.value = value;
                    tokeniser.emit(cData);
                    tokeniser.transition(TokeniserState.Data);
                }
            }
        };
        CdataSection = r68;
        $VALUES = new TokeniserState[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31, r32, r33, r34, r35, r36, r37, r38, r39, r40, r41, r42, r43, r44, r45, r46, r47, r48, r49, r50, r51, r52, r53, r54, r55, r56, r57, r58, r59, r60, r61, r62, r63, r64, r65, r66, r67, r68};
        attributeNameCharsSorted = new char[]{'\t', '\n', '\f', '\r', ' ', '\"', '\'', '/', '<', '=', '>', '?'};
        attributeValueUnquoted = new char[]{0, '\t', '\n', '\f', '\r', ' ', '\"', '&', '\'', '<', '=', '>', '`'};
        replacementStr = String.valueOf((char) 65533);
    }

    public static void access$200(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
        char current = characterReader.current();
        if (current == 0) {
            tokeniser.error(tokeniserState);
            characterReader.advance();
            tokeniser.emit((char) 65533);
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

    public static void access$500(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState) {
        if (characterReader.matchesAsciiAlpha()) {
            String consumeMatching = characterReader.consumeMatching(new _UtilJvmKt$$ExternalSyntheticLambda1(20));
            tokeniser.tagPending.appendTagName(consumeMatching);
            tokeniser.dataBuffer.append(consumeMatching);
            return;
        }
        boolean isAppropriateEndTagToken = tokeniser.isAppropriateEndTagToken();
        TokenData tokenData = tokeniser.dataBuffer;
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
                tokenData.append(consume);
            }
        }
        tokeniser.emit("</");
        tokeniser.emit(tokenData.value());
        tokeniser.transition(tokeniserState);
    }

    public static void access$600(Tokeniser tokeniser, CharacterReader characterReader, TokeniserState tokeniserState, TokeniserState tokeniserState2) {
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

    public static TokeniserState valueOf(String str) {
        return (TokeniserState) Enum.valueOf(TokeniserState.class, str);
    }

    public static TokeniserState[] values() {
        return (TokeniserState[]) $VALUES.clone();
    }

    public abstract void read(Tokeniser tokeniser, CharacterReader characterReader);
}
