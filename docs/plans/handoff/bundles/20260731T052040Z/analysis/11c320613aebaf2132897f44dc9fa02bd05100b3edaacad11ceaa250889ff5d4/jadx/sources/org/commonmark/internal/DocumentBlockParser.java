package org.commonmark.internal;

import org.commonmark.node.Block;
import org.commonmark.node.Document;
import org.commonmark.node.ThematicBreak;
import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DocumentBlockParser extends AbstractBlockParser {
    public final /* synthetic */ int $r8$classId;
    public final Block document;

    public DocumentBlockParser(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.document = new ThematicBreak();
                break;
            default:
                this.document = new Document(0);
                break;
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public void addLine(CharSequence charSequence) {
        int i = this.$r8$classId;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public boolean canContain(Block block) {
        switch (this.$r8$classId) {
            case 0:
                return true;
            default:
                return super.canContain(block);
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final Block getBlock() {
        int i = this.$r8$classId;
        Block block = this.document;
        switch (i) {
            case 0:
                return (Document) block;
            default:
                return (ThematicBreak) block;
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public boolean isContainer() {
        switch (this.$r8$classId) {
            case 0:
                return true;
            default:
                return super.isContainer();
        }
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final BlockContinueImpl tryContinue(DocumentParser documentParser) {
        switch (this.$r8$classId) {
            case 0:
                return BlockContinueImpl.atIndex(documentParser.index);
            default:
                return null;
        }
    }

    private final void addLine$org$commonmark$internal$DocumentBlockParser(CharSequence charSequence) {
    }
}
