package org.jsoup.nodes;

import java.util.Arrays;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    /* renamed from: clone */
    public final Object mo886clone() {
        return (FormElement) super.mo886clone();
    }

    @Override // org.jsoup.nodes.Node
    public final void removeChild(Node node) {
        super.removeChild(node);
        this.linkedEls.remove(node);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public final Element mo886clone() {
        return (FormElement) super.mo886clone();
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public final Node mo886clone() {
        return (FormElement) super.mo886clone();
    }
}
