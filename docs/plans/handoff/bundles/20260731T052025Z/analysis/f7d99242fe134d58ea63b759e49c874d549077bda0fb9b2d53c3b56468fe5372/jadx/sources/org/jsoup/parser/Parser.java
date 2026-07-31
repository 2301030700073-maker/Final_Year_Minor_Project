package org.jsoup.parser;

import com.fsck.k9.mail.FetchProfile;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.jsoup.helper.Validate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.FormElement;
import org.jsoup.nodes.Node;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Parser implements Cloneable {
    public HtmlTreeBuilder treeBuilder;
    public ParseSettings settings = ParseSettings.htmlDefault;
    public FetchProfile errors = new FetchProfile(0);

    public Parser(HtmlTreeBuilder htmlTreeBuilder) {
        this.treeBuilder = htmlTreeBuilder;
    }

    public final Parser clone() {
        Parser parser = new Parser();
        this.treeBuilder.getClass();
        parser.treeBuilder = new HtmlTreeBuilder();
        this.errors.getClass();
        parser.errors = new FetchProfile(0);
        ParseSettings parseSettings = this.settings;
        parser.settings = new ParseSettings(parseSettings.preserveTagCase, parseSettings.preserveAttributeCase);
        return parser;
    }

    public final List parseFragmentInput(String str, Element element, String str2) {
        List list;
        StringReader stringReader = new StringReader(str);
        HtmlTreeBuilder htmlTreeBuilder = this.treeBuilder;
        htmlTreeBuilder.initialiseParse(stringReader, str2, this);
        htmlTreeBuilder.state = HtmlTreeBuilderState.Initial;
        htmlTreeBuilder.fragmentParsing = true;
        if (element != null) {
            String str3 = element.tag.normalName;
            htmlTreeBuilder.contextElement = new Element(htmlTreeBuilder.tagFor(str3, str3, "http://www.w3.org/1999/xhtml", htmlTreeBuilder.settings), htmlTreeBuilder.baseUri, null);
            if (element.ownerDocument() != null) {
                htmlTreeBuilder.doc.quirksMode = element.ownerDocument().quirksMode;
            }
            str3.getClass();
            switch (str3) {
                case "template":
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.Data);
                    htmlTreeBuilder.pushTemplateMode(HtmlTreeBuilderState.InTemplate);
                    break;
                case "iframe":
                case "xmp":
                case "style":
                case "noframes":
                case "noembed":
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.Rawtext);
                    break;
                case "textarea":
                case "title":
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.Rcdata);
                    break;
                case "script":
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.ScriptData);
                    break;
                case "plaintext":
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.PLAINTEXT);
                    break;
                default:
                    htmlTreeBuilder.tokeniser.transition(TokeniserState.Data);
                    break;
            }
            htmlTreeBuilder.doc.appendChild(htmlTreeBuilder.contextElement);
            htmlTreeBuilder.stack.add(htmlTreeBuilder.contextElement);
            htmlTreeBuilder.resetInsertionMode();
            while (true) {
                if (element != null) {
                    if (element instanceof FormElement) {
                        htmlTreeBuilder.formElement = (FormElement) element;
                    } else {
                        element = (Element) element.parentNode;
                    }
                }
            }
        }
        htmlTreeBuilder.runParser();
        Element element2 = htmlTreeBuilder.contextElement;
        if (element2 == null) {
            return htmlTreeBuilder.doc.childNodes();
        }
        Node node = element2.parentNode;
        if (node == null) {
            list = Collections.EMPTY_LIST;
        } else {
            List<Node> ensureChildNodes = node.ensureChildNodes();
            ArrayList arrayList = new ArrayList(ensureChildNodes.size() - 1);
            for (Node node2 : ensureChildNodes) {
                if (node2 != element2) {
                    arrayList.add(node2);
                }
            }
            list = arrayList;
        }
        if (!list.isEmpty()) {
            Element element3 = htmlTreeBuilder.contextElement;
            element3.getClass();
            int size = element3.childNodes.size();
            Validate.isTrue("Insert position out of bounds.", size >= 0);
            element3.addChildren(size, (Node[]) new ArrayList(list).toArray(new Node[0]));
        }
        return htmlTreeBuilder.contextElement.childNodes();
    }
}
