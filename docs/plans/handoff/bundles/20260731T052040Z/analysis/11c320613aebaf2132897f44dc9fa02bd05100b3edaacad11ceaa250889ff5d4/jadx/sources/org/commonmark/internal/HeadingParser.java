package org.commonmark.internal;

import java.io.Serializable;
import java.util.ArrayList;
import org.commonmark.node.Block;
import org.commonmark.node.Heading;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HeadingParser extends AbstractBlockParser {
    public final /* synthetic */ int $r8$classId;
    public final Block block;
    public final Serializable content;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Factory {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Factory(int i) {
            this.$r8$classId = i;
        }
    }

    public HeadingParser() {
        this.$r8$classId = 1;
        this.block = new IndentedCodeBlock();
        this.content = new ArrayList();
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public void addLine(CharSequence charSequence) {
        switch (this.$r8$classId) {
            case 1:
                ((ArrayList) this.content).add(charSequence);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f A[LOOP:2: B:19:0x003b->B:21:0x003f, LOOP_END] */
    @Override // org.commonmark.parser.block.AbstractBlockParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void closeBlock() {
        /*
            r9 = this;
            int r0 = r9.$r8$classId
            switch(r0) {
                case 1: goto L6;
                default: goto L5;
            }
        L5:
            return
        L6:
            java.io.Serializable r0 = r9.content
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            int r1 = r0.size()
            int r1 = r1 + (-1)
        L10:
            r2 = 0
            if (r1 < 0) goto L36
            java.lang.Object r3 = r0.get(r1)
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3
            int r4 = r3.length()
            r5 = r2
        L1e:
            r6 = -1
            if (r5 >= r4) goto L30
            char r7 = r3.charAt(r5)
            r8 = 32
            if (r7 == r8) goto L2d
            switch(r7) {
                case 9: goto L2d;
                case 10: goto L2d;
                case 11: goto L2d;
                case 12: goto L2d;
                case 13: goto L2d;
                default: goto L2c;
            }
        L2c:
            goto L31
        L2d:
            int r5 = r5 + 1
            goto L1e
        L30:
            r5 = r6
        L31:
            if (r5 != r6) goto L36
            int r1 = r1 + (-1)
            goto L10
        L36:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
        L3b:
            int r4 = r1 + 1
            if (r2 >= r4) goto L50
            java.lang.Object r4 = r0.get(r2)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            r3.append(r4)
            r4 = 10
            r3.append(r4)
            int r2 = r2 + 1
            goto L3b
        L50:
            java.lang.String r0 = r3.toString()
            org.commonmark.node.Block r9 = r9.block
            org.commonmark.node.IndentedCodeBlock r9 = (org.commonmark.node.IndentedCodeBlock) r9
            r9.literal = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.commonmark.internal.HeadingParser.closeBlock():void");
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final Block getBlock() {
        int i = this.$r8$classId;
        Block block = this.block;
        switch (i) {
            case 0:
                return (Heading) block;
            default:
                return (IndentedCodeBlock) block;
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public void parseInlines(InlineParserImpl inlineParserImpl) {
        switch (this.$r8$classId) {
            case 0:
                inlineParserImpl.parse((String) this.content, (Heading) this.block);
                break;
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final BlockContinueImpl tryContinue(DocumentParser documentParser) {
        switch (this.$r8$classId) {
            case 0:
                return null;
            default:
                if (documentParser.indent >= 4) {
                    return new BlockContinueImpl(-1, documentParser.column + 4, false);
                }
                if (documentParser.blank) {
                    return BlockContinueImpl.atIndex(documentParser.nextNonSpace);
                }
                return null;
        }
    }

    public HeadingParser(int i, String str) {
        this.$r8$classId = 0;
        Heading heading = new Heading();
        this.block = heading;
        heading.level = i;
        this.content = str;
    }
}
