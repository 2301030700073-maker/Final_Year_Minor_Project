package org.commonmark.internal;

import java.util.regex.Pattern;
import okio.PriorityQueue;
import org.commonmark.node.Block;
import org.commonmark.node.Document;
import org.commonmark.parser.block.AbstractBlockParser;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HtmlBlockParser extends AbstractBlockParser {
    public static final Pattern[][] BLOCK_PATTERNS = {new Pattern[]{null, null}, new Pattern[]{Pattern.compile("^<(?:script|pre|style)(?:\\s|>|$)", 2), Pattern.compile("</(?:script|pre|style)>", 2)}, new Pattern[]{Pattern.compile("^<!--"), Pattern.compile("-->")}, new Pattern[]{Pattern.compile("^<[?]"), Pattern.compile("\\?>")}, new Pattern[]{Pattern.compile("^<![A-Z]"), Pattern.compile(">")}, new Pattern[]{Pattern.compile("^<!\\[CDATA\\["), Pattern.compile("\\]\\]>")}, new Pattern[]{Pattern.compile("^</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|form|frame|frameset|h1|h2|h3|h4|h5|h6|head|header|hr|html|iframe|legend|li|link|main|menu|menuitem|nav|noframes|ol|optgroup|option|p|param|section|source|summary|table|tbody|td|tfoot|th|thead|title|tr|track|ul)(?:\\s|[/]?[>]|$)", 2), null}, new Pattern[]{Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>])\\s*$", 2), null}};
    public final Pattern closingPattern;
    public final Document block = new Document(1);
    public boolean finished = false;
    public PriorityQueue content = new PriorityQueue(11, (byte) 0);

    public HtmlBlockParser(Pattern pattern) {
        this.closingPattern = pattern;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final void addLine(CharSequence charSequence) {
        PriorityQueue priorityQueue = this.content;
        StringBuilder sb = (StringBuilder) priorityQueue.array;
        if (priorityQueue.size != 0) {
            sb.append('\n');
        }
        sb.append(charSequence);
        priorityQueue.size++;
        Pattern pattern = this.closingPattern;
        if (pattern == null || !pattern.matcher(charSequence).find()) {
            return;
        }
        this.finished = true;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final void closeBlock() {
        Object obj = this.content.array;
        this.content = null;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final Block getBlock() {
        return this.block;
    }

    @Override // org.commonmark.parser.block.AbstractBlockParser
    public final BlockContinueImpl tryContinue(DocumentParser documentParser) {
        if (this.finished) {
            return null;
        }
        if (documentParser.blank && this.closingPattern == null) {
            return null;
        }
        return BlockContinueImpl.atIndex(documentParser.index);
    }
}
