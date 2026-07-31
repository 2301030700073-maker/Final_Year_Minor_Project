package org.jsoup.parser;

import com.fsck.k9.mail.FetchProfile;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import org.jsoup.helper.Validate;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.Functions;
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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HtmlTreeBuilder {
    public String baseUri;
    public boolean baseUriSetFromDoc;
    public Element contextElement;
    public Token currentToken;
    public Document doc;
    public Token.EndTag emptyEnd;
    public FormElement formElement;
    public ArrayList formattingElements;
    public boolean fosterInserts;
    public boolean fragmentParsing;
    public boolean framesetOk;
    public Element headElement;
    public HtmlTreeBuilderState originalState;
    public Parser parser;
    public ArrayList pendingTableCharacters;
    public CharacterReader reader;
    public HashMap seenTags;
    public ParseSettings settings;
    public ArrayList stack;
    public Token.StartTag start;
    public HtmlTreeBuilderState state;
    public ArrayList tmplInsertMode;
    public Tokeniser tokeniser;
    public static final String[] TagsSearchInScope = {"applet", "caption", "html", "marquee", "object", "table", "td", "template", "th"};
    public static final String[] TagSearchInScopeMath = {"annotation-xml", "mi", "mn", "mo", "ms", "mtext"};
    public static final String[] TagSearchInScopeSvg = {"desc", "foreignObject", "title"};
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
    public final Token.EndTag end = new Token.EndTag(3, this);
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
        for (int size = this.stack.size() - 1; size >= 0; size--) {
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
        int i2;
        Attributes attributes = startTag.attributes;
        if (!z) {
            ParseSettings parseSettings = this.settings;
            if (attributes == null) {
                parseSettings.getClass();
            } else if (!parseSettings.preserveAttributeCase) {
                for (int i3 = 0; i3 < attributes.size; i3++) {
                    String str2 = attributes.keys[i3];
                    if (!Attributes.isInternalKey(str2)) {
                        attributes.keys[i3] = Functions.lowerCase(str2);
                    }
                }
            }
        }
        if (attributes != null && (i = attributes.size) != 0) {
            ParseSettings parseSettings2 = this.settings;
            if (i == 0) {
                i2 = 0;
            } else {
                boolean z2 = parseSettings2.preserveAttributeCase;
                int i4 = 0;
                i2 = 0;
                while (i4 < attributes.size) {
                    String str3 = attributes.keys[i4];
                    i4++;
                    int i5 = i4;
                    while (i5 < attributes.size) {
                        if ((z2 && str3.equals(attributes.keys[i5])) || (!z2 && str3.equalsIgnoreCase(attributes.keys[i5]))) {
                            i2++;
                            attributes.remove(i5);
                            i5--;
                        }
                        i5++;
                    }
                }
            }
            if (i2 > 0) {
                Object[] objArr = {startTag.normalName};
                FetchProfile fetchProfile = this.parser.errors;
                if (fetchProfile.canAddError()) {
                    fetchProfile.add(new ParseError(this.reader, "Dropped duplicate attribute(s) in tag [%s]", objArr));
                }
            }
        }
        Tag tagFor = tagFor(startTag.tagName, startTag.normalName, str, z ? ParseSettings.preserveCase : this.settings);
        return tagFor.normalName.equals("form") ? new FormElement(tagFor, attributes) : new Element(tagFor, null, attributes);
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

    /* JADX WARN: Removed duplicated region for block: B:25:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void doInsertElement(org.jsoup.nodes.Element r8) {
        /*
            r7 = this;
            org.jsoup.parser.Tag r0 = r8.tag
            boolean r1 = r0.formList
            if (r1 == 0) goto Lf
            org.jsoup.nodes.FormElement r1 = r7.formElement
            if (r1 == 0) goto Lf
            org.jsoup.select.Elements r1 = r1.linkedEls
            r1.add(r8)
        Lf:
            org.jsoup.parser.Parser r1 = r7.parser
            com.fsck.k9.mail.FetchProfile r1 = r1.errors
            boolean r1 = r1.canAddError()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L53
            java.lang.String r1 = "xmlns"
            boolean r4 = r8.hasAttr(r1)
            if (r4 == 0) goto L53
            java.lang.String r4 = r8.attr(r1)
            java.lang.String r5 = r0.namespace
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L53
            java.lang.String r1 = r8.attr(r1)
            java.lang.String r0 = r0.tagName
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r3] = r1
            r4[r2] = r0
            org.jsoup.parser.Parser r0 = r7.parser
            com.fsck.k9.mail.FetchProfile r0 = r0.errors
            boolean r1 = r0.canAddError()
            if (r1 == 0) goto L53
            org.jsoup.parser.ParseError r1 = new org.jsoup.parser.ParseError
            org.jsoup.parser.CharacterReader r5 = r7.reader
            java.lang.String r6 = "Invalid xmlns attribute [%s] on tag [%s]"
            r1.<init>(r5, r6, r4)
            r0.add(r1)
        L53:
            boolean r0 = r7.fosterInserts
            if (r0 == 0) goto La9
            org.jsoup.nodes.Element r0 = r7.currentElement()
            org.jsoup.parser.Tag r0 = r0.tag
            java.lang.String r0 = r0.normalName
            java.lang.String[] r1 = org.jsoup.parser.HtmlTreeBuilderState.Constants.InTableFoster
            boolean r0 = org.jsoup.internal.StringUtil.inSorted(r0, r1)
            if (r0 == 0) goto La9
            java.lang.String r0 = "table"
            org.jsoup.nodes.Element r0 = r7.getFromStack(r0)
            if (r0 == 0) goto L7d
            org.jsoup.nodes.Node r1 = r0.parentNode
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            if (r1 == 0) goto L77
            r4 = r2
            goto L86
        L77:
            org.jsoup.nodes.Element r1 = r7.aboveOnStack(r0)
        L7b:
            r4 = r3
            goto L86
        L7d:
            java.util.ArrayList r1 = r7.stack
            java.lang.Object r1 = r1.get(r3)
            org.jsoup.nodes.Element r1 = (org.jsoup.nodes.Element) r1
            goto L7b
        L86:
            if (r4 == 0) goto La5
            org.jsoup.helper.Validate.notNull(r0)
            org.jsoup.nodes.Node r1 = r0.parentNode
            org.jsoup.helper.Validate.notNull(r1)
            org.jsoup.nodes.Node r1 = r8.parentNode
            org.jsoup.nodes.Node r4 = r0.parentNode
            if (r1 != r4) goto L99
            r8.remove()
        L99:
            org.jsoup.nodes.Node r1 = r0.parentNode
            int r0 = r0.siblingIndex
            org.jsoup.nodes.Node[] r2 = new org.jsoup.nodes.Node[r2]
            r2[r3] = r8
            r1.addChildren(r0, r2)
            goto Lb0
        La5:
            r1.appendChild(r8)
            goto Lb0
        La9:
            org.jsoup.nodes.Element r0 = r7.currentElement()
            r0.appendChild(r8)
        Lb0:
            java.util.ArrayList r7 = r7.stack
            r7.add(r8)
            return
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
        throw new ValidationException("Should not be reachable");
    }

    public final boolean inSpecificScope(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.stack.size();
        int i = size - 1;
        int i2 = i > 100 ? size - 101 : 0;
        while (i >= i2) {
            Tag tag = ((Element) this.stack.get(i)).tag;
            String str = tag.normalName;
            String str2 = tag.namespace;
            if (!str2.equals("http://www.w3.org/1999/xhtml")) {
                if (strArr2 == TagsSearchInScope) {
                    if (str2.equals("http://www.w3.org/1998/Math/MathML")) {
                        if (StringUtil.inSorted(str, TagSearchInScopeMath)) {
                            break;
                        }
                    }
                    if (str2.equals("http://www.w3.org/2000/svg") && StringUtil.inSorted(str, TagSearchInScopeSvg)) {
                        break;
                    }
                } else {
                    continue;
                }
                i--;
            } else if (!StringUtil.inSorted(str, strArr)) {
                if (StringUtil.inSorted(str, strArr2)) {
                    break;
                }
                if (strArr3 != null && StringUtil.inSorted(str, strArr3)) {
                    break;
                }
                i--;
            } else {
                return true;
            }
        }
        return false;
    }

    public final boolean inTableScope(String str) {
        String[] strArr = this.specificScopeTarget;
        strArr[0] = str;
        return inSpecificScope(strArr, TagSearchTableScope, null);
    }

    public final void initialiseParse(StringReader stringReader, String str, Parser parser) {
        if (str == null) {
            throw new ValidationException("The parameter 'baseUri' must not be null.");
        }
        parser.treeBuilder.getClass();
        Document document = new Document("http://www.w3.org/1999/xhtml", str);
        this.doc = document;
        document.parser = parser;
        this.parser = parser;
        this.settings = parser.settings;
        CharacterReader characterReader = new CharacterReader(stringReader);
        this.reader = characterReader;
        parser.errors.getClass();
        characterReader.newlinePositions = null;
        this.tokeniser = new Tokeniser(this);
        this.stack = new ArrayList(32);
        this.seenTags = new HashMap();
        Token.StartTag startTag = new Token.StartTag(2, this);
        this.start = startTag;
        this.currentToken = startTag;
        this.baseUri = str;
        this.state = HtmlTreeBuilderState.Initial;
        this.originalState = null;
        this.baseUriSetFromDoc = false;
        this.headElement = null;
        this.formElement = null;
        this.contextElement = null;
        this.formattingElements = new ArrayList();
        this.tmplInsertMode = new ArrayList();
        this.pendingTableCharacters = new ArrayList();
        this.emptyEnd = new Token.EndTag(3, this);
        this.framesetOk = true;
        this.fosterInserts = false;
        this.fragmentParsing = false;
    }

    public final void insertCharacterNode(Token.Character character) {
        insertCharacterToElement(character, currentElement());
    }

    public final void insertCharacterToElement(Token.Character character, Element element) {
        String str = element.tag.normalName;
        String str2 = character.data;
        element.appendChild(character instanceof Token.CData ? new CDataNode(str2) : (str.equals("script") || str.equals("style")) ? new DataNode(str2) : new TextNode(str2));
    }

    public final void insertCommentNode(Token.Comment comment) {
        String str = comment.dataS;
        if (str == null) {
            str = comment.data.toString();
        }
        currentElement().appendChild(new Comment(str));
    }

    public final Element insertElementFor(Token.StartTag startTag) {
        Element createElementFor = createElementFor(startTag, "http://www.w3.org/1999/xhtml", false);
        Tag tag = createElementFor.tag;
        doInsertElement(createElementFor);
        if (startTag.selfClosing) {
            if (!Tag.Tags.containsKey(tag.tagName)) {
                tag.selfClosing = true;
            } else if (!tag.empty) {
                Tokeniser tokeniser = this.tokeniser;
                Object[] objArr = {tag.normalName};
                FetchProfile fetchProfile = tokeniser.errors;
                if (fetchProfile.canAddError()) {
                    fetchProfile.add(new ParseError(tokeniser.reader, "Tag [%s] cannot be self closing; not a void tag", objArr));
                }
            }
            this.tokeniser.transition(TokeniserState.Data);
            Tokeniser tokeniser2 = this.tokeniser;
            Token.EndTag endTag = this.emptyEnd;
            endTag.mo1084reset();
            endTag.name(tag.tagName);
            tokeniser2.emit(endTag);
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
            createElementFor.tag.selfClosing = true;
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
        int size = this.stack.size();
        int i = size - 1;
        int i2 = i > 100 ? size - 101 : 0;
        while (i >= i2) {
            if (!StringUtil.inSorted(((Element) this.stack.get(i)).tag.normalName, strArr)) {
                return true;
            }
            i--;
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

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
    
        if ("malignmark".equals(r4.normalName) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        if (r10.type == 5) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
    
        if (r0.equals("application/xhtml+xml") == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00be, code lost:
    
        if (r10.type != 5) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b4, code lost:
    
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
            goto Lc5
        Lb:
            org.jsoup.nodes.Element r0 = r9.currentElement()
            org.jsoup.parser.Tag r2 = r0.tag
            java.lang.String r3 = r2.namespace
            java.lang.String r4 = "http://www.w3.org/1999/xhtml"
            boolean r4 = r4.equals(r3)
            if (r4 == 0) goto L1d
            goto Lc5
        L1d:
            java.lang.String r4 = r2.namespace
            java.lang.String r5 = "http://www.w3.org/1998/Math/MathML"
            boolean r4 = r5.equals(r4)
            r6 = 5
            if (r4 == 0) goto L57
            java.lang.String r4 = r2.normalName
            java.lang.String[] r7 = org.jsoup.parser.HtmlTreeBuilder.TagMathMlTextIntegration
            boolean r4 = org.jsoup.internal.StringUtil.inSorted(r4, r7)
            if (r4 == 0) goto L57
            boolean r4 = r10.isStartTag()
            if (r4 == 0) goto L51
            r4 = r10
            org.jsoup.parser.Token$StartTag r4 = (org.jsoup.parser.Token.StartTag) r4
            java.lang.String r7 = r4.normalName
            java.lang.String r8 = "mglyph"
            boolean r7 = r8.equals(r7)
            if (r7 != 0) goto L51
            java.lang.String r7 = "malignmark"
            java.lang.String r4 = r4.normalName
            boolean r4 = r7.equals(r4)
            if (r4 != 0) goto L51
            goto Lc5
        L51:
            int r4 = r10.type
            if (r4 != r6) goto L57
            goto Lc5
        L57:
            boolean r3 = r5.equals(r3)
            java.lang.String r4 = "annotation-xml"
            if (r3 == 0) goto L79
            boolean r3 = r0.nameIs(r4)
            if (r3 == 0) goto L79
            boolean r3 = r10.isStartTag()
            if (r3 == 0) goto L79
            r3 = r10
            org.jsoup.parser.Token$StartTag r3 = (org.jsoup.parser.Token.StartTag) r3
            java.lang.String r3 = r3.normalName
            java.lang.String r7 = "svg"
            boolean r3 = r7.equals(r3)
            if (r3 == 0) goto L79
            goto Lc5
        L79:
            java.lang.String r3 = r2.namespace
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto La2
            boolean r3 = r0.nameIs(r4)
            if (r3 == 0) goto La2
            java.lang.String r3 = "encoding"
            java.lang.String r0 = r0.attr(r3)
            java.lang.String r0 = org.jsoup.internal.Functions.normalize(r0)
            java.lang.String r3 = "text/html"
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto Lb6
            java.lang.String r3 = "application/xhtml+xml"
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto La2
            goto Lb6
        La2:
            java.lang.String r0 = "http://www.w3.org/2000/svg"
            java.lang.String r3 = r2.namespace
            boolean r0 = r0.equals(r3)
            if (r0 == 0) goto Lc1
            java.lang.String r0 = r2.tagName
            java.lang.String[] r2 = org.jsoup.parser.HtmlTreeBuilder.TagSvgHtmlIntegration
            boolean r0 = org.jsoup.internal.StringUtil.in(r0, r2)
            if (r0 == 0) goto Lc1
        Lb6:
            boolean r0 = r10.isStartTag()
            if (r0 != 0) goto Lc5
            int r0 = r10.type
            if (r0 != r6) goto Lc1
            goto Lc5
        Lc1:
            boolean r1 = r10.isEOF()
        Lc5:
            if (r1 == 0) goto Lca
            org.jsoup.parser.HtmlTreeBuilderState r0 = r9.state
            goto Lcc
        Lca:
            org.jsoup.parser.HtmlTreeBuilderState$24 r0 = org.jsoup.parser.HtmlTreeBuilderState.ForeignContent
        Lcc:
            boolean r9 = r0.process(r10, r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.process(org.jsoup.parser.Token):boolean");
    }

    public final boolean processEndTag(String str) {
        Token token = this.currentToken;
        Token.EndTag endTag = this.end;
        if (token == endTag) {
            Token.EndTag endTag2 = new Token.EndTag(3, this);
            endTag2.name(str);
            return process(endTag2);
        }
        endTag.mo1084reset();
        endTag.name(str);
        return process(endTag);
    }

    public final void processStartTag(String str) {
        Token.StartTag startTag = this.start;
        if (this.currentToken == startTag) {
            Token.StartTag startTag2 = new Token.StartTag(2, this);
            startTag2.name(str);
            process(startTag2);
        } else {
            startTag.mo1084reset();
            startTag.name(str);
            process(startTag);
        }
    }

    public final void pushTemplateMode(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.tmplInsertMode.add(htmlTreeBuilderState);
    }

    public final void reconstructFormattingElements() {
        Element element;
        if (this.stack.size() > 256) {
            return;
        }
        boolean z = true;
        if (this.formattingElements.size() > 0) {
            ArrayList arrayList = this.formattingElements;
            element = (Element) arrayList.get(arrayList.size() - 1);
        } else {
            element = null;
        }
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
            Validate.notNull(element);
            Element element2 = new Element(tagFor(element.nodeName(), element.tag.normalName, "http://www.w3.org/1999/xhtml", this.settings), null, element.attributes().clone());
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0053. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0152 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean resetInsertionMode() {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilder.resetInsertionMode():boolean");
    }

    public final void runParser() {
        Token token;
        while (true) {
            if (this.currentToken.type == 7) {
                ArrayList arrayList = this.stack;
                if (arrayList == null) {
                    break;
                } else if (arrayList.isEmpty()) {
                    this.stack = null;
                } else {
                    pop();
                }
            } else {
                Tokeniser tokeniser = this.tokeniser;
                Token.Character character = tokeniser.charPending;
                while (!tokeniser.isEmitPending) {
                    tokeniser.state.read(tokeniser, tokeniser.reader);
                }
                StringBuilder sb = tokeniser.charsBuilder;
                if (sb.length() != 0) {
                    String sb2 = sb.toString();
                    sb.delete(0, sb.length());
                    character.data = sb2;
                    tokeniser.charsString = null;
                    token = character;
                } else {
                    String str = tokeniser.charsString;
                    if (str != null) {
                        character.data = str;
                        tokeniser.charsString = null;
                        token = character;
                    } else {
                        tokeniser.isEmitPending = false;
                        token = tokeniser.emitPending;
                    }
                }
                this.currentToken = token;
                process(token);
                token.mo1084reset();
            }
        }
        CharacterReader characterReader = this.reader;
        if (characterReader == null) {
            return;
        }
        characterReader.close();
        this.reader = null;
        this.tokeniser = null;
        this.stack = null;
        this.seenTags = null;
    }

    public final Tag tagFor(String str, String str2, String str3, ParseSettings parseSettings) {
        Tag tag = (Tag) this.seenTags.get(str);
        if (tag != null && tag.namespace.equals(str3)) {
            return tag;
        }
        Tag valueOf = Tag.valueOf(str, str2, str3, parseSettings);
        this.seenTags.put(str, valueOf);
        return valueOf;
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
}
