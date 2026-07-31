package org.commonmark.internal;

import org.commonmark.node.Text;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Bracket {
    public boolean allowed = true;
    public boolean bracketAfter = false;
    public final boolean image;
    public final int index;
    public final Text node;
    public final Bracket previous;
    public final Delimiter previousDelimiter;

    public Bracket(Text text, int i, Bracket bracket, Delimiter delimiter, boolean z) {
        this.node = text;
        this.index = i;
        this.image = z;
        this.previous = bracket;
        this.previousDelimiter = delimiter;
    }
}
