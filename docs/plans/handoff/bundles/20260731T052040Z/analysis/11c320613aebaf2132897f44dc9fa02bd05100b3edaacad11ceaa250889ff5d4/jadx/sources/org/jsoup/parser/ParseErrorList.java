package org.jsoup.parser;

import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParseErrorList extends ArrayList {
    private final int initialCapacity;
    private final int maxSize;

    public ParseErrorList(int i, int i2) {
        super(i);
        this.initialCapacity = i;
        this.maxSize = i2;
    }

    public final boolean canAddError() {
        return size() < this.maxSize;
    }

    public final int getMaxSize() {
        return this.maxSize;
    }

    public ParseErrorList(ParseErrorList parseErrorList) {
        this(parseErrorList.initialCapacity, parseErrorList.maxSize);
    }
}
