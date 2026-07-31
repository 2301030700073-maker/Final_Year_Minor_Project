package org.commonmark.parser.block;

import org.commonmark.internal.BlockContinueImpl;
import org.commonmark.internal.BlockQuoteParser;
import org.commonmark.internal.DocumentParser;
import org.commonmark.internal.InlineParserImpl;
import org.commonmark.node.Block;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractBlockParser {
    public boolean canContain(Block block) {
        return this instanceof BlockQuoteParser;
    }

    public abstract Block getBlock();

    public boolean isContainer() {
        return this instanceof BlockQuoteParser;
    }

    public abstract BlockContinueImpl tryContinue(DocumentParser documentParser);

    public void closeBlock() {
    }

    public void addLine(CharSequence charSequence) {
    }

    public void parseInlines(InlineParserImpl inlineParserImpl) {
    }
}
