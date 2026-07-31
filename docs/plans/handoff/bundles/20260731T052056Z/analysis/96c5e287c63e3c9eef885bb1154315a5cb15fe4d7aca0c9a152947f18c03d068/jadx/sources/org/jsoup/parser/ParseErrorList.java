package org.jsoup.parser;

import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParseErrorList extends ArrayList {
    public final boolean canAddError() {
        return size() < 0;
    }
}
