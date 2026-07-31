package org.jsoup.parser;

import com.fsck.k9.mail.FetchProfile;
import java.util.Arrays;
import java.util.Iterator;
import org.jsoup.helper.ValidationException;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Tokeniser {
    public static final char[] notCharRefCharsSorted;
    public static final int[] win1252Extensions = {8364, 129, 8218, 402, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
    public final Token.EndTag endPending;
    public final FetchProfile errors;
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
    public String charsString = null;
    public final StringBuilder charsBuilder = new StringBuilder(1024);
    public final StringBuilder dataBuffer = new StringBuilder(1024);
    public final Token.Character charPending = new Token.Character(5);
    public final Token.Doctype doctypePending = new Token.Doctype();
    public final Token.Comment commentPending = new Token.Comment();
    public int charStartPos = 0;
    public final int[] codepointHolder = new int[1];
    public final int[] multipointHolder = new int[2];
    public final int syntax = 1;

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', ' ', '<', '&'};
        notCharRefCharsSorted = cArr;
        Arrays.sort(cArr);
    }

    public Tokeniser(HtmlTreeBuilder htmlTreeBuilder) {
        Token.StartTag startTag = new Token.StartTag(2, htmlTreeBuilder);
        this.startPending = startTag;
        this.tagPending = startTag;
        this.endPending = new Token.EndTag(3, htmlTreeBuilder);
        Token.XmlDecl xmlDecl = new Token.XmlDecl(6, htmlTreeBuilder);
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
        FetchProfile fetchProfile = this.errors;
        if (fetchProfile.canAddError()) {
            fetchProfile.add(new ParseError(this.reader, String.format("Invalid character reference: ".concat(str), objArr)));
        }
    }

    public final int[] consumeCharacterReference(Character ch, boolean z) {
        int i;
        char c;
        char c2;
        char c3;
        char c4;
        int[] iArr;
        int i2;
        String cacheString;
        char c5;
        int i3;
        int i4;
        CharacterReader characterReader = this.reader;
        if (!characterReader.isEmpty() && (ch == null || ch.charValue() != characterReader.current())) {
            characterReader.bufferUp();
            if (characterReader.isEmpty() || Arrays.binarySearch(notCharRefCharsSorted, characterReader.charBuf[characterReader.bufPos]) < 0) {
                if (characterReader.bufLength - characterReader.bufPos < 1024) {
                    characterReader.fillPoint = 0;
                }
                characterReader.bufferUp();
                characterReader.bufMark = characterReader.bufPos;
                boolean matchConsume = characterReader.matchConsume("#");
                int[] iArr2 = this.codepointHolder;
                if (matchConsume) {
                    boolean matchConsumeIgnoreCase = characterReader.matchConsumeIgnoreCase("X");
                    if (matchConsumeIgnoreCase) {
                        characterReader.bufferUp();
                        int i5 = characterReader.bufPos;
                        while (true) {
                            i4 = characterReader.bufPos;
                            if (i4 >= characterReader.bufLength) {
                                iArr = null;
                                break;
                            }
                            char c6 = characterReader.charBuf[i4];
                            if (c6 < '0' || c6 > '9') {
                                iArr = null;
                                if (c6 >= 'A') {
                                    if (c6 <= 'F') {
                                        continue;
                                    }
                                }
                                if (c6 < 'a' || c6 > 'f') {
                                    break;
                                }
                            }
                            characterReader.bufPos = i4 + 1;
                        }
                        cacheString = CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i5, i4 - i5);
                    } else {
                        iArr = null;
                        characterReader.bufferUp();
                        int i6 = characterReader.bufPos;
                        while (true) {
                            i2 = characterReader.bufPos;
                            if (i2 >= characterReader.bufLength || (c5 = characterReader.charBuf[i2]) < '0' || c5 > '9') {
                                break;
                            }
                            characterReader.bufPos = i2 + 1;
                        }
                        cacheString = CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i6, i2 - i6);
                    }
                    if (cacheString.length() == 0) {
                        characterReferenceError("numeric reference with no numerals", new Object[0]);
                        characterReader.rewindToMark();
                        return iArr;
                    }
                    characterReader.bufMark = -1;
                    if (!characterReader.matchConsume(";")) {
                        characterReferenceError("missing semicolon on [&#%s]", cacheString);
                    }
                    try {
                        i3 = Integer.valueOf(cacheString, matchConsumeIgnoreCase ? 16 : 10).intValue();
                    } catch (NumberFormatException unused) {
                        i3 = -1;
                    }
                    if (i3 == -1 || i3 > 1114111) {
                        characterReferenceError("character [%s] outside of valid range", Integer.valueOf(i3));
                        iArr2[0] = 65533;
                    } else {
                        if (i3 >= 128 && i3 < 160) {
                            characterReferenceError("character [%s] is not a valid unicode code point", Integer.valueOf(i3));
                            i3 = win1252Extensions[i3 - 128];
                        }
                        iArr2[0] = i3;
                    }
                    return iArr2;
                }
                characterReader.bufferUp();
                int i7 = characterReader.bufPos;
                while (true) {
                    int i8 = characterReader.bufPos;
                    if (i8 >= characterReader.bufLength || (((c4 = characterReader.charBuf[i8]) < 'A' || c4 > 'Z') && ((c4 < 'a' || c4 > 'z') && !Character.isLetter(c4)))) {
                        break;
                    }
                    characterReader.bufPos++;
                }
                while (true) {
                    i = characterReader.bufPos;
                    if (i < characterReader.bufLength && (c3 = characterReader.charBuf[i]) >= '0' && c3 <= '9') {
                        characterReader.bufPos = i + 1;
                    }
                }
                String cacheString2 = CharacterReader.cacheString(characterReader.charBuf, characterReader.stringCache, i7, i - i7);
                boolean matches = characterReader.matches(';');
                char[] cArr = Entities.codeDelims;
                Entities.EscapeMode escapeMode = Entities.EscapeMode.base;
                int binarySearch = Arrays.binarySearch(escapeMode.nameKeys, cacheString2);
                if ((binarySearch >= 0 ? escapeMode.codeVals[binarySearch] : -1) == -1) {
                    Entities.EscapeMode escapeMode2 = Entities.EscapeMode.extended;
                    int binarySearch2 = Arrays.binarySearch(escapeMode2.nameKeys, cacheString2);
                    if ((binarySearch2 >= 0 ? escapeMode2.codeVals[binarySearch2] : -1) == -1 || !matches) {
                        characterReader.rewindToMark();
                        if (matches) {
                            characterReferenceError("invalid named reference [%s]", cacheString2);
                        }
                        if (z) {
                            return null;
                        }
                        Iterator it = Entities.baseSorted.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                cacheString2 = "";
                                break;
                            }
                            String str = (String) it.next();
                            if (cacheString2.startsWith(str)) {
                                cacheString2 = str;
                                break;
                            }
                        }
                        if (cacheString2.isEmpty()) {
                            return null;
                        }
                        characterReader.matchConsume(cacheString2);
                    }
                }
                if (z && (characterReader.matchesLetter() || ((!characterReader.isEmpty() && (c2 = characterReader.charBuf[characterReader.bufPos]) >= '0' && c2 <= '9') || characterReader.matchesAny('=', '-', '_')))) {
                    characterReader.rewindToMark();
                    return null;
                }
                characterReader.bufMark = -1;
                if (!characterReader.matchConsume(";")) {
                    characterReferenceError("missing semicolon on [&%s]", cacheString2);
                }
                String str2 = (String) Entities.multipoints.get(cacheString2);
                int[] iArr3 = this.multipointHolder;
                if (str2 != null) {
                    iArr3[0] = str2.codePointAt(0);
                    iArr3[1] = str2.codePointAt(1);
                    c = 2;
                } else {
                    Entities.EscapeMode escapeMode3 = Entities.EscapeMode.extended;
                    int binarySearch3 = Arrays.binarySearch(escapeMode3.nameKeys, cacheString2);
                    int i9 = binarySearch3 >= 0 ? escapeMode3.codeVals[binarySearch3] : -1;
                    if (i9 != -1) {
                        iArr3[0] = i9;
                        c = 1;
                    } else {
                        c = 0;
                    }
                }
                if (c == 1) {
                    iArr2[0] = iArr3[0];
                    return iArr2;
                }
                if (c == 2) {
                    return iArr3;
                }
                throw new ValidationException("Unexpected characters returned for ".concat(cacheString2));
            }
        }
        return null;
    }

    public final Token.Tag createTagPending(boolean z) {
        Token.Tag tag;
        if (z) {
            tag = this.startPending;
            tag.mo1084reset();
        } else {
            tag = this.endPending;
            tag.mo1084reset();
        }
        this.tagPending = tag;
        return tag;
    }

    public final void createTempBuffer() {
        Token.reset(this.dataBuffer);
    }

    public final void emit(Token token) {
        if (this.isEmitPending) {
            throw new ValidationException("Must be false");
        }
        this.emitPending = token;
        this.isEmitPending = true;
        token.getClass();
        CharacterReader characterReader = this.reader;
        characterReader.pos();
        this.charStartPos = characterReader.pos();
        int i = token.type;
        if (i == 2) {
            this.lastStartTag = ((Token.StartTag) token).tagName;
            this.lastStartCloseSeq = null;
        } else if (i == 3) {
            Token.EndTag endTag = (Token.EndTag) token;
            if (endTag.attributes != null) {
                Object[] objArr = {endTag.normalName};
                FetchProfile fetchProfile = this.errors;
                if (fetchProfile.canAddError()) {
                    fetchProfile.add(new ParseError(characterReader, "Attributes incorrectly present on end tag [/%s]", objArr));
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
        if (tag.hasAttrName) {
            tag.newAttribute();
        }
        emit(this.tagPending);
    }

    public final void eofError(TokeniserState tokeniserState) {
        FetchProfile fetchProfile = this.errors;
        if (fetchProfile.canAddError()) {
            fetchProfile.add(new ParseError(this.reader, "Unexpectedly reached end of file (EOF) in input state [%s]", new Object[]{tokeniserState}));
        }
    }

    public final void error(TokeniserState tokeniserState) {
        FetchProfile fetchProfile = this.errors;
        if (fetchProfile.canAddError()) {
            CharacterReader characterReader = this.reader;
            fetchProfile.add(new ParseError(characterReader, "Unexpected character '%s' in input state [%s]", new Object[]{Character.valueOf(characterReader.current()), tokeniserState}));
        }
    }

    public final boolean isAppropriateEndTagToken() {
        if (this.lastStartTag == null) {
            return false;
        }
        Token.Tag tag = this.tagPending;
        String str = tag.tagName;
        if (str == null || str.length() == 0) {
            throw new ValidationException("Must be false");
        }
        return tag.tagName.equalsIgnoreCase(this.lastStartTag);
    }

    public final void transition(TokeniserState tokeniserState) {
        if (tokeniserState == TokeniserState.TagOpen) {
            this.markupStartPos = this.reader.pos();
        }
        this.state = tokeniserState;
    }

    public final void emit(String str) {
        if (this.charsString == null) {
            this.charsString = str;
        } else {
            StringBuilder sb = this.charsBuilder;
            if (sb.length() == 0) {
                sb.append(this.charsString);
            }
            sb.append(str);
        }
        this.charPending.getClass();
        this.reader.pos();
    }

    public final void emit(StringBuilder sb) {
        if (this.charsString == null) {
            this.charsString = sb.toString();
        } else {
            StringBuilder sb2 = this.charsBuilder;
            if (sb2.length() == 0) {
                sb2.append(this.charsString);
            }
            sb2.append((CharSequence) sb);
        }
        this.charPending.getClass();
        this.reader.pos();
    }

    public final void emit(char c) {
        if (this.charsString == null) {
            this.charsString = String.valueOf(c);
        } else {
            StringBuilder sb = this.charsBuilder;
            if (sb.length() == 0) {
                sb.append(this.charsString);
            }
            sb.append(c);
        }
        this.charPending.getClass();
        this.reader.pos();
    }
}
