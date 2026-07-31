package org.jsoup.parser;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import java.util.ArrayList;
import okhttp3.FormBody;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HtmlTreeBuilder {
    public String baseUri;
    public boolean baseUriSetFromDoc;
    public Token currentToken;
    public Document doc;
    public Token.EndTag emptyEnd;
    public FormElement formElement;
    public ArrayList formattingElements;
    public boolean fosterInserts;
    public boolean framesetOk;
    public Element headElement;
    public HtmlTreeBuilderState originalState;
    public Parser parser;
    public ArrayList pendingTableCharacters;
    public CharacterReader reader;
    public ParseSettings settings;
    public ArrayList stack;
    public Token.StartTag start;
    public HtmlTreeBuilderState state;
    public TagSet tagSet;
    public ArrayList tmplInsertMode;
    public Tokeniser tokeniser;
    public static final String[] TagsSearchInScope = {"applet", "caption", "html", "marquee", "object", "table", "td", "template", "th"};
    public static final String[] TagSearchInScopeMath = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] TagSearchInScopeSvg = {"desc", "foreignobject", "title"};
    public static final String[] TagSearchList = {"ol", "ul"};
    public static final String[] TagSearchButton = {"button"};
    public static final String[] TagSearchTableScope = {"html", "table"};
    public static final String[] TagSearchSelectScope = {"optgroup", "option"};
    public static final String[] TagSearchEndTags = {"dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc"};
    public static final String[] TagThoroughSearchEndTags = {"caption", "colgroup", "dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
    public static final String[] TagSearchSpecial = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", "br", "button", "caption", "center", "col", "colgroup", "dd", "details", "dir", "div", "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "keygen", "li", "link", "listing", "main", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "search", "section", "select", "source", "style", "summary", "table", "tbody", "td", "template", "textarea", "tfoot", "th", "thead", "title", "tr", "track", "ul", "wbr", "xmp"};
    public static final String[] TagSearchSpecialMath = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] TagMathMlTextIntegration = {"mi", "mn", "mo", "ms", "mtext"};
    public static final String[] TagSvgHtmlIntegration = {"desc", "foreignObject", "title"};
    public static final String[] TagFormListed = {"button", "fieldset", "input", "keygen", "object", "output", "select", "textarea"};
    public final Token.EndTag end = new Token.EndTag(this);
    public final String[] specificScopeTarget = {null};

    public static boolean isSpecial(Element element) {
        String str;
        Tag tag = element.tag;
        String str2 = tag.namespace;
        str = tag.normalName;
        str2.getClass();
        switch (str2) {
            case "http://www.w3.org/1999/xhtml":
                return StringUtil.inSorted(str, TagSearchSpecial);
            case "http://www.w3.org/2000/svg":
                return StringUtil.inSorted(str, TagSvgHtmlIntegration);
            case "http://www.w3.org/1998/Math/MathML":
                return StringUtil.inSorted(str, TagSearchSpecialMath);
            default:
                return false;
        }
    }

    public static boolean onStack(ArrayList arrayList, Element element) {
        int size = arrayList.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            if (((Element) arrayList.get(i)) == element) {
                return true;
            }
            i--;
        }
        return false;
    }

    public final Element aboveOnStack(Element element) {
        if (!onStack(this.stack, element)) {
            return null;
        }
        for (int size = this.stack.size() - 1; size > 0; size--) {
            if (((Element) this.stack.get(size)) == element) {
                return (Element) this.stack.get(size - 1);
            }
        }
        return null;
    }

    public final void checkActiveFormattingElements(Element element) {
        int size = this.formattingElements.size();
        int i = size - 13;
        int i2 = 0;
        if (i < 0) {
            i = 0;
        }
        for (int i3 = size - 1; i3 >= i; i3--) {
            Element element2 = (Element) this.formattingElements.get(i3);
            if (element2 == null) {
                return;
            }
            if (element.tag.normalName.equals(element2.tag.normalName) && element.attributes().equals(element2.attributes())) {
                i2++;
            }
            if (i2 == 3) {
                this.formattingElements.remove(i3);
                return;
            }
        }
    }

    public final void clearFormattingElementsToLastMarker() {
        while (!this.formattingElements.isEmpty()) {
            int size = this.formattingElements.size();
            if ((size > 0 ? (Element) this.formattingElements.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    public final void clearStackToContext(String... strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Element element = (Element) this.stack.get(size);
            if ("http://www.w3.org/1999/xhtml".equals(element.tag.namespace) && (StringUtil.in(element.tag.normalName, strArr) || element.nameIs("html"))) {
                return;
            }
            pop();
        }
    }

    public final void clearStackToTableContext() {
        clearStackToContext("table", "template");
    }

    public final void clearStackToTableRowContext() {
        clearStackToContext("tr", "template");
    }

    public final Element createElementFor(Token.StartTag startTag, String str, boolean z) {
        int i;
        Attributes attributes = startTag.attributes;
        if (attributes != null && attributes.size() != 0) {
            if (!z && !this.settings.preserveAttributeCase) {
                for (int i2 = 0; i2 < attributes.size; i2++) {
                    String str2 = attributes.keys[i2];
                    if (!Attributes.isInternalKey(str2)) {
                        attributes.keys[i2] = QuietAppendable$BaseAppendable.lowerCase(str2);
                    }
                }
            }
            ParseSettings parseSettings = this.settings;
            if (attributes.size == 0) {
                i = 0;
            } else {
                boolean z2 = parseSettings.preserveAttributeCase;
                int i3 = 0;
                i = 0;
                while (i3 < attributes.size) {
                    String str3 = attributes.keys[i3];
                    i3++;
                    int i4 = i3;
                    while (i4 < attributes.size) {
                        if ((z2 && str3.equals(attributes.keys[i4])) || (!z2 && str3.equalsIgnoreCase(attributes.keys[i4]))) {
                            i++;
                            attributes.remove(i4);
                            i4--;
                        }
                        i4++;
                    }
                }
            }
            if (i > 0) {
                error("Dropped duplicate attribute(s) in tag [%s]", startTag.normalName);
            }
        }
        Tag valueOf = this.tagSet.valueOf(startTag.tagName.value(), startTag.normalName, str, (z ? ParseSettings.preserveCase : this.settings).preserveTagCase);
        return valueOf.normalName.equals("form") ? new FormElement(valueOf, attributes) : new Element(valueOf, null, attributes);
    }

    public final Element currentElement() {
        int size = this.stack.size();
        return size > 0 ? (Element) this.stack.get(size - 1) : this.doc;
    }

    public final boolean currentElementIs(String str) {
        Element currentElement;
        if (this.stack.size() == 0 || (currentElement = currentElement()) == null) {
            return false;
        }
        Tag tag = currentElement.tag;
        return tag.normalName.equals(str) && tag.namespace.equals("http://www.w3.org/1999/xhtml");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void doInsertElement(org.jsoup.nodes.Element r13) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.doInsertElement(org.jsoup.nodes.Element):void");
    }

    public final void error(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.parser.errors.canAddError()) {
            this.parser.errors.add(new ParseError(this.reader, "Unexpected %s token [%s] when in state [%s]", new Object[]{this.currentToken.getClass().getSimpleName(), this.currentToken, htmlTreeBuilderState}));
        }
    }

    public final void generateImpliedEndTags(boolean z) {
        String[] strArr = z ? TagThoroughSearchEndTags : TagSearchEndTags;
        while ("http://www.w3.org/1999/xhtml".equals(currentElement().tag.namespace) && StringUtil.inSorted(currentElement().tag.normalName, strArr)) {
            pop();
        }
    }

    public final Element getFromStack(String str) {
        int size = this.stack.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            Element element = (Element) this.stack.get(i);
            Tag tag = element.tag;
            if (tag.normalName.equals(str) && tag.namespace.equals("http://www.w3.org/1999/xhtml")) {
                return element;
            }
            i--;
        }
        return null;
    }

    public final boolean inButtonScope(String str) {
        String[] strArr = this.specificScopeTarget;
        strArr[0] = str;
        return inSpecificScope(strArr, TagsSearchInScope, TagSearchButton);
    }

    public final boolean inScope(String str) {
        String[] strArr = this.specificScopeTarget;
        strArr[0] = str;
        return inSpecificScope(strArr, TagsSearchInScope, null);
    }

    public final boolean inSelectScope(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            String str2 = ((Element) this.stack.get(size)).tag.normalName;
            if (str2.equals(str)) {
                return true;
            }
            if (!StringUtil.inSorted(str2, TagSearchSelectScope)) {
                return false;
            }
        }
        return false;
    }

    public final boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Tag tag = ((Element) this.stack.get(size)).tag;
            String str = tag.normalName;
            String str2 = tag.namespace;
            if (str2.equals("http://www.w3.org/1999/xhtml")) {
                if (StringUtil.inSorted(str, strArr)) {
                    return true;
                }
                if (StringUtil.inSorted(str, strArr2)) {
                    return false;
                }
                if (strArr3 != null && StringUtil.inSorted(str, strArr3)) {
                    return false;
                }
            } else if (strArr2 != TagsSearchInScope) {
                continue;
            } else {
                if (str2.equals("http://www.w3.org/1998/Math/MathML") && StringUtil.inSorted(str, TagSearchInScopeMath)) {
                    return false;
                }
                if (str2.equals("http://www.w3.org/2000/svg") && StringUtil.inSorted(str, TagSearchInScopeSvg)) {
                    return false;
                }
            }
        }
        return false;
    }

    public final boolean inTableScope(String str) {
        String[] strArr = this.specificScopeTarget;
        strArr[0] = str;
        return inSpecificScope(strArr, TagSearchTableScope, null);
    }

    public final void insertCharacterNode(Token.Character character, boolean z) {
        FormBody.Builder builder = character.data;
        String value = builder.value();
        if (value.indexOf(0) != -1) {
            String replace = z ? value.replace((char) 0, (char) 65533) : value.replace(Token.Character.nullString, "");
            builder.reset();
            builder.names = replace;
        }
        insertCharacterToElement(character, currentElement());
    }

    public final void insertCharacterToElement(Token.Character character, Element element) {
        String value = character.data.value();
        element.appendChild(character instanceof Token.CData ? new CDataNode(value) : element.tag.is(256) ? new DataNode(value) : new TextNode(value));
    }

    public final void insertCommentNode(Token.Comment comment) {
        currentElement().appendChild(new Comment(comment.data.value()));
    }

    public final Element insertElementFor(Token.StartTag startTag) {
        Element createElementFor = createElementFor(startTag, "http://www.w3.org/1999/xhtml", false);
        Tag tag = createElementFor.tag;
        doInsertElement(createElementFor);
        if (startTag.selfClosing) {
            tag.options |= 32;
            if (!tag.isEmpty()) {
                if ((tag.options & 1) == 0 || !tag.isSelfClosing()) {
                    Tokeniser tokeniser = this.tokeniser;
                    Object[] objArr = {tag.normalName};
                    ParseErrorList parseErrorList = tokeniser.errors;
                    if (parseErrorList.canAddError()) {
                        parseErrorList.add(new ParseError(tokeniser.reader, "Tag [%s] cannot be self-closing; not a void tag", objArr));
                    }
                } else {
                    this.tokeniser.transition(TokeniserState.Data);
                    Tokeniser tokeniser2 = this.tokeniser;
                    Token.EndTag endTag = this.emptyEnd;
                    endTag.mo889reset();
                    endTag.name(tag.tagName);
                    tokeniser2.emit(endTag);
                }
            }
        }
        if (tag.isEmpty()) {
            pop();
        }
        return createElementFor;
    }

    public final Element insertEmptyElementFor(Token.StartTag startTag) {
        Element createElementFor = createElementFor(startTag, "http://www.w3.org/1999/xhtml", false);
        doInsertElement(createElementFor);
        pop();
        return createElementFor;
    }

    public final void insertForeignElementFor(Token.StartTag startTag, String str) {
        Element createElementFor = createElementFor(startTag, str, true);
        doInsertElement(createElementFor);
        if (startTag.selfClosing) {
            createElementFor.tag.options |= 32;
            pop();
        }
    }

    public final void insertFormElement(Token.StartTag startTag, boolean z, boolean z2) {
        FormElement formElement = (FormElement) createElementFor(startTag, "http://www.w3.org/1999/xhtml", false);
        if (!z2) {
            this.formElement = formElement;
        } else if (!onStack("template")) {
            this.formElement = formElement;
        }
        doInsertElement(formElement);
        if (z) {
            return;
        }
        pop();
    }

    public final boolean onStackNot(String[] strArr) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (!StringUtil.inSorted(((Element) this.stack.get(size)).tag.normalName, strArr)) {
                return true;
            }
        }
        return false;
    }

    public final Element pop() {
        return (Element) this.stack.remove(this.stack.size() - 1);
    }

    public final void popStackToClose(String str) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            Tag tag = pop().tag;
            if (tag.normalName.equals(str) && tag.namespace.equals("http://www.w3.org/1999/xhtml")) {
                return;
            }
        }
    }

    public final void popTemplateMode() {
        if (this.tmplInsertMode.size() > 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if ("malignmark".equals(r6.normalName) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        if (((org.jsoup.parser.Token.TokenType) r10.type) == org.jsoup.parser.Token.TokenType.Character) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a0, code lost:
    
        if (r0.equals("application/xhtml+xml") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
    
        if (((org.jsoup.parser.Token.TokenType) r10.type) != org.jsoup.parser.Token.TokenType.Character) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
    
        if (org.jsoup.internal.StringUtil.in(r2.tagName, org.jsoup.parser.HtmlTreeBuilder.TagSvgHtmlIntegration) != false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean process(org.jsoup.parser.Token r10) {
        /*
            r9 = this;
            java.util.ArrayList r0 = r9.stack
            boolean r0 = r0.isEmpty()
            r1 = 1
            if (r0 == 0) goto Lb
            goto Lc8
        Lb:
            org.jsoup.nodes.Element r0 = r9.currentElement()
            org.jsoup.parser.Tag r2 = r0.tag
            java.lang.String r3 = r2.namespace
            java.lang.String r4 = "http://www.w3.org/1999/xhtml"
            boolean r4 = r4.equals(r3)
            if (r4 == 0) goto L1d
            goto Lc8
        L1d:
            java.lang.String r4 = r2.namespace
            java.lang.String r5 = "http://www.w3.org/1998/Math/MathML"
            boolean r6 = r5.equals(r4)
            if (r6 == 0) goto L5a
            java.lang.String r6 = r2.normalName
            java.lang.String[] r7 = org.jsoup.parser.HtmlTreeBuilder.TagMathMlTextIntegration
            boolean r6 = org.jsoup.internal.StringUtil.inSorted(r6, r7)
            if (r6 == 0) goto L5a
            boolean r6 = r10.isStartTag()
            if (r6 == 0) goto L50
            r6 = r10
            org.jsoup.parser.Token$StartTag r6 = (org.jsoup.parser.Token.StartTag) r6
            java.lang.String r7 = r6.normalName
            java.lang.String r8 = "mglyph"
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L50
            java.lang.String r7 = "malignmark"
            java.lang.String r6 = r6.normalName
            boolean r6 = r7.equals(r6)
            if (r6 != 0) goto L50
            goto Lc8
        L50:
            java.lang.Object r6 = r10.type
            org.jsoup.parser.Token$TokenType r6 = (org.jsoup.parser.Token.TokenType) r6
            org.jsoup.parser.Token$TokenType r7 = org.jsoup.parser.Token.TokenType.Character
            if (r6 != r7) goto L5a
            goto Lc8
        L5a:
            boolean r3 = r5.equals(r3)
            java.lang.String r6 = "annotation-xml"
            if (r3 == 0) goto L7c
            boolean r3 = r0.nameIs(r6)
            if (r3 == 0) goto L7c
            boolean r3 = r10.isStartTag()
            if (r3 == 0) goto L7c
            r3 = r10
            org.jsoup.parser.Token$StartTag r3 = (org.jsoup.parser.Token.StartTag) r3
            java.lang.String r3 = r3.normalName
            java.lang.String r7 = "svg"
            boolean r3 = r7.equals(r3)
            if (r3 == 0) goto L7c
            goto Lc8
        L7c:
            boolean r3 = r5.equals(r4)
            if (r3 == 0) goto La3
            boolean r3 = r0.nameIs(r6)
            if (r3 == 0) goto La3
            java.lang.String r3 = "encoding"
            java.lang.String r0 = r0.attr(r3)
            java.lang.String r0 = org.jsoup.internal.QuietAppendable$BaseAppendable.normalize(r0)
            java.lang.String r3 = "text/html"
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto Lb5
            java.lang.String r3 = "application/xhtml+xml"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto La3
            goto Lb5
        La3:
            java.lang.String r0 = "http://www.w3.org/2000/svg"
            boolean r0 = r0.equals(r4)
            if (r0 == 0) goto Lc4
            java.lang.String r0 = r2.tagName
            java.lang.String[] r2 = org.jsoup.parser.HtmlTreeBuilder.TagSvgHtmlIntegration
            boolean r0 = org.jsoup.internal.StringUtil.in(r0, r2)
            if (r0 == 0) goto Lc4
        Lb5:
            boolean r0 = r10.isStartTag()
            if (r0 != 0) goto Lc8
            java.lang.Object r0 = r10.type
            org.jsoup.parser.Token$TokenType r0 = (org.jsoup.parser.Token.TokenType) r0
            org.jsoup.parser.Token$TokenType r2 = org.jsoup.parser.Token.TokenType.Character
            if (r0 != r2) goto Lc4
            goto Lc8
        Lc4:
            boolean r1 = r10.isEOF()
        Lc8:
            if (r1 == 0) goto Lcd
            org.jsoup.parser.HtmlTreeBuilderState r0 = r9.state
            goto Lcf
        Lcd:
            org.jsoup.parser.HtmlTreeBuilderState r0 = org.jsoup.parser.HtmlTreeBuilderState.ForeignContent
        Lcf:
            boolean r9 = r0.process(r10, r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.process(org.jsoup.parser.Token):boolean");
    }

    public final boolean processEndTag(String str) {
        Token token = this.currentToken;
        Token.EndTag endTag = this.end;
        if (token == endTag) {
            Token.EndTag endTag2 = new Token.EndTag(this);
            endTag2.name(str);
            return process(endTag2);
        }
        endTag.mo889reset();
        endTag.name(str);
        return process(endTag);
    }

    public final void processStartTag(String str) {
        Token.StartTag startTag = this.start;
        if (this.currentToken == startTag) {
            Token.StartTag startTag2 = new Token.StartTag(this);
            startTag2.name(str);
            process(startTag2);
        } else {
            startTag.mo889reset();
            startTag.name(str);
            process(startTag);
        }
    }

    public final void pushTemplateMode(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.tmplInsertMode.add(htmlTreeBuilderState);
    }

    public final void reconstructFormattingElements() {
        if (this.stack.size() > 256) {
            return;
        }
        boolean z = true;
        Element element = this.formattingElements.size() > 0 ? (Element) Animation.CC.m(1, this.formattingElements) : null;
        if (element == null || onStack(this.stack, element)) {
            return;
        }
        int size = this.formattingElements.size();
        int i = size - 12;
        if (i < 0) {
            i = 0;
        }
        int i2 = size - 1;
        int i3 = i2;
        while (i3 != i) {
            i3--;
            element = (Element) this.formattingElements.get(i3);
            if (element == null || onStack(this.stack, element)) {
                z = false;
                break;
            }
        }
        while (true) {
            if (!z) {
                i3++;
                element = (Element) this.formattingElements.get(i3);
            }
            Room.notNull(element);
            Element element2 = new Element(this.tagSet.valueOf(element.nodeName(), element.tag.normalName, "http://www.w3.org/1999/xhtml", this.settings.preserveTagCase), null, element.attributes().clone());
            doInsertElement(element2);
            this.formattingElements.set(i3, element2);
            if (i3 == i2) {
                return;
            } else {
                z = false;
            }
        }
    }

    public final void removeFromActiveFormattingElements(Element element) {
        for (int size = this.formattingElements.size() - 1; size >= 0; size--) {
            if (((Element) this.formattingElements.get(size)) == element) {
                this.formattingElements.remove(size);
                return;
            }
        }
    }

    public final void removeFromStack(Element element) {
        for (int size = this.stack.size() - 1; size >= 0; size--) {
            if (((Element) this.stack.get(size)) == element) {
                this.stack.remove(size);
                return;
            }
        }
    }

    public final void resetBody() {
        if (!onStack("body")) {
            ArrayList arrayList = this.stack;
            Document document = this.doc;
            Element firstElementChild = document.firstElementChild();
            while (true) {
                if (firstElementChild == null) {
                    firstElementChild = document.appendElement("html");
                    break;
                } else if (firstElementChild.nameIs("html")) {
                    break;
                } else {
                    firstElementChild = firstElementChild.nextElementSibling();
                }
            }
            Element firstElementChild2 = firstElementChild.firstElementChild();
            while (true) {
                if (firstElementChild2 == null) {
                    firstElementChild2 = firstElementChild.appendElement("body");
                    break;
                } else if (firstElementChild2.nameIs("body") || firstElementChild2.nameIs("frameset")) {
                    break;
                } else {
                    firstElementChild2 = firstElementChild2.nextElementSibling();
                }
            }
            arrayList.add(firstElementChild2);
        }
        this.state = HtmlTreeBuilderState.InBody;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x004d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0147 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x014c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean resetInsertionMode() {
        /*
            Method dump skipped, instructions count: 484
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.resetInsertionMode():boolean");
    }

    public final Tag tagFor(Token.StartTag startTag) {
        return this.tagSet.valueOf(startTag.tagName.value(), startTag.normalName, "http://www.w3.org/1999/xhtml", this.settings.preserveTagCase);
    }

    public final String toString() {
        return "TreeBuilder{currentToken=" + this.currentToken + ", state=" + this.state + ", currentElement=" + currentElement() + '}';
    }

    public final boolean onStack(String str) {
        return getFromStack(str) != null;
    }

    public final void generateImpliedEndTags(String str) {
        while (StringUtil.inSorted(currentElement().tag.normalName, TagSearchEndTags)) {
            if (str != null && currentElementIs(str)) {
                return;
            } else {
                pop();
            }
        }
    }

    public final void error(String str, Object... objArr) {
        ParseErrorList parseErrorList = this.parser.errors;
        if (parseErrorList.canAddError()) {
            parseErrorList.add(new ParseError(this.reader, str, objArr));
        }
    }
}
