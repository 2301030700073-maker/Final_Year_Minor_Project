package org.jsoup.parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Parser implements Cloneable {
    public final ParseErrorList errors;
    public final ParseSettings settings;
    public TagSet tagSet;

    public Parser(Parser parser) {
        new ReentrantLock();
        new HtmlTreeBuilder();
        this.errors = new ParseErrorList(0);
        ParseSettings parseSettings = parser.settings;
        this.settings = new ParseSettings(parseSettings.preserveTagCase, parseSettings.preserveAttributeCase);
        TagSet tagSet = parser.tagSet;
        if (tagSet == null) {
            tagSet = new TagSet(TagSet.HtmlTagSet, null);
            parser.tagSet = tagSet;
        }
        TagSet tagSet2 = tagSet.source;
        HashMap hashMap = tagSet.tags;
        ArrayList arrayList = tagSet.customizers;
        TagSet tagSet3 = new TagSet(tagSet2, arrayList != null ? new ArrayList(arrayList) : null);
        if (!hashMap.isEmpty()) {
            for (Map.Entry entry : hashMap.entrySet()) {
                HashMap hashMap2 = new HashMap(((Map) entry.getValue()).size());
                for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                    hashMap2.put((String) entry2.getKey(), ((Tag) entry2.getValue()).clone());
                }
                tagSet3.tags.put((String) entry.getKey(), hashMap2);
            }
        }
        this.tagSet = tagSet3;
    }

    public final Object clone() {
        return new Parser(this);
    }

    public Parser(HtmlTreeBuilder htmlTreeBuilder) {
        new ReentrantLock();
        this.settings = ParseSettings.htmlDefault;
        this.errors = new ParseErrorList(0);
    }
}
