package org.jsoup.parser;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Tag implements Cloneable {
    public static final HashMap Tags = new HashMap();
    public String namespace;
    public final String normalName;
    public String tagName;
    public boolean isBlock = true;
    public boolean formatAsBlock = true;
    public boolean empty = false;
    public boolean selfClosing = false;
    public boolean preserveWhitespace = false;
    public boolean formList = false;
    public boolean formSubmit = false;

    static {
        String[] strArr = Functions.FormSubmitTags;
        HashMap hashMap = new HashMap();
        hashMap.put("http://www.w3.org/1998/Math/MathML", new String[]{"math", "mi", "mo", "msup", "mn", "mtext"});
        hashMap.put("http://www.w3.org/2000/svg", new String[]{"svg", "text"});
        final int i = 0;
        setupTags(new String[]{"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "ins", "del", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "video", "audio", "canvas", "details", "menu", "plaintext", "template", "article", "main", "svg", "math", "center", "template", "dir", "applet", "marquee", "listing"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i2 = i;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i2 = 1;
        setupTags(new String[]{"object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "rtc", "a", "img", "br", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track", "data", "bdi", "s", "strike", "nobr", "rb", "text", "mi", "mo", "msup", "mn", "mtext"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i2) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i2;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i3 = 2;
        setupTags(new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i3) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i3;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i4 = 3;
        setupTags(new String[]{"title", "a", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style", "ins", "del", "s", "button"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i4) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i4;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i5 = 4;
        setupTags(new String[]{"pre", "plaintext", "title", "textarea"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i5) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i5;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i6 = 5;
        setupTags(new String[]{"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"}, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i6) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i6;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i7 = 6;
        setupTags(strArr, new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Tag tag = (Tag) obj;
                switch (i7) {
                    case 0:
                        tag.isBlock = true;
                        tag.formatAsBlock = true;
                        break;
                    case 1:
                        tag.isBlock = false;
                        tag.formatAsBlock = false;
                        break;
                    case 2:
                        tag.empty = true;
                        break;
                    case 3:
                        tag.formatAsBlock = false;
                        break;
                    case 4:
                        tag.preserveWhitespace = true;
                        break;
                    case 5:
                        tag.formList = true;
                        break;
                    default:
                        tag.formSubmit = true;
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i7;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        for (final Map.Entry entry : hashMap.entrySet()) {
            setupTags((String[]) entry.getValue(), new Consumer() { // from class: org.jsoup.parser.Tag$$ExternalSyntheticLambda7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((Tag) obj).namespace = (String) entry.getKey();
                }

                public /* synthetic */ Consumer andThen(Consumer consumer) {
                    return Consumer$CC.$default$andThen(this, consumer);
                }
            });
        }
    }

    public Tag(String str, String str2, String str3) {
        this.tagName = str;
        this.normalName = str2;
        this.namespace = str3;
    }

    public static void setupTags(String[] strArr, Consumer consumer) {
        for (String str : strArr) {
            HashMap hashMap = Tags;
            Tag tag = (Tag) hashMap.get(str);
            if (tag == null) {
                tag = new Tag(str, str, "http://www.w3.org/1999/xhtml");
                hashMap.put(str, tag);
            }
            consumer.accept(tag);
        }
    }

    public static Tag valueOf(String str, String str2, String str3, ParseSettings parseSettings) {
        Validate.notNull(str);
        String trim = str.trim();
        Validate.notEmpty(trim);
        Validate.notNull(str3);
        HashMap hashMap = Tags;
        Tag tag = (Tag) hashMap.get(trim);
        if (tag != null && tag.namespace.equals(str3)) {
            return tag;
        }
        if (!parseSettings.preserveTagCase) {
            trim = str2;
        }
        Tag tag2 = (Tag) hashMap.get(str2);
        if (tag2 == null || !tag2.namespace.equals(str3)) {
            Tag tag3 = new Tag(trim, str2, str3);
            tag3.isBlock = false;
            return tag3;
        }
        if (!parseSettings.preserveTagCase || trim.equals(str2)) {
            return tag2;
        }
        try {
            Tag tag4 = (Tag) super.clone();
            tag4.tagName = trim;
            return tag4;
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public final Object clone() {
        try {
            return (Tag) super.clone();
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        return this.tagName.equals(tag.tagName) && this.empty == tag.empty && this.formatAsBlock == tag.formatAsBlock && this.isBlock == tag.isBlock && this.preserveWhitespace == tag.preserveWhitespace && this.selfClosing == tag.selfClosing && this.formList == tag.formList && this.formSubmit == tag.formSubmit;
    }

    public final int hashCode() {
        return Objects.hash(this.tagName, Boolean.valueOf(this.isBlock), Boolean.valueOf(this.formatAsBlock), Boolean.valueOf(this.empty), Boolean.valueOf(this.selfClosing), Boolean.valueOf(this.preserveWhitespace), Boolean.valueOf(this.formList), Boolean.valueOf(this.formSubmit));
    }

    public final String toString() {
        return this.tagName;
    }

    public static Tag valueOf(String str, String str2, ParseSettings parseSettings) {
        return valueOf(str, Functions.normalize(str), str2, parseSettings);
    }
}
