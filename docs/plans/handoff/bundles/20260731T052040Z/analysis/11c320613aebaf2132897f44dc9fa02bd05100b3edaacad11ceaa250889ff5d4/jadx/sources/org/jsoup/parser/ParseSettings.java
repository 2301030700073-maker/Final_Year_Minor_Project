package org.jsoup.parser;

import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Attributes;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ParseSettings {
    public static final ParseSettings htmlDefault = new ParseSettings(false, false);
    public static final ParseSettings preserveCase = new ParseSettings(true, true);
    public final boolean preserveAttributeCase;
    public final boolean preserveTagCase;

    public ParseSettings(boolean z, boolean z2) {
        this.preserveTagCase = z;
        this.preserveAttributeCase = z2;
    }

    public final void normalizeAttributes(Attributes attributes) {
        if (this.preserveAttributeCase) {
            return;
        }
        for (int i = 0; i < attributes.size; i++) {
            String str = attributes.keys[i];
            if (!Attributes.isInternalKey(str)) {
                attributes.keys[i] = QuietAppendable$BaseAppendable.lowerCase(str);
            }
        }
    }
}
