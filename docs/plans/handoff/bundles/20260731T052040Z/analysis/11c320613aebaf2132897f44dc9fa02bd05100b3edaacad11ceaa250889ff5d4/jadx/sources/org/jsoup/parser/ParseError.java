package org.jsoup.parser;

import kotlin.time.Instant;
import kotlin.time.InstantFormatException;
import kotlin.time.InstantKt;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParseError implements InstantParseResult {
    public final /* synthetic */ int $r8$classId = 1;
    public final String cursorPos;
    public final String errorMsg;

    public ParseError(CharacterReader characterReader, String str, Object[] objArr) {
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = String.format(str, objArr);
    }

    @Override // kotlin.time.InstantParseResult
    public Instant toInstant() {
        throw new InstantFormatException(this.cursorPos + " when parsing an Instant from \"" + InstantKt.truncateForErrorMessage(64, this.errorMsg) + '\"');
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "<" + this.cursorPos + ">: " + this.errorMsg;
            default:
                return super.toString();
        }
    }

    public ParseError(CharacterReader characterReader, String str) {
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = str;
    }

    public ParseError(String str, String str2) {
        this.cursorPos = str;
        this.errorMsg = str2;
    }
}
