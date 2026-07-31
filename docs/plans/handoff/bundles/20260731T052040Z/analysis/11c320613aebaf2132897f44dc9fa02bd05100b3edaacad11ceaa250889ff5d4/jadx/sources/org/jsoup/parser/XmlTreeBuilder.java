package org.jsoup.parser;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.util.Log;
import java.io.Reader;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import org.jsoup.helper.ValidationException;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.DocumentType;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities;
import org.jsoup.nodes.TextNode;
import org.jsoup.nodes.XmlDeclaration;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class XmlTreeBuilder extends TreeBuilder {
    public final ArrayDeque namespacesStack = new ArrayDeque();

    @Override // org.jsoup.parser.TreeBuilder
    public final int defaultMaxDepth() {
        return Log.LOG_LEVEL_OFF;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final String defaultNamespace() {
        return "http://www.w3.org/XML/1998/namespace";
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final ParseSettings defaultSettings() {
        return ParseSettings.preserveCase;
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final TagSet defaultTagSet() {
        return new TagSet(null, null);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final void initialiseParse(Reader reader, Parser parser) {
        super.initialiseParse(reader, parser);
        Document.OutputSettings outputSettings = this.doc.outputSettings;
        outputSettings.syntax = 2;
        outputSettings.escapeMode = Entities.EscapeMode.xhtml;
        outputSettings.prettyPrint = false;
        ArrayDeque arrayDeque = this.namespacesStack;
        arrayDeque.clear();
        HashMap hashMap = new HashMap();
        hashMap.put("xml", "http://www.w3.org/XML/1998/namespace");
        hashMap.put("", "http://www.w3.org/XML/1998/namespace");
        arrayDeque.push(hashMap);
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final TreeBuilder newInstance() {
        return new XmlTreeBuilder();
    }

    @Override // org.jsoup.parser.TreeBuilder
    public final Element pop() {
        this.namespacesStack.pop();
        return super.pop();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.jsoup.parser.TreeBuilder
    public final boolean process(Token token) {
        String str;
        this.currentToken = token;
        Element element = null;
        switch (SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(token.type)) {
            case 0:
                Token.Doctype doctype = (Token.Doctype) token;
                ParseSettings parseSettings = this.settings;
                String value = doctype.name.value();
                parseSettings.getClass();
                String trim = value.trim();
                if (!parseSettings.preserveTagCase) {
                    trim = QuietAppendable$BaseAppendable.lowerCase(trim);
                }
                DocumentType documentType = new DocumentType(trim, doctype.publicIdentifier.value(), doctype.systemIdentifier.value());
                String str2 = doctype.pubSysKey;
                if (str2 != null) {
                    documentType.attr("pubSysKey", str2);
                }
                if (doctype.sawInternalSubset) {
                    documentType.attributes().put(DocumentType.InternalSubsetKey, doctype.internalSubset.value());
                }
                currentElement().appendChild(documentType);
                return true;
            case 1:
                Token.StartTag startTag = (Token.StartTag) token;
                ArrayDeque arrayDeque = this.namespacesStack;
                HashMap hashMap = new HashMap((Map) arrayDeque.peek());
                arrayDeque.push(hashMap);
                Attributes attributes = startTag.attributes;
                if (attributes != null) {
                    this.settings.normalizeAttributes(attributes);
                    attributes.deduplicate(this.settings);
                    attributes.getClass();
                    Attributes.AnonymousClass1 anonymousClass1 = new Attributes.AnonymousClass1(attributes);
                    while (anonymousClass1.hasNext()) {
                        Attribute attribute = (Attribute) anonymousClass1.next();
                        String str3 = attribute.key;
                        String checkNotNull = Attributes.checkNotNull(attribute.val);
                        if (str3.equals("xmlns")) {
                            hashMap.put("", checkNotNull);
                        } else if (str3.startsWith("xmlns:")) {
                            hashMap.put(str3.substring(6), checkNotNull);
                        }
                    }
                    HashMap hashMap2 = new HashMap();
                    Attributes.AnonymousClass1 anonymousClass12 = new Attributes.AnonymousClass1(attributes);
                    while (anonymousClass12.hasNext()) {
                        String str4 = ((Attribute) anonymousClass12.next()).key;
                        int indexOf = str4.indexOf(58);
                        String substring = indexOf == -1 ? "" : str4.substring(0, indexOf);
                        if (!substring.isEmpty() && !substring.equals("xmlns") && (str = (String) hashMap.get(substring)) != null) {
                            hashMap2.put("jsoup.xmlns-".concat(substring), str);
                        }
                    }
                    for (Map.Entry entry : hashMap2.entrySet()) {
                        attributes.userData(entry.getValue(), (String) entry.getKey());
                    }
                }
                int i = this.parser.maxDepth;
                if (i != Integer.MAX_VALUE) {
                    while (this.stack.size() >= i) {
                        pop();
                    }
                }
                String value2 = startTag.tagName.value();
                String str5 = (String) hashMap.get("");
                int indexOf2 = value2.indexOf(58);
                if (indexOf2 > 0) {
                    String substring2 = value2.substring(0, indexOf2);
                    if (hashMap.containsKey(substring2)) {
                        str5 = (String) hashMap.get(substring2);
                    }
                }
                Tag valueOf = this.tagSet.valueOf(value2, startTag.normalName, str5, this.settings.preserveTagCase);
                Element element2 = new Element(valueOf, null, attributes);
                currentElement().appendChild(element2);
                this.stack.add(element2);
                if (startTag.selfClosing) {
                    valueOf.options |= 32;
                    pop();
                    return true;
                }
                if (valueOf.isEmpty()) {
                    pop();
                    return true;
                }
                TokeniserState textState = valueOf.textState();
                if (textState != null) {
                    this.tokeniser.transition(textState);
                }
                return true;
            case 2:
                ParseSettings parseSettings2 = this.settings;
                String value3 = ((Token.EndTag) token).tagName.value();
                parseSettings2.getClass();
                String trim2 = value3.trim();
                if (!parseSettings2.preserveTagCase) {
                    trim2 = QuietAppendable$BaseAppendable.lowerCase(trim2);
                }
                int size = this.stack.size();
                int i2 = size + (-1) >= 256 ? size - 257 : 0;
                int size2 = this.stack.size() - 1;
                while (true) {
                    if (size2 >= i2) {
                        Element element3 = (Element) this.stack.get(size2);
                        if (element3.nodeName().equals(trim2)) {
                            element = element3;
                        } else {
                            size2--;
                        }
                    }
                }
                if (element != null) {
                    for (int size3 = this.stack.size() - 1; size3 >= 0 && pop() != element; size3--) {
                    }
                }
                return true;
            case 3:
                currentElement().appendChild(new Comment(((Token.Comment) token).data.value()));
                return true;
            case 4:
                Token.Character character = (Token.Character) token;
                String value4 = character.data.value();
                currentElement().appendChild(character instanceof Token.CData ? new CDataNode(value4) : currentElement().tag.is(256) ? new DataNode(value4) : new TextNode(value4));
                return true;
            case 5:
                Token.XmlDecl xmlDecl = (Token.XmlDecl) token;
                XmlDeclaration xmlDeclaration = new XmlDeclaration(xmlDecl.tagName.value(), xmlDecl.isDeclaration);
                if (xmlDecl.attributes != null) {
                    xmlDeclaration.attributes().addAll(xmlDecl.attributes);
                }
                currentElement().appendChild(xmlDeclaration);
                return true;
            case 6:
                return true;
            default:
                throw new ValidationException("Unexpected token type: ".concat(RecordTag.stringValueOf(token.type)));
        }
    }
}
