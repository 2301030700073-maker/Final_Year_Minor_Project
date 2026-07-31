package org.jsoup.parser;

import androidx.sqlite.SQLite;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.upstream.CmcdHeadersFactory;
import com.google.android.exoplayer2.util.MimeTypes;
import j$.util.Map;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TagSet {
    public static final TagSet HtmlTagSet;
    public final ArrayList customizers;
    public final TagSet source;
    public final HashMap tags = new HashMap();

    static {
        String[] strArr = {"html", TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "frameset", "script", "noscript", TtmlNode.TAG_STYLE, "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "dialog", "search", "ul", "ol", "pre", TtmlNode.TAG_DIV, "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "details", "menu", "plaintext", "template", "article", "main", TtmlNode.CENTER, "dir", "applet", "marquee", "listing", "#root"};
        String[] strArr2 = {"object", TtmlNode.RUBY_BASE, "font", TtmlNode.TAG_TT, CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT, "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", TtmlNode.ATTR_TTS_RUBY, "rt", "rp", "rtc", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "img", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", TtmlNode.TAG_SPAN, "input", "select", "textarea", "label", MimeTypes.BASE_TYPE_AUDIO, MimeTypes.BASE_TYPE_VIDEO, "canvas", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "basefont", "bgsound", "menuitem", "data", "bdi", CmcdHeadersFactory.STREAMING_FORMAT_SS, "strike", "nobr", "ins", "del", "button", "picture", "slot", "rb"};
        String[] strArr3 = {"title", TtmlNode.TAG_P, "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", TtmlNode.TAG_STYLE};
        String[] strArr4 = {"meta", "link", TtmlNode.RUBY_BASE, "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"};
        String[] strArr5 = {"iframe", "noembed", "noframes", "script", TtmlNode.TAG_STYLE, "xmp"};
        String[] strArr6 = {"button", "input", "select", "textarea", "option", "output", "progress", "meter", "img", "picture", MimeTypes.BASE_TYPE_AUDIO, MimeTypes.BASE_TYPE_VIDEO, "canvas", "object", "embed", "iframe"};
        TagSet tagSet = new TagSet(null, null);
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr, new TagSet$$ExternalSyntheticLambda1(0));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr2, new TagSet$$ExternalSyntheticLambda1(10));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr3, new TagSet$$ExternalSyntheticLambda1(11));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr4, new TagSet$$ExternalSyntheticLambda1(12));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"pre", "plaintext", "title", "textarea", "script"}, new TagSet$$ExternalSyntheticLambda1(13));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"title", "textarea"}, new TagSet$$ExternalSyntheticLambda1(1));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr5, new TagSet$$ExternalSyntheticLambda1(2));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", QuietAppendable$BaseAppendable.FormSubmitTags, new TagSet$$ExternalSyntheticLambda1(3));
        tagSet.setupTags("http://www.w3.org/1999/xhtml", strArr6, new TagSet$$ExternalSyntheticLambda1(4));
        tagSet.setupTags("http://www.w3.org/1998/Math/MathML", new String[]{"math"}, new TagSet$$ExternalSyntheticLambda1(5));
        tagSet.setupTags("http://www.w3.org/1998/Math/MathML", new String[]{"mi", "mo", "msup", "mn", "mtext"}, new TagSet$$ExternalSyntheticLambda1(6));
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"svg", "femerge", "femergenode"}, new TagSet$$ExternalSyntheticLambda1(7));
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"text"}, new TagSet$$ExternalSyntheticLambda1(8));
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"script"}, new TagSet$$ExternalSyntheticLambda1(9));
        HtmlTagSet = tagSet;
    }

    public TagSet(TagSet tagSet, ArrayList arrayList) {
        this.source = tagSet;
        this.customizers = arrayList;
    }

    public final void doAdd(Tag tag) {
        ArrayList arrayList = this.customizers;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Consumer) it.next()).accept(tag);
            }
        }
        ((Map) Map.EL.computeIfAbsent(this.tags, tag.namespace, new Nodes$$ExternalSyntheticLambda0(9))).put(tag.tagName, tag);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TagSet) {
            return Objects.equals(this.tags, ((TagSet) obj).tags);
        }
        return false;
    }

    public final Tag get(String str, String str2) {
        Tag tag;
        Tag tag2;
        SQLite.notNull(str);
        SQLite.notNull(str2);
        java.util.Map map = (java.util.Map) this.tags.get(str2);
        if (map != null && (tag2 = (Tag) map.get(str)) != null) {
            return tag2;
        }
        TagSet tagSet = this.source;
        if (tagSet == null || (tag = tagSet.get(str, str2)) == null) {
            return null;
        }
        Tag clone = tag.clone();
        doAdd(clone);
        return clone;
    }

    public final int hashCode() {
        return Objects.hashCode(this.tags);
    }

    public final void setupTags(String str, String[] strArr, Consumer consumer) {
        for (String str2 : strArr) {
            Tag tag = get(str2, str);
            if (tag == null) {
                tag = new Tag(str2, str2, str);
                tag.options = 0;
                tag.set(1);
                doAdd(tag);
            }
            consumer.accept(tag);
        }
    }

    public final Tag valueOf(String str, String str2, String str3, boolean z) {
        SQLite.notNull(str);
        SQLite.notNull(str3);
        String trim = str.trim();
        SQLite.notEmpty(trim);
        Tag tag = get(trim, str3);
        if (tag != null) {
            return tag;
        }
        if (str2 == null) {
            str2 = QuietAppendable$BaseAppendable.normalize(trim);
        }
        if (!z) {
            trim = str2;
        }
        Tag tag2 = get(str2, str3);
        if (tag2 == null) {
            Tag tag3 = new Tag(trim, str2, str3);
            doAdd(tag3);
            return tag3;
        }
        if (!z || trim.equals(str2)) {
            return tag2;
        }
        Tag clone = tag2.clone();
        clone.tagName = trim;
        doAdd(clone);
        return clone;
    }
}
