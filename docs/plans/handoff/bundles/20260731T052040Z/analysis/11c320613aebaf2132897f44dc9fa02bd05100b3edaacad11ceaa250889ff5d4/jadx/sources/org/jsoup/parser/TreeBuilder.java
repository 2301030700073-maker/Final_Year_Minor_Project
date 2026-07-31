package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TreeBuilder {
    public String baseUri;
    public Token currentToken;
    public Document doc;
    public final Token.EndTag end = new Token.EndTag(3, this);
    public Parser parser;
    public CharacterReader reader;
    public ParseSettings settings;
    public ArrayList stack;
    public Token.StartTag start;
    public TagSet tagSet;
    public Tokeniser tokeniser;

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

    public int defaultMaxDepth() {
        return 512;
    }

    public String defaultNamespace() {
        return "http://www.w3.org/1999/xhtml";
    }

    public abstract ParseSettings defaultSettings();

    public TagSet defaultTagSet() {
        return new TagSet(TagSet.HtmlTagSet, null);
    }

    public final void error(String str, Object... objArr) {
        ParseErrorList parseErrorList = this.parser.errors;
        if (parseErrorList.canAddError()) {
            parseErrorList.add(new ParseError(this.reader, str, objArr));
        }
    }

    public void initialiseParse(Reader reader, Parser parser) {
        Document document = new Document(parser.treeBuilder.defaultNamespace());
        this.doc = document;
        document.parser = parser;
        this.parser = parser;
        this.settings = parser.settings;
        CharacterReader characterReader = new CharacterReader(reader);
        this.reader = characterReader;
        ParseErrorList parseErrorList = parser.errors;
        boolean z = parseErrorList.getMaxSize() > 0;
        if (z && characterReader.newlinePositions == null) {
            characterReader.newlinePositions = new ArrayList(25);
            characterReader.scanBufferForNewlines();
        } else if (!z) {
            characterReader.newlinePositions = null;
        }
        if (parseErrorList.getMaxSize() > 0) {
            parseErrorList.clear();
        }
        this.tokeniser = new Tokeniser(this);
        this.stack = new ArrayList(32);
        this.tagSet = parser.tagSet();
        Token.StartTag startTag = new Token.StartTag(2, this);
        this.start = startTag;
        this.currentToken = startTag;
        this.baseUri = "";
    }

    public abstract TreeBuilder newInstance();

    public Element pop() {
        return (Element) this.stack.remove(this.stack.size() - 1);
    }

    public abstract boolean process(Token token);

    public final boolean processEndTag(String str) {
        Token token = this.currentToken;
        Token.EndTag endTag = this.end;
        if (token == endTag) {
            Token.EndTag endTag2 = new Token.EndTag(3, this);
            endTag2.name(str);
            return process(endTag2);
        }
        endTag.mo741reset();
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
            startTag.mo741reset();
            startTag.name(str);
            process(startTag);
        }
    }

    public final void runParser() {
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
                boolean hasData = character.data.hasData();
                Token token = character;
                if (!hasData) {
                    tokeniser.isEmitPending = false;
                    token = tokeniser.emitPending;
                }
                this.currentToken = token;
                process(token);
                token.mo741reset();
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
    }

    public final Tag tagFor(Token.StartTag startTag) {
        return this.tagSet.valueOf(startTag.tagName.value(), startTag.normalName, defaultNamespace(), this.settings.preserveTagCase);
    }
}
