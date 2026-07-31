package org.jsoup.parser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Parser implements Cloneable {
    public final ParseErrorList errors;
    public final ReentrantLock lock;
    public int maxDepth;
    public final ParseSettings settings;
    public TagSet tagSet;
    public final TreeBuilder treeBuilder;

    public Parser(Parser parser) {
        this.lock = new ReentrantLock();
        this.treeBuilder = parser.treeBuilder.newInstance();
        this.errors = new ParseErrorList(parser.errors);
        ParseSettings parseSettings = parser.settings;
        this.settings = new ParseSettings(parseSettings.preserveTagCase, parseSettings.preserveAttributeCase);
        this.maxDepth = parser.maxDepth;
        TagSet tagSet = parser.tagSet();
        TagSet tagSet2 = tagSet.source;
        HashMap hashMap = tagSet.tags;
        ArrayList arrayList = tagSet.customizers;
        TagSet tagSet3 = new TagSet(tagSet2, arrayList == null ? null : new ArrayList(arrayList));
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

    public final TagSet tagSet() {
        if (this.tagSet == null) {
            this.tagSet = this.treeBuilder.defaultTagSet();
        }
        return this.tagSet;
    }

    public Parser(TreeBuilder treeBuilder) {
        this.lock = new ReentrantLock();
        this.treeBuilder = treeBuilder;
        this.settings = treeBuilder.defaultSettings();
        this.errors = new ParseErrorList(0, 0);
        this.maxDepth = treeBuilder.defaultMaxDepth();
    }
}
