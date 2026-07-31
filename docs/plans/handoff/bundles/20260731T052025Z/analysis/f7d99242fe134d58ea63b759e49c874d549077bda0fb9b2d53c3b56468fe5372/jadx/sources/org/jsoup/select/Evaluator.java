package org.jsoup.select;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.size.ViewSizeResolver;
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import j$.util.stream.Collector;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import kotlin.uuid.UuidKt;
import org.jsoup.helper.Validate;
import org.jsoup.internal.Functions;
import org.jsoup.internal.StringUtil;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda2;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Element$$ExternalSyntheticLambda1;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.safety.Cleaner;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Evaluator {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttributeWithValue extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final String key;
        public final String value;

        public AttributeWithValue(int i, String str, String str2, boolean z) {
            this.$r8$classId = i;
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            this.key = Functions.normalize(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.value = z ? Functions.normalize(str2) : z2 ? Functions.lowerCase(str2) : Functions.normalize(str2);
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
                    return element2.hasAttr(str2) && str.equalsIgnoreCase(element2.attr(str2).trim());
                case 1:
                    return element2.hasAttr(str2) && Functions.lowerCase(element2.attr(str2)).contains(str);
                case 2:
                    return element2.hasAttr(str2) && Functions.lowerCase(element2.attr(str2)).endsWith(str);
                case 3:
                    return !str.equalsIgnoreCase(element2.attr(str2));
                default:
                    return element2.hasAttr(str2) && Functions.lowerCase(element2.attr(str2)).startsWith(str);
            }
        }

        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return ViewSizeResolver.CC.m("[", this.key, "=", this.value, "]");
                case 1:
                    return ViewSizeResolver.CC.m("[", this.key, "*=", this.value, "]");
                case 2:
                    return ViewSizeResolver.CC.m("[", this.key, "$=", this.value, "]");
                case 3:
                    return ViewSizeResolver.CC.m("[", this.key, "!=", this.value, "]");
                default:
                    return ViewSizeResolver.CC.m("[", this.key, "^=", this.value, "]");
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttributeWithValueMatching extends Evaluator {
        public final String key;
        public final Pattern pattern;

        public AttributeWithValueMatching(String str, Pattern pattern) {
            this.key = Functions.normalize(str);
            this.pattern = pattern;
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
            return ViewSizeResolver.CC.m("[", this.key, "~=", this.pattern.toString(), "]");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IsFirstOfType extends IsNthChild {
        @Override // org.jsoup.select.Evaluator.IsNthChild
        public final String toString() {
            return ":first-of-type";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IsLastOfType extends IsNthChild {
        @Override // org.jsoup.select.Evaluator.IsNthChild
        public final String toString() {
            return ":last-of-type";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class IsNthChild extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final int a;
        public final int b;

        public IsNthChild(int i, int i2, int i3) {
            this.$r8$classId = i3;
            this.a = i;
            this.b = i2;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x008f A[RETURN] */
        @Override // org.jsoup.select.Evaluator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean matches(org.jsoup.nodes.Element r9, org.jsoup.nodes.Element r10) {
            /*
                r8 = this;
                org.jsoup.nodes.Node r9 = r10.parentNode
                org.jsoup.nodes.Element r9 = (org.jsoup.nodes.Element) r9
                r0 = 0
                if (r9 == 0) goto L90
                boolean r9 = r9 instanceof org.jsoup.nodes.Document
                if (r9 == 0) goto Ld
                goto L90
            Ld:
                int r9 = r8.$r8$classId
                r1 = 1
                switch(r9) {
                    case 0: goto L78;
                    case 1: goto L62;
                    case 2: goto L40;
                    default: goto L13;
                }
            L13:
                org.jsoup.nodes.Node r9 = r10.parentNode
                org.jsoup.nodes.Element r9 = (org.jsoup.nodes.Element) r9
                if (r9 != 0) goto L1c
            L19:
                r4 = r0
                goto L7e
            L1c:
                java.util.List r2 = r9.childNodes
                int r2 = r2.size()
                r3 = r0
                r4 = r3
            L24:
                if (r3 >= r2) goto L7e
                org.jsoup.nodes.Node r5 = r9.childNode(r3)
                java.lang.String r6 = r5.normalName()
                org.jsoup.parser.Tag r7 = r10.tag
                java.lang.String r7 = r7.normalName
                boolean r6 = r6.equals(r7)
                if (r6 == 0) goto L3a
                int r4 = r4 + 1
            L3a:
                if (r5 != r10) goto L3d
                goto L7e
            L3d:
                int r3 = r3 + 1
                goto L24
            L40:
                org.jsoup.nodes.Node r9 = r10.parentNode
                org.jsoup.nodes.Element r9 = (org.jsoup.nodes.Element) r9
                if (r9 != 0) goto L47
                goto L19
            L47:
                r9 = r10
                r2 = r0
            L49:
                if (r9 == 0) goto L60
                org.jsoup.parser.Tag r3 = r9.tag
                java.lang.String r3 = r3.normalName
                org.jsoup.parser.Tag r4 = r10.tag
                java.lang.String r4 = r4.normalName
                boolean r3 = r3.equals(r4)
                if (r3 == 0) goto L5b
                int r2 = r2 + 1
            L5b:
                org.jsoup.nodes.Element r9 = r9.nextElementSibling()
                goto L49
            L60:
                r4 = r2
                goto L7e
            L62:
                org.jsoup.nodes.Node r9 = r10.parentNode
                org.jsoup.nodes.Element r9 = (org.jsoup.nodes.Element) r9
                if (r9 != 0) goto L69
                goto L19
            L69:
                java.util.List r9 = r9.childElementsList()
                int r9 = r9.size()
                int r10 = r10.elementSiblingIndex()
                int r9 = r9 - r10
                r4 = r9
                goto L7e
            L78:
                int r9 = r10.elementSiblingIndex()
                int r4 = r9 + 1
            L7e:
                int r9 = r8.a
                int r8 = r8.b
                if (r9 != 0) goto L87
                if (r4 != r8) goto L90
                goto L8f
            L87:
                int r4 = r4 - r8
                int r8 = r4 * r9
                if (r8 < 0) goto L90
                int r4 = r4 % r9
                if (r4 != 0) goto L90
            L8f:
                return r1
            L90:
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class IsRoot extends Evaluator {
        public final /* synthetic */ int $r8$classId;

        @Override // org.jsoup.select.Evaluator
        public int cost() {
            switch (this.$r8$classId) {
                case 0:
                    return 1;
                case 1:
                    return 10;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return -1;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return 1;
                default:
                    return super.cost();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0073  */
        @Override // org.jsoup.select.Evaluator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean matches(org.jsoup.nodes.Element r6, org.jsoup.nodes.Element r7) {
            /*
                Method dump skipped, instructions count: 336
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
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return ":matchText";
                default:
                    return "";
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Matches extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final Pattern pattern;

        public /* synthetic */ Matches(Pattern pattern, int i) {
            this.$r8$classId = i;
            this.pattern = pattern;
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
            Pattern pattern = this.pattern;
            switch (i) {
                case 0:
                    element2.getClass();
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    UuidKt.traverse(new Cleaner(borrowBuilder), element2);
                    return pattern.matcher(StringUtil.releaseBuilder(borrowBuilder).trim()).find();
                case 1:
                    return pattern.matcher(element2.ownText()).find();
                case 2:
                    return pattern.matcher(element2.wholeOwnText()).find();
                default:
                    element2.getClass();
                    Stream map = NodeUtils.stream(element2, Node.class).map(new Element$$ExternalSyntheticLambda1(7));
                    String[] strArr = StringUtil.padding;
                    return pattern.matcher((String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Element$$ExternalSyntheticLambda1(5), new Collector.Characteristics[0]))).find();
            }
        }

        public final String toString() {
            int i = this.$r8$classId;
            Pattern pattern = this.pattern;
            switch (i) {
                case 0:
                    return ":matches(" + pattern + ")";
                case 1:
                    return ":matchesOwn(" + pattern + ")";
                case 2:
                    return ":matchesWholeOwnText(" + pattern + ")";
                default:
                    return ":matchesWholeText(" + pattern + ")";
            }
        }
    }

    public int cost() {
        return 5;
    }

    public abstract boolean matches(Element element, Element element2);

    public void reset() {
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Id extends Evaluator {
        public final /* synthetic */ int $r8$classId;
        public final String id;

        public Id(String str, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 4:
                    this.id = Functions.lowerCase(str);
                    break;
                case 5:
                    StringBuilder borrowBuilder = StringUtil.borrowBuilder();
                    StringUtil.appendNormalisedWhitespace(str, borrowBuilder, false);
                    this.id = Functions.lowerCase(StringUtil.releaseBuilder(borrowBuilder));
                    break;
                case 6:
                    StringBuilder borrowBuilder2 = StringUtil.borrowBuilder();
                    StringUtil.appendNormalisedWhitespace(str, borrowBuilder2, false);
                    this.id = Functions.lowerCase(StringUtil.releaseBuilder(borrowBuilder2));
                    break;
                default:
                    this.id = Functions.lowerCase(str);
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
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                default:
                    return super.cost();
                case 6:
                    return 10;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
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
                        if (Functions.lowerCase(((Attribute) it.next()).key).startsWith(str)) {
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
                    UuidKt.traverse(new MaterialButton$$ExternalSyntheticLambda0(8, borrowBuilder), element2);
                    return Functions.lowerCase(StringUtil.releaseBuilder(borrowBuilder)).contains(str);
                case 5:
                    return Functions.lowerCase(element2.ownText()).contains(str);
                case 6:
                    element2.getClass();
                    StringBuilder borrowBuilder2 = StringUtil.borrowBuilder();
                    UuidKt.traverse(new Cleaner(borrowBuilder2), element2);
                    return Functions.lowerCase(StringUtil.releaseBuilder(borrowBuilder2).trim()).contains(str);
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return element2.wholeOwnText().contains(str);
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    element2.getClass();
                    Stream map = NodeUtils.stream(element2, Node.class).map(new Element$$ExternalSyntheticLambda1(7));
                    String[] strArr = StringUtil.padding;
                    return ((String) map.collect(Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(""), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(), new Element$$ExternalSyntheticLambda1(5), new Collector.Characteristics[0]))).contains(str);
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
                    return CameraDevices$CC.m("[", str, "]");
                case 2:
                    return CameraDevices$CC.m("[^", str, "]");
                case 3:
                    return CameraDevices$CC.m(".", str);
                case 4:
                    return CameraDevices$CC.m(":containsData(", str, ")");
                case 5:
                    return CameraDevices$CC.m(":containsOwn(", str, ")");
                case 6:
                    return CameraDevices$CC.m(":contains(", str, ")");
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return CameraDevices$CC.m(":containsWholeOwnText(", str, ")");
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return CameraDevices$CC.m(":containsWholeText(", str, ")");
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
