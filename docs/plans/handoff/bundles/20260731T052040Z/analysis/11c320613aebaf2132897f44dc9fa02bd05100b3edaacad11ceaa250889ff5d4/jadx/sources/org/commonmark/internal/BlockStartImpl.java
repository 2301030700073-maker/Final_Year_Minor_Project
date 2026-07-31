package org.commonmark.internal;

import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BlockStartImpl {
    public final AbstractBlockParser[] blockParsers;
    public int newIndex = -1;
    public int newColumn = -1;
    public boolean replaceActiveBlockParser = false;

    public BlockStartImpl(AbstractBlockParser... abstractBlockParserArr) {
        this.blockParsers = abstractBlockParserArr;
    }
}
