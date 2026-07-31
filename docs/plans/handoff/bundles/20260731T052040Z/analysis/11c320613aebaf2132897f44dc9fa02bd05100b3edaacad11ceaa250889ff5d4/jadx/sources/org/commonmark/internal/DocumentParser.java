package org.commonmark.internal;

import androidx.compose.ui.Modifier;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import okio.ByteString;
import org.commonmark.internal.HeadingParser;
import org.commonmark.node.BlockQuote;
import org.commonmark.node.Document;
import org.commonmark.node.FencedCodeBlock;
import org.commonmark.node.Heading;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.node.LinkReferenceDefinition;
import org.commonmark.node.ListBlock;
import org.commonmark.node.Node;
import org.commonmark.node.Paragraph;
import org.commonmark.node.ThematicBreak;
import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DocumentParser {
    public static final LinkedHashSet CORE_FACTORY_TYPES = new LinkedHashSet(Arrays.asList(BlockQuote.class, Heading.class, FencedCodeBlock.class, Document.class, ThematicBreak.class, ListBlock.class, IndentedCodeBlock.class));
    public static final Map NODES_TO_CORE_FACTORIES;
    public final ArrayList activeBlockParsers;
    public final LinkedHashSet allBlockParsers;
    public boolean blank;
    public final List blockParserFactories;
    public boolean columnIsInTab;
    public final List delimiterProcessors;
    public final DocumentBlockParser documentBlockParser;
    public final ByteString.Companion inlineParserFactory;
    public CharSequence line;
    public int index = 0;
    public int column = 0;
    public int nextNonSpace = 0;
    public int nextNonSpaceColumn = 0;
    public int indent = 0;
    public final LinkedHashMap definitions = new LinkedHashMap();

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(BlockQuote.class, new HeadingParser.Factory(1));
        hashMap.put(Heading.class, new HeadingParser.Factory(0));
        hashMap.put(FencedCodeBlock.class, new HeadingParser.Factory(2));
        hashMap.put(Document.class, new HeadingParser.Factory(3));
        hashMap.put(ThematicBreak.class, new HeadingParser.Factory(6));
        hashMap.put(ListBlock.class, new HeadingParser.Factory(5));
        hashMap.put(IndentedCodeBlock.class, new HeadingParser.Factory(4));
        NODES_TO_CORE_FACTORIES = DesugarCollections.unmodifiableMap(hashMap);
    }

    public DocumentParser(ArrayList arrayList, ByteString.Companion companion, ArrayList arrayList2) {
        ArrayList arrayList3 = new ArrayList();
        this.activeBlockParsers = arrayList3;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        this.allBlockParsers = linkedHashSet;
        this.blockParserFactories = arrayList;
        this.inlineParserFactory = companion;
        this.delimiterProcessors = arrayList2;
        DocumentBlockParser documentBlockParser = new DocumentBlockParser(0);
        this.documentBlockParser = documentBlockParser;
        arrayList3.add(documentBlockParser);
        linkedHashSet.add(documentBlockParser);
    }

    public final void addChild(AbstractBlockParser abstractBlockParser) {
        while (!getActiveBlockParser().canContain(abstractBlockParser.getBlock())) {
            finalize(getActiveBlockParser());
        }
        getActiveBlockParser().getBlock().appendChild(abstractBlockParser.getBlock());
        this.activeBlockParsers.add(abstractBlockParser);
        this.allBlockParsers.add(abstractBlockParser);
    }

    public final void addDefinitionsFrom(ParagraphParser paragraphParser) {
        LinkReferenceDefinitionParser linkReferenceDefinitionParser = paragraphParser.linkReferenceDefinitionParser;
        linkReferenceDefinitionParser.finishReference();
        Iterator it = linkReferenceDefinitionParser.definitions.iterator();
        while (it.hasNext()) {
            LinkReferenceDefinition linkReferenceDefinition = (LinkReferenceDefinition) it.next();
            Paragraph paragraph = paragraphParser.block;
            linkReferenceDefinition.unlink();
            Node node = (Node) paragraph.prev;
            linkReferenceDefinition.prev = node;
            if (node != null) {
                node.next = linkReferenceDefinition;
            }
            linkReferenceDefinition.next = paragraph;
            paragraph.prev = linkReferenceDefinition;
            Node node2 = (Node) paragraph.parent;
            linkReferenceDefinition.parent = node2;
            if (((Node) linkReferenceDefinition.prev) == null) {
                node2.firstChild = linkReferenceDefinition;
            }
            String str = linkReferenceDefinition.label;
            LinkedHashMap linkedHashMap = this.definitions;
            if (!linkedHashMap.containsKey(str)) {
                linkedHashMap.put(str, linkReferenceDefinition);
            }
        }
    }

    public final void addLine() {
        CharSequence subSequence;
        if (this.columnIsInTab) {
            int i = this.index + 1;
            CharSequence charSequence = this.line;
            CharSequence subSequence2 = charSequence.subSequence(i, charSequence.length());
            int i2 = 4 - (this.column % 4);
            StringBuilder sb = new StringBuilder(subSequence2.length() + i2);
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(' ');
            }
            sb.append(subSequence2);
            subSequence = sb.toString();
        } else {
            CharSequence charSequence2 = this.line;
            subSequence = charSequence2.subSequence(this.index, charSequence2.length());
        }
        getActiveBlockParser().addLine(subSequence);
    }

    public final void advance() {
        char charAt = this.line.charAt(this.index);
        int i = this.index;
        if (charAt != '\t') {
            this.index = i + 1;
            this.column++;
        } else {
            this.index = i + 1;
            int i2 = this.column;
            this.column = (4 - (i2 % 4)) + i2;
        }
    }

    public final void finalize(AbstractBlockParser abstractBlockParser) {
        if (getActiveBlockParser() == abstractBlockParser) {
            this.activeBlockParsers.remove(r0.size() - 1);
        }
        if (abstractBlockParser instanceof ParagraphParser) {
            addDefinitionsFrom((ParagraphParser) abstractBlockParser);
        }
        abstractBlockParser.closeBlock();
    }

    public final void finalizeBlocks(List list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            finalize((AbstractBlockParser) list.get(size));
        }
    }

    public final void findNextNonSpace() {
        int i = this.index;
        int i2 = this.column;
        this.blank = true;
        int length = this.line.length();
        while (true) {
            if (i >= length) {
                break;
            }
            char charAt = this.line.charAt(i);
            if (charAt == '\t') {
                i++;
                i2 += 4 - (i2 % 4);
            } else if (charAt != ' ') {
                this.blank = false;
                break;
            } else {
                i++;
                i2++;
            }
        }
        this.nextNonSpace = i;
        this.nextNonSpaceColumn = i2;
        this.indent = i2 - this.column;
    }

    public final AbstractBlockParser getActiveBlockParser() {
        return (AbstractBlockParser) Modifier.CC.m(1, this.activeBlockParsers);
    }

    /* JADX WARN: Code restructure failed: missing block: B:147:0x0184, code lost:
    
        if (r5.length() == 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x01c9, code lost:
    
        if (r3 < 1) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x01cb, code lost:
    
        r3 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x01d1, code lost:
    
        if (r3 >= r13.length()) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x01d3, code lost:
    
        r6 = r13.charAt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x01d9, code lost:
    
        if (r6 == '\t') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x01dd, code lost:
    
        if (r6 == ' ') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x01e0, code lost:
    
        r6 = r13.subSequence(r8, r15).toString();
        r14 = new org.commonmark.node.OrderedList();
        r14.startNumber = java.lang.Integer.parseInt(r6);
        r14.delimiter = r5;
        r5 = new org.commonmark.internal.ListBlockParser.ListData(r14, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0555, code lost:
    
        if (r5.length() == 0) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c0, code lost:
    
        r21 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x05ee, code lost:
    
        setNewIndex(r22.nextNonSpace);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:163:0x01b6. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x04ea  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0543  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void incorporateLine(java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 1618
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.commonmark.internal.DocumentParser.incorporateLine(java.lang.String):void");
    }

    public final void setNewColumn(int i) {
        int i2;
        int i3 = this.nextNonSpaceColumn;
        if (i >= i3) {
            this.index = this.nextNonSpace;
            this.column = i3;
        }
        int length = this.line.length();
        while (true) {
            i2 = this.column;
            if (i2 >= i || this.index == length) {
                break;
            } else {
                advance();
            }
        }
        if (i2 <= i) {
            this.columnIsInTab = false;
            return;
        }
        this.index--;
        this.column = i;
        this.columnIsInTab = true;
    }

    public final void setNewIndex(int i) {
        int i2 = this.nextNonSpace;
        if (i >= i2) {
            this.index = i2;
            this.column = this.nextNonSpaceColumn;
        }
        int length = this.line.length();
        while (true) {
            int i3 = this.index;
            if (i3 >= i || i3 == length) {
                break;
            } else {
                advance();
            }
        }
        this.columnIsInTab = false;
    }
}
