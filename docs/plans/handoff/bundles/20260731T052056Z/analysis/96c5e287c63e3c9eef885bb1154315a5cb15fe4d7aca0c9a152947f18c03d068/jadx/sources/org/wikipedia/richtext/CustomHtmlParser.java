package org.wikipedia.richtext;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.text.Editable;
import android.text.Html;
import android.text.style.LeadingMarginSpan;
import android.text.style.ParagraphStyle;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredLine;
import androidx.compose.foundation.lazy.grid.LazyGridSlots;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.InlineClassHelperKt;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.flexbox.FlexboxHelper$FlexLinesResult;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Dispatcher;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.XMLReader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomHtmlParser implements Html.TagHandler, ContentHandler {
    public static final LinkedHashMap contextBmpMap = new LinkedHashMap();
    public final CustomTagHandler handler;
    public final ArrayDeque tagStatus = new ArrayDeque();
    public Editable text;
    public ContentHandler wrapped;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BlankBitmapPlaceholder extends BitmapDrawable {
        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            canvas.getClass();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CustomImageGetter implements Html.ImageGetter {
        public final Context context;

        public CustomImageGetter(Context context) {
            this.context = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
        @Override // android.text.Html.ImageGetter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final android.graphics.drawable.Drawable getDrawable(java.lang.String r4) {
            /*
                r3 = this;
                android.content.Context r3 = r3.context
                r0 = 0
                java.util.LinkedHashMap r1 = org.wikipedia.richtext.CustomHtmlParser.contextBmpMap     // Catch: java.lang.Exception -> L2a
                boolean r2 = r1.containsKey(r3)     // Catch: java.lang.Exception -> L2a
                if (r2 == 0) goto L2e
                java.lang.Object r2 = r1.get(r3)     // Catch: java.lang.Exception -> L2a
                r2.getClass()     // Catch: java.lang.Exception -> L2a
                java.util.Map r2 = (java.util.Map) r2     // Catch: java.lang.Exception -> L2a
                boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Exception -> L2a
                if (r2 == 0) goto L2e
                java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Exception -> L2a
                r1.getClass()     // Catch: java.lang.Exception -> L2a
                java.util.Map r1 = (java.util.Map) r1     // Catch: java.lang.Exception -> L2a
                java.lang.Object r4 = r1.get(r4)     // Catch: java.lang.Exception -> L2a
                android.graphics.drawable.BitmapDrawable r4 = (android.graphics.drawable.BitmapDrawable) r4     // Catch: java.lang.Exception -> L2a
                goto L2f
            L2a:
                r4 = move-exception
                org.wikipedia.util.log.L.e(r4)
            L2e:
                r4 = r0
            L2f:
                if (r4 != 0) goto L3d
                org.wikipedia.richtext.CustomHtmlParser$BlankBitmapPlaceholder r4 = new org.wikipedia.richtext.CustomHtmlParser$BlankBitmapPlaceholder
                android.content.res.Resources r3 = r3.getResources()
                r3.getClass()
                r4.<init>(r3, r0)
            L3d:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.richtext.CustomHtmlParser.CustomImageGetter.getDrawable(java.lang.String):android.graphics.drawable.Drawable");
        }
    }

    public CustomHtmlParser(CustomTagHandler customTagHandler) {
        this.handler = customTagHandler;
    }

    @Override // org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.characters(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void endDocument() {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.endDocument();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        ContentHandler contentHandler;
        ArrayDeque arrayDeque = this.tagStatus;
        if (!arrayDeque.isEmpty() && !((Boolean) arrayDeque.removeLast()).booleanValue() && (contentHandler = this.wrapped) != null) {
            contentHandler.endElement(str, str2, str3);
        }
        this.handler.handleTag(false, str2, this.text, null);
    }

    @Override // org.xml.sax.ContentHandler
    public final void endPrefixMapping(String str) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.endPrefixMapping(str);
        }
    }

    @Override // android.text.Html.TagHandler
    public final void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
        xMLReader.getClass();
        if (this.wrapped == null) {
            this.text = editable;
            this.wrapped = xMLReader.getContentHandler();
            xMLReader.setContentHandler(this);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void ignorableWhitespace(char[] cArr, int i, int i2) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.ignorableWhitespace(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void processingInstruction(String str, String str2) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.processingInstruction(str, str2);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void setDocumentLocator(Locator locator) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.setDocumentLocator(locator);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void skippedEntity(String str) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.skippedEntity(str);
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void startDocument() {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.startDocument();
        }
    }

    @Override // org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        ContentHandler contentHandler;
        boolean handleTag = this.handler.handleTag(true, str2, this.text, attributes);
        this.tagStatus.addLast(Boolean.valueOf(handleTag));
        if (handleTag || (contentHandler = this.wrapped) == null) {
            return;
        }
        contentHandler.startElement(str, str2, str3, attributes);
    }

    @Override // org.xml.sax.ContentHandler
    public final void startPrefixMapping(String str, String str2) {
        ContentHandler contentHandler = this.wrapped;
        if (contentHandler != null) {
            contentHandler.startPrefixMapping(str, str2);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CustomTagHandler {
        public int hiddenSpanDepth;
        public int hiddenSpanStartPos;
        public Object lastAClass;
        public final Object listItemCounts;
        public final Object listParents;
        public final Object view;

        public CustomTagHandler(TextView textView) {
            this.view = textView;
            this.lastAClass = "";
            this.hiddenSpanStartPos = -1;
            this.listItemCounts = new Stack();
            this.listParents = new ArrayList();
        }

        /* renamed from: childConstraints-JhjzzOo$foundation, reason: not valid java name */
        public long m912childConstraintsJhjzzOo$foundation(int i, int i2) {
            int i3;
            LazyGridSlots lazyGridSlots = (LazyGridSlots) this.view;
            int[] iArr = lazyGridSlots.sizes;
            if (i2 == 1) {
                i3 = iArr[i];
            } else {
                int i4 = (i2 + i) - 1;
                int[] iArr2 = lazyGridSlots.positions;
                i3 = (iArr2[i4] + iArr[i4]) - iArr2[i];
            }
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("width must be >= 0");
            }
            return ConstraintsKt.createConstraints(i3, i3, 0, Integer.MAX_VALUE);
        }

        public LazyGridMeasuredLine getAndMeasure(int i) {
            FlexboxHelper$FlexLinesResult lineConfiguration = ((Dispatcher) this.listItemCounts).getLineConfiguration(i);
            int i2 = lineConfiguration.mChildState;
            int size = lineConfiguration.mFlexLines.size();
            int i3 = 0;
            int i4 = (size == 0 || i2 + size == this.hiddenSpanDepth) ? 0 : this.hiddenSpanStartPos;
            LazyGridMeasuredItem[] lazyGridMeasuredItemArr = new LazyGridMeasuredItem[size];
            int i5 = 0;
            while (true) {
                List list = lineConfiguration.mFlexLines;
                if (i3 >= size) {
                    return new LazyGridMeasuredLine(i, lazyGridMeasuredItemArr, (LazyGridSlots) this.listParents, list, i4);
                }
                int i6 = (int) ((GridItemSpan) list.get(i3)).packedValue;
                int i7 = i4;
                LazyGridMeasuredItem m159getAndMeasurem8Kt_7k = ((LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) this.lastAClass).m159getAndMeasurem8Kt_7k(i2 + i3, m912childConstraintsJhjzzOo$foundation(i5, i6), i5, i6, i7);
                i5 += i6;
                lazyGridMeasuredItemArr[i3] = m159getAndMeasurem8Kt_7k;
                i3++;
                i4 = i7;
            }
        }

        public boolean handleTag(boolean z, String str, Editable editable, Attributes attributes) {
            int i;
            Stack stack = (Stack) this.listItemCounts;
            ArrayList arrayList = (ArrayList) this.listParents;
            TextView textView = (TextView) this.view;
            if (!Intrinsics.areEqual(str, "img") || textView != null) {
                if (Intrinsics.areEqual(str, "img") && z && textView != null) {
                    LinkedHashMap linkedHashMap = CustomHtmlParser.contextBmpMap;
                    String value = Headers.Companion.getValue(attributes, "width");
                    if (value == null) {
                        value = "";
                    }
                    int htmlPxToInt = Okio__OkioKt.htmlPxToInt(value);
                    String value2 = Headers.Companion.getValue(attributes, "height");
                    if (value2 == null) {
                        value2 = "";
                    }
                    int htmlPxToInt2 = Okio__OkioKt.htmlPxToInt(value2);
                    String value3 = Headers.Companion.getValue(attributes, "src");
                    if (value3 == null) {
                        value3 = "";
                    }
                    if (htmlPxToInt >= 64 && htmlPxToInt2 >= 64) {
                        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(htmlPxToInt);
                        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(htmlPxToInt2);
                        if (roundedDpToPx > 0 && roundedDpToPx2 > 0 && value3.length() > 0) {
                            LinkedHashMap linkedHashMap2 = CustomHtmlParser.contextBmpMap;
                            Context context = textView.getContext();
                            Object obj = linkedHashMap2.get(context);
                            Object obj2 = obj;
                            if (obj == null) {
                                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                                linkedHashMap2.put(context, linkedHashMap3);
                                obj2 = linkedHashMap3;
                            }
                            Map map = (Map) obj2;
                            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                            Object obj3 = map.get(value3);
                            ref$ObjectRef.element = obj3;
                            if (obj3 == null || ((BitmapDrawable) obj3).getBitmap().isRecycled()) {
                                Bitmap createBitmap = Bitmap.createBitmap(roundedDpToPx, roundedDpToPx2, Bitmap.Config.RGB_565);
                                createBitmap.getClass();
                                Resources resources = textView.getContext().getResources();
                                resources.getClass();
                                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, createBitmap);
                                ref$ObjectRef.element = bitmapDrawable;
                                map.put(value3, bitmapDrawable);
                                ((BitmapDrawable) ref$ObjectRef.element).setBounds(0, 0, roundedDpToPx, roundedDpToPx2);
                                if (StringsKt__StringsJVMKt.startsWith(value3, "//", false)) {
                                    value3 = "https:".concat(value3);
                                } else if (StringsKt__StringsJVMKt.startsWith(value3, "./", false)) {
                                    value3 = "https://commons.wikimedia.org/".concat(StringsKt__StringsJVMKt.replace$default(value3, "./", ""));
                                }
                                Context context2 = textView.getContext();
                                context2.getClass();
                                SingleLiveData$$ExternalSyntheticLambda0 singleLiveData$$ExternalSyntheticLambda0 = new SingleLiveData$$ExternalSyntheticLambda0(4, ref$ObjectRef, this);
                                if (Okio__OkioKt._implementation == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                                    return false;
                                }
                                ImageRequest.Builder builder = new ImageRequest.Builder(context2);
                                builder.data = value3;
                                builder.target = new DrawResult(singleLiveData$$ExternalSyntheticLambda0);
                                SingletonImageLoader.get(context2).enqueue(builder.build());
                                return false;
                            }
                        }
                    }
                } else {
                    int i2 = -1;
                    Object obj4 = null;
                    if (Intrinsics.areEqual(str, "a")) {
                        if (z) {
                            LinkedHashMap linkedHashMap4 = CustomHtmlParser.contextBmpMap;
                            String value4 = Headers.Companion.getValue(attributes, "class");
                            this.lastAClass = value4 != null ? value4 : "";
                            return false;
                        }
                        if (editable != null && editable.length() != 0) {
                            Object[] spans = editable.getSpans(editable.length() - 1, editable.length(), URLSpan.class);
                            spans.getClass();
                            URLSpan[] uRLSpanArr = (URLSpan[]) spans;
                            if (uRLSpanArr.length != 0) {
                                URLSpan uRLSpan = (URLSpan) ArraysKt___ArraysKt.last(uRLSpanArr);
                                int spanStart = editable.getSpanStart(uRLSpan);
                                int spanEnd = editable.getSpanEnd(uRLSpan);
                                editable.removeSpan(uRLSpan);
                                if (((String) this.lastAClass).equals("new") && textView != null) {
                                    Context context3 = textView.getContext();
                                    TypedValue m = ViewSizeResolver$CC.m(context3);
                                    TypedValue typedValue = context3.getTheme().resolveAttribute(R.attr.colorError, m, true) ? m : null;
                                    if (typedValue == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968872");
                                        return false;
                                    }
                                    i2 = typedValue.data;
                                }
                                String url = uRLSpan.getURL();
                                url.getClass();
                                editable.setSpan(new URLSpanNoUnderline(i2, url), spanStart, spanEnd, 0);
                                return false;
                            }
                        }
                    } else if (!Intrinsics.areEqual(str, "code") || editable == null) {
                        if (Intrinsics.areEqual(str, "ol")) {
                            if (z) {
                                arrayList.add(str);
                                return false;
                            }
                            arrayList.remove(str);
                            return false;
                        }
                        if (!Intrinsics.areEqual(str, "li") || arrayList.isEmpty() || z || editable == null) {
                            if (Intrinsics.areEqual(str, "span") && editable != null) {
                                int i3 = this.hiddenSpanDepth;
                                if (z) {
                                    if (i3 > 0) {
                                        this.hiddenSpanDepth = i3 + 1;
                                        return false;
                                    }
                                    LinkedHashMap linkedHashMap5 = CustomHtmlParser.contextBmpMap;
                                    String value5 = Headers.Companion.getValue(attributes, "style");
                                    String str2 = value5 != null ? value5 : "";
                                    if (StringsKt.contains(str2, "display:none", false) || StringsKt.contains(str2, "display: none", false)) {
                                        this.hiddenSpanDepth = 1;
                                        this.hiddenSpanStartPos = editable.length();
                                        return false;
                                    }
                                } else if (i3 > 0) {
                                    int i4 = i3 - 1;
                                    this.hiddenSpanDepth = i4;
                                    if (i4 == 0 && (i = this.hiddenSpanStartPos) >= 0) {
                                        if (i < editable.length()) {
                                            editable.delete(this.hiddenSpanStartPos, editable.length());
                                        }
                                        this.hiddenSpanStartPos = -1;
                                    }
                                }
                            }
                        } else if (Intrinsics.areEqual(CollectionsKt.last((List) arrayList), "ol")) {
                            int intValue = (stack.size() > 0 ? (Integer) stack.pop() : 0).intValue() + 1;
                            stack.push(Integer.valueOf(intValue));
                            Object[] spans2 = editable.getSpans(editable.length(), editable.length(), ParagraphStyle.class);
                            spans2.getClass();
                            for (Object obj5 : (ParagraphStyle[]) spans2) {
                                if (obj5 instanceof LeadingMarginSpan) {
                                    obj4 = obj5;
                                } else {
                                    editable.removeSpan(obj5);
                                }
                            }
                            Object obj6 = (LeadingMarginSpan) obj4;
                            if (obj6 != null) {
                                int spanStart2 = editable.getSpanStart(obj6);
                                editable.removeSpan(obj6);
                                editable.insert(spanStart2, intValue + ". ");
                                editable.setSpan(new LeadingMarginSpan.Standard(Okio__OkioKt.roundedDpToPx(16.0f)), spanStart2, editable.length(), 0);
                                return false;
                            }
                        }
                    } else {
                        if (z) {
                            editable.setSpan(new TypefaceSpan("monospace"), editable.length(), editable.length(), 18);
                            return false;
                        }
                        Object[] spans3 = editable.getSpans(editable.length(), editable.length(), TypefaceSpan.class);
                        spans3.getClass();
                        TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) spans3;
                        if (typefaceSpanArr.length != 0) {
                            Object obj7 = (TypefaceSpan) ArraysKt___ArraysKt.last(typefaceSpanArr);
                            int spanStart3 = editable.getSpanStart(obj7);
                            editable.removeSpan(obj7);
                            editable.setSpan(new TypefaceSpan("monospace"), spanStart3, editable.length(), 0);
                            return false;
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public CustomTagHandler(LazyGridSlots lazyGridSlots, int i, int i2, LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, Dispatcher dispatcher) {
            this.listParents = lazyGridSlots;
            this.view = lazyGridSlots;
            this.hiddenSpanDepth = i;
            this.hiddenSpanStartPos = i2;
            this.lastAClass = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
            this.listItemCounts = dispatcher;
        }
    }
}
