package org.jsoup.parser;

import androidx.core.util.Pair;
import kotlin.time.Instant;
import kotlin.time.InstantFormatException;
import kotlin.time.InstantKt;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParseError implements InstantParseResult {
    public final /* synthetic */ int $r8$classId = 1;
    public String cursorPos;
    public String errorMsg;

    public ParseError(CharacterReader characterReader, String str, Object[] objArr) {
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = String.format(str, objArr);
    }

    public boolean equals(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                if (!(obj instanceof Pair)) {
                    return false;
                }
                Integer num = 0;
                String str = this.cursorPos;
                if (num != str && !num.equals(str)) {
                    return false;
                }
                Integer num2 = -16776961;
                String str2 = this.errorMsg;
                return num2 == str2 || num2.equals(str2);
            default:
                return super.equals(obj);
        }
    }

    public int hashCode() {
        switch (this.$r8$classId) {
            case 1:
                String str = this.cursorPos;
                int hashCode = str == null ? 0 : str.hashCode();
                String str2 = this.errorMsg;
                return hashCode ^ (str2 != null ? str2.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    @Override // kotlin.time.InstantParseResult
    public Instant toInstant() {
        throw new InstantFormatException(this.cursorPos + " when parsing an Instant from \"" + InstantKt.truncateForErrorMessage(64, this.errorMsg) + '\"');
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "<" + this.cursorPos + ">: " + this.errorMsg;
            case 1:
                return "Pair{" + ((Object) this.cursorPos) + " " + ((Object) this.errorMsg) + "}";
            default:
                return super.toString();
        }
    }

    public ParseError(CharacterReader characterReader, String str) {
        characterReader.getClass();
        this.cursorPos = characterReader.posLineCol();
        this.errorMsg = str;
    }

    public /* synthetic */ ParseError() {
    }

    public ParseError(String str, String str2) {
        this.cursorPos = str;
        this.errorMsg = str2;
    }
}
