package org.jsoup.select;

import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.room.Room;
import j$.util.DesugarCollections;
import j$.util.stream.Collector;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.ConnectionPool;
import org.jsoup.helper.Regex;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda2;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.LeafNode;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Evaluator {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AttributeWithValue extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final String key;
        public final String value;

        public AttributeWithValue(String str, String str2, int i) {
            this.$r8$classId = i;
            Room.notEmpty(str);
            this.key = QuietAppendable$BaseAppendable.normalize(str);
            if ((str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""))) {
                Room.isTrue("Quoted value must have content", str2.length() > 1);
                str2 = str2.substring(1, str2.length() - 1);
            }
            this.value = QuietAppendable$BaseAppendable.lowerCase(str2);
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 3;
                case 1:
                    return 6;
                case 2:
                    return 4;
                case 3:
                    return 3;
                default:
                    return 4;
            }
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            int i = this.$r8$classId;
            String str = this.value;
            String str2 = this.key;
            switch (i) {
                case 0:
                    return element2.hasAttr(str2) && str.equalsIgnoreCase(element2.attr(str2));
                case 1:
                    return element2.hasAttr(str2) && QuietAppendable$BaseAppendable.lowerCase(element2.attr(str2)).contains(str);
                case 2:
                    return element2.hasAttr(str2) && QuietAppendable$BaseAppendable.lowerCase(element2.attr(str2)).endsWith(str);
                case 3:
                    return !str.equalsIgnoreCase(element2.attr(str2));
                default:
                    return element2.hasAttr(str2) && QuietAppendable$BaseAppendable.lowerCase(element2.attr(str2)).startsWith(str);
            }
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return Modifier.CC.m("[", this.key, "=", this.value, "]");
                case 1:
                    return Modifier.CC.m("[", this.key, "*=", this.value, "]");
                case 2:
                    return Modifier.CC.m("[", this.key, "$=", this.value, "]");
                case 3:
                    return Modifier.CC.m("[", this.key, "!=", this.value, "]");
                default:
                    return Modifier.CC.m("[", this.key, "^=", this.value, "]");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AttributeWithValueMatching extends Evaluator {
        public final String key;
        public final Regex pattern;

        public AttributeWithValueMatching(String str, Regex regex) {
            this.key = QuietAppendable$BaseAppendable.normalize(str);
            this.pattern = regex;
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            return 8;
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            String str = this.key;
            return element2.hasAttr(str) && this.pattern.matcher(element2.attr(str)).find();
        }

        public final String toString() {
            return Modifier.CC.m("[", this.key, "~=", this.pattern.toString(), "]");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IndexEquals extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final int index;

        public IndexEquals(int i, int i2) {
            this.$r8$classId = i2;
            this.index = i;
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            int i = this.$r8$classId;
            int i2 = this.index;
            switch (i) {
                case 0:
                    if (element2.elementSiblingIndex() == i2) {
                        break;
                    }
                    break;
                case 1:
                    if (element2.elementSiblingIndex() > i2) {
                        break;
                    }
                    break;
                default:
                    if (element != element2 && element2.elementSiblingIndex() < i2) {
                        break;
                    }
                    break;
            }
            return true;
        }

        public final String toString() {
            int i = this.$r8$classId;
            int i2 = this.index;
            switch (i) {
                case 0:
                    return String.format(":eq(%d)", Integer.valueOf(i2));
                case 1:
                    return String.format(":gt(%d)", Integer.valueOf(i2));
                default:
                    return String.format(":lt(%d)", Integer.valueOf(i2));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IsFirstOfType extends IsNthChild {
        @Override // org.jsoup.select.Evaluator.IsNthChild
        public final String toString() {
            return ":first-of-type";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IsLastOfType extends IsNthChild {
        @Override // org.jsoup.select.Evaluator.IsNthChild
        public final String toString() {
            return ":last-of-type";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class IsNthChild extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final int a;
        public final int b;

        public IsNthChild(int i, int i2, int i3) {
            this.$r8$classId = i3;
            this.a = i;
            this.b = i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0091 A[RETURN] */
        @Override // org.jsoup.select.Evaluator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean matches(org.jsoup.nodes.Element r9, org.jsoup.nodes.Element r10) {
            /*
                r8 = this;
                org.jsoup.nodes.Element r9 = r10.parentNode
                r0 = 0
                if (r9 == 0) goto L92
                boolean r9 = r9 instanceof org.jsoup.nodes.Document
                if (r9 == 0) goto Lb
                goto L92
            Lb:
                int r9 = r8.$r8$classId
                r1 = 1
                switch(r9) {
                    case 0: goto L7a;
                    case 1: goto L5c;
                    case 2: goto L3c;
                    default: goto L11;
                }
            L11:
                org.jsoup.nodes.Element r9 = r10.parentNode
                if (r9 != 0) goto L18
            L15:
                r4 = r0
                goto L80
            L18:
                org.jsoup.nodes.Element$NodeList r2 = r9.childNodes
                int r2 = r2.size()
                r3 = r0
                r4 = r3
            L20:
                if (r3 >= r2) goto L80
                org.jsoup.nodes.Node r5 = r9.childNode(r3)
                java.lang.String r6 = r5.normalName()
                org.jsoup.parser.Tag r7 = r10.tag
                java.lang.String r7 = r7.normalName
                boolean r6 = r6.equals(r7)
                if (r6 == 0) goto L36
                int r4 = r4 + 1
            L36:
                if (r5 != r10) goto L39
                goto L80
            L39:
                int r3 = r3 + 1
                goto L20
            L3c:
                org.jsoup.nodes.Element r9 = r10.parentNode
                if (r9 != 0) goto L41
                goto L15
            L41:
                r9 = r10
                r2 = r0
            L43:
                if (r9 == 0) goto L5a
                org.jsoup.parser.Tag r3 = r9.tag
                java.lang.String r3 = r3.normalName
                org.jsoup.parser.Tag r4 = r10.tag
                java.lang.String r4 = r4.normalName
                boolean r3 = r3.equals(r4)
                if (r3 == 0) goto L55
                int r2 = r2 + 1
            L55:
                org.jsoup.nodes.Element r9 = r9.nextElementSibling()
                goto L43
            L5a:
                r4 = r2
                goto L80
            L5c:
                org.jsoup.nodes.Element r9 = r10.parentNode
                if (r9 != 0) goto L61
                goto L15
            L61:
                org.jsoup.nodes.Element$NodeList r2 = r9.childNodes
                int r2 = r2.size()
                if (r2 != 0) goto L6b
                r9 = r0
                goto L73
            L6b:
                java.util.List r9 = r9.childElementsList()
                int r9 = r9.size()
            L73:
                int r10 = r10.elementSiblingIndex()
                int r9 = r9 - r10
                r4 = r9
                goto L80
            L7a:
                int r9 = r10.elementSiblingIndex()
                int r4 = r9 + 1
            L80:
                int r9 = r8.a
                int r8 = r8.b
                if (r9 != 0) goto L89
                if (r4 != r8) goto L92
                goto L91
            L89:
                int r4 = r4 - r8
                int r8 = r4 * r9
                if (r8 < 0) goto L92
                int r4 = r4 % r9
                if (r4 != 0) goto L92
            L91:
                return r1
            L92:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.Evaluator.IsNthChild.matches(org.jsoup.nodes.Element, org.jsoup.nodes.Element):boolean");
        }

        public String toString() {
            String str;
            int i = this.b;
            int i2 = this.a;
            String str2 = i2 == 0 ? ":%s(%3$d)" : i == 0 ? ":%s(%2$dn)" : ":%s(%2$dn%3$+d)";
            switch (this.$r8$classId) {
                case 0:
                    str = "nth-child";
                    break;
                case 1:
                    str = "nth-last-child";
                    break;
                case 2:
                    str = "nth-last-of-type";
                    break;
                default:
                    str = "nth-of-type";
                    break;
            }
            return String.format(str2, str, Integer.valueOf(i2), Integer.valueOf(i));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class IsRoot extends Evaluator {
        public static boolean loggedError = false;
        public final /* synthetic */ int $r8$classId;

        @Override // org.jsoup.select.Evaluator
        public int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 1;
                case 1:
                    return 10;
                case 7:
                    return -1;
                case 8:
                    return 1;
                default:
                    return super.cost();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0078  */
        @Override // org.jsoup.select.Evaluator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean matches(org.jsoup.nodes.Element r9, org.jsoup.nodes.Element r10) {
            /*
                Method dump skipped, instructions count: 312
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.select.Evaluator.IsRoot.matches(org.jsoup.nodes.Element, org.jsoup.nodes.Element):boolean");
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return ":root";
                case 1:
                    return "*";
                case 2:
                    return ":empty";
                case 3:
                    return ":first-child";
                case 4:
                    return ":last-child";
                case 5:
                    return ":only-child";
                case 6:
                    return ":only-of-type";
                case 7:
                    return ":matchText";
                default:
                    return ">";
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Matches extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final Regex pattern;

        public /* synthetic */ Matches(Regex regex, int i) {
            this.$r8$classId = i;
            this.pattern = regex;
        }

        @Override // org.jsoup.select.Evaluator
        public final int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 8;
                case 1:
                    return 7;
                case 2:
                    return 7;
                default:
                    return 8;
            }
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            int i = this.$r8$classId;
            Regex regex = this.pattern;
            switch (i) {
                case 0:
                    element2.getClass();
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    NodeTraversor.traverse(new ConnectionPool(18, borrowBuilder), element2);
                    return regex.matcher(StringUtil.releaseBuilder(borrowBuilder).trim()).find();
                case 1:
                    return regex.matcher(element2.ownText()).find();
                case 2:
                    return regex.matcher(element2.wholeOwnText()).find();
                default:
                    element2.getClass();
                    Stream map = NodeUtils.stream(element2, Node.class).map(new Nodes$$ExternalSyntheticLambda0(3));
                    String[] strArr = StringUtil.padding;
                    return regex.matcher((String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Nodes$$ExternalSyntheticLambda0(2), new Collector.Characteristics[0]))).find();
            }
        }

        public final String toString() {
            int i = this.$r8$classId;
            Regex regex = this.pattern;
            switch (i) {
                case 0:
                    return String.format(":matches(%s)", regex);
                case 1:
                    return String.format(":matchesOwn(%s)", regex);
                case 2:
                    return String.format(":matchesWholeOwnText(%s)", regex);
                default:
                    return String.format(":matchesWholeText(%s)", regex);
            }
        }
    }

    public int cost() {
        return 5;
    }

    public abstract boolean matches(Element element, Element element2);

    public final boolean matches(Element element, Node node) {
        if (node instanceof Element) {
            return matches(element, (Element) node);
        }
        if ((node instanceof LeafNode) && wantsNodes()) {
            return matches(element, (LeafNode) node);
        }
        return false;
    }

    public boolean wantsNodes() {
        return false;
    }

    public void reset() {
    }

    public boolean matches(Element element, LeafNode leafNode) {
        return false;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Id extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final String id;

        public Id(int i, String str) {
            this.$r8$classId = i;
            switch (i) {
                case 4:
                    this.id = QuietAppendable$BaseAppendable.lowerCase(str);
                    break;
                case 5:
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    StringUtil.appendNormalisedWhitespace(str, borrowBuilder, false);
                    this.id = QuietAppendable$BaseAppendable.lowerCase(StringUtil.releaseBuilder(borrowBuilder));
                    break;
                case 6:
                    StringBuilder borrowBuilder2 = StringUtil.borrowBuilder();
                    StringUtil.appendNormalisedWhitespace(str, borrowBuilder2, false);
                    this.id = QuietAppendable$BaseAppendable.lowerCase(StringUtil.releaseBuilder(borrowBuilder2));
                    break;
                default:
                    this.id = QuietAppendable$BaseAppendable.lowerCase(str);
                    break;
            }
        }

        @Override // org.jsoup.select.Evaluator
        public int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 2;
                case 1:
                    return 2;
                case 2:
                    return 6;
                case 3:
                    return 8;
                case 4:
                case 5:
                case 7:
                default:
                    return super.cost();
                case 6:
                    return 10;
                case 8:
                    return 10;
                case 9:
                    return 1;
            }
        }

        @Override // org.jsoup.select.Evaluator
        public final boolean matches(Element element, Element element2) {
            int i = this.$r8$classId;
            String str = this.id;
            switch (i) {
                case 0:
                    Attributes attributes = element2.attributes;
                    return str.equals(attributes != null ? attributes.getIgnoreCase("id") : "");
                case 1:
                    return element2.hasAttr(str);
                case 2:
                    Attributes attributes2 = element2.attributes();
                    attributes2.getClass();
                    ArrayList arrayList = new ArrayList(attributes2.size);
                    for (int i2 = 0; i2 < attributes2.size; i2++) {
                        String str2 = attributes2.keys[i2];
                        if (!Attributes.isInternalKey(str2)) {
                            arrayList.add(new Attribute(str2, (String) attributes2.vals[i2], attributes2));
                        }
                    }
                    Iterator it = DesugarCollections.unmodifiableList(arrayList).iterator();
                    while (it.hasNext()) {
                        if (QuietAppendable$BaseAppendable.lowerCase(((Attribute) it.next()).key).startsWith(str)) {
                            return true;
                        }
                    }
                    return false;
                case 3:
                    Attributes attributes3 = element2.attributes;
                    if (attributes3 != null) {
                        String ignoreCase = attributes3.getIgnoreCase("class");
                        int length = ignoreCase.length();
                        String str3 = this.id;
                        int length2 = str3.length();
                        if (length != 0 && length >= length2) {
                            if (length == length2) {
                                return str3.equalsIgnoreCase(ignoreCase);
                            }
                            boolean z = false;
                            int i3 = 0;
                            for (int i4 = 0; i4 < length; i4++) {
                                if (Character.isWhitespace(ignoreCase.charAt(i4))) {
                                    if (!z) {
                                        continue;
                                    } else {
                                        if (i4 - i3 == length2 && ignoreCase.regionMatches(true, i3, str3, 0, length2)) {
                                            return true;
                                        }
                                        z = false;
                                    }
                                } else if (!z) {
                                    i3 = i4;
                                    z = true;
                                }
                            }
                            if (z && length - i3 == length2) {
                                return ignoreCase.regionMatches(true, i3, str3, 0, length2);
                            }
                        }
                    }
                    return false;
                case 4:
                    element2.getClass();
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    NodeTraversor.traverse(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(10, borrowBuilder), element2);
                    return QuietAppendable$BaseAppendable.lowerCase(StringUtil.releaseBuilder(borrowBuilder)).contains(str);
                case 5:
                    return QuietAppendable$BaseAppendable.lowerCase(element2.ownText()).contains(str);
                case 6:
                    element2.getClass();
                    StringBuilder borrowBuilder2 = StringUtil.borrowBuilder();
                    NodeTraversor.traverse(new ConnectionPool(18, borrowBuilder2), element2);
                    return QuietAppendable$BaseAppendable.lowerCase(StringUtil.releaseBuilder(borrowBuilder2).trim()).contains(str);
                case 7:
                    return element2.wholeOwnText().contains(str);
                case 8:
                    element2.getClass();
                    Stream map = NodeUtils.stream(element2, Node.class).map(new Nodes$$ExternalSyntheticLambda0(3));
                    String[] strArr = StringUtil.padding;
                    return ((String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Nodes$$ExternalSyntheticLambda0(2), new Collector.Characteristics[0]))).contains(str);
                case 9:
                    return element2.nameIs(str);
                case 10:
                    return element2.tag.normalName.endsWith(str);
                default:
                    return element2.tag.normalName.startsWith(str);
            }
        }

        public final String toString() {
            int i = this.$r8$classId;
            String str = this.id;
            switch (i) {
                case 0:
                    return "#".concat(str);
                case 1:
                    return Animation.CC.m("[", str, "]");
                case 2:
                    return Animation.CC.m("[^", str, "]");
                case 3:
                    return Modifier.CC.m(".", str);
                case 4:
                    return Animation.CC.m(":containsData(", str, ")");
                case 5:
                    return Animation.CC.m(":containsOwn(", str, ")");
                case 6:
                    return Animation.CC.m(":contains(", str, ")");
                case 7:
                    return Animation.CC.m(":containsWholeOwnText(", str, ")");
                case 8:
                    return Animation.CC.m(":containsWholeText(", str, ")");
                case 9:
                    return str;
                case 10:
                    return "*|".concat(str);
                default:
                    return str.concat("|*");
            }
        }

        public /* synthetic */ Id(int i, String str, boolean z) {
            this.$r8$classId = i;
            this.id = str;
        }
    }
}
