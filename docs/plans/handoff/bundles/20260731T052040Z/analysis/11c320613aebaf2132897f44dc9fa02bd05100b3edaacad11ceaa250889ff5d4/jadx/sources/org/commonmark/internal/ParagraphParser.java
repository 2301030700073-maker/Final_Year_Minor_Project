package org.commonmark.internal;

import org.commonmark.node.Block;
import org.commonmark.node.Paragraph;
import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParagraphParser extends AbstractBlockParser {
    public final Paragraph block = new Paragraph();
    public final LinkReferenceDefinitionParser linkReferenceDefinitionParser = new LinkReferenceDefinitionParser();

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0105, code lost:
    
        if (r3 == r4) goto L21;
     */
    @Override // org.commonmark.parser.block.AbstractBlockParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addLine(java.lang.CharSequence r11) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.commonmark.internal.ParagraphParser.addLine(java.lang.CharSequence):void");
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final void closeBlock() {
        if (this.linkReferenceDefinitionParser.paragraph.length() == 0) {
            this.block.unlink();
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final void parseInlines(InlineParserImpl inlineParserImpl) {
        StringBuilder sb = this.linkReferenceDefinitionParser.paragraph;
        if (sb.length() > 0) {
            inlineParserImpl.parse(sb.toString(), this.block);
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final BlockContinueImpl tryContinue(DocumentParser documentParser) {
        if (documentParser.blank) {
            return null;
        }
        return BlockContinueImpl.atIndex(documentParser.index);
    }
}
