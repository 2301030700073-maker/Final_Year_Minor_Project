package org.jsoup.parser;

import androidx.room.Room;
import j$.util.Map;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TagSet {
    public static final TagSet HtmlTagSet;
    public final ArrayList customizers;
    public final TagSet source;
    public final HashMap tags = new HashMap();

    static {
        TagSet tagSet = new TagSet(null, null);
        final int i = 0;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"html", "head", "body", "frameset", "script", "noscript", "style", "meta", "link", "title", "frame", "noframes", "section", "nav", "aside", "hgroup", "header", "footer", "p", "h1", "h2", "h3", "h4", "h5", "h6", "dialog", "search", "ul", "ol", "pre", "div", "blockquote", "hr", "address", "figure", "figcaption", "form", "fieldset", "dl", "dt", "dd", "li", "table", "caption", "thead", "tfoot", "tbody", "colgroup", "col", "tr", "th", "td", "details", "menu", "plaintext", "template", "article", "main", "center", "dir", "applet", "marquee", "listing", "#root"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i2 = i;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i2 = 10;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"object", "base", "font", "tt", "i", "b", "u", "big", "small", "em", "strong", "dfn", "code", "samp", "kbd", "var", "cite", "abbr", "time", "acronym", "mark", "ruby", "rt", "rp", "rtc", "a", "img", "wbr", "map", "q", "sub", "sup", "bdo", "iframe", "embed", "span", "input", "select", "textarea", "label", "audio", "video", "canvas", "optgroup", "option", "legend", "datalist", "keygen", "output", "progress", "meter", "area", "param", "source", "track", "summary", "command", "device", "basefont", "bgsound", "menuitem", "data", "bdi", "s", "strike", "nobr", "ins", "del", "button", "picture", "slot", "rb"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i2) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i2;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i3 = 11;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"title", "p", "h1", "h2", "h3", "h4", "h5", "h6", "pre", "address", "li", "th", "td", "script", "style"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i3) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i3;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i4 = 12;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"meta", "link", "base", "frame", "img", "br", "wbr", "embed", "hr", "input", "keygen", "col", "command", "device", "area", "basefont", "bgsound", "menuitem", "param", "source", "track"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i4) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i4;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i5 = 13;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"pre", "plaintext", "title", "textarea", "script"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i5) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i5;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i6 = 1;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"title", "textarea"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i6) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i6;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i7 = 2;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"iframe", "noembed", "noframes", "script", "style", "xmp"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i7) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i7;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i8 = 3;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", QuietAppendable$BaseAppendable.FormSubmitTags, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i8) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i8;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i9 = 4;
        tagSet.setupTags("http://www.w3.org/1999/xhtml", new String[]{"button", "input", "select", "textarea", "option", "output", "progress", "meter", "img", "picture", "audio", "video", "canvas", "object", "embed", "iframe"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i9) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i9;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i10 = 5;
        tagSet.setupTags("http://www.w3.org/1998/Math/MathML", new String[]{"math"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i10) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i10;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i11 = 6;
        tagSet.setupTags("http://www.w3.org/1998/Math/MathML", new String[]{"mi", "mo", "msup", "mn", "mtext"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i11) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i11;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i12 = 7;
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"svg", "femerge", "femergenode"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i12) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i12;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i13 = 8;
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"text"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i13) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i13;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        final int i14 = 9;
        tagSet.setupTags("http://www.w3.org/2000/svg", new String[]{"script"}, new Consumer() { // from class: org.jsoup.parser.TagSet$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj) {
                Tag tag = (Tag) obj;
                switch (i14) {
                    case 0:
                        tag.set(4);
                        break;
                    case 1:
                        tag.set(128);
                        break;
                    case 2:
                        tag.set(256);
                        break;
                    case 3:
                        tag.set(512);
                        break;
                    case 4:
                        tag.set(1024);
                        break;
                    case 5:
                        tag.set(4);
                        break;
                    case 6:
                        tag.set(0);
                        break;
                    case 7:
                        tag.set(4);
                        break;
                    case 8:
                        tag.set(0);
                        break;
                    case 9:
                        tag.set(256);
                        break;
                    case 10:
                        tag.set(0);
                        break;
                    case 11:
                        tag.set(8);
                        break;
                    case 12:
                        tag.set(2);
                        break;
                    default:
                        tag.set(64);
                        break;
                }
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                int i22 = i14;
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
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
                ((Consumer) it.next()).n(tag);
            }
        }
        ((Map) Map.EL.computeIfAbsent(this.tags, tag.namespace, new Nodes$$ExternalSyntheticLambda0(5))).put(tag.tagName, tag);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TagSet) {
            return this.tags.equals(((TagSet) obj).tags);
        }
        return false;
    }

    public final Tag get(String str, String str2) {
        Tag tag;
        Tag tag2;
        Room.notNull(str);
        Room.notNull(str2);
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
        return this.tags.hashCode();
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
            consumer.n(tag);
        }
    }

    public final Tag valueOf(String str, String str2, String str3, boolean z) {
        Room.notNull(str);
        Room.notNull(str3);
        String trim = str.trim();
        Room.notEmpty(trim);
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
