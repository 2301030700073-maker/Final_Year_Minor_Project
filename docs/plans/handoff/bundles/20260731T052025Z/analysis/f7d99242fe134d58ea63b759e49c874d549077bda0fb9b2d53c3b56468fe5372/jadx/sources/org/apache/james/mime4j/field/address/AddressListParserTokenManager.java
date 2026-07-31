package org.apache.james.mime4j.field.address;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AddressListParserTokenManager implements AddressListParserConstants {
    public static int commentNest;
    public char curChar;
    public int curLexState;
    public StringBuilder image;
    public final SimpleCharStream input_stream;
    public final StringBuilder jjimage;
    public int jjimageLen;
    public int jjmatchedKind;
    public int jjmatchedPos;
    public int jjnewStateCnt;
    public int jjround;
    public final int[] jjrounds = new int[4];
    public final int[] jjstateSet = new int[8];
    public static final long[] jjbitVec0 = {-2, -1, -1, -1};
    public static final long[] jjbitVec2 = {0, 0, -1, -1};
    public static final String[] jjstrLiteralImages = {"", "\r", "\n", ",", ":", ";", "<", ">", "@", ".", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 0, 2, 0, -1, 3, -1, -1, -1, -1, -1, 4, -1, -1, 0, -1, -1};
    public static final long[] jjtoToken = {4295533567L};
    public static final long[] jjtoSkip = {2098176};
    public static final long[] jjtoSpecial = {1024};

    public AddressListParserTokenManager(SimpleCharStream simpleCharStream) {
        StringBuilder sb = new StringBuilder();
        this.jjimage = sb;
        this.image = sb;
        this.curLexState = 0;
        this.input_stream = simpleCharStream;
    }

    public static final boolean jjCanMove_0(int i, int i2, int i3, long j, long j2) {
        return i != 0 ? (jjbitVec0[i2] & j) != 0 : (jjbitVec2[i3] & j2) != 0;
    }

    public final void ReInitRounds() {
        this.jjround = -2147483647;
        int i = 4;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            this.jjrounds[i2] = Integer.MIN_VALUE;
            i = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:414:0x0312, code lost:
    
        if (r8 <= 18) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x0314, code lost:
    
        r8 = 18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0325, code lost:
    
        if (r8 > 18) goto L249;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.apache.james.mime4j.field.address.Token getNextToken() {
        /*
            Method dump skipped, instructions count: 1844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.james.mime4j.field.address.AddressListParserTokenManager.getNextToken():org.apache.james.mime4j.field.address.Token");
    }

    public final void jjCheckNAdd(int i) {
        int[] iArr = this.jjrounds;
        int i2 = iArr[i];
        int i3 = this.jjround;
        if (i2 != i3) {
            int i4 = this.jjnewStateCnt;
            this.jjnewStateCnt = i4 + 1;
            this.jjstateSet[i4] = i;
            iArr[i] = i3;
        }
    }

    public final Token jjFillToken() {
        String str = jjstrLiteralImages[this.jjmatchedKind];
        SimpleCharStream simpleCharStream = this.input_stream;
        if (str == null) {
            str = simpleCharStream.GetImage();
        }
        int[] iArr = simpleCharStream.bufline;
        int i = simpleCharStream.tokenBegin;
        int i2 = iArr[i];
        int[] iArr2 = simpleCharStream.bufcolumn;
        int i3 = iArr2[i];
        int i4 = simpleCharStream.bufpos;
        int i5 = iArr[i4];
        int i6 = iArr2[i4];
        int i7 = this.jjmatchedKind;
        Token token = new Token();
        token.kind = i7;
        token.image = str;
        token.beginLine = i2;
        token.beginColumn = i3;
        return token;
    }

    public final int jjStopAtPos(int i) {
        this.jjmatchedKind = i;
        this.jjmatchedPos = 0;
        return 1;
    }
}
