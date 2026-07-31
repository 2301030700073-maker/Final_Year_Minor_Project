package org.commonmark.parser.delimiter;

import org.commonmark.internal.Delimiter;
import org.commonmark.node.Text;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface DelimiterProcessor {
    char getClosingCharacter();

    int getDelimiterUse(Delimiter delimiter, Delimiter delimiter2);

    int getMinLength();

    char getOpeningCharacter();

    void process(Text text, Text text2, int i);
}
