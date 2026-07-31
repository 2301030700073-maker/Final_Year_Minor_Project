package org.commonmark.internal;

import java.util.ArrayList;
import org.commonmark.internal.util.Escaping;
import org.commonmark.node.LinkReferenceDefinition;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LinkReferenceDefinitionParser {
    public String destination;
    public StringBuilder label;
    public String normalizedLabel;
    public StringBuilder title;
    public char titleDelimiter;
    public int state = 1;
    public final StringBuilder paragraph = new StringBuilder();
    public final ArrayList definitions = new ArrayList();
    public boolean referenceValid = false;

    public final void finishReference() {
        if (this.referenceValid) {
            String unescapeString = Escaping.unescapeString(this.destination);
            StringBuilder sb = this.title;
            String unescapeString2 = sb != null ? Escaping.unescapeString(sb.toString()) : null;
            String str = this.normalizedLabel;
            LinkReferenceDefinition linkReferenceDefinition = new LinkReferenceDefinition();
            linkReferenceDefinition.label = str;
            linkReferenceDefinition.destination = unescapeString;
            linkReferenceDefinition.title = unescapeString2;
            this.definitions.add(linkReferenceDefinition);
            this.label = null;
            this.referenceValid = false;
            this.normalizedLabel = null;
            this.destination = null;
            this.title = null;
        }
    }
}
