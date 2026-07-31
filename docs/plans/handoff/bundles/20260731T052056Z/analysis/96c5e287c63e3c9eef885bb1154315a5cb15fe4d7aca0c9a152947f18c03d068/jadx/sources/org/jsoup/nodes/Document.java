package org.jsoup.nodes;

import androidx.compose.runtime.Latch;
import java.nio.charset.Charset;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.DataUtil;
import org.jsoup.internal.QuietAppendable$BaseAppendable;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities;
import org.jsoup.parser.HtmlTreeBuilder;
import org.jsoup.parser.Parser;
import org.jsoup.parser.Tag;
import org.jsoup.select.NodeTraversor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Document extends Element {
    public OutputSettings outputSettings;
    public Parser parser;
    public QuirksMode quirksMode;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OutputSettings implements Cloneable {
        public Entities.EscapeMode escapeMode = Entities.EscapeMode.base;
        public Charset charset = DataUtil.UTF_8;
        public final Syntax syntax = Syntax.html;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Syntax {
            private static final /* synthetic */ Syntax[] $VALUES;
            public static final Syntax html;
            public static final Syntax xml;

            static {
                Syntax syntax = new Syntax("html", 0);
                html = syntax;
                Syntax syntax2 = new Syntax("xml", 1);
                xml = syntax2;
                $VALUES = new Syntax[]{syntax, syntax2};
            }

            public static Syntax valueOf(String str) {
                return (Syntax) Enum.valueOf(Syntax.class, str);
            }

            public static Syntax[] values() {
                return (Syntax[]) $VALUES.clone();
            }
        }

        public final OutputSettings clone() {
            try {
                OutputSettings outputSettings = (OutputSettings) super.clone();
                String name = this.charset.name();
                outputSettings.getClass();
                outputSettings.charset = Charset.forName(name);
                outputSettings.escapeMode = Entities.EscapeMode.valueOf(this.escapeMode.name());
                return outputSettings;
            } catch (CloneNotSupportedException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class QuirksMode {
        private static final /* synthetic */ QuirksMode[] $VALUES;
        public static final QuirksMode limitedQuirks;
        public static final QuirksMode noQuirks;
        public static final QuirksMode quirks;

        static {
            QuirksMode quirksMode = new QuirksMode("noQuirks", 0);
            noQuirks = quirksMode;
            QuirksMode quirksMode2 = new QuirksMode("quirks", 1);
            quirks = quirksMode2;
            QuirksMode quirksMode3 = new QuirksMode("limitedQuirks", 2);
            limitedQuirks = quirksMode3;
            $VALUES = new QuirksMode[]{quirksMode, quirksMode2, quirksMode3};
        }

        public static QuirksMode valueOf(String str) {
            return (QuirksMode) Enum.valueOf(QuirksMode.class, str);
        }

        public static QuirksMode[] values() {
            return (QuirksMode[]) $VALUES.clone();
        }
    }

    public Document(String str, String str2, Parser parser) {
        super(new Tag("#root", QuietAppendable$BaseAppendable.normalize("#root"), str), str2, null);
        this.outputSettings = new OutputSettings();
        this.quirksMode = QuirksMode.noQuirks;
        this.parser = parser;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final Document mo886clone() {
        Document document = (Document) super.mo886clone();
        Attributes attributes = this.attributes;
        if (attributes != null) {
            document.attributes = attributes.clone();
        }
        document.outputSettings = this.outputSettings.clone();
        return document;
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final String nodeName() {
        return "#document";
    }

    @Override // org.jsoup.nodes.Node
    public final String outerHtml() {
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        Node firstChild = firstChild();
        if (firstChild != null) {
            QuietAppendable$BaseAppendable wrap = QuietAppendable$BaseAppendable.wrap(borrowBuilder);
            Document ownerDocument = firstChild.ownerDocument();
            if (ownerDocument == null) {
                ownerDocument = new Document();
            }
            OutputSettings outputSettings = ownerDocument.outputSettings;
            outputSettings.getClass();
            Latch latch = new Latch(firstChild, wrap, outputSettings);
            latch._isOpen = false;
            Node node = firstChild;
            while (true) {
                if (node != null) {
                    if ((node instanceof Element) && ((Element) node).tag.is(64)) {
                        latch._isOpen = true;
                        break;
                    }
                    node = node.parentNode;
                } else {
                    break;
                }
            }
            while (firstChild != null) {
                NodeTraversor.traverse(latch, firstChild);
                firstChild = firstChild.nextSibling();
            }
        }
        String releaseBuilder = StringUtil.releaseBuilder(borrowBuilder);
        Document ownerDocument2 = ownerDocument();
        if (ownerDocument2 == null) {
            ownerDocument2 = new Document();
        }
        ownerDocument2.outputSettings.getClass();
        return releaseBuilder.trim();
    }

    public Document() {
        this("http://www.w3.org/1999/xhtml", "", new Parser(new HtmlTreeBuilder()));
    }
}
