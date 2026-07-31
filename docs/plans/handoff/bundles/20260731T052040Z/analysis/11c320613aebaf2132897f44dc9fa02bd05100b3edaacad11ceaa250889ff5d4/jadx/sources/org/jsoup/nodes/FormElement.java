package org.jsoup.nodes;

import java.util.Arrays;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FormElement extends Element {
    public final Elements linkedEls;

    static {
        String[] strArr = StringUtil.padding;
        QueryParser.parse(StringUtil.join(", ", Arrays.asList(QuietAppendable$BaseAppendable.FormSubmitTags)));
    }

    public FormElement(Tag tag, Attributes attributes) {
        super(tag, null, attributes);
        this.linkedEls = new Elements();
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final Object clone() {
        return (FormElement) super.clone();
    }

    @Override // org.jsoup.nodes.Node
    public final void removeChild(Node node) {
        super.removeChild(node);
        this.linkedEls.remove(node);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final Element clone() {
        return (FormElement) super.clone();
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final Node clone() {
        return (FormElement) super.clone();
    }
}
