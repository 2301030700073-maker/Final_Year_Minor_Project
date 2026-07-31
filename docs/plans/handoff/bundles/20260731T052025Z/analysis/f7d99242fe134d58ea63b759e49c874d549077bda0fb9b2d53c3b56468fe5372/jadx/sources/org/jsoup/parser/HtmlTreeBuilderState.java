package org.jsoup.parser;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.Functions;
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
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HtmlTreeBuilderState {
    public static final /* synthetic */ HtmlTreeBuilderState[] $VALUES;
    public static final AnonymousClass22 AfterAfterBody;
    public static final AnonymousClass23 AfterAfterFrameset;
    public static final AnonymousClass19 AfterBody;
    public static final AnonymousClass21 AfterFrameset;
    public static final AnonymousClass6 AfterHead;
    public static final AnonymousClass3 BeforeHead;
    public static final AnonymousClass2 BeforeHtml;
    public static final AnonymousClass24 ForeignContent;
    public static final AnonymousClass7 InBody;
    public static final AnonymousClass11 InCaption;
    public static final AnonymousClass15 InCell;
    public static final AnonymousClass12 InColumnGroup;
    public static final AnonymousClass20 InFrameset;
    public static final AnonymousClass4 InHead;
    public static final AnonymousClass5 InHeadNoscript;
    public static final AnonymousClass14 InRow;
    public static final AnonymousClass16 InSelect;
    public static final AnonymousClass17 InSelectInTable;
    public static final AnonymousClass9 InTable;
    public static final AnonymousClass13 InTableBody;
    public static final AnonymousClass10 InTableText;
    public static final AnonymousClass18 InTemplate;
    public static final AnonymousClass1 Initial;
    public static final AnonymousClass8 Text;
    public static final String nullString;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$16, reason: invalid class name */
    public enum AnonymousClass16 extends HtmlTreeBuilderState {
        public AnonymousClass16() {
            super("InSelect", 15);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x0062, code lost:
        
            if (r0.equals("optgroup") == false) goto L29;
         */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean process(org.jsoup.parser.Token r13, org.jsoup.parser.HtmlTreeBuilder r14) {
            /*
                Method dump skipped, instructions count: 380
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass16.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$18, reason: invalid class name */
    public enum AnonymousClass18 extends HtmlTreeBuilderState {
        public AnonymousClass18() {
            super("InTemplate", 17);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(token.type);
            AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.InBody;
            if (ordinal != 0) {
                AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.InHead;
                if (ordinal == 1) {
                    String str = ((Token.StartTag) token).normalName;
                    if (StringUtil.inSorted(str, Constants.InTemplateToHead)) {
                        anonymousClass4.process(token, htmlTreeBuilder);
                        return true;
                    }
                    if (StringUtil.inSorted(str, Constants.InTemplateToTable)) {
                        htmlTreeBuilder.popTemplateMode();
                        AnonymousClass9 anonymousClass9 = HtmlTreeBuilderState.InTable;
                        htmlTreeBuilder.pushTemplateMode(anonymousClass9);
                        htmlTreeBuilder.state = anonymousClass9;
                        return htmlTreeBuilder.process(token);
                    }
                    if (str.equals("col")) {
                        htmlTreeBuilder.popTemplateMode();
                        AnonymousClass12 anonymousClass12 = HtmlTreeBuilderState.InColumnGroup;
                        htmlTreeBuilder.pushTemplateMode(anonymousClass12);
                        htmlTreeBuilder.state = anonymousClass12;
                        return htmlTreeBuilder.process(token);
                    }
                    if (str.equals("tr")) {
                        htmlTreeBuilder.popTemplateMode();
                        AnonymousClass13 anonymousClass13 = HtmlTreeBuilderState.InTableBody;
                        htmlTreeBuilder.pushTemplateMode(anonymousClass13);
                        htmlTreeBuilder.state = anonymousClass13;
                        return htmlTreeBuilder.process(token);
                    }
                    if (!str.equals("td") && !str.equals("th")) {
                        htmlTreeBuilder.popTemplateMode();
                        htmlTreeBuilder.pushTemplateMode(anonymousClass7);
                        htmlTreeBuilder.state = anonymousClass7;
                        return htmlTreeBuilder.process(token);
                    }
                    htmlTreeBuilder.popTemplateMode();
                    AnonymousClass14 anonymousClass14 = HtmlTreeBuilderState.InRow;
                    htmlTreeBuilder.pushTemplateMode(anonymousClass14);
                    htmlTreeBuilder.state = anonymousClass14;
                    return htmlTreeBuilder.process(token);
                }
                if (ordinal == 2) {
                    if (((Token.EndTag) token).normalName.equals("template")) {
                        anonymousClass4.process(token, htmlTreeBuilder);
                        return true;
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (ordinal != 3 && ordinal != 4) {
                    if (ordinal != 6) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unexpected state: ".concat(Sink$CC.stringValueOf$4(token.type)));
                        return false;
                    }
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
                }
            }
            anonymousClass7.process(token, htmlTreeBuilder);
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$4, reason: invalid class name */
    public enum AnonymousClass4 extends HtmlTreeBuilderState {
        public AnonymousClass4() {
            super("InHead", 3);
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (HtmlTreeBuilderState.access$100(token)) {
                htmlTreeBuilder.insertCharacterNode((Token.Character) token);
                return true;
            }
            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(token.type);
            if (ordinal == 0) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        htmlTreeBuilder.processEndTag("head");
                        return htmlTreeBuilder.process(token);
                    }
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                String str = ((Token.EndTag) token).normalName;
                if (str.equals("head")) {
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = HtmlTreeBuilderState.AfterHead;
                    return true;
                }
                if (StringUtil.inSorted(str, Constants.InHeadEnd)) {
                    htmlTreeBuilder.processEndTag("head");
                    return htmlTreeBuilder.process(token);
                }
                if (!str.equals("template")) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.onStack(str)) {
                    htmlTreeBuilder.error(this);
                    return true;
                }
                htmlTreeBuilder.generateImpliedEndTags(true);
                if (!htmlTreeBuilder.currentElementIs(str)) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose(str);
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.popTemplateMode();
                htmlTreeBuilder.resetInsertionMode();
                return true;
            }
            Token.StartTag startTag = (Token.StartTag) token;
            String str2 = startTag.normalName;
            if (str2.equals("html")) {
                return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
            }
            if (StringUtil.inSorted(str2, Constants.InHeadEmpty)) {
                Element insertEmptyElementFor = htmlTreeBuilder.insertEmptyElementFor(startTag);
                if (str2.equals("base") && insertEmptyElementFor.hasAttr("href") && !htmlTreeBuilder.baseUriSetFromDoc) {
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
            if (str2.equals("meta")) {
                htmlTreeBuilder.insertEmptyElementFor(startTag);
                return true;
            }
            boolean equals = str2.equals("title");
            AnonymousClass8 anonymousClass8 = HtmlTreeBuilderState.Text;
            if (equals) {
                htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                htmlTreeBuilder.originalState = htmlTreeBuilder.state;
                htmlTreeBuilder.state = anonymousClass8;
                htmlTreeBuilder.insertElementFor(startTag);
                return true;
            }
            if (StringUtil.inSorted(str2, Constants.InHeadRaw)) {
                HtmlTreeBuilderState.access$300(startTag, htmlTreeBuilder);
                return true;
            }
            if (str2.equals("noscript")) {
                htmlTreeBuilder.insertElementFor(startTag);
                htmlTreeBuilder.state = HtmlTreeBuilderState.InHeadNoscript;
                return true;
            }
            if (str2.equals("script")) {
                htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                htmlTreeBuilder.originalState = htmlTreeBuilder.state;
                htmlTreeBuilder.state = anonymousClass8;
                htmlTreeBuilder.insertElementFor(startTag);
                return true;
            }
            if (str2.equals("head")) {
                htmlTreeBuilder.error(this);
                return false;
            }
            if (!str2.equals("template")) {
                htmlTreeBuilder.processEndTag("head");
                return htmlTreeBuilder.process(token);
            }
            htmlTreeBuilder.insertElementFor(startTag);
            htmlTreeBuilder.formattingElements.add(null);
            htmlTreeBuilder.framesetOk = false;
            AnonymousClass18 anonymousClass18 = HtmlTreeBuilderState.InTemplate;
            htmlTreeBuilder.state = anonymousClass18;
            htmlTreeBuilder.pushTemplateMode(anonymousClass18);
            return true;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$7, reason: invalid class name */
    public enum AnonymousClass7 extends HtmlTreeBuilderState {
        public AnonymousClass7() {
            super("InBody", 6);
        }

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
        /* JADX WARN: Code restructure failed: missing block: B:156:0x0261, code lost:
        
            return true;
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:157:0x0244 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:171:0x01f7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:66:0x01fc  */
        /* JADX WARN: Removed duplicated region for block: B:714:0x0af2  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0256  */
        @Override // org.jsoup.parser.HtmlTreeBuilderState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean process(org.jsoup.parser.Token r31, org.jsoup.parser.HtmlTreeBuilder r32) {
            /*
                Method dump skipped, instructions count: 3556
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass7.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.jsoup.parser.HtmlTreeBuilderState$9, reason: invalid class name */
    public enum AnonymousClass9 extends HtmlTreeBuilderState {
        public AnonymousClass9() {
            super("InTable", 8);
        }

        public final void anythingElse$8(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            htmlTreeBuilder.error(this);
            htmlTreeBuilder.fosterInserts = true;
            HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
            htmlTreeBuilder.fosterInserts = false;
        }

        @Override // org.jsoup.parser.HtmlTreeBuilderState
        public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
            if (token.type == 5 && StringUtil.inSorted(htmlTreeBuilder.currentElement().tag.normalName, Constants.InTableFoster)) {
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
            boolean isStartTag = token.isStartTag();
            AnonymousClass4 anonymousClass4 = HtmlTreeBuilderState.InHead;
            if (!isStartTag) {
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
                String str = ((Token.EndTag) token).normalName;
                if (str.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope(str)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.popStackToClose("table");
                    htmlTreeBuilder.resetInsertionMode();
                    return true;
                }
                if (StringUtil.inSorted(str, Constants.InTableEndErr)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (str.equals("template")) {
                    anonymousClass4.process(token, htmlTreeBuilder);
                    return true;
                }
                anythingElse$8(token, htmlTreeBuilder);
                return true;
            }
            Token.StartTag startTag = (Token.StartTag) token;
            String str2 = startTag.normalName;
            if (str2.equals("caption")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.formattingElements.add(null);
                htmlTreeBuilder.insertElementFor(startTag);
                htmlTreeBuilder.state = HtmlTreeBuilderState.InCaption;
                return true;
            }
            if (str2.equals("colgroup")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insertElementFor(startTag);
                htmlTreeBuilder.state = HtmlTreeBuilderState.InColumnGroup;
                return true;
            }
            if (str2.equals("col")) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.processStartTag("colgroup");
                return htmlTreeBuilder.process(token);
            }
            if (StringUtil.inSorted(str2, Constants.InTableToBody)) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.insertElementFor(startTag);
                htmlTreeBuilder.state = HtmlTreeBuilderState.InTableBody;
                return true;
            }
            if (StringUtil.inSorted(str2, Constants.InTableAddBody)) {
                htmlTreeBuilder.clearStackToTableContext();
                htmlTreeBuilder.processStartTag("tbody");
                return htmlTreeBuilder.process(token);
            }
            if (str2.equals("table")) {
                htmlTreeBuilder.error(this);
                if (htmlTreeBuilder.inTableScope(str2)) {
                    htmlTreeBuilder.popStackToClose(str2);
                    if (htmlTreeBuilder.resetInsertionMode()) {
                        return htmlTreeBuilder.process(token);
                    }
                    htmlTreeBuilder.insertElementFor(startTag);
                    return true;
                }
            } else {
                if (StringUtil.inSorted(str2, Constants.InTableToHead)) {
                    return anonymousClass4.process(token, htmlTreeBuilder);
                }
                if (str2.equals("input")) {
                    Attributes attributes = startTag.attributes;
                    if (attributes == null || !attributes.get("type").equalsIgnoreCase("hidden")) {
                        anythingElse$8(token, htmlTreeBuilder);
                        return true;
                    }
                    htmlTreeBuilder.insertEmptyElementFor(startTag);
                    return true;
                }
                if (!str2.equals("form")) {
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
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.parser.HtmlTreeBuilderState$1] */
    /* JADX WARN: Type inference failed for: r10v0, types: [org.jsoup.parser.HtmlTreeBuilderState$11] */
    /* JADX WARN: Type inference failed for: r11v0, types: [org.jsoup.parser.HtmlTreeBuilderState$12] */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.jsoup.parser.HtmlTreeBuilderState$13] */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.jsoup.parser.HtmlTreeBuilderState$14] */
    /* JADX WARN: Type inference failed for: r14v0, types: [org.jsoup.parser.HtmlTreeBuilderState$15] */
    /* JADX WARN: Type inference failed for: r16v0, types: [org.jsoup.parser.HtmlTreeBuilderState$17] */
    /* JADX WARN: Type inference failed for: r18v0, types: [org.jsoup.parser.HtmlTreeBuilderState$19] */
    /* JADX WARN: Type inference failed for: r19v0, types: [org.jsoup.parser.HtmlTreeBuilderState$20] */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.jsoup.parser.HtmlTreeBuilderState$2] */
    /* JADX WARN: Type inference failed for: r20v0, types: [org.jsoup.parser.HtmlTreeBuilderState$21] */
    /* JADX WARN: Type inference failed for: r21v0, types: [org.jsoup.parser.HtmlTreeBuilderState$22] */
    /* JADX WARN: Type inference failed for: r22v0, types: [org.jsoup.parser.HtmlTreeBuilderState$23] */
    /* JADX WARN: Type inference failed for: r23v0, types: [org.jsoup.parser.HtmlTreeBuilderState$24] */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.jsoup.parser.HtmlTreeBuilderState$3] */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.jsoup.parser.HtmlTreeBuilderState$5] */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.jsoup.parser.HtmlTreeBuilderState$6] */
    /* JADX WARN: Type inference failed for: r7v0, types: [org.jsoup.parser.HtmlTreeBuilderState$8] */
    /* JADX WARN: Type inference failed for: r9v0, types: [org.jsoup.parser.HtmlTreeBuilderState$10] */
    static {
        ?? r0 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.1
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.access$100(token)) {
                    return true;
                }
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                boolean isDoctype = token.isDoctype();
                AnonymousClass2 anonymousClass2 = HtmlTreeBuilderState.BeforeHtml;
                if (!isDoctype) {
                    htmlTreeBuilder.doc.quirksMode = 2;
                    htmlTreeBuilder.state = anonymousClass2;
                    return htmlTreeBuilder.process(token);
                }
                Token.Doctype doctype = (Token.Doctype) token;
                ParseSettings parseSettings = htmlTreeBuilder.settings;
                String sb = doctype.name.toString();
                parseSettings.getClass();
                String trim = sb.trim();
                if (!parseSettings.preserveTagCase) {
                    trim = Functions.lowerCase(trim);
                }
                String sb2 = doctype.publicIdentifier.toString();
                String sb3 = doctype.systemIdentifier.toString();
                DocumentType documentType = new DocumentType(trim);
                documentType.attr("name", trim);
                documentType.attr("publicId", sb2);
                documentType.attr("systemId", sb3);
                if (documentType.has("publicId")) {
                    documentType.attr("pubSysKey", "PUBLIC");
                } else if (documentType.has("systemId")) {
                    documentType.attr("pubSysKey", "SYSTEM");
                }
                String str = doctype.pubSysKey;
                if (str != null) {
                    documentType.attr("pubSysKey", str);
                }
                htmlTreeBuilder.doc.appendChild(documentType);
                if (doctype.forceQuirks || !documentType.attr("name").equals("html") || documentType.attr("publicId").equalsIgnoreCase("HTML")) {
                    htmlTreeBuilder.doc.quirksMode = 2;
                }
                htmlTreeBuilder.state = anonymousClass2;
                return true;
            }
        };
        Initial = r0;
        ?? r1 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.2
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
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
                    return true;
                }
                boolean isStartTag = token.isStartTag();
                AnonymousClass3 anonymousClass3 = HtmlTreeBuilderState.BeforeHead;
                if (isStartTag) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.normalName.equals("html")) {
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = anonymousClass3;
                        return true;
                    }
                }
                if (token.isEndTag() && StringUtil.inSorted(((Token.EndTag) token).normalName, Constants.BeforeHtmlToHead)) {
                    htmlTreeBuilder.processStartTag("html");
                    htmlTreeBuilder.state = anonymousClass3;
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.processStartTag("html");
                htmlTreeBuilder.state = anonymousClass3;
                return htmlTreeBuilder.process(token);
            }
        };
        BeforeHtml = r1;
        ?? r2 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.3
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
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
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isStartTag()) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (startTag.normalName.equals("head")) {
                        htmlTreeBuilder.headElement = htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InHead;
                        return true;
                    }
                }
                if (token.isEndTag() && StringUtil.inSorted(((Token.EndTag) token).normalName, Constants.BeforeHtmlToHead)) {
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
        BeforeHead = r2;
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        InHead = anonymousClass4;
        ?? r4 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.5
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                    return true;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                boolean isEndTag = token.isEndTag();
                AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.InHead;
                if (isEndTag && ((Token.EndTag) token).normalName.equals("noscript")) {
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = anonymousClass42;
                    return true;
                }
                if (HtmlTreeBuilderState.access$100(token) || token.isComment() || (token.isStartTag() && StringUtil.inSorted(((Token.StartTag) token).normalName, Constants.InHeadNoScriptHead))) {
                    return anonymousClass42.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName.equals("br")) {
                    htmlTreeBuilder.error(this);
                    Token.Character character = new Token.Character(5);
                    character.data = token.toString();
                    htmlTreeBuilder.insertCharacterNode(character);
                    return true;
                }
                if ((token.isStartTag() && StringUtil.inSorted(((Token.StartTag) token).normalName, Constants.InHeadNoscriptIgnore)) || token.isEndTag()) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.error(this);
                Token.Character character2 = new Token.Character(5);
                character2.data = token.toString();
                htmlTreeBuilder.insertCharacterNode(character2);
                return true;
            }
        };
        InHeadNoscript = r4;
        ?? r5 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.6
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
                } else if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                } else if (token.isDoctype()) {
                    htmlTreeBuilder.error(this);
                } else {
                    boolean isStartTag = token.isStartTag();
                    AnonymousClass4 anonymousClass42 = HtmlTreeBuilderState.InHead;
                    if (isStartTag) {
                        Token.StartTag startTag = (Token.StartTag) token;
                        String str = startTag.normalName;
                        boolean equals = str.equals("html");
                        AnonymousClass7 anonymousClass7 = HtmlTreeBuilderState.InBody;
                        if (equals) {
                            return anonymousClass7.process(token, htmlTreeBuilder);
                        }
                        if (str.equals("body")) {
                            htmlTreeBuilder.insertElementFor(startTag);
                            htmlTreeBuilder.framesetOk = false;
                            htmlTreeBuilder.state = anonymousClass7;
                        } else if (str.equals("frameset")) {
                            htmlTreeBuilder.insertElementFor(startTag);
                            htmlTreeBuilder.state = HtmlTreeBuilderState.InFrameset;
                        } else if (StringUtil.inSorted(str, Constants.InBodyStartToHead)) {
                            htmlTreeBuilder.error(this);
                            Element element = htmlTreeBuilder.headElement;
                            htmlTreeBuilder.stack.add(element);
                            anonymousClass42.process(token, htmlTreeBuilder);
                            htmlTreeBuilder.removeFromStack(element);
                        } else {
                            if (str.equals("head")) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            htmlTreeBuilder.processStartTag("body");
                            htmlTreeBuilder.framesetOk = true;
                            htmlTreeBuilder.process(token);
                        }
                    } else if (token.isEndTag()) {
                        String str2 = ((Token.EndTag) token).normalName;
                        if (StringUtil.inSorted(str2, Constants.AfterHeadBody)) {
                            htmlTreeBuilder.processStartTag("body");
                            htmlTreeBuilder.framesetOk = true;
                            htmlTreeBuilder.process(token);
                        } else {
                            if (!str2.equals("template")) {
                                htmlTreeBuilder.error(this);
                                return false;
                            }
                            anonymousClass42.process(token, htmlTreeBuilder);
                        }
                    } else {
                        htmlTreeBuilder.processStartTag("body");
                        htmlTreeBuilder.framesetOk = true;
                        htmlTreeBuilder.process(token);
                    }
                }
                return true;
            }
        };
        AfterHead = r5;
        AnonymousClass7 anonymousClass7 = new AnonymousClass7();
        InBody = anonymousClass7;
        ?? r7 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.8
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.type == 5) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
                    return true;
                }
                if (token.isEOF()) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = htmlTreeBuilder.originalState;
                    return htmlTreeBuilder.process(token);
                }
                if (!token.isEndTag()) {
                    return true;
                }
                htmlTreeBuilder.pop();
                htmlTreeBuilder.state = htmlTreeBuilder.originalState;
                return true;
            }
        };
        Text = r7;
        AnonymousClass9 anonymousClass9 = new AnonymousClass9();
        InTable = anonymousClass9;
        ?? r9 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.10
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.type == 5) {
                    Token.Character character = (Token.Character) token;
                    if (character.data.equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.pendingTableCharacters.add(character.clone());
                    return true;
                }
                if (htmlTreeBuilder.pendingTableCharacters.size() > 0) {
                    Token token2 = htmlTreeBuilder.currentToken;
                    Iterator it = htmlTreeBuilder.pendingTableCharacters.iterator();
                    while (it.hasNext()) {
                        Token.Character character2 = (Token.Character) it.next();
                        htmlTreeBuilder.currentToken = character2;
                        if (HtmlTreeBuilderState.access$100(character2)) {
                            htmlTreeBuilder.insertCharacterNode(character2);
                        } else {
                            htmlTreeBuilder.error(this);
                            boolean inSorted = StringUtil.inSorted(htmlTreeBuilder.currentElement().tag.normalName, Constants.InTableFoster);
                            AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.InBody;
                            if (inSorted) {
                                htmlTreeBuilder.fosterInserts = true;
                                anonymousClass72.process(character2, htmlTreeBuilder);
                                htmlTreeBuilder.fosterInserts = false;
                            } else {
                                anonymousClass72.process(character2, htmlTreeBuilder);
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
        InTableText = r9;
        ?? r10 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.11
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean isEndTag = token.isEndTag();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.InTable;
                if (isEndTag && ((Token.EndTag) token).normalName.equals("caption")) {
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
                    htmlTreeBuilder.state = anonymousClass92;
                    return true;
                }
                if ((!token.isStartTag() || !StringUtil.inSorted(((Token.StartTag) token).normalName, Constants.InCellCol)) && (!token.isEndTag() || !((Token.EndTag) token).normalName.equals("table"))) {
                    if (!token.isEndTag() || !StringUtil.inSorted(((Token.EndTag) token).normalName, Constants.InCaptionIgnore)) {
                        return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
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
                htmlTreeBuilder.state = anonymousClass92;
                anonymousClass92.process(token, htmlTreeBuilder);
                return true;
            }
        };
        InCaption = r10;
        ?? r11 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.12
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
            /* JADX WARN: Code restructure failed: missing block: B:57:0x0099, code lost:
            
                if (r7.equals("template") == false) goto L40;
             */
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final boolean process(org.jsoup.parser.Token r11, org.jsoup.parser.HtmlTreeBuilder r12) {
                /*
                    r10 = this;
                    boolean r0 = org.jsoup.parser.HtmlTreeBuilderState.access$100(r11)
                    r1 = 1
                    if (r0 == 0) goto Ld
                    org.jsoup.parser.Token$Character r11 = (org.jsoup.parser.Token.Character) r11
                    r12.insertCharacterNode(r11)
                    return r1
                Ld:
                    int r0 = r11.type
                    int r0 = androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3.ordinal(r0)
                    if (r0 == 0) goto Lb3
                    r2 = 0
                    java.lang.String r3 = "template"
                    java.lang.String r4 = "html"
                    r5 = 2
                    org.jsoup.parser.HtmlTreeBuilderState$4 r6 = org.jsoup.parser.HtmlTreeBuilderState.InHead
                    if (r0 == r1) goto L6f
                    if (r0 == r5) goto L3e
                    r2 = 3
                    if (r0 == r2) goto L38
                    r2 = 6
                    if (r0 == r2) goto L2c
                    boolean r10 = r10.anythingElse(r11, r12)
                    return r10
                L2c:
                    boolean r0 = r12.currentElementIs(r4)
                    if (r0 == 0) goto L33
                    return r1
                L33:
                    boolean r10 = r10.anythingElse(r11, r12)
                    return r10
                L38:
                    org.jsoup.parser.Token$Comment r11 = (org.jsoup.parser.Token.Comment) r11
                    r12.insertCommentNode(r11)
                    return r1
                L3e:
                    r0 = r11
                    org.jsoup.parser.Token$EndTag r0 = (org.jsoup.parser.Token.EndTag) r0
                    java.lang.String r0 = r0.normalName
                    r0.getClass()
                    boolean r3 = r0.equals(r3)
                    if (r3 != 0) goto L6b
                    java.lang.String r3 = "colgroup"
                    boolean r3 = r0.equals(r3)
                    if (r3 != 0) goto L59
                    boolean r10 = r10.anythingElse(r11, r12)
                    return r10
                L59:
                    boolean r11 = r12.currentElementIs(r0)
                    if (r11 != 0) goto L63
                    r12.error(r10)
                    return r2
                L63:
                    r12.pop()
                    org.jsoup.parser.HtmlTreeBuilderState$9 r10 = org.jsoup.parser.HtmlTreeBuilderState.InTable
                    r12.state = r10
                    return r1
                L6b:
                    r6.process(r11, r12)
                    return r1
                L6f:
                    r0 = r11
                    org.jsoup.parser.Token$StartTag r0 = (org.jsoup.parser.Token.StartTag) r0
                    java.lang.String r7 = r0.normalName
                    r7.getClass()
                    int r8 = r7.hashCode()
                    r9 = -1
                    switch(r8) {
                        case -1321546630: goto L95;
                        case 98688: goto L8a;
                        case 3213227: goto L81;
                        default: goto L7f;
                    }
                L7f:
                    r2 = r9
                    goto L9c
                L81:
                    boolean r2 = r7.equals(r4)
                    if (r2 != 0) goto L88
                    goto L7f
                L88:
                    r2 = r5
                    goto L9c
                L8a:
                    java.lang.String r2 = "col"
                    boolean r2 = r7.equals(r2)
                    if (r2 != 0) goto L93
                    goto L7f
                L93:
                    r2 = r1
                    goto L9c
                L95:
                    boolean r3 = r7.equals(r3)
                    if (r3 != 0) goto L9c
                    goto L7f
                L9c:
                    switch(r2) {
                        case 0: goto Laf;
                        case 1: goto Lab;
                        case 2: goto La4;
                        default: goto L9f;
                    }
                L9f:
                    boolean r10 = r10.anythingElse(r11, r12)
                    return r10
                La4:
                    org.jsoup.parser.HtmlTreeBuilderState$7 r10 = org.jsoup.parser.HtmlTreeBuilderState.InBody
                    boolean r10 = r10.process(r11, r12)
                    return r10
                Lab:
                    r12.insertEmptyElementFor(r0)
                    return r1
                Laf:
                    r6.process(r11, r12)
                    return r1
                Lb3:
                    r12.error(r10)
                    return r1
                */
                throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.HtmlTreeBuilderState.AnonymousClass12.process(org.jsoup.parser.Token, org.jsoup.parser.HtmlTreeBuilder):boolean");
            }
        };
        InColumnGroup = r11;
        ?? r12 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.13
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
                int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(token.type);
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.InTable;
                if (ordinal == 1) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String str = startTag.normalName;
                    if (str.equals("tr")) {
                        htmlTreeBuilder.clearStackToContext("tbody", "tfoot", "thead", "template");
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InRow;
                        return true;
                    }
                    if (!StringUtil.inSorted(str, Constants.InCellNames)) {
                        return StringUtil.inSorted(str, Constants.InTableBodyExit) ? exitTableBody(token, htmlTreeBuilder) : anonymousClass92.process(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.processStartTag("tr");
                    return htmlTreeBuilder.process(startTag);
                }
                if (ordinal != 2) {
                    return anonymousClass92.process(token, htmlTreeBuilder);
                }
                String str2 = ((Token.EndTag) token).normalName;
                if (!StringUtil.inSorted(str2, Constants.InTableEndIgnore)) {
                    if (str2.equals("table")) {
                        return exitTableBody(token, htmlTreeBuilder);
                    }
                    if (!StringUtil.inSorted(str2, Constants.InTableBodyEndIgnore)) {
                        return anonymousClass92.process(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(str2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                htmlTreeBuilder.clearStackToContext("tbody", "tfoot", "thead", "template");
                htmlTreeBuilder.pop();
                htmlTreeBuilder.state = anonymousClass92;
                return true;
            }
        };
        InTableBody = r12;
        ?? r13 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.14
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean isStartTag = token.isStartTag();
                AnonymousClass9 anonymousClass92 = HtmlTreeBuilderState.InTable;
                AnonymousClass13 anonymousClass13 = HtmlTreeBuilderState.InTableBody;
                if (isStartTag) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    String str = startTag.normalName;
                    if (StringUtil.inSorted(str, Constants.InCellNames)) {
                        htmlTreeBuilder.clearStackToTableRowContext();
                        htmlTreeBuilder.insertElementFor(startTag);
                        htmlTreeBuilder.state = HtmlTreeBuilderState.InCell;
                        htmlTreeBuilder.formattingElements.add(null);
                        return true;
                    }
                    if (!StringUtil.inSorted(str, Constants.InRowMissing)) {
                        return anonymousClass92.process(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.inTableScope("tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = anonymousClass13;
                    return htmlTreeBuilder.process(token);
                }
                if (!token.isEndTag()) {
                    return anonymousClass92.process(token, htmlTreeBuilder);
                }
                String str2 = ((Token.EndTag) token).normalName;
                if (str2.equals("tr")) {
                    if (!htmlTreeBuilder.inTableScope(str2)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = anonymousClass13;
                    return true;
                }
                if (str2.equals("table")) {
                    if (!htmlTreeBuilder.inTableScope("tr")) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.clearStackToTableRowContext();
                    htmlTreeBuilder.pop();
                    htmlTreeBuilder.state = anonymousClass13;
                    return htmlTreeBuilder.process(token);
                }
                if (!StringUtil.inSorted(str2, Constants.InTableToBody)) {
                    if (!StringUtil.inSorted(str2, Constants.InRowIgnore)) {
                        return anonymousClass92.process(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope(str2)) {
                    htmlTreeBuilder.error(this);
                    return false;
                }
                if (!htmlTreeBuilder.inTableScope("tr")) {
                    return false;
                }
                htmlTreeBuilder.clearStackToTableRowContext();
                htmlTreeBuilder.pop();
                htmlTreeBuilder.state = anonymousClass13;
                return htmlTreeBuilder.process(token);
            }
        };
        InRow = r13;
        ?? r14 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.15
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean isEndTag = token.isEndTag();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.InBody;
                if (!isEndTag) {
                    if (!token.isStartTag() || !StringUtil.inSorted(((Token.StartTag) token).normalName, Constants.InCellCol)) {
                        return anonymousClass72.process(token, htmlTreeBuilder);
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
                String str = ((Token.EndTag) token).normalName;
                if (!StringUtil.inSorted(str, Constants.InCellNames)) {
                    if (StringUtil.inSorted(str, Constants.InCellBody)) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    if (!StringUtil.inSorted(str, Constants.InCellTable)) {
                        return anonymousClass72.process(token, htmlTreeBuilder);
                    }
                    if (!htmlTreeBuilder.inTableScope(str)) {
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
                boolean inTableScope = htmlTreeBuilder.inTableScope(str);
                AnonymousClass14 anonymousClass14 = HtmlTreeBuilderState.InRow;
                if (!inTableScope) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.state = anonymousClass14;
                    return false;
                }
                htmlTreeBuilder.generateImpliedEndTags(false);
                if (!htmlTreeBuilder.currentElementIs(str)) {
                    htmlTreeBuilder.error(this);
                }
                htmlTreeBuilder.popStackToClose(str);
                htmlTreeBuilder.clearFormattingElementsToLastMarker();
                htmlTreeBuilder.state = anonymousClass14;
                return true;
            }
        };
        InCell = r14;
        AnonymousClass16 anonymousClass16 = new AnonymousClass16();
        InSelect = anonymousClass16;
        ?? r16 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.17
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                boolean isStartTag = token.isStartTag();
                String[] strArr = Constants.InSelectTableEnd;
                if (isStartTag && StringUtil.inSorted(((Token.StartTag) token).normalName, strArr)) {
                    htmlTreeBuilder.error(this);
                    htmlTreeBuilder.popStackToClose("select");
                    htmlTreeBuilder.resetInsertionMode();
                    return htmlTreeBuilder.process(token);
                }
                if (token.isEndTag()) {
                    Token.EndTag endTag = (Token.EndTag) token;
                    if (StringUtil.inSorted(endTag.normalName, strArr)) {
                        htmlTreeBuilder.error(this);
                        if (!htmlTreeBuilder.inTableScope(endTag.normalName)) {
                            return false;
                        }
                        htmlTreeBuilder.popStackToClose("select");
                        htmlTreeBuilder.resetInsertionMode();
                        return htmlTreeBuilder.process(token);
                    }
                }
                return HtmlTreeBuilderState.InSelect.process(token, htmlTreeBuilder);
            }
        };
        InSelectInTable = r16;
        AnonymousClass18 anonymousClass18 = new AnonymousClass18();
        InTemplate = anonymousClass18;
        ?? r18 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.19
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Element fromStack = htmlTreeBuilder.getFromStack("html");
                boolean access$100 = HtmlTreeBuilderState.access$100(token);
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.InBody;
                if (access$100) {
                    if (fromStack != null) {
                        htmlTreeBuilder.insertCharacterToElement((Token.Character) token, fromStack);
                        return true;
                    }
                    anonymousClass72.process(token, htmlTreeBuilder);
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
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html")) {
                    return anonymousClass72.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName.equals("html")) {
                    if (htmlTreeBuilder.fragmentParsing) {
                        htmlTreeBuilder.error(this);
                        return false;
                    }
                    htmlTreeBuilder.state = HtmlTreeBuilderState.AfterAfterBody;
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                if (!htmlTreeBuilder.onStack("body")) {
                    htmlTreeBuilder.stack.add(htmlTreeBuilder.doc.body());
                }
                htmlTreeBuilder.state = anonymousClass72;
                return htmlTreeBuilder.process(token);
            }
        };
        AfterBody = r18;
        ?? r19 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.20
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Token.StartTag startTag;
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
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
                    if (token.isEndTag() && ((Token.EndTag) token).normalName.equals("frameset")) {
                        if (htmlTreeBuilder.currentElementIs("html")) {
                            htmlTreeBuilder.error(this);
                            return false;
                        }
                        htmlTreeBuilder.pop();
                        if (!htmlTreeBuilder.fragmentParsing && !htmlTreeBuilder.currentElementIs("frameset")) {
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
                String str = startTag.normalName;
                str.getClass();
                switch (str) {
                    case "frameset":
                        htmlTreeBuilder.insertElementFor(startTag);
                        break;
                    case "html":
                        break;
                    case "frame":
                        htmlTreeBuilder.insertEmptyElementFor(startTag);
                        break;
                    case "noframes":
                        break;
                    default:
                        htmlTreeBuilder.error(this);
                        break;
                }
                return true;
            }
        };
        InFrameset = r19;
        ?? r20 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.21
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterNode((Token.Character) token);
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
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isEndTag() && ((Token.EndTag) token).normalName.equals("html")) {
                    htmlTreeBuilder.state = HtmlTreeBuilderState.AfterAfterFrameset;
                    return true;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("noframes")) {
                    return HtmlTreeBuilderState.InHead.process(token, htmlTreeBuilder);
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                return false;
            }
        };
        AfterFrameset = r20;
        ?? r21 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.22
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                boolean isDoctype = token.isDoctype();
                AnonymousClass7 anonymousClass72 = HtmlTreeBuilderState.InBody;
                if (isDoctype || (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html"))) {
                    return anonymousClass72.process(token, htmlTreeBuilder);
                }
                if (HtmlTreeBuilderState.access$100(token)) {
                    htmlTreeBuilder.insertCharacterToElement((Token.Character) token, htmlTreeBuilder.doc);
                    return true;
                }
                if (token.isEOF()) {
                    return true;
                }
                htmlTreeBuilder.error(this);
                if (!htmlTreeBuilder.onStack("body")) {
                    htmlTreeBuilder.stack.add(htmlTreeBuilder.doc.body());
                }
                htmlTreeBuilder.state = anonymousClass72;
                return htmlTreeBuilder.process(token);
            }
        };
        AfterAfterBody = r21;
        ?? r22 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.23
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                if (token.isComment()) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (token.isDoctype() || HtmlTreeBuilderState.access$100(token) || (token.isStartTag() && ((Token.StartTag) token).normalName.equals("html"))) {
                    return HtmlTreeBuilderState.InBody.process(token, htmlTreeBuilder);
                }
                if (token.isEOF()) {
                    return true;
                }
                if (token.isStartTag() && ((Token.StartTag) token).normalName.equals("noframes")) {
                    return HtmlTreeBuilderState.InHead.process(token, htmlTreeBuilder);
                }
                htmlTreeBuilder.error(this);
                return false;
            }
        };
        AfterAfterFrameset = r22;
        ?? r23 = new HtmlTreeBuilderState() { // from class: org.jsoup.parser.HtmlTreeBuilderState.24
            @Override // org.jsoup.parser.HtmlTreeBuilderState
            public final boolean process(Token token, HtmlTreeBuilder htmlTreeBuilder) {
                Attributes attributes;
                Attributes attributes2;
                Attributes attributes3;
                Element currentElement;
                int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(token.type);
                if (ordinal == 0) {
                    htmlTreeBuilder.error(this);
                    return true;
                }
                if (ordinal == 1) {
                    Token.StartTag startTag = (Token.StartTag) token;
                    if (StringUtil.in(startTag.normalName, Constants.InForeignToHtml)) {
                        return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                    }
                    if (startTag.normalName.equals("font") && (((attributes = startTag.attributes) != null && attributes.indexOfKeyIgnoreCase("color") != -1) || (((attributes2 = startTag.attributes) != null && attributes2.indexOfKeyIgnoreCase("face") != -1) || ((attributes3 = startTag.attributes) != null && attributes3.indexOfKeyIgnoreCase("size") != -1)))) {
                        return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                    }
                    htmlTreeBuilder.insertForeignElementFor(startTag, htmlTreeBuilder.currentElement().tag.namespace);
                    return true;
                }
                if (ordinal == 2) {
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Stack unexpectedly empty");
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
                                String str = element.tag.normalName;
                                for (int size2 = htmlTreeBuilder.stack.size() - 1; size2 >= 0 && !htmlTreeBuilder.pop().nameIs(str); size2--) {
                                }
                            } else {
                                size--;
                                element = (Element) arrayList.get(size);
                            }
                        }
                    } while (!element.tag.namespace.equals("http://www.w3.org/1999/xhtml"));
                    return htmlTreeBuilder.state.process(token, htmlTreeBuilder);
                }
                if (ordinal == 3) {
                    htmlTreeBuilder.insertCommentNode((Token.Comment) token);
                    return true;
                }
                if (ordinal == 4) {
                    Token.Character character = (Token.Character) token;
                    if (character.data.equals(HtmlTreeBuilderState.nullString)) {
                        htmlTreeBuilder.error(this);
                        return true;
                    }
                    if (HtmlTreeBuilderState.access$100(character)) {
                        htmlTreeBuilder.insertCharacterNode(character);
                        return true;
                    }
                    htmlTreeBuilder.insertCharacterNode(character);
                    htmlTreeBuilder.framesetOk = false;
                    return true;
                }
                if (ordinal != 6) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unexpected state: ".concat(Sink$CC.stringValueOf$4(token.type)));
                    return false;
                }
                return true;
            }
        };
        ForeignContent = r23;
        $VALUES = new HtmlTreeBuilderState[]{r0, r1, r2, anonymousClass4, r4, r5, anonymousClass7, r7, anonymousClass9, r9, r10, r11, r12, r13, r14, anonymousClass16, r16, anonymousClass18, r18, r19, r20, r21, r22, r23};
        nullString = String.valueOf((char) 0);
    }

    public static boolean access$100(Token token) {
        if (token.type == 5) {
            return StringUtil.isBlank(((Token.Character) token).data);
        }
        return false;
    }

    public static void access$300(Token.StartTag startTag, HtmlTreeBuilder htmlTreeBuilder) {
        htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
        htmlTreeBuilder.originalState = htmlTreeBuilder.state;
        htmlTreeBuilder.state = Text;
        htmlTreeBuilder.insertElementFor(startTag);
    }

    public static void access$500(Token.StartTag startTag, Element element) {
        Object obj;
        Map map;
        Attributes attributes = startTag.attributes;
        if (attributes != null) {
            attributes.getClass();
            Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes);
            while (anonymousClass1.hasNext()) {
                Attribute attribute = (Attribute) anonymousClass1.next();
                String str = attribute.key;
                Attributes attributes2 = element.attributes();
                if (attributes2.indexOfKey(str) == -1) {
                    Attributes attributes3 = attribute.parent;
                    if (attributes3 == null) {
                        int i = Range.AttributeRange.$r8$clinit;
                    } else if (attributes3.indexOfKey(str) != -1) {
                        if (attributes3.indexOfKey("/jsoup.userdata") != -1) {
                            int indexOfKey = attributes3.indexOfKey("/jsoup.userdata");
                            if (indexOfKey == -1) {
                                HashMap hashMap = new HashMap();
                                attributes3.addObject("/jsoup.userdata", hashMap);
                                map = hashMap;
                            } else {
                                map = (Map) attributes3.vals[indexOfKey];
                            }
                            obj = map.get("jsoup.attrs");
                        } else {
                            obj = null;
                        }
                        Map map2 = (Map) obj;
                        if (map2 == null) {
                            int i2 = Range.AttributeRange.$r8$clinit;
                        } else if (((Range.AttributeRange) map2.get(str)) == null) {
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
