package org.wikipedia.edit.richtext;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SpanExtents {
    int getEnd();

    int getStart();

    SyntaxRule getSyntaxRule();

    void setEnd(int i);

    void setStart(int i);
}
