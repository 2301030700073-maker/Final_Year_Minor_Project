package org.schabi.newpipe.util.text;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.widget.TextView;
import androidx.compose.ui.node.Owner;
import androidx.transition.FragmentTransitionSupport$$ExternalSyntheticLambda0;
import androidx.transition.Transition;
import coil3.ComponentRegistry;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.BlockHandlerDef;
import io.noties.markwon.RenderPropsImpl;
import io.noties.markwon.SpannableBuilder;
import io.noties.markwon.core.CorePlugin;
import io.noties.markwon.core.MarkwonTheme;
import io.noties.markwon.linkify.LinkifyPlugin;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.acra.util.ProcessFinisher;
import org.commonmark.internal.DocumentParser;
import org.commonmark.internal.InlineParserImpl;
import org.commonmark.node.Document;
import org.commonmark.parser.block.AbstractBlockParser;
import org.jsoup.parser.TokenData;
import org.koin.core.Koin;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda3;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TextLinkifier {
    public static final Pattern HASHTAGS_PATTERN = Pattern.compile("(#[\\p{L}0-9_]+)");
    public static final Player$$ExternalSyntheticLambda3 SET_LINK_MOVEMENT_METHOD = new Player$$ExternalSyntheticLambda3(17);

    public static void changeLinkIntents(final TextView textView, final CharSequence charSequence, final StreamingService streamingService, final String str, final CompositeDisposable compositeDisposable, Consumer consumer) {
        SingleObserveOn subscribeOn = new SingleAmb(new Callable() { // from class: org.schabi.newpipe.util.text.TextLinkifier$$ExternalSyntheticLambda0
            /* JADX WARN: Removed duplicated region for block: B:20:0x00aa A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0051 A[SYNTHETIC] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r14 = this;
                    android.widget.TextView r0 = r1
                    android.content.Context r2 = r0.getContext()
                    android.text.SpannableStringBuilder r0 = new android.text.SpannableStringBuilder
                    java.lang.CharSequence r1 = r2
                    r0.<init>(r1)
                    int r1 = r1.length()
                    java.lang.Class<android.text.style.URLSpan> r3 = android.text.style.URLSpan.class
                    r8 = 0
                    java.lang.Object[] r1 = r0.getSpans(r8, r1, r3)
                    android.text.style.URLSpan[] r1 = (android.text.style.URLSpan[]) r1
                    int r3 = r1.length
                    r4 = r8
                L1c:
                    if (r4 >= r3) goto L3e
                    r5 = r1[r4]
                    java.lang.String r6 = r5.getURL()
                    org.schabi.newpipe.util.text.UrlLongPressClickableSpan r7 = new org.schabi.newpipe.util.text.UrlLongPressClickableSpan
                    r7.<init>(r2, r6)
                    int r6 = r0.getSpanStart(r5)
                    int r9 = r0.getSpanEnd(r5)
                    int r10 = r0.getSpanFlags(r5)
                    r0.setSpan(r7, r6, r9, r10)
                    r0.removeSpan(r5)
                    int r4 = r4 + 1
                    goto L1c
                L3e:
                    org.schabi.newpipe.extractor.StreamingService r5 = r3
                    if (r5 == 0) goto Leb
                    java.lang.String r6 = r4
                    r9 = 1
                    if (r6 == 0) goto Lb9
                    java.lang.String r3 = r0.toString()
                    java.util.regex.Pattern r1 = org.schabi.newpipe.util.text.TimestampExtractor.TIMESTAMPS_PATTERN
                    java.util.regex.Matcher r10 = r1.matcher(r3)
                L51:
                    boolean r1 = r10.find()
                    if (r1 == 0) goto Lb9
                    int r1 = r10.start(r9)
                    r4 = -1
                    r7 = 2
                    if (r1 != r4) goto L63
                    int r1 = r10.start(r7)
                L63:
                    r4 = 3
                    int r11 = r10.end(r4)
                    java.lang.String r12 = r3.substring(r1, r11)
                    java.lang.String r13 = ":"
                    java.lang.String[] r12 = r12.split(r13)
                    int r13 = r12.length
                    if (r13 != r4) goto L8e
                    r4 = r12[r8]
                    int r4 = java.lang.Integer.parseInt(r4)
                    int r4 = r4 * 3600
                    r13 = r12[r9]
                    int r13 = java.lang.Integer.parseInt(r13)
                    int r13 = r13 * 60
                    int r13 = r13 + r4
                    r4 = r12[r7]
                    int r4 = java.lang.Integer.parseInt(r4)
                    int r4 = r4 + r13
                    goto La0
                L8e:
                    int r4 = r12.length
                    if (r4 != r7) goto La6
                    r4 = r12[r8]
                    int r4 = java.lang.Integer.parseInt(r4)
                    int r4 = r4 * 60
                    r7 = r12[r9]
                    int r7 = java.lang.Integer.parseInt(r7)
                    int r4 = r4 + r7
                La0:
                    org.schabi.newpipe.util.text.TimestampExtractor$TimestampMatchDTO r7 = new org.schabi.newpipe.util.text.TimestampExtractor$TimestampMatchDTO
                    r7.<init>(r1, r11, r4)
                    goto La7
                La6:
                    r7 = 0
                La7:
                    if (r7 != 0) goto Laa
                    goto L51
                Laa:
                    org.schabi.newpipe.util.text.TimestampLongPressClickableSpan r1 = new org.schabi.newpipe.util.text.TimestampLongPressClickableSpan
                    io.reactivex.rxjava3.disposables.CompositeDisposable r4 = r5
                    r1.<init>(r2, r3, r4, r5, r6, r7)
                    int r4 = r7.timestampStart
                    int r7 = r7.timestampEnd
                    r0.setSpan(r1, r4, r7, r8)
                    goto L51
                Lb9:
                    java.lang.String r14 = r0.toString()
                    java.util.regex.Pattern r1 = org.schabi.newpipe.util.text.TextLinkifier.HASHTAGS_PATTERN
                    java.util.regex.Matcher r1 = r1.matcher(r14)
                Lc3:
                    boolean r3 = r1.find()
                    if (r3 == 0) goto Leb
                    int r3 = r1.start(r9)
                    int r4 = r1.end(r9)
                    java.lang.String r6 = r14.substring(r3, r4)
                    java.lang.Class<org.schabi.newpipe.util.text.LongPressClickableSpan> r7 = org.schabi.newpipe.util.text.LongPressClickableSpan.class
                    java.lang.Object[] r7 = r0.getSpans(r3, r4, r7)
                    org.schabi.newpipe.util.text.LongPressClickableSpan[] r7 = (org.schabi.newpipe.util.text.LongPressClickableSpan[]) r7
                    int r7 = r7.length
                    if (r7 != 0) goto Lc3
                    int r7 = r5.serviceId
                    org.schabi.newpipe.util.text.HashtagLongPressClickableSpan r10 = new org.schabi.newpipe.util.text.HashtagLongPressClickableSpan
                    r10.<init>(r2, r7, r6)
                    r0.setSpan(r10, r3, r4, r8)
                    goto Lc3
                Leb:
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.util.text.TextLinkifier$$ExternalSyntheticLambda0.call():java.lang.Object");
            }
        }, 3).subscribeOn(Schedulers.COMPUTATION);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new TextLinkifier$$ExternalSyntheticLambda1(textView, consumer, 0), new FragmentTransitionSupport$$ExternalSyntheticLambda0(textView, charSequence, consumer));
        try {
            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
            compositeDisposable.add(consumerSingleObserver);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    public static void fromDescription(TextView textView, Description description, StreamingService streamingService, String str, CompositeDisposable compositeDisposable, Consumer consumer) {
        int type = description.getType();
        int i = 1;
        if (type == 1) {
            String content = description.getContent();
            changeLinkIntents(textView, Build.VERSION.SDK_INT >= 24 ? Utility.fromHtml(0, content) : Html.fromHtml(content), streamingService, str, compositeDisposable, consumer);
            return;
        }
        if (type != 2) {
            String content2 = description.getContent();
            textView.setAutoLinkMask(1);
            textView.setText(content2, TextView.BufferType.SPANNABLE);
            changeLinkIntents(textView, textView.getText(), streamingService, str, compositeDisposable, consumer);
            return;
        }
        String content3 = description.getContent();
        Context context = textView.getContext();
        ArrayList arrayList = new ArrayList(3);
        TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
        arrayList.add(new CorePlugin());
        arrayList.add(new LinkifyPlugin());
        if (arrayList.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("No plugins were added to this builder. Use #usePlugin method to add them");
            return;
        }
        ProcessFinisher processFinisher = new ProcessFinisher(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            processFinisher.configure((AbstractMarkwonPlugin) it.next());
        }
        ArrayList arrayList2 = (ArrayList) processFinisher.config;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        LinkedHashSet linkedHashSet = DocumentParser.CORE_FACTORY_TYPES;
        float f = context.getResources().getDisplayMetrics().density;
        MarkwonTheme markwonTheme = new MarkwonTheme();
        markwonTheme.codeBlockMargin = (int) ((8.0f * f) + 0.5f);
        markwonTheme.blockMargin = (int) ((24.0f * f) + 0.5f);
        int i2 = (int) ((4.0f * f) + 0.5f);
        markwonTheme.blockQuoteWidth = i2;
        int i3 = (int) ((1.0f * f) + 0.5f);
        markwonTheme.bulletListItemStrokeWidth = i3;
        markwonTheme.headingBreakHeight = i3;
        markwonTheme.thematicBreakHeight = i2;
        Koin koin = new Koin();
        RenderPropsImpl renderPropsImpl = new RenderPropsImpl(3);
        RenderPropsImpl renderPropsImpl2 = new RenderPropsImpl(2);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            AbstractMarkwonPlugin abstractMarkwonPlugin = (AbstractMarkwonPlugin) it2.next();
            abstractMarkwonPlugin.getClass();
            abstractMarkwonPlugin.configureVisitor(renderPropsImpl);
            abstractMarkwonPlugin.configureSpansFactory(renderPropsImpl2);
        }
        MarkwonTheme markwonTheme2 = new MarkwonTheme();
        markwonTheme2.blockMargin = markwonTheme.blockMargin;
        markwonTheme2.blockQuoteWidth = markwonTheme.blockQuoteWidth;
        markwonTheme2.bulletListItemStrokeWidth = markwonTheme.bulletListItemStrokeWidth;
        markwonTheme2.codeBlockMargin = markwonTheme.codeBlockMargin;
        markwonTheme2.headingBreakHeight = markwonTheme.headingBreakHeight;
        markwonTheme2.thematicBreakHeight = markwonTheme.thematicBreakHeight;
        ConnectionPool connectionPool = new ConnectionPool(DesugarCollections.unmodifiableMap(renderPropsImpl2.values), 13);
        koin.logger = markwonTheme2;
        koin.optionRegistry = connectionPool;
        if (((BlockHandlerDef) koin.resolver) == null) {
            koin.resolver = new BlockHandlerDef(26);
        }
        if (((Transition.AnonymousClass1) koin.scopeRegistry) == null) {
            koin.scopeRegistry = new Transition.AnonymousClass1(28);
        }
        if (((Transition.AnonymousClass1) koin.instanceRegistry) == null) {
            koin.instanceRegistry = new Transition.AnonymousClass1(26);
        }
        if (((BlockHandlerDef) koin.propertyRegistry) == null) {
            koin.propertyRegistry = new BlockHandlerDef(27);
        }
        if (((Transition.AnonymousClass1) koin.extensionManager) == null) {
            koin.extensionManager = new Transition.AnonymousClass1(27);
        }
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(koin);
        LinkedHashSet linkedHashSet2 = DocumentParser.CORE_FACTORY_TYPES;
        ArrayList arrayList6 = new ArrayList();
        arrayList6.addAll(arrayList3);
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            arrayList6.add(DocumentParser.NODES_TO_CORE_FACTORIES.get((Class) it3.next()));
        }
        ByteString.Companion companion = new ByteString.Companion(8);
        new InlineParserImpl(new TokenData(arrayList4, Collections.EMPTY_MAP, i));
        List unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
        Iterator it4 = unmodifiableList.iterator();
        while (it4.hasNext()) {
            ((AbstractMarkwonPlugin) it4.next()).getClass();
        }
        if (content3 == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("input must not be null");
            return;
        }
        DocumentParser documentParser = new DocumentParser(arrayList6, companion, arrayList4);
        int i4 = 0;
        while (true) {
            int length = content3.length();
            int i5 = i4;
            while (true) {
                if (i5 >= length) {
                    i5 = -1;
                    break;
                }
                char charAt = content3.charAt(i5);
                if (charAt == '\n' || charAt == '\r') {
                    break;
                } else {
                    i5++;
                }
            }
            if (i5 == -1) {
                break;
            }
            documentParser.incorporateLine(content3.substring(i4, i5));
            i4 = i5 + 1;
            if (i4 < content3.length() && content3.charAt(i5) == '\r' && content3.charAt(i4) == '\n') {
                i4 = i5 + 2;
            }
        }
        if (content3.length() > 0 && (i4 == 0 || i4 < content3.length())) {
            documentParser.incorporateLine(content3.substring(i4));
        }
        documentParser.finalizeBlocks(documentParser.activeBlockParsers);
        TokenData tokenData = new TokenData(documentParser.delimiterProcessors, documentParser.definitions, i);
        documentParser.inlineParserFactory.getClass();
        InlineParserImpl inlineParserImpl = new InlineParserImpl(tokenData);
        Iterator it5 = documentParser.allBlockParsers.iterator();
        while (it5.hasNext()) {
            ((AbstractBlockParser) it5.next()).parseInlines(inlineParserImpl);
        }
        Document document = (Document) documentParser.documentBlockParser.document;
        Iterator it6 = arrayList5.iterator();
        if (it6.hasNext()) {
            it6.next().getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            return;
        }
        Iterator it7 = unmodifiableList.iterator();
        while (it7.hasNext()) {
            ((AbstractMarkwonPlugin) it7.next()).getClass();
        }
        Dispatcher dispatcher = new Dispatcher(builder, new RenderPropsImpl(0), new SpannableBuilder(), DesugarCollections.unmodifiableMap(renderPropsImpl.values), new BlockHandlerDef(0));
        dispatcher.visit(document);
        Iterator it8 = unmodifiableList.iterator();
        while (it8.hasNext()) {
            ((AbstractMarkwonPlugin) it8.next()).getClass();
        }
        SpannableBuilder spannableBuilder = (SpannableBuilder) dispatcher.runningAsyncCalls;
        SpannableStringBuilder spannableStringBuilderReversed = new SpannableBuilder.SpannableStringBuilderReversed(spannableBuilder.builder);
        Iterator it9 = spannableBuilder.spans.iterator();
        while (it9.hasNext()) {
            SpannableBuilder.Span span = (SpannableBuilder.Span) it9.next();
            spannableStringBuilderReversed.setSpan(span.what, span.start, span.end, span.flags);
        }
        if (TextUtils.isEmpty(spannableStringBuilderReversed) && !TextUtils.isEmpty(content3)) {
            spannableStringBuilderReversed = new SpannableStringBuilder(content3);
        }
        changeLinkIntents(textView, spannableStringBuilderReversed, streamingService, str, compositeDisposable, consumer);
    }
}
