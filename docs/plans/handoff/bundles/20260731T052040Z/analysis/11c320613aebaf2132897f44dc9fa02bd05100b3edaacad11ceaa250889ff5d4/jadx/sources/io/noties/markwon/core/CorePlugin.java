package io.noties.markwon.core;

import android.text.SpannableStringBuilder;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import androidx.transition.Transition;
import coil3.ComponentRegistry;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.BlockHandlerDef;
import io.noties.markwon.MarkwonVisitor$NodeVisitor;
import io.noties.markwon.Prop;
import io.noties.markwon.RenderPropsImpl;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.core.CoreProps;
import io.noties.markwon.core.factory.CodeSpanFactory;
import io.noties.markwon.image.ImageProps;
import io.noties.markwon.linkify.LinkifyPlugin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import org.commonmark.node.Block;
import org.commonmark.node.BlockQuote;
import org.commonmark.node.BulletList;
import org.commonmark.node.Code;
import org.commonmark.node.Emphasis;
import org.commonmark.node.FencedCodeBlock;
import org.commonmark.node.HardLineBreak;
import org.commonmark.node.Heading;
import org.commonmark.node.Image;
import org.commonmark.node.IndentedCodeBlock;
import org.commonmark.node.Link;
import org.commonmark.node.ListBlock;
import org.commonmark.node.ListItem;
import org.commonmark.node.Node;
import org.commonmark.node.OrderedList;
import org.commonmark.node.Paragraph;
import org.commonmark.node.SoftLineBreak;
import org.commonmark.node.StrongEmphasis;
import org.commonmark.node.Text;
import org.commonmark.node.ThematicBreak;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CorePlugin extends AbstractMarkwonPlugin {
    public final ArrayList onTextAddedListeners = new ArrayList(0);

    public static void visitCodeBlock(Dispatcher dispatcher, String str, String str2, Block block) {
        dispatcher.ensureNewLine();
        int length = dispatcher.length();
        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
        StringBuilder sb = spannableBuilder.builder;
        sb.append((char) 160);
        sb.append('\n');
        ((Transition.AnonymousClass1) ((ComponentRegistry.Builder) dispatcher.executorServiceOrNull).mappers).getClass();
        spannableBuilder.copySpans(sb.length(), str2);
        sb.append((CharSequence) str2);
        dispatcher.ensureNewLine();
        spannableBuilder.append((char) 160);
        CoreProps.CODE_BLOCK_INFO.set((RenderPropsImpl) dispatcher.readyAsyncCalls, str);
        dispatcher.setSpansForNodeOptional(block, length);
        dispatcher.blockEnd(block);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin
    public final void configureSpansFactory(RenderPropsImpl renderPropsImpl) {
        CodeSpanFactory codeSpanFactory = new CodeSpanFactory(2);
        renderPropsImpl.setFactory(StrongEmphasis.class, new CodeSpanFactory(7));
        renderPropsImpl.setFactory(Emphasis.class, new CodeSpanFactory(3));
        renderPropsImpl.setFactory(BlockQuote.class, new CodeSpanFactory(1));
        renderPropsImpl.setFactory(Code.class, new CodeSpanFactory(0));
        renderPropsImpl.setFactory(FencedCodeBlock.class, codeSpanFactory);
        renderPropsImpl.setFactory(IndentedCodeBlock.class, codeSpanFactory);
        renderPropsImpl.setFactory(ListItem.class, new CodeSpanFactory(6));
        renderPropsImpl.setFactory(Heading.class, new CodeSpanFactory(4));
        renderPropsImpl.setFactory(Link.class, new CodeSpanFactory(5));
        renderPropsImpl.setFactory(ThematicBreak.class, new CodeSpanFactory(8));
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin
    public final void configureVisitor(RenderPropsImpl renderPropsImpl) {
        renderPropsImpl.on(Text.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.1
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                String str = ((Text) node).literal;
                SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                spannableBuilder.builder.append(str);
                ArrayList arrayList = CorePlugin.this.onTextAddedListeners;
                if (arrayList.isEmpty()) {
                    return;
                }
                int length = dispatcher.length() - str.length();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((LinkifyPlugin.LinkifyTextAddedListener) it.next()).getClass();
                    CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Link.class);
                    if (codeSpanFactory != null) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                        if (Linkify.addLinks(spannableStringBuilder, 7)) {
                            URLSpan[] uRLSpanArr = (URLSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), URLSpan.class);
                            if (uRLSpanArr != null && uRLSpanArr.length > 0) {
                                RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                                for (URLSpan uRLSpan : uRLSpanArr) {
                                    CoreProps.LINK_DESTINATION.set(renderPropsImpl2, uRLSpan.getURL());
                                    Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                                    int spanStart = spannableStringBuilder.getSpanStart(uRLSpan) + length;
                                    int spanEnd = spannableStringBuilder.getSpanEnd(uRLSpan) + length;
                                    int length2 = spannableBuilder.builder.length();
                                    if (spanEnd > spanStart && spanStart >= 0 && spanEnd <= length2) {
                                        SpannableBuilder.setSpansInternal(spannableBuilder, spans, spanStart, spanEnd);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });
        final int i = 0;
        renderPropsImpl.on(StrongEmphasis.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i2 = 0;
                z = false;
                switch (i) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i3 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i3));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i2++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i2));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i2 = 7;
        renderPropsImpl.on(Emphasis.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i2) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i3 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i3));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i3 = 8;
        renderPropsImpl.on(BlockQuote.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i3) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i4 = 9;
        renderPropsImpl.on(Code.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i4) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i5 = 10;
        renderPropsImpl.on(FencedCodeBlock.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i5) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i6 = 11;
        renderPropsImpl.on(IndentedCodeBlock.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i6) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i7 = 12;
        renderPropsImpl.on(Image.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i7) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i8 = 14;
        renderPropsImpl.on(BulletList.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i8) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        renderPropsImpl.on(OrderedList.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i8) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i9 = 13;
        renderPropsImpl.on(ListItem.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i9) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i10 = 1;
        renderPropsImpl.on(ThematicBreak.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i10) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i11 = 2;
        renderPropsImpl.on(Heading.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i11) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i12 = 3;
        renderPropsImpl.on(SoftLineBreak.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i12) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i13 = 4;
        renderPropsImpl.on(HardLineBreak.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i13) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i14 = 5;
        renderPropsImpl.on(Paragraph.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i14) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
        final int i15 = 6;
        renderPropsImpl.on(Link.class, new MarkwonVisitor$NodeVisitor() { // from class: io.noties.markwon.core.CorePlugin.2
            @Override // io.noties.markwon.MarkwonVisitor$NodeVisitor
            public final void visit(Dispatcher dispatcher, Node node) {
                boolean z = false;
                int i22 = 0;
                z = false;
                switch (i15) {
                    case 0:
                        Node node2 = (StrongEmphasis) node;
                        int length = dispatcher.length();
                        dispatcher.visitChildren(node2);
                        dispatcher.setSpansForNodeOptional(node2, length);
                        break;
                    case 1:
                        Node node3 = (ThematicBreak) node;
                        dispatcher.ensureNewLine();
                        int length2 = dispatcher.length();
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append((char) 160);
                        dispatcher.setSpansForNodeOptional(node3, length2);
                        dispatcher.blockEnd(node3);
                        break;
                    case 2:
                        Heading heading = (Heading) node;
                        dispatcher.ensureNewLine();
                        int length3 = dispatcher.length();
                        dispatcher.visitChildren(heading);
                        CoreProps.HEADING_LEVEL.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Integer.valueOf(heading.level));
                        dispatcher.setSpansForNodeOptional(heading, length3);
                        dispatcher.blockEnd(heading);
                        break;
                    case 3:
                        ((SpannableBuilder) dispatcher.runningAsyncCalls).append(' ');
                        break;
                    case 4:
                        dispatcher.ensureNewLine();
                        break;
                    case 5:
                        Node node4 = (Paragraph) node;
                        Block block = (Block) ((Node) node4.parent);
                        if (block != null) {
                            Block block2 = (Block) ((Node) block.parent);
                            if (block2 instanceof ListBlock) {
                                z = ((ListBlock) block2).tight;
                            }
                        }
                        if (!z) {
                            dispatcher.ensureNewLine();
                        }
                        int length4 = dispatcher.length();
                        dispatcher.visitChildren(node4);
                        CoreProps.PARAGRAPH_IS_IN_TIGHT_LIST.set((RenderPropsImpl) dispatcher.readyAsyncCalls, Boolean.valueOf(z));
                        dispatcher.setSpansForNodeOptional(node4, length4);
                        if (!z) {
                            dispatcher.blockEnd(node4);
                            break;
                        }
                        break;
                    case 6:
                        Link link = (Link) node;
                        int length5 = dispatcher.length();
                        dispatcher.visitChildren(link);
                        CoreProps.LINK_DESTINATION.set((RenderPropsImpl) dispatcher.readyAsyncCalls, link.destination);
                        dispatcher.setSpansForNodeOptional(link, length5);
                        break;
                    case 7:
                        Node node5 = (Emphasis) node;
                        int length6 = dispatcher.length();
                        dispatcher.visitChildren(node5);
                        dispatcher.setSpansForNodeOptional(node5, length6);
                        break;
                    case 8:
                        Node node6 = (BlockQuote) node;
                        dispatcher.ensureNewLine();
                        int length7 = dispatcher.length();
                        dispatcher.visitChildren(node6);
                        dispatcher.setSpansForNodeOptional(node6, length7);
                        dispatcher.blockEnd(node6);
                        break;
                    case 9:
                        Code code = (Code) node;
                        int length8 = dispatcher.length();
                        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        StringBuilder sb = spannableBuilder.builder;
                        sb.append((char) 160);
                        sb.append(code.literal);
                        spannableBuilder.append((char) 160);
                        dispatcher.setSpansForNodeOptional(code, length8);
                        break;
                    case 10:
                        FencedCodeBlock fencedCodeBlock = (FencedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, fencedCodeBlock.info, fencedCodeBlock.literal, fencedCodeBlock);
                        break;
                    case 11:
                        IndentedCodeBlock indentedCodeBlock = (IndentedCodeBlock) node;
                        CorePlugin.visitCodeBlock(dispatcher, null, indentedCodeBlock.literal, indentedCodeBlock);
                        break;
                    case 12:
                        SpannableBuilder spannableBuilder2 = (SpannableBuilder) dispatcher.runningAsyncCalls;
                        Image image = (Image) node;
                        ComponentRegistry.Builder builder = (ComponentRegistry.Builder) dispatcher.executorServiceOrNull;
                        CodeSpanFactory codeSpanFactory = (CodeSpanFactory) ((Map) ((ConnectionPool) builder.lazyDecoderFactories).delegate).get(Image.class);
                        if (codeSpanFactory == null) {
                            dispatcher.visitChildren(image);
                            break;
                        } else {
                            int length9 = dispatcher.length();
                            dispatcher.visitChildren(image);
                            if (length9 == dispatcher.length()) {
                                spannableBuilder2.append((char) 65532);
                            }
                            boolean z2 = ((Node) image.parent) instanceof Link;
                            BlockHandlerDef blockHandlerDef = (BlockHandlerDef) builder.lazyFetcherFactories;
                            String str = image.destination;
                            blockHandlerDef.getClass();
                            RenderPropsImpl renderPropsImpl2 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                            ImageProps.DESTINATION.set(renderPropsImpl2, str);
                            ImageProps.REPLACEMENT_TEXT_IS_LINK.set(renderPropsImpl2, Boolean.valueOf(z2));
                            ImageProps.IMAGE_SIZE.set(renderPropsImpl2, null);
                            Object spans = codeSpanFactory.getSpans(builder, renderPropsImpl2);
                            StringBuilder sb2 = spannableBuilder2.builder;
                            int length10 = sb2.length();
                            int length11 = sb2.length();
                            if (length10 > length9 && length9 >= 0 && length10 <= length11) {
                                SpannableBuilder.setSpansInternal(spannableBuilder2, spans, length9, length10);
                                break;
                            }
                        }
                        break;
                    case 13:
                        Node node7 = (ListItem) node;
                        int length12 = dispatcher.length();
                        RenderPropsImpl renderPropsImpl3 = (RenderPropsImpl) dispatcher.readyAsyncCalls;
                        dispatcher.visitChildren(node7);
                        Block block3 = (Block) ((Node) node7.parent);
                        boolean z3 = block3 instanceof OrderedList;
                        Prop prop = CoreProps.LIST_ITEM_TYPE;
                        if (z3) {
                            OrderedList orderedList = (OrderedList) block3;
                            int i32 = orderedList.startNumber;
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.ORDERED);
                            CoreProps.ORDERED_LIST_ITEM_NUMBER.set(renderPropsImpl3, Integer.valueOf(i32));
                            orderedList.startNumber++;
                        } else {
                            prop.set(renderPropsImpl3, CoreProps.ListItemType.BULLET);
                            for (Node node8 = (Block) ((Node) node7.parent); node8 != null; node8 = node8.getParent()) {
                                if (node8 instanceof ListItem) {
                                    i22++;
                                }
                            }
                            CoreProps.BULLET_LIST_ITEM_LEVEL.set(renderPropsImpl3, Integer.valueOf(i22));
                        }
                        dispatcher.setSpansForNodeOptional(node7, length12);
                        if (((Node) node7.next) != null) {
                            dispatcher.ensureNewLine();
                            break;
                        }
                        break;
                    default:
                        dispatcher.ensureNewLine();
                        int length13 = dispatcher.length();
                        dispatcher.visitChildren(node);
                        dispatcher.setSpansForNodeOptional(node, length13);
                        dispatcher.blockEnd(node);
                        break;
                }
            }
        });
    }
}
