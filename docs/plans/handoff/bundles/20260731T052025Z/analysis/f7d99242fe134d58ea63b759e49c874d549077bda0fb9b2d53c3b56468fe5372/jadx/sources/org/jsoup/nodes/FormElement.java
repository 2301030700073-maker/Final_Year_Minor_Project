package org.jsoup.nodes;

import java.util.Arrays;
import org.jsoup.internal.Functions;
import org.jsoup.internal.StringUtil;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FormElement extends Element {
    public final Elements linkedEls;

    public FormElement(Tag tag, Attributes attributes) {
        super(tag, null, attributes);
        this.linkedEls = new Elements();
        String[] strArr = Functions.FormSubmitTags;
        String[] strArr2 = StringUtil.padding;
        QueryParser.parse(StringUtil.join(Arrays.asList(strArr), ", "));
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
