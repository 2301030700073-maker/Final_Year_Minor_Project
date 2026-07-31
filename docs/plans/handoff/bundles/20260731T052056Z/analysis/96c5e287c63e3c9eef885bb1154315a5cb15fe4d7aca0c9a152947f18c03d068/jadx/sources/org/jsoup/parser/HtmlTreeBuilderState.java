package org.jsoup.parser;

import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Range;
import org.jsoup.parser.Token;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class HtmlTreeBuilderState {
    private static final /* synthetic */ HtmlTreeBuilderState[] $VALUES;
    public static final HtmlTreeBuilderState AfterAfterBody;
    public static final HtmlTreeBuilderState AfterAfterFrameset;
    public static final HtmlTreeBuilderState AfterBody;
    public static final HtmlTreeBuilderState AfterFrameset;
    public static final HtmlTreeBuilderState AfterHead;
    public static final HtmlTreeBuilderState BeforeHead;
    public static final HtmlTreeBuilderState BeforeHtml;
    public static final HtmlTreeBuilderState ForeignContent;
    public static final HtmlTreeBuilderState InBody;
    public static final HtmlTreeBuilderState InCaption;
    public static final HtmlTreeBuilderState InCell;
    public static final HtmlTreeBuilderState InColumnGroup;
    public static final HtmlTreeBuilderState InFrameset;
    public static final HtmlTreeBuilderState InHead;
    public static final HtmlTreeBuilderState InHeadNoscript;
    public static final HtmlTreeBuilderState InRow;
    public static final HtmlTreeBuilderState InSelect;
    public static final HtmlTreeBuilderState InSelectInTable;
    public static final HtmlTreeBuilderState InTable;
    public static final HtmlTreeBuilderState InTableBody;
    public static final HtmlTreeBuilderState InTableText;
    public static final HtmlTreeBuilderState InTemplate;
    public static final HtmlTreeBuilderState Initial;
    public static final HtmlTreeBuilderState Text;
    private static final String nullString;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$25, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass25 {
        public static final /* synthetic */ int[] $SwitchMap$org$jsoup$parser$Token$TokenType;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            $SwitchMap$org$jsoup$parser$Token$TokenType = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jsoup$parser$Token$TokenType[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Constants {
        public static final String[] InHeadEmpty = {"base", "basefont", "bgsound", "command", "link"};
        public static final String[] InHeadRaw = {"noframes", "style"};
        public static final String[] InHeadEnd = {"body", "br", "html"};
        public static final String[] AfterHeadBody = {"body", "br", "html"};
        public static final String[] BeforeHtmlToHead = {"body", "br", "head", "html"};
        public static final String[] InHeadNoScriptHead = {"basefont", "bgsound", "link", "meta", "noframes", "style"};
        public static final String[] InBodyStartToHead = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", "style", "template", "title"};
        public static final String[] InBodyStartPClosers = {"address", "article", "aside", "blockquote", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", "p", "section", "summary", "ul"};
        public static final String[] Headings = {"h1", "h2", "h3", "h4", "h5", "h6"};
        public static final String[] InBodyStartLiBreakers = {"address", "div", "p"};
        public static final String[] DdDt = {"dd", "dt"};
        public static final String[] InBodyStartApplets = {"applet", "marquee", "object"};
        public static final String[] InBodyStartMedia = {"param", "source", "track"};
        public static final String[] InBodyStartDrop = {"caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InBodyEndClosers = {"address", "article", "aside", "blockquote", "button", "center", "details", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] InBodyEndOtherErrors = {"body", "dd", "dt", "html", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InBodyEndAdoptionFormatters = {"a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"};
        public static final String[] InTableToBody = {"tbody", "tfoot", "thead"};
        public static final String[] InTableAddBody = {"td", "th", "tr"};
        public static final String[] InTableToHead = {"script", "style", "template"};
        public static final String[] InCellNames = {"td", "th"};
        public static final String[] InCellBody = {"body", "caption", "col", "colgroup", "html"};
        public static final String[] InCellTable = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InCellCol = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableEndErr = {"body", "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableFoster = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InTableBodyExit = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] InTableBodyEndIgnore = {"body", "caption", "col", "colgroup", "html", "td", "th", "tr"};
        public static final String[] InRowMissing = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] InRowIgnore = {"body", "caption", "col", "colgroup", "html", "td", "th"};
        public static final String[] InSelectEnd = {"input", "keygen", "textarea"};
        public static final String[] InSelectTableEnd = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTableEndIgnore = {"tbody", "tfoot", "thead"};
        public static final String[] InHeadNoscriptIgnore = {"head", "noscript"};
        public static final String[] InCaptionIgnore = {"body", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] InTemplateToHead = {"base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "template", "title"};
        public static final String[] InTemplateToTable = {"caption", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] InForeignToHtml = {"b", "big", "blockquote", "body", "br", "center", "code", "dd", "div", "dl", "dt", "em", "embed", "h1", "h2", "h3", "h4", "h5", "h6", "head", "hr", "i", "img", "li", "listing", "menu", "meta", "nobr", "ol", "p", "pre", "ruby", "s", "small", "span", "strike", "strong", "sub", "sup", "table", "tt", "u", "ul", "var"};
    }

    static {
        HtmlTreeBuilderState htmlTreeBuilderState = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (!token.isDoctype()) {
                    htmlTreeBuilder.doc.quirksMode = Document.QuirksMode.quirks;
                    htmlTreeBuilder.state = HtmlTreeBuilderState.BeforeHtml;
                    return htmlTreeBuilder.process(token);
                }
                Token.Doctype doctype = (Token.Doctype) token;
                ParseSettings parseSettings = htmlTreeBuilder.settings;
                String value = doctype.name.value();
                parseSettings.getClass();
                String trim = value.trim();
                if (!parseSettings.preserveTagCase) {
                    trim = QuietAppendable$BaseAppendable.lowerCase(trim);
                }
                String value2 = doctype.publicIdentifier.value();
                String value3 = doctype.systemIdentifier.value();
                DocumentType documentType = new DocumentType(trim);
                Room.notNull(value2);
                Room.notNull(value3);
                Attributes attributes = documentType.attributes();
                attributes.addObject("name", trim);
                attributes.addObject("publicId", value2);
                attributes.addObject("systemId", value3);
                if (documentType.has("publicId")) {
                    documentType.attributes().addObject("pubSysKey", "PUBLIC");
                } else if (documentType.has("systemId")) {
                    documentType.attributes().addObject("pubSysKey", "SYSTEM");
                }
                String str = doctype.pubSysKey;
                if (str != null) {
                    documentType.ensureAttributes();
                    Document ownerDocument = documentType.ownerDocument();
                    String lowerCase = (ownerDocument != null ? ownerDocument.parser.settings : ParseSettings.htmlDefault).preserveAttributeCase ? "pubSysKey" : QuietAppendable$BaseAppendable.lowerCase("pubSysKey");
                    Attributes attributes2 = documentType.attributes();
                    int indexOfKeyIgnoreCase = attributes2.indexOfKeyIgnoreCase(lowerCase);
                    if (indexOfKeyIgnoreCase != -1) {
                        attributes2.vals[indexOfKeyIgnoreCase] = str;
                        if (!attributes2.keys[indexOfKeyIgnoreCase].equals(lowerCase)) {
                            attributes2.keys[indexOfKeyIgnoreCase] = lowerCase;
                        }
                    } else {
                        attributes2.addObject(lowerCase, str);
                    }
                }
                htmlTreeBuilder.doc.appendChild(documentType);
                if (doctype.forceQuirks || !documentType.attr("name").equals("html") || documentType.attr("publicId").equalsIgnoreCase("HTML")) {
                    htmlTreeBuilder.doc.quirksMode = Document.QuirksMode.quirks;
                }
                htmlTreeBuilder.state = HtmlTreeBuilderState.BeforeHtml;
                return true;
            }
        };
        Initial = htmlTreeBuilderState;
        HtmlTreeBuilderState htmlTreeBuilderState2 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                if (token.isStartTag()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.normalName().equals("html")) {
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.BeforeHead;
                        return true;
                    }
                }
                if (token.isEndTag() && StringUtil.inSorted(((Token.EndTag) token).normalName(), Constants.BeforeHtmlToHead)) {
                    htmlTreeBuilder.processStartTag("html");
                    htmlTreeBuilder.state = HtmlTreeBuilderState.BeforeHead;
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.processStartTag("html");
                htmlTreeBuilder.state = HtmlTreeBuilderState.BeforeHead;
                return htmlTreeBuilder.process(token);
            }
        };
        BeforeHtml = htmlTreeBuilderState2;
        HtmlTreeBuilderState htmlTreeBuilderState3 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isStartTag()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.normalName().equals("head")) {
                        htmlTreeBuilder.headElement = htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InHead;
                        return true;
                    }
                }
                if (token.isEndTag() && StringUtil.inSorted(((Token.EndTag) token).normalName(), Constants.BeforeHtmlToHead)) {
                    htmlTreeBuilder.processStartTag("head");
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.processStartTag("head");
                return htmlTreeBuilder.process(token);
            }
        };
        BeforeHead = htmlTreeBuilderState3;
        HtmlTreeBuilderState htmlTreeBuilderState4 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.4
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                int i = AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType[((Token.TokenType) token.type).ordinal()];
                if (i == 1) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (i == 2) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (i != 3) {
                    if (i != 4) {
                        htmlTreeBuilder.processEndTag("head");
                        return htmlTreeBuilder.process(token);
                    }
                    String normalName = ((Token.EndTag) token).normalName();
                    if (normalName.equals("head")) {
                        htmlTreeBuilder.pop();
                        htmlTreeBuilder.state = HtmlTreeBuilderState.AfterHead;
                        return true;
                    }
                    if (StringUtil.inSorted(normalName, Constants.InHeadEnd)) {
                        htmlTreeBuilder.processEndTag("head");
                        return htmlTreeBuilder.process(token);
                    }
                    if (!normalName.equals("template")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (!htmlTreeBuilder.onStack(normalName)) {
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(true);
                    if (!htmlTreeBuilder.currentElementIs(normalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.popTemplateMode();
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                }
                Token.StartTag startTag = (Token.StartTag) token;
                String normalName2 = startTag.normalName();
                if (normalName2.equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (StringUtil.inSorted(normalName2, Constants.InHeadEmpty)) {
                    Element insertEmptyElementFor = htmlTreeBuilder.insertEmptyElementFor(startTag);
                    if (normalName2.equals("base") && insertEmptyElementFor.hasAttr("href") && !htmlTreeBuilder.baseUriSetFromDoc) {
                        String absUrl = insertEmptyElementFor.absUrl("href");
                        if (absUrl.length() != 0) {
                            htmlTreeBuilder.baseUri = absUrl;
                            htmlTreeBuilder.baseUriSetFromDoc = true;
                            Document document = htmlTreeBuilder.doc;
                            document.getClass();
                            document.doSetBaseUri(absUrl);
                        }
                    }
                    return true;
                }
                if (normalName2.equals("meta")) {
                    htmlTreeBuilder.insertEmptyElementFor(startTag);
                    return true;
                }
                if (normalName2.equals("title")) {
                    HtmlTreeBuilderState.HandleTextState(startTag, htmlTreeBuilder, htmlTreeBuilder.tagFor(startTag).textState());
                    return true;
                }
                if (StringUtil.inSorted(normalName2, Constants.InHeadRaw)) {
                    HtmlTreeBuilderState.HandleTextState(startTag, htmlTreeBuilder, htmlTreeBuilder.tagFor(startTag).textState());
                    return true;
                }
                if (normalName2.equals("noscript")) {
                    htmlTreeBuilder.insertElementFor(startTag);
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InHeadNoscript;
                    return true;
                }
                if (normalName2.equals("script")) {
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                    htmlTreeBuilder.originalState = htmlTreeBuilder.state;
                    htmlTreeBuilder.state = HtmlTreeBuilderState.Text;
                    htmlTreeBuilder.insertElementFor(startTag);
                    return true;
                }
                if (normalName2.equals("head")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!normalName2.equals("template")) {
                    htmlTreeBuilder.processEndTag("head");
                    return htmlTreeBuilder.process(token);
                }
                htmlTreeBuilder.insertElementFor(startTag);
                htmlTreeBuilder.formattingElements.add(null);
                htmlTreeBuilder.framesetOk = false;
                HtmlTreeBuilderState htmlTreeBuilderState5 = HtmlTreeBuilderState.InTemplate;
                htmlTreeBuilder.state = htmlTreeBuilderState5;
                htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState5);
                return true;
            }
        };
        InHead = htmlTreeBuilderState4;
        HtmlTreeBuilderState htmlTreeBuilderState5 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return true;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html")) {
                    HtmlTreeBuilderState htmlTreeBuilderState6 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState6.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("noscript")) {
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InHead;
                    return true;
                }
                if (HtmlTreeBuilderState.isWhitespace(token) || token.isComment() || (token.isStartTag() && StringUtil.inSorted(((Token.StartTag) token).normalName(), Constants.InHeadNoScriptHead))) {
                    HtmlTreeBuilderState htmlTreeBuilderState7 = HtmlTreeBuilderState.InHead;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState7.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("br")) {
                    htmlTreeBuilder.error(this);
                    Token.Character character = new Token.Character();
                    String obj = token.toString();
                    FormBody.Builder builder = character.data;
                    builder.reset();
                    builder.names = obj;
                    htmlTreeBuilder.insertCharacterNode(character, false);
                    return true;
                }
                if ((token.isStartTag() && StringUtil.inSorted(((Token.StartTag) token).normalName(), Constants.InHeadNoscriptIgnore)) || token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.error(this);
                Token.Character character2 = new Token.Character();
                String obj2 = token.toString();
                FormBody.Builder builder2 = character2.data;
                builder2.reset();
                builder2.names = obj2;
                htmlTreeBuilder.insertCharacterNode(character2, false);
                return true;
            }
        };
        InHeadNoscript = htmlTreeBuilderState5;
        HtmlTreeBuilderState htmlTreeBuilderState6 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                } else if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                } else if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                } else if (token.isStartTag()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String normalName = startTag.normalName();
                    if (normalName.equals("html")) {
                        HtmlTreeBuilderState htmlTreeBuilderState7 = HtmlTreeBuilderState.InBody;
                        htmlTreeBuilder.getClass();
                        return htmlTreeBuilderState7.process(token, htmlTreeBuilder);
                    }
                    if (normalName.equals("body")) {
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.framesetOk = false;
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InBody;
                    } else if (normalName.equals("frameset")) {
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InFrameset;
                    } else if (StringUtil.inSorted(normalName, Constants.InBodyStartToHead)) {
                        htmlTreeBuilder.error(this);
                        Element element = htmlTreeBuilder.headElement;
                        htmlTreeBuilder.stack.add(element);
                        HtmlTreeBuilderState.InHead.process(token, htmlTreeBuilder);
                        htmlTreeBuilder.removeFromStack(element);
                    } else {
                        if (normalName.equals("head")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.processStartTag("body");
                        htmlTreeBuilder.framesetOk = true;
                        htmlTreeBuilder.process(token);
                    }
                } else if (token.isEndTag()) {
                    String normalName2 = ((Token.EndTag) token).normalName();
                    if (StringUtil.inSorted(normalName2, Constants.AfterHeadBody)) {
                        htmlTreeBuilder.processStartTag("body");
                        htmlTreeBuilder.framesetOk = true;
                        htmlTreeBuilder.process(token);
                    } else {
                        if (!normalName2.equals("template")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        HtmlTreeBuilderState htmlTreeBuilderState8 = HtmlTreeBuilderState.InHead;
                        htmlTreeBuilder.getClass();
                        htmlTreeBuilderState8.process(token, htmlTreeBuilder);
                    }
                } else {
                    htmlTreeBuilder.processStartTag("body");
                    htmlTreeBuilder.framesetOk = true;
                    htmlTreeBuilder.process(token);
                }
                return true;
            }
        };
        AfterHead = htmlTreeBuilderState6;
        HtmlTreeBuilderState htmlTreeBuilderState7 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.7
            private static final int MaxStackScan = 24;

            public final boolean anyOtherEndTag(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                token.getClass();
                String str = ((Token.EndTag) token).normalName;
                ArrayList arrayList = htmlTreeBuilder.stack;
                if (htmlTreeBuilder.getFromStack(str) == null) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Element element = (Element) arrayList.get(size);
                    if (element.nameIs(str)) {
                        htmlTreeBuilder.generateImpliedEndTags(str);
                        if (!htmlTreeBuilder.currentElementIs(str)) {
                            htmlTreeBuilder.error(this);
                        }
                        htmlTreeBuilder.popStackToClose(str);
                        return true;
                    }
                    if (HtmlTreeBuilder.isSpecial(element)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                }
                return true;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Can't wrap try/catch for region: R(18:66|(2:67|(2:69|(1:72)(1:71))(2:168|169))|73|(16:74|(1:76)(1:167)|(0)(1:(2:81|(3:128|(3:159|160|161)(3:130|131|(2:157|158)(8:133|(1:135)(1:156)|136|(1:138)(1:155)|139|(4:141|(2:142|(2:144|(1:147)(1:146))(2:150|151))|148|149)|152|153))|154)(2:85|86))(1:162))|88|(5:90|(1:92)(1:106)|93|(4:96|(3:102|103|104)(3:98|99|100)|101|94)|105)|107|(1:109)(1:127)|110|(2:113|111)|114|115|116|117|118|(2:120|121)(2:123|124)|122)|87|88|(0)|107|(0)(0)|110|(1:111)|114|115|116|117|118|(0)(0)|122) */
            /* JADX WARN: Code restructure failed: missing block: B:126:0x03ab, code lost:
            
                r29.formattingElements.add(r1);
             */
            /* JADX WARN: Code restructure failed: missing block: B:164:0x0261, code lost:
            
                r16 = r1;
                r17 = r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:165:0x030e, code lost:
            
                r29.error(r27);
             */
            /* JADX WARN: Code restructure failed: missing block: B:173:0x022c, code lost:
            
                return r25;
             */
            /* JADX WARN: Removed duplicated region for block: B:109:0x036f  */
            /* JADX WARN: Removed duplicated region for block: B:113:0x0392 A[LOOP:6: B:111:0x038c->B:113:0x0392, LOOP_END] */
            /* JADX WARN: Removed duplicated region for block: B:120:0x03bc  */
            /* JADX WARN: Removed duplicated region for block: B:123:0x03c8  */
            /* JADX WARN: Removed duplicated region for block: B:127:0x0372  */
            /* JADX WARN: Removed duplicated region for block: B:174:0x020f A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:188:0x01c1 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:49:0x01c6  */
            /* JADX WARN: Removed duplicated region for block: B:569:0x0bab  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0221  */
            /* JADX WARN: Removed duplicated region for block: B:90:0x032e  */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean process(org.jsoup.parser.Token r28, org.jsoup.parser.HtmlTreeBuilder r29) {
                /*
                    Method dump skipped, instructions count: 3758
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass7.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }
        };
        InBody = htmlTreeBuilderState7;
        HtmlTreeBuilderState htmlTreeBuilderState8 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (((Token.TokenType) token.type) == Token.TokenType.Character) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                if (!token.isEOF()) {
                    if (!token.isEndTag()) {
                        return true;
                    }
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = htmlTreeBuilder.originalState;
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.pop();
                HtmlTreeBuilderState htmlTreeBuilderState9 = htmlTreeBuilder.originalState;
                htmlTreeBuilder.state = htmlTreeBuilderState9;
                if (htmlTreeBuilderState9 == HtmlTreeBuilderState.Text) {
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InBody;
                }
                return htmlTreeBuilder.process(token);
            }
        };
        Text = htmlTreeBuilderState8;
        HtmlTreeBuilderState htmlTreeBuilderState9 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.9
            public final void anythingElse$8(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.fosterInserts = true;
                HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                htmlTreeBuilder.fosterInserts = false;
            }

            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (((Token.TokenType) token.type) == Token.TokenType.Character && StringUtil.inSorted(htmlTreeBuilder.currentElement().tag.normalName, Constants.InTableFoster)) {
                    htmlTreeBuilder.pendingTableCharacters.clear();
                    htmlTreeBuilder.originalState = htmlTreeBuilder.state;
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTableText;
                    return htmlTreeBuilder.process(token);
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!token.isStartTag()) {
                    if (!token.isEndTag()) {
                        if (!token.isEOF()) {
                            anythingElse$8(token, htmlTreeBuilder);
                            return true;
                        }
                        if (htmlTreeBuilder.currentElementIs("html")) {
                            htmlTreeBuilder.error(this);
                        }
                        return true;
                    }
                    String normalName = ((Token.EndTag) token).normalName();
                    if (normalName.equals("table")) {
                        if (!htmlTreeBuilder.inTableScope(normalName)) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose("table");
                        htmlTreeBuilder.resetInsertionMode();
                        return true;
                    }
                    if (StringUtil.inSorted(normalName, Constants.InTableEndErr)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (!normalName.equals("template")) {
                        anythingElse$8(token, htmlTreeBuilder);
                        return true;
                    }
                    HtmlTreeBuilderState htmlTreeBuilderState10 = HtmlTreeBuilderState.InHead;
                    htmlTreeBuilder.getClass();
                    htmlTreeBuilderState10.process(token, htmlTreeBuilder);
                    return true;
                }
                Token.StartTag startTag = (Token.StartTag) token;
                String normalName2 = startTag.normalName();
                if (normalName2.equals("caption")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.formattingElements.add(null);
                    htmlTreeBuilder.insertElementFor(startTag);
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InCaption;
                    return true;
                }
                if (normalName2.equals("colgroup")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertElementFor(startTag);
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InColumnGroup;
                    return true;
                }
                if (normalName2.equals("col")) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.processStartTag("colgroup");
                    return htmlTreeBuilder.process(token);
                }
                if (StringUtil.inSorted(normalName2, Constants.InTableToBody)) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.insertElementFor(startTag);
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                    return true;
                }
                if (StringUtil.inSorted(normalName2, Constants.InTableAddBody)) {
                    htmlTreeBuilder.clearStackToTableContext();
                    htmlTreeBuilder.processStartTag("tbody");
                    return htmlTreeBuilder.process(token);
                }
                if (normalName2.equals("table")) {
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.popStackToClose(normalName2);
                        if (htmlTreeBuilder.resetInsertionMode()) {
                            return htmlTreeBuilder.process(token);
                        }
                        htmlTreeBuilder.insertElementFor(startTag);
                        return true;
                    }
                } else {
                    if (StringUtil.inSorted(normalName2, Constants.InTableToHead)) {
                        HtmlTreeBuilderState htmlTreeBuilderState11 = HtmlTreeBuilderState.InHead;
                        htmlTreeBuilder.getClass();
                        return htmlTreeBuilderState11.process(token, htmlTreeBuilder);
                    }
                    if (normalName2.equals("input")) {
                        Attributes attributes = startTag.attributes;
                        if (attributes == null || !attributes.get("type").equalsIgnoreCase("hidden")) {
                            anythingElse$8(token, htmlTreeBuilder);
                            return true;
                        }
                        htmlTreeBuilder.insertEmptyElementFor(startTag);
                        return true;
                    }
                    if (!normalName2.equals("form")) {
                        anythingElse$8(token, htmlTreeBuilder);
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    if (htmlTreeBuilder.formElement == null && !htmlTreeBuilder.onStack("template")) {
                        htmlTreeBuilder.insertFormElement(startTag, false, false);
                        return true;
                    }
                }
                return false;
            }
        };
        InTable = htmlTreeBuilderState9;
        HtmlTreeBuilderState htmlTreeBuilderState10 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (((Token.TokenType) token.type) == Token.TokenType.Character) {
                    htmlTreeBuilder.getClass();
                    htmlTreeBuilder.pendingTableCharacters.add(new Token.Character((Token.Character) token));
                    return true;
                }
                if (htmlTreeBuilder.pendingTableCharacters.size() > 0) {
                    Token token2 = htmlTreeBuilder.currentToken;
                    Iterator it = htmlTreeBuilder.pendingTableCharacters.iterator();
                    while (it.hasNext()) {
                        Token.Character character = (Token.Character) it.next();
                        htmlTreeBuilder.currentToken = character;
                        if (HtmlTreeBuilderState.isWhitespace(character)) {
                            htmlTreeBuilder.insertCharacterNode(character, false);
                        } else {
                            htmlTreeBuilder.error(this);
                            if (StringUtil.inSorted(htmlTreeBuilder.currentElement().tag.normalName, Constants.InTableFoster)) {
                                htmlTreeBuilder.fosterInserts = true;
                                HtmlTreeBuilderState.InBody.process(character, htmlTreeBuilder);
                                htmlTreeBuilder.fosterInserts = false;
                            } else {
                                HtmlTreeBuilderState.InBody.process(character, htmlTreeBuilder);
                            }
                        }
                    }
                    htmlTreeBuilder.currentToken = token2;
                    htmlTreeBuilder.pendingTableCharacters.clear();
                }
                htmlTreeBuilder.state = htmlTreeBuilder.originalState;
                return htmlTreeBuilder.process(token);
            }
        };
        InTableText = htmlTreeBuilderState10;
        HtmlTreeBuilderState htmlTreeBuilderState11 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("caption")) {
                    if (!htmlTreeBuilder.inTableScope("caption")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(false);
                    if (!htmlTreeBuilder.currentElementIs("caption")) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose("caption");
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTable;
                    return true;
                }
                if ((!token.isStartTag() || !StringUtil.inSorted(((Token.StartTag) token).normalName(), Constants.InCellCol)) && (!token.isEndTag() || !((Token.EndTag) token).normalName().equals("table"))) {
                    if (token.isEndTag() && StringUtil.inSorted(((Token.EndTag) token).normalName(), Constants.InCaptionIgnore)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    HtmlTreeBuilderState htmlTreeBuilderState12 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState12.process(token, htmlTreeBuilder);
                }
                if (!htmlTreeBuilder.inTableScope("caption")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags(false);
                if (!htmlTreeBuilder.currentElementIs("caption")) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose("caption");
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                HtmlTreeBuilderState htmlTreeBuilderState13 = HtmlTreeBuilderState.InTable;
                htmlTreeBuilder.state = htmlTreeBuilderState13;
                htmlTreeBuilderState13.process(token, htmlTreeBuilder);
                return true;
            }
        };
        InCaption = htmlTreeBuilderState11;
        HtmlTreeBuilderState htmlTreeBuilderState12 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
            public final boolean anythingElse(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!htmlTreeBuilder.currentElementIs("colgroup")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.state = HtmlTreeBuilderState.InTable;
                htmlTreeBuilder.process(token);
                return true;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code restructure failed: missing block: B:56:0x00a1, code lost:
            
                if (r4.equals("template") == false) goto L39;
             */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean process(org.jsoup.parser.Token r10, org.jsoup.parser.HtmlTreeBuilder r11) {
                /*
                    r9 = this;
                    boolean r0 = org.jsoup.parser.HtmlTreeBuilderState.isWhitespace(r10)
                    r1 = 0
                    r2 = 1
                    if (r0 == 0) goto Le
                    org.jsoup.parser.Token$Character r10 = (org.jsoup.parser.Token.Character) r10
                    r11.insertCharacterNode(r10, r1)
                    return r2
                Le:
                    int[] r0 = org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType
                    java.lang.Object r3 = r10.type
                    org.jsoup.parser.Token$TokenType r3 = (org.jsoup.parser.Token.TokenType) r3
                    int r3 = r3.ordinal()
                    r0 = r0[r3]
                    if (r0 == r2) goto Lc7
                    r3 = 2
                    if (r0 == r3) goto Lc3
                    r4 = 3
                    java.lang.String r5 = "template"
                    java.lang.String r6 = "html"
                    if (r0 == r4) goto L75
                    r3 = 4
                    if (r0 == r3) goto L3d
                    r1 = 6
                    if (r0 == r1) goto L31
                    boolean r9 = r9.anythingElse(r10, r11)
                    return r9
                L31:
                    boolean r0 = r11.currentElementIs(r6)
                    if (r0 == 0) goto L38
                    return r2
                L38:
                    boolean r9 = r9.anythingElse(r10, r11)
                    return r9
                L3d:
                    r0 = r10
                    org.jsoup.parser.Token$EndTag r0 = (org.jsoup.parser.Token.EndTag) r0
                    java.lang.String r0 = r0.normalName()
                    r0.getClass()
                    boolean r3 = r0.equals(r5)
                    if (r3 != 0) goto L6c
                    java.lang.String r3 = "colgroup"
                    boolean r3 = r0.equals(r3)
                    if (r3 != 0) goto L5a
                    boolean r9 = r9.anythingElse(r10, r11)
                    return r9
                L5a:
                    boolean r10 = r11.currentElementIs(r0)
                    if (r10 != 0) goto L64
                    r11.error(r9)
                    return r1
                L64:
                    r11.pop()
                    org.jsoup.parser.HtmlTreeBuilderState r9 = org.jsoup.parser.HtmlTreeBuilderState.InTable
                    r11.state = r9
                    return r2
                L6c:
                    org.jsoup.parser.HtmlTreeBuilderState r9 = org.jsoup.parser.HtmlTreeBuilderState.InHead
                    r11.getClass()
                    r9.process(r10, r11)
                    return r2
                L75:
                    r0 = r10
                    org.jsoup.parser.Token$StartTag r0 = (org.jsoup.parser.Token.StartTag) r0
                    java.lang.String r4 = r0.normalName()
                    r4.getClass()
                    int r7 = r4.hashCode()
                    r8 = -1
                    switch(r7) {
                        case -1321546630: goto L9d;
                        case 98688: goto L92;
                        case 3213227: goto L89;
                        default: goto L87;
                    }
                L87:
                    r1 = r8
                    goto La4
                L89:
                    boolean r1 = r4.equals(r6)
                    if (r1 != 0) goto L90
                    goto L87
                L90:
                    r1 = r3
                    goto La4
                L92:
                    java.lang.String r1 = "col"
                    boolean r1 = r4.equals(r1)
                    if (r1 != 0) goto L9b
                    goto L87
                L9b:
                    r1 = r2
                    goto La4
                L9d:
                    boolean r3 = r4.equals(r5)
                    if (r3 != 0) goto La4
                    goto L87
                La4:
                    switch(r1) {
                        case 0: goto Lba;
                        case 1: goto Lb6;
                        case 2: goto Lac;
                        default: goto La7;
                    }
                La7:
                    boolean r9 = r9.anythingElse(r10, r11)
                    return r9
                Lac:
                    org.jsoup.parser.HtmlTreeBuilderState r9 = org.jsoup.parser.HtmlTreeBuilderState.InBody
                    r11.getClass()
                    boolean r9 = r9.process(r10, r11)
                    return r9
                Lb6:
                    r11.insertEmptyElementFor(r0)
                    return r2
                Lba:
                    org.jsoup.parser.HtmlTreeBuilderState r9 = org.jsoup.parser.HtmlTreeBuilderState.InHead
                    r11.getClass()
                    r9.process(r10, r11)
                    return r2
                Lc3:
                    r11.error(r9)
                    return r2
                Lc7:
                    org.jsoup.parser.Token$Comment r10 = (org.jsoup.parser.Token.Comment) r10
                    r11.insertCommentNode(r10)
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass12.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }
        };
        InColumnGroup = htmlTreeBuilderState12;
        HtmlTreeBuilderState htmlTreeBuilderState13 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
            public final boolean exitTableBody(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!htmlTreeBuilder.inTableScope("tbody") && !htmlTreeBuilder.inTableScope("thead") && !htmlTreeBuilder.inScope("tfoot")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.clearStackToContext("tbody", "tfoot", "thead", "template");
                htmlTreeBuilder.processEndTag(htmlTreeBuilder.currentElement().tag.normalName);
                return htmlTreeBuilder.process(token);
            }

            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                int i = AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType[((Token.TokenType) token.type).ordinal()];
                if (i == 3) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String normalName = startTag.normalName();
                    if (normalName.equals("tr")) {
                        htmlTreeBuilder.clearStackToContext("tbody", "tfoot", "thead", "template");
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InRow;
                        return true;
                    }
                    if (StringUtil.inSorted(normalName, Constants.InCellNames)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.processStartTag("tr");
                        return htmlTreeBuilder.process(startTag);
                    }
                    if (StringUtil.inSorted(normalName, Constants.InTableBodyExit)) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    HtmlTreeBuilderState htmlTreeBuilderState14 = HtmlTreeBuilderState.InTable;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState14.process(token, htmlTreeBuilder);
                }
                if (i != 4) {
                    HtmlTreeBuilderState htmlTreeBuilderState15 = HtmlTreeBuilderState.InTable;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState15.process(token, htmlTreeBuilder);
                }
                String normalName2 = ((Token.EndTag) token).normalName();
                if (StringUtil.inSorted(normalName2, Constants.InTableEndIgnore)) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToContext("tbody", "tfoot", "thead", "template");
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTable;
                    return true;
                }
                if (normalName2.equals("table")) {
                    return exitTableBody(token, htmlTreeBuilder);
                }
                if (StringUtil.inSorted(normalName2, Constants.InTableBodyEndIgnore)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                HtmlTreeBuilderState htmlTreeBuilderState16 = HtmlTreeBuilderState.InTable;
                htmlTreeBuilder.getClass();
                return htmlTreeBuilderState16.process(token, htmlTreeBuilder);
            }
        };
        InTableBody = htmlTreeBuilderState13;
        HtmlTreeBuilderState htmlTreeBuilderState14 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isStartTag()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String normalName = startTag.normalName();
                    if (StringUtil.inSorted(normalName, Constants.InCellNames)) {
                        htmlTreeBuilder.clearStackToTableRowContext();
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InCell;
                        htmlTreeBuilder.formattingElements.add(null);
                        return true;
                    }
                    if (!StringUtil.inSorted(normalName, Constants.InRowMissing)) {
                        HtmlTreeBuilderState htmlTreeBuilderState15 = HtmlTreeBuilderState.InTable;
                        htmlTreeBuilder.getClass();
                        return htmlTreeBuilderState15.process(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.inTableScope("tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                    return htmlTreeBuilder.process(token);
                }
                if (!token.isEndTag()) {
                    HtmlTreeBuilderState htmlTreeBuilderState16 = HtmlTreeBuilderState.InTable;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState16.process(token, htmlTreeBuilder);
                }
                String normalName2 = ((Token.EndTag) token).normalName();
                if (normalName2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(normalName2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                    return true;
                }
                if (normalName2.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope("tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                    return htmlTreeBuilder.process(token);
                }
                if (!StringUtil.inSorted(normalName2, Constants.InTableToBody)) {
                    if (StringUtil.inSorted(normalName2, Constants.InRowIgnore)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    HtmlTreeBuilderState htmlTreeBuilderState17 = HtmlTreeBuilderState.InTable;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState17.process(token, htmlTreeBuilder);
                }
                if (!htmlTreeBuilder.inTableScope(normalName2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope("tr")) {
                    return false;
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.pop();
                htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                return htmlTreeBuilder.process(token);
            }
        };
        InRow = htmlTreeBuilderState14;
        HtmlTreeBuilderState htmlTreeBuilderState15 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (!token.isEndTag()) {
                    if (!token.isStartTag() || !StringUtil.inSorted(((Token.StartTag) token).normalName(), Constants.InCellCol)) {
                        HtmlTreeBuilderState htmlTreeBuilderState16 = HtmlTreeBuilderState.InBody;
                        htmlTreeBuilder.getClass();
                        return htmlTreeBuilderState16.process(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.inTableScope("td") && !htmlTreeBuilder.inTableScope("th")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (htmlTreeBuilder.inTableScope("td")) {
                        htmlTreeBuilder.processEndTag("td");
                    } else {
                        htmlTreeBuilder.processEndTag("th");
                    }
                    return htmlTreeBuilder.process(token);
                }
                String normalName = ((Token.EndTag) token).normalName();
                if (StringUtil.inSorted(normalName, Constants.InCellNames)) {
                    if (!htmlTreeBuilder.inTableScope(normalName)) {
                        htmlTreeBuilder.error(this);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InRow;
                        return false;
                    }
                    htmlTreeBuilder.generateImpliedEndTags(false);
                    if (!htmlTreeBuilder.currentElementIs(normalName)) {
                        htmlTreeBuilder.error(this);
                    }
                    htmlTreeBuilder.popStackToClose(normalName);
                    htmlTreeBuilder.clearFormattingElementsToLastMarker();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.InRow;
                    return true;
                }
                if (StringUtil.inSorted(normalName, Constants.InCellBody)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!StringUtil.inSorted(normalName, Constants.InCellTable)) {
                    HtmlTreeBuilderState htmlTreeBuilderState17 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState17.process(token, htmlTreeBuilder);
                }
                if (!htmlTreeBuilder.inTableScope(normalName)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (htmlTreeBuilder.inTableScope("td")) {
                    htmlTreeBuilder.processEndTag("td");
                } else {
                    htmlTreeBuilder.processEndTag("th");
                }
                return htmlTreeBuilder.process(token);
            }
        };
        InCell = htmlTreeBuilderState15;
        HtmlTreeBuilderState htmlTreeBuilderState16 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.16
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                String normalName;
                switch (AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType[((Token.TokenType) token.type).ordinal()]) {
                    case 1:
                        htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                        return true;
                    case 2:
                        htmlTreeBuilder.error(this);
                        return false;
                    case 3:
                        Token.StartTag startTag = (Token.StartTag) token;
                        String normalName2 = startTag.normalName();
                        if (normalName2.equals("html")) {
                            HtmlTreeBuilderState htmlTreeBuilderState17 = HtmlTreeBuilderState.InBody;
                            htmlTreeBuilder.getClass();
                            return htmlTreeBuilderState17.process(startTag, htmlTreeBuilder);
                        }
                        if (normalName2.equals("option")) {
                            if (htmlTreeBuilder.currentElementIs("option")) {
                                htmlTreeBuilder.processEndTag("option");
                            }
                            htmlTreeBuilder.insertElementFor(startTag);
                        } else {
                            if (!normalName2.equals("optgroup")) {
                                if (normalName2.equals("select")) {
                                    htmlTreeBuilder.error(this);
                                    return htmlTreeBuilder.processEndTag("select");
                                }
                                if (StringUtil.inSorted(normalName2, Constants.InSelectEnd)) {
                                    htmlTreeBuilder.error(this);
                                    if (!htmlTreeBuilder.inSelectScope("select")) {
                                        return false;
                                    }
                                    do {
                                        htmlTreeBuilder.popStackToClose("select");
                                        htmlTreeBuilder.resetInsertionMode();
                                    } while (htmlTreeBuilder.inSelectScope("select"));
                                    return htmlTreeBuilder.process(startTag);
                                }
                                if (!normalName2.equals("script") && !normalName2.equals("template")) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                HtmlTreeBuilderState htmlTreeBuilderState18 = HtmlTreeBuilderState.InHead;
                                htmlTreeBuilder.getClass();
                                return htmlTreeBuilderState18.process(token, htmlTreeBuilder);
                            }
                            if (htmlTreeBuilder.currentElementIs("option")) {
                                htmlTreeBuilder.processEndTag("option");
                            }
                            if (htmlTreeBuilder.currentElementIs("optgroup")) {
                                htmlTreeBuilder.processEndTag("optgroup");
                            }
                            htmlTreeBuilder.insertElementFor(startTag);
                        }
                        return true;
                    case 4:
                        normalName = ((Token.EndTag) token).normalName();
                        normalName.getClass();
                        switch (normalName) {
                            case "template":
                                HtmlTreeBuilderState htmlTreeBuilderState19 = HtmlTreeBuilderState.InHead;
                                htmlTreeBuilder.getClass();
                                return htmlTreeBuilderState19.process(token, htmlTreeBuilder);
                            case "option":
                                if (htmlTreeBuilder.currentElementIs("option")) {
                                    htmlTreeBuilder.pop();
                                } else {
                                    htmlTreeBuilder.error(this);
                                }
                                return true;
                            case "select":
                                if (!htmlTreeBuilder.inSelectScope(normalName)) {
                                    htmlTreeBuilder.error(this);
                                    return false;
                                }
                                htmlTreeBuilder.popStackToClose(normalName);
                                htmlTreeBuilder.resetInsertionMode();
                                return true;
                            case "optgroup":
                                if (htmlTreeBuilder.currentElementIs("option") && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()) != null && htmlTreeBuilder.aboveOnStack(htmlTreeBuilder.currentElement()).nameIs("optgroup")) {
                                    htmlTreeBuilder.processEndTag("option");
                                }
                                if (htmlTreeBuilder.currentElementIs("optgroup")) {
                                    htmlTreeBuilder.pop();
                                } else {
                                    htmlTreeBuilder.error(this);
                                }
                                return true;
                            default:
                                htmlTreeBuilder.error(this);
                                return false;
                        }
                    case 5:
                        htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                        return true;
                    case 6:
                        if (!htmlTreeBuilder.currentElementIs("html")) {
                            htmlTreeBuilder.error(this);
                        }
                        return true;
                    default:
                        htmlTreeBuilder.error(this);
                        return false;
                }
            }
        };
        InSelect = htmlTreeBuilderState16;
        HtmlTreeBuilderState htmlTreeBuilderState17 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean isStartTag = token.isStartTag();
                String[] strArr = Constants.InSelectTableEnd;
                if (isStartTag && StringUtil.inSorted(((Token.StartTag) token).normalName(), strArr)) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.popStackToClose("select");
                    htmlTreeBuilder.resetInsertionMode();
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    Token.EndTag endTag = (Token.EndTag) token;
                    if (StringUtil.inSorted(endTag.normalName(), strArr)) {
                        htmlTreeBuilder.error(this);
                        if (!htmlTreeBuilder.inTableScope(endTag.normalName())) {
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose("select");
                        htmlTreeBuilder.resetInsertionMode();
                        return htmlTreeBuilder.process(token);
                    }
                }
                HtmlTreeBuilderState htmlTreeBuilderState18 = HtmlTreeBuilderState.InSelect;
                htmlTreeBuilder.getClass();
                return htmlTreeBuilderState18.process(token, htmlTreeBuilder);
            }
        };
        InSelectInTable = htmlTreeBuilderState17;
        HtmlTreeBuilderState htmlTreeBuilderState18 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.18
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                switch (AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType[((Token.TokenType) token.type).ordinal()]) {
                    case 1:
                    case 2:
                    case 5:
                        HtmlTreeBuilderState htmlTreeBuilderState19 = HtmlTreeBuilderState.InBody;
                        htmlTreeBuilder.getClass();
                        htmlTreeBuilderState19.process(token, htmlTreeBuilder);
                        return true;
                    case 3:
                        String normalName = ((Token.StartTag) token).normalName();
                        if (StringUtil.inSorted(normalName, Constants.InTemplateToHead)) {
                            HtmlTreeBuilderState htmlTreeBuilderState20 = HtmlTreeBuilderState.InHead;
                            htmlTreeBuilder.getClass();
                            htmlTreeBuilderState20.process(token, htmlTreeBuilder);
                            return true;
                        }
                        if (StringUtil.inSorted(normalName, Constants.InTemplateToTable)) {
                            htmlTreeBuilder.popTemplateMode();
                            HtmlTreeBuilderState htmlTreeBuilderState21 = HtmlTreeBuilderState.InTable;
                            htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState21);
                            htmlTreeBuilder.state = htmlTreeBuilderState21;
                            return htmlTreeBuilder.process(token);
                        }
                        if (normalName.equals("col")) {
                            htmlTreeBuilder.popTemplateMode();
                            HtmlTreeBuilderState htmlTreeBuilderState22 = HtmlTreeBuilderState.InColumnGroup;
                            htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState22);
                            htmlTreeBuilder.state = htmlTreeBuilderState22;
                            return htmlTreeBuilder.process(token);
                        }
                        if (normalName.equals("tr")) {
                            htmlTreeBuilder.popTemplateMode();
                            HtmlTreeBuilderState htmlTreeBuilderState23 = HtmlTreeBuilderState.InTableBody;
                            htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState23);
                            htmlTreeBuilder.state = htmlTreeBuilderState23;
                            return htmlTreeBuilder.process(token);
                        }
                        if (normalName.equals("td") || normalName.equals("th")) {
                            htmlTreeBuilder.popTemplateMode();
                            HtmlTreeBuilderState htmlTreeBuilderState24 = HtmlTreeBuilderState.InRow;
                            htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState24);
                            htmlTreeBuilder.state = htmlTreeBuilderState24;
                            return htmlTreeBuilder.process(token);
                        }
                        htmlTreeBuilder.popTemplateMode();
                        HtmlTreeBuilderState htmlTreeBuilderState25 = HtmlTreeBuilderState.InBody;
                        htmlTreeBuilder.pushTemplateMode(htmlTreeBuilderState25);
                        htmlTreeBuilder.state = htmlTreeBuilderState25;
                        return htmlTreeBuilder.process(token);
                    case 4:
                        if (!((Token.EndTag) token).normalName().equals("template")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        HtmlTreeBuilderState htmlTreeBuilderState26 = HtmlTreeBuilderState.InHead;
                        htmlTreeBuilder.getClass();
                        htmlTreeBuilderState26.process(token, htmlTreeBuilder);
                        return true;
                    case 6:
                        if (htmlTreeBuilder.onStack("template")) {
                            htmlTreeBuilder.error(this);
                            htmlTreeBuilder.popStackToClose("template");
                            htmlTreeBuilder.clearFormattingElementsToLastMarker();
                            htmlTreeBuilder.popTemplateMode();
                            htmlTreeBuilder.resetInsertionMode();
                            if (htmlTreeBuilder.state != HtmlTreeBuilderState.InTemplate && htmlTreeBuilder.tmplInsertMode.size() < 12) {
                                return htmlTreeBuilder.process(token);
                            }
                        }
                        return true;
                    default:
                        Gson$$ExternalSyntheticBUOutline0.m$3("Unexpected state: ", (Token.TokenType) token.type);
                        return false;
                }
            }
        };
        InTemplate = htmlTreeBuilderState18;
        HtmlTreeBuilderState htmlTreeBuilderState19 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Element fromStack = htmlTreeBuilder.getFromStack("html");
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    if (fromStack != null) {
                        htmlTreeBuilder.insertCharacterToElement((Token.Character) token, fromStack);
                        return true;
                    }
                    HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("html")) {
                    htmlTreeBuilder.state = HtmlTreeBuilderState.AfterAfterBody;
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.resetBody();
                return htmlTreeBuilder.process(token);
            }
        };
        AfterBody = htmlTreeBuilderState19;
        HtmlTreeBuilderState htmlTreeBuilderState20 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Token.StartTag startTag;
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!token.isStartTag()) {
                    if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("frameset")) {
                        if (!htmlTreeBuilder.currentElementIs("frameset")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.pop();
                        if (!htmlTreeBuilder.currentElementIs("frameset")) {
                            htmlTreeBuilder.state = HtmlTreeBuilderState.AfterFrameset;
                            return true;
                        }
                    } else {
                        if (!token.isEOF()) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        if (!htmlTreeBuilder.currentElementIs("html")) {
                            htmlTreeBuilder.error(this);
                        }
                    }
                    return true;
                }
                startTag = (Token.StartTag) token;
                String normalName = startTag.normalName();
                normalName.getClass();
                switch (normalName) {
                    case "frameset":
                        htmlTreeBuilder.insertElementFor(startTag);
                        break;
                    case "html":
                        HtmlTreeBuilderState htmlTreeBuilderState21 = HtmlTreeBuilderState.InBody;
                        htmlTreeBuilder.getClass();
                        break;
                    case "frame":
                        htmlTreeBuilder.insertEmptyElementFor(startTag);
                        break;
                    case "noframes":
                        HtmlTreeBuilderState htmlTreeBuilderState22 = HtmlTreeBuilderState.InHead;
                        htmlTreeBuilder.getClass();
                        break;
                    default:
                        htmlTreeBuilder.error(this);
                        break;
                }
                return true;
            }
        };
        InFrameset = htmlTreeBuilderState20;
        HtmlTreeBuilderState htmlTreeBuilderState21 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token, false);
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html")) {
                    HtmlTreeBuilderState htmlTreeBuilderState22 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState22.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName().equals("html")) {
                    htmlTreeBuilder.state = HtmlTreeBuilderState.AfterAfterFrameset;
                    return true;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName().equals("noframes")) {
                    HtmlTreeBuilderState htmlTreeBuilderState23 = HtmlTreeBuilderState.InHead;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState23.process(token, htmlTreeBuilder);
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
        };
        AfterFrameset = htmlTreeBuilderState21;
        HtmlTreeBuilderState htmlTreeBuilderState22 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype() || (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html"))) {
                    HtmlTreeBuilderState htmlTreeBuilderState23 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState23.process(token, htmlTreeBuilder);
                }
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    htmlTreeBuilder.insertCharacterToElement((Token.Character) token, htmlTreeBuilder.doc);
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                htmlTreeBuilder.resetBody();
                return htmlTreeBuilder.process(token);
            }
        };
        AfterAfterBody = htmlTreeBuilderState22;
        HtmlTreeBuilderState htmlTreeBuilderState23 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype() || HtmlTreeBuilderState.isWhitespace(token) || (token.isStartTag() && ((Token.StartTag) token).normalName().equals("html"))) {
                    HtmlTreeBuilderState htmlTreeBuilderState24 = HtmlTreeBuilderState.InBody;
                    htmlTreeBuilder.getClass();
                    return htmlTreeBuilderState24.process(token, htmlTreeBuilder);
                }
                if (token.isEOF()) {
                    return true;
                }
                if (!token.isStartTag() || !((Token.StartTag) token).normalName().equals("noframes")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                HtmlTreeBuilderState htmlTreeBuilderState25 = HtmlTreeBuilderState.InHead;
                htmlTreeBuilder.getClass();
                return htmlTreeBuilderState25.process(token, htmlTreeBuilder);
            }
        };
        AfterAfterFrameset = htmlTreeBuilderState23;
        HtmlTreeBuilderState htmlTreeBuilderState24 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.24
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Attributes attributes;
                Attributes attributes2;
                Attributes attributes3;
                Element currentElement;
                switch (AnonymousClass25.$SwitchMap$org$jsoup$parser$Token$TokenType[((Token.TokenType) token.type).ordinal()]) {
                    case 1:
                        htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                        return true;
                    case 2:
                        htmlTreeBuilder.error(this);
                        return true;
                    case 3:
                        Token.StartTag startTag = (Token.StartTag) token;
                        if (StringUtil.in(startTag.normalName, Constants.InForeignToHtml)) {
                            return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                        }
                        if (startTag.normalName.equals("font") && (((attributes = startTag.attributes) != null && attributes.indexOfKeyIgnoreCase("color") != -1) || (((attributes2 = startTag.attributes) != null && attributes2.indexOfKeyIgnoreCase("face") != -1) || ((attributes3 = startTag.attributes) != null && attributes3.indexOfKeyIgnoreCase("size") != -1)))) {
                            return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                        }
                        String str = htmlTreeBuilder.currentElement().tag.namespace;
                        htmlTreeBuilder.insertForeignElementFor(startTag, str);
                        TokeniserState textState = htmlTreeBuilder.tagSet.valueOf(startTag.tagName.value(), startTag.normalName, str, htmlTreeBuilder.settings.preserveTagCase).textState();
                        if (textState != null) {
                            boolean equals = startTag.normalName.equals("script");
                            Tokeniser tokeniser = htmlTreeBuilder.tokeniser;
                            if (equals) {
                                tokeniser.transition(TokeniserState.ScriptData);
                                return true;
                            }
                            tokeniser.transition(textState);
                        }
                        return true;
                    case 4:
                        Token.EndTag endTag = (Token.EndTag) token;
                        if (endTag.normalName.equals("br") || endTag.normalName.equals("p")) {
                            return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                        }
                        if (endTag.normalName.equals("script") && htmlTreeBuilder.stack.size() != 0 && (currentElement = htmlTreeBuilder.currentElement()) != null) {
                            Tag tag = currentElement.tag;
                            if (tag.normalName.equals("script") && tag.namespace.equals("http://www.w3.org/2000/svg")) {
                                htmlTreeBuilder.pop();
                                return true;
                            }
                        }
                        ArrayList arrayList = htmlTreeBuilder.stack;
                        if (arrayList.isEmpty()) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Stack unexpectedly empty");
                            return false;
                        }
                        int size = arrayList.size() - 1;
                        Element element = (Element) arrayList.get(size);
                        if (!element.nameIs(endTag.normalName)) {
                            htmlTreeBuilder.error(this);
                        }
                        do {
                            if (size != 0) {
                                if (element.nameIs(endTag.normalName)) {
                                    String str2 = element.tag.normalName;
                                    for (int size2 = htmlTreeBuilder.stack.size() - 1; size2 >= 0 && !htmlTreeBuilder.pop().nameIs(str2); size2--) {
                                    }
                                } else {
                                    size--;
                                    element = (Element) arrayList.get(size);
                                }
                            }
                            return true;
                        } while (!element.tag.namespace.equals("http://www.w3.org/1999/xhtml"));
                        return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                    case 5:
                        Token.Character character = (Token.Character) token;
                        if (HtmlTreeBuilderState.isWhitespace(character)) {
                            htmlTreeBuilder.insertCharacterNode(character, false);
                            return true;
                        }
                        htmlTreeBuilder.insertCharacterNode(character, true);
                        htmlTreeBuilder.framesetOk = false;
                        return true;
                    case 6:
                        return true;
                    default:
                        Gson$$ExternalSyntheticBUOutline0.m$3("Unexpected state: ", (Token.TokenType) token.type);
                        return false;
                }
            }
        };
        ForeignContent = htmlTreeBuilderState24;
        $VALUES = new HtmlTreeBuilderState[]{htmlTreeBuilderState, htmlTreeBuilderState2, htmlTreeBuilderState3, htmlTreeBuilderState4, htmlTreeBuilderState5, htmlTreeBuilderState6, htmlTreeBuilderState7, htmlTreeBuilderState8, htmlTreeBuilderState9, htmlTreeBuilderState10, htmlTreeBuilderState11, htmlTreeBuilderState12, htmlTreeBuilderState13, htmlTreeBuilderState14, htmlTreeBuilderState15, htmlTreeBuilderState16, htmlTreeBuilderState17, htmlTreeBuilderState18, htmlTreeBuilderState19, htmlTreeBuilderState20, htmlTreeBuilderState21, htmlTreeBuilderState22, htmlTreeBuilderState23, htmlTreeBuilderState24};
        nullString = String.valueOf((char) 0);
    }

    public static void HandleTextState(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder, TokeniserState tokeniserState) {
        if (tokeniserState != null) {
            htmlTreeBuilder.tokeniser.transition(tokeniserState);
        }
        htmlTreeBuilder.originalState = htmlTreeBuilder.state;
        htmlTreeBuilder.state = Text;
        htmlTreeBuilder.insertElementFor(startTag);
    }

    public static boolean isWhitespace(Token token) {
        if (((Token.TokenType) token.type) == Token.TokenType.Character) {
            return StringUtil.isBlank(((Token.Character) token).data.value());
        }
        return false;
    }

    public static void mergeAttributes(Token.StartTag startTag, Element element) {
        Attributes attributes = startTag.attributes;
        if (attributes != null) {
            attributes.getClass();
            Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes);
            while (anonymousClass1.hasNext()) {
                Attribute attribute = (Attribute) anonymousClass1.next();
                String str = attribute.key;
                Attributes attributes2 = element.attributes();
                if (!attributes2.hasKey(str)) {
                    Attributes attributes3 = attribute.parent;
                    if (attributes3 == null) {
                        int i = Range.AttributeRange.$r8$clinit;
                    } else if (attributes3.hasKey(str)) {
                        Map map = (Map) (!attributes3.hasKey("/jsoup.userdata") ? null : attributes3.userData().get("jsoup.attrs"));
                        if (map == null) {
                            int i2 = Range.AttributeRange.$r8$clinit;
                        } else if (((Range.AttributeRange) map.get(str)) == null) {
                            int i3 = Range.AttributeRange.$r8$clinit;
                        }
                    } else {
                        int i4 = Range.AttributeRange.$r8$clinit;
                    }
                    attributes2.put(str, Attributes.checkNotNull(attribute.val));
                    attribute.parent = attributes2;
                }
            }
        }
    }

    public static HtmlTreeBuilderState valueOf(String str) {
        return (HtmlTreeBuilderState) Enum.valueOf(HtmlTreeBuilderState.class, str);
    }

    public static HtmlTreeBuilderState[] values() {
        return (HtmlTreeBuilderState[]) $VALUES.clone();
    }

    public abstract boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder);
}
