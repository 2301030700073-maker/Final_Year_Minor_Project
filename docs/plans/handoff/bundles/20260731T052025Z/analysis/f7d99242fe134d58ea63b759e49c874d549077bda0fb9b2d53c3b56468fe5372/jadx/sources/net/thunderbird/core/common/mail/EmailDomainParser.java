package net.thunderbird.core.common.mail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailDomainParser extends BaseParser {
    public final void expectLetDig() {
        char peek;
        if (endReached() || (('A' > (peek = peek()) || peek >= '[') && (('a' > peek || peek >= '{') && ('0' > peek || peek >= ':')))) {
            throw new EmailAddressParserException("Expected 'Let-dig'", EmailAddressParserError.UnexpectedCharacter, this.input);
        }
        this.currentIndex++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
    
        if ('A' > r3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        if (r3 >= '[') goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0025, code lost:
    
        if ('a' > r3) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0029, code lost:
    
        if (r3 >= '{') goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if ('0' > r3) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        if (r3 >= ':') goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void expectSubDomain() {
        /*
            r5 = this;
            int r0 = r5.currentIndex
            r5.expectLetDig()
            r1 = 0
        L6:
            r2 = r1
        L7:
            boolean r3 = r5.endReached()
            if (r3 != 0) goto L38
            char r3 = r5.peek()
            r4 = 45
            if (r3 != r4) goto L1a
            r5.expect(r4)
            r2 = 1
            goto L7
        L1a:
            r4 = 65
            if (r4 > r3) goto L23
            r4 = 91
            if (r3 >= r4) goto L23
            goto L34
        L23:
            r4 = 97
            if (r4 > r3) goto L2c
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 >= r4) goto L2c
            goto L34
        L2c:
            r4 = 48
            if (r4 > r3) goto L38
            r4 = 58
            if (r3 >= r4) goto L38
        L34:
            r5.expectLetDig()
            goto L6
        L38:
            if (r2 == 0) goto L3d
            r5.expectLetDig()
        L3d:
            int r1 = r5.currentIndex
            int r1 = r1 - r0
            r0 = 63
            if (r1 > r0) goto L45
            return
        L45:
            net.thunderbird.core.common.mail.EmailAddressParserException r0 = new net.thunderbird.core.common.mail.EmailAddressParserException
            java.lang.String r5 = r5.input
            java.lang.String r1 = "DNS labels exceeds maximum length of 63 characters"
            net.thunderbird.core.common.mail.EmailAddressParserError r2 = net.thunderbird.core.common.mail.EmailAddressParserError.DnsLabelLengthExceeded
            r0.<init>(r1, r2, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.common.mail.EmailDomainParser.expectSubDomain():void");
    }

    public final EmailDomain readDomain$1() {
        int i = this.currentIndex;
        expectSubDomain();
        while (!endReached() && peek() == '.') {
            expect('.');
            expectSubDomain();
        }
        int i2 = this.currentIndex;
        String str = this.input;
        String substring = str.substring(i, i2);
        if (substring.length() <= 253) {
            return new EmailDomain(substring);
        }
        throw new EmailAddressParserException("Domain exceeds maximum length of 253 characters", EmailAddressParserError.DomainLengthExceeded, str);
    }
}
