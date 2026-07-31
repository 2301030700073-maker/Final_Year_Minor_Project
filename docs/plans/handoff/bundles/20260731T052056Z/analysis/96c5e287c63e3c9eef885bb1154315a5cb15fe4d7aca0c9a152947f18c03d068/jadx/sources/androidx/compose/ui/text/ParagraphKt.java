package androidx.compose.ui.text;

import android.graphics.Typeface;
import android.os.Build;
import android.text.Html;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.TypefaceSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.LoadedFontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.paging.HintHandler;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.language.LanguageUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ParagraphKt {
    public static final CardView.AnonymousClass1 LineBreakSaver;
    public static final CardView.AnonymousClass1 PlatformParagraphStyleSaver;
    public static final Html_androidKt$TagHandler$1 TagHandler = new Html_androidKt$TagHandler$1();
    public static final CardView.AnonymousClass1 TextMotionLinearitySaver;
    public static final CardView.AnonymousClass1 TextMotionSaver;
    public static final CardView.AnonymousClass1 emojiSupportMatchSaver;

    static {
        int i = 12;
        PlatformParagraphStyleSaver = new CardView.AnonymousClass1(i, new SaversKt$$ExternalSyntheticLambda3(22), new PagingSource$$ExternalSyntheticLambda0(11));
        emojiSupportMatchSaver = new CardView.AnonymousClass1(i, new SaversKt$$ExternalSyntheticLambda3(23), new PagingSource$$ExternalSyntheticLambda0(12));
        LineBreakSaver = new CardView.AnonymousClass1(i, new SaversKt$$ExternalSyntheticLambda3(24), new PagingSource$$ExternalSyntheticLambda0(13));
        TextMotionSaver = new CardView.AnonymousClass1(i, new SaversKt$$ExternalSyntheticLambda3(25), new PagingSource$$ExternalSyntheticLambda0(14));
        TextMotionLinearitySaver = new CardView.AnonymousClass1(i, new SaversKt$$ExternalSyntheticLambda3(26), new PagingSource$$ExternalSyntheticLambda0(15));
    }

    /* renamed from: Paragraph-Ul8oQg4$default, reason: not valid java name */
    public static AndroidParagraph m632ParagraphUl8oQg4$default(String str, TextStyle textStyle, long j, Density density, FontFamily.Resolver resolver, int i, int i2) {
        EmptyList emptyList = EmptyList.INSTANCE;
        return new AndroidParagraph(new AndroidParagraphIntrinsics(str, textStyle, emptyList, emptyList, resolver, density), i, 1, j);
    }

    public static final long TextRange(int i, int i2) {
        if (i < 0 || i2 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("start and end cannot be negative. [start: " + i + ", end: " + i2 + ']');
        }
        long j = (i2 & 4294967295L) | (i << 32);
        int i3 = TextRange.$r8$clinit;
        return j;
    }

    /* renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m633coerceIn8ffj60Q(long j, int i) {
        int i2 = TextRange.$r8$clinit;
        int i3 = (int) (j >> 32);
        int i4 = i3 < 0 ? 0 : i3;
        if (i4 > i) {
            i4 = i;
        }
        int i5 = (int) (4294967295L & j);
        int i6 = i5 >= 0 ? i5 : 0;
        if (i6 <= i) {
            i = i6;
        }
        return (i4 == i3 && i == i5) ? j : TextRange(i4, i);
    }

    public static final int findParagraphByIndex(List list, int i) {
        int i2;
        int i3 = ((ParagraphInfo) CollectionsKt.last(list)).endIndex;
        if (i > ((ParagraphInfo) CollectionsKt.last(list)).endIndex) {
            InlineClassHelperKt.throwIllegalArgumentException("Index " + i + " should be less or equal than last line's end " + i3);
        }
        int size = list.size() - 1;
        int i4 = 0;
        while (true) {
            if (i4 > size) {
                i2 = -(i4 + 1);
                break;
            }
            i2 = (i4 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i2);
            char c = paragraphInfo.startIndex > i ? (char) 1 : paragraphInfo.endIndex <= i ? (char) 65535 : (char) 0;
            if (c >= 0) {
                if (c <= 0) {
                    break;
                }
                size = i2 - 1;
            } else {
                i4 = i2 + 1;
            }
        }
        if (i2 >= 0 && i2 < list.size()) {
            return i2;
        }
        StringBuilder m20m = Animation.CC.m20m(i2, "Found paragraph index ", " should be in range [0, ");
        m20m.append(list.size());
        m20m.append(").\nDebug info: index=");
        m20m.append(i);
        m20m.append(", paragraphs=[");
        m20m.append(ListUtilsKt.fastJoinToString$default(list, null, new SaversKt$$ExternalSyntheticLambda2(9), 31));
        m20m.append(']');
        InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
        return i2;
    }

    public static final int findParagraphByLineIndex(List list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            char c = paragraphInfo.startLineIndex > i ? (char) 1 : paragraphInfo.endLineIndex <= i ? (char) 65535 : (char) 0;
            if (c < 0) {
                i2 = i3 + 1;
            } else {
                if (c <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final int findParagraphByY(ArrayList arrayList, float f) {
        if (f <= RecyclerView.DECELERATION_RATE) {
            return 0;
        }
        if (f >= ((ParagraphInfo) CollectionsKt.last((List) arrayList)).bottom) {
            return arrayList.size() - 1;
        }
        int size = arrayList.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2);
            char c = paragraphInfo.top > f ? (char) 1 : paragraphInfo.bottom <= f ? (char) 65535 : (char) 0;
            if (c < 0) {
                i = i2 + 1;
            } else {
                if (c <= 0) {
                    return i2;
                }
                size = i2 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: findParagraphsByRange-Sb-Bc2M, reason: not valid java name */
    public static final void m634findParagraphsByRangeSbBc2M(ArrayList arrayList, long j, Function1 function1) {
        int size = arrayList.size();
        for (int findParagraphByIndex = findParagraphByIndex(arrayList, TextRange.m644getMinimpl(j)); findParagraphByIndex < size; findParagraphByIndex++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(findParagraphByIndex);
            if (paragraphInfo.startIndex >= TextRange.m643getMaximpl(j)) {
                return;
            }
            if (paragraphInfo.startIndex != paragraphInfo.endIndex) {
                function1.invoke(paragraphInfo);
            }
        }
    }

    public static AnnotatedString fromHtml$default(String str, TextLinkStyles textLinkStyles, int i) {
        TextIndent textIndent;
        Spanned spanned;
        boolean z;
        String url;
        FontFamily fontFamily;
        FontFamily fontFamily2;
        FontFamily fontFamily3;
        TextIndent textIndent2 = null;
        TextLinkStyles textLinkStyles2 = (i & 2) != 0 ? null : textLinkStyles;
        String m = Modifier.CC.m("<ContentHandlerReplacementTag />", str);
        int i2 = Build.VERSION.SDK_INT;
        Html_androidKt$TagHandler$1 html_androidKt$TagHandler$1 = TagHandler;
        Spanned fromHtml = i2 >= 24 ? LanguageUtil.fromHtml(m, 63, null, html_androidKt$TagHandler$1) : Html.fromHtml(m, null, html_androidKt$TagHandler$1);
        AnnotatedString.Builder builder = new AnnotatedString.Builder(fromHtml.length());
        builder.append((CharSequence) fromHtml);
        boolean z2 = false;
        Object[] spans = fromHtml.getSpans(0, builder.text.length(), Object.class);
        int length = spans.length;
        int i3 = 0;
        while (i3 < length) {
            Object obj = spans[i3];
            long TextRange = TextRange(fromHtml.getSpanStart(obj), fromHtml.getSpanEnd(obj));
            int i4 = TextRange.$r8$clinit;
            int i5 = (int) (TextRange >> 32);
            int i6 = (int) (TextRange & 4294967295L);
            if (obj instanceof AbsoluteSizeSpan) {
                textIndent = textIndent2;
                spanned = fromHtml;
                z = z2;
            } else {
                boolean z3 = obj instanceof AlignmentSpan;
                int i7 = 8;
                ArrayList arrayList = builder.annotations;
                int i8 = 3;
                if (z3) {
                    Layout.Alignment alignment = ((AlignmentSpan) obj).getAlignment();
                    int i9 = alignment == null ? -1 : Html_androidKt$WhenMappings.$EnumSwitchMapping$0[alignment.ordinal()];
                    if (i9 == 1) {
                        i8 = 5;
                    } else if (i9 != 2) {
                        i8 = i9 != 3 ? 0 : 6;
                    }
                    arrayList.add(new AnnotatedString.Builder.MutableRange(new ParagraphStyle(i8, textIndent2, 510), i5, i6, i7));
                } else if (obj instanceof AnnotationSpan) {
                    AnnotationSpan annotationSpan = (AnnotationSpan) obj;
                    arrayList.add(new AnnotatedString.Builder.MutableRange(i5, i6, new StringAnnotation(annotationSpan.value), annotationSpan.key));
                } else if (obj instanceof BackgroundColorSpan) {
                    builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, ColorKt.Color(((BackgroundColorSpan) obj).getBackgroundColor()), (TextDecoration) null, (Shadow) null, 63487), i5, i6);
                } else {
                    if (obj instanceof BulletSpanWithLevel) {
                        long j = Bullet.DefaultIndentation;
                        BulletSpanWithLevel bulletSpanWithLevel = (BulletSpanWithLevel) obj;
                        int i10 = bulletSpanWithLevel.indentationLevel;
                        ContextsKt.m788checkArithmeticR2X_6o(j);
                        spanned = fromHtml;
                        long pack = ContextsKt.pack(TextUnit.m725getValueimpl(j) * i10, j & 1095216660480L);
                        Bullet bullet = bulletSpanWithLevel.bullet;
                        arrayList.add(new AnnotatedString.Builder.MutableRange(new ParagraphStyle(0, new TextIndent(pack, pack), 503), i5, i6, i7));
                        arrayList.add(new AnnotatedString.Builder.MutableRange(bullet, i5, i6, i7));
                    } else {
                        spanned = fromHtml;
                        if (obj instanceof ForegroundColorSpan) {
                            builder.addStyle(new SpanStyle(ColorKt.Color(((ForegroundColorSpan) obj).getForegroundColor()), 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65534), i5, i6);
                        } else if (obj instanceof RelativeSizeSpan) {
                            builder.addStyle(new SpanStyle(0L, ContextsKt.pack(((RelativeSizeSpan) obj).getSizeChange(), 8589934592L), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65533), i5, i6);
                        } else if (obj instanceof StrikethroughSpan) {
                            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.LineThrough, (Shadow) null, 61439), i5, i6);
                        } else if (obj instanceof StyleSpan) {
                            int style = ((StyleSpan) obj).getStyle();
                            SpanStyle spanStyle = style != 1 ? style != 2 ? style != 3 ? null : new SpanStyle(0L, 0L, FontWeight.Bold, new FontStyle(1), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65523) : new SpanStyle(0L, 0L, (FontWeight) null, new FontStyle(1), (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65527) : new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531);
                            if (spanStyle != null) {
                                builder.addStyle(spanStyle, i5, i6);
                            }
                        } else if (obj instanceof SubscriptSpan) {
                            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(-0.5f), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65279), i5, i6);
                        } else if (obj instanceof SuperscriptSpan) {
                            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, new BaselineShift(0.5f), (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65279), i5, i6);
                        } else {
                            if (obj instanceof TypefaceSpan) {
                                TypefaceSpan typefaceSpan = (TypefaceSpan) obj;
                                String family = typefaceSpan.getFamily();
                                if (Intrinsics.areEqual(family, "cursive")) {
                                    fontFamily3 = FontFamily.Cursive;
                                } else if (Intrinsics.areEqual(family, "monospace")) {
                                    fontFamily3 = FontFamily.Monospace;
                                } else if (Intrinsics.areEqual(family, "sans-serif")) {
                                    fontFamily3 = FontFamily.SansSerif;
                                } else if (Intrinsics.areEqual(family, "serif")) {
                                    fontFamily3 = FontFamily.Serif;
                                } else {
                                    String family2 = typefaceSpan.getFamily();
                                    if (family2 == null || family2.length() == 0) {
                                        z = false;
                                    } else {
                                        z = false;
                                        Typeface create = Typeface.create(family2, 0);
                                        Typeface typeface = Typeface.DEFAULT;
                                        if (Intrinsics.areEqual(create, typeface) || Intrinsics.areEqual(create, Typeface.create(typeface, 0))) {
                                            create = null;
                                        }
                                        if (create != null) {
                                            fontFamily = new LoadedFontFamily(new HintHandler(10, create));
                                            fontFamily2 = fontFamily;
                                            builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, fontFamily2, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65503), i5, i6);
                                        }
                                    }
                                    fontFamily = null;
                                    fontFamily2 = fontFamily;
                                    builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, fontFamily2, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65503), i5, i6);
                                }
                                fontFamily2 = fontFamily3;
                                z = false;
                                builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, fontFamily2, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65503), i5, i6);
                            } else {
                                z = false;
                                if (obj instanceof UnderlineSpan) {
                                    builder.addStyle(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Underline, (Shadow) null, 61439), i5, i6);
                                } else if ((obj instanceof URLSpan) && (url = ((URLSpan) obj).getURL()) != null) {
                                    textIndent = null;
                                    arrayList.add(new AnnotatedString.Builder.MutableRange(new LinkAnnotation.Url(url, textLinkStyles2, null), i5, i6, i7));
                                }
                            }
                            textIndent = null;
                        }
                    }
                    z = false;
                    textIndent = null;
                }
                textIndent = textIndent2;
                spanned = fromHtml;
                z = false;
            }
            i3++;
            z2 = z;
            textIndent2 = textIndent;
            fromHtml = spanned;
        }
        return builder.toAnnotatedString();
    }

    public static final TextStyle resolveDefaults(TextStyle textStyle, LayoutDirection layoutDirection) {
        int i;
        SpanStyle spanStyle = textStyle.spanStyle;
        TextForegroundStyle textForegroundStyle = SpanStyleKt.DefaultColorForegroundStyle;
        TextForegroundStyle takeOrElse = spanStyle.textForegroundStyle.takeOrElse(new Worker$$ExternalSyntheticLambda1(16));
        long j = spanStyle.fontSize;
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if ((j & 1095216660480L) == 0) {
            j = SpanStyleKt.DefaultFontSize;
        }
        long j2 = j;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = FontWeight.Normal;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle = spanStyle.fontStyle;
        FontStyle fontStyle2 = new FontStyle(fontStyle != null ? fontStyle.value : 0);
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        FontSynthesis fontSynthesis2 = new FontSynthesis(fontSynthesis != null ? fontSynthesis.value : 65535);
        FontFamily fontFamily = spanStyle.fontFamily;
        if (fontFamily == null) {
            fontFamily = FontFamily.Default;
        }
        FontFamily fontFamily2 = fontFamily;
        String str = spanStyle.fontFeatureSettings;
        if (str == null) {
            str = "";
        }
        String str2 = str;
        long j3 = spanStyle.letterSpacing;
        if ((j3 & 1095216660480L) == 0) {
            j3 = SpanStyleKt.DefaultLetterSpacing;
        }
        long j4 = j3;
        BaselineShift baselineShift = spanStyle.baselineShift;
        float f = RecyclerView.DECELERATION_RATE;
        float f2 = baselineShift != null ? baselineShift.multiplier : 0.0f;
        if (!Float.isNaN(f2)) {
            f = f2;
        }
        BaselineShift baselineShift2 = new BaselineShift(f);
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.None;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        if (localeList == null) {
            LocaleList localeList2 = LocaleList.Empty;
            localeList = PlatformLocaleKt.platformLocaleDelegate.getCurrent();
        }
        LocaleList localeList3 = localeList;
        long j5 = spanStyle.background;
        if (j5 == 16) {
            j5 = SpanStyleKt.DefaultBackgroundColor;
        }
        long j6 = j5;
        TextDecoration textDecoration = spanStyle.textDecoration;
        if (textDecoration == null) {
            textDecoration = TextDecoration.None;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.shadow;
        if (shadow == null) {
            shadow = Shadow.None;
        }
        Shadow shadow2 = shadow;
        PlatformSpanStyle platformSpanStyle = spanStyle.platformStyle;
        DrawStyle drawStyle = spanStyle.drawStyle;
        if (drawStyle == null) {
            drawStyle = Fill.INSTANCE;
        }
        SpanStyle spanStyle2 = new SpanStyle(takeOrElse, j2, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j4, baselineShift2, textGeometricTransform2, localeList3, j6, textDecoration2, shadow2, platformSpanStyle, drawStyle);
        ParagraphStyle paragraphStyle = textStyle.paragraphStyle;
        int i2 = ParagraphStyleKt.$r8$clinit;
        int i3 = paragraphStyle.textAlign;
        int i4 = 5;
        int i5 = i3 == 0 ? 5 : i3;
        int i6 = paragraphStyle.textDirection;
        if (i6 == 3) {
            int i7 = TextStyleKt$WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i7 == 1) {
                i4 = 4;
            } else if (i7 != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            i = i4;
        } else if (i6 == 0) {
            int i8 = TextStyleKt$WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i8 == 1) {
                i = 1;
            } else {
                if (i8 != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                i = 2;
            }
        } else {
            i = i6;
        }
        long j7 = paragraphStyle.lineHeight;
        if ((j7 & 1095216660480L) == 0) {
            j7 = ParagraphStyleKt.DefaultLineHeight;
        }
        TextIndent textIndent = paragraphStyle.textIndent;
        if (textIndent == null) {
            textIndent = TextIndent.None;
        }
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformParagraphStyle = paragraphStyle.platformStyle;
        LineHeightStyle lineHeightStyle = paragraphStyle.lineHeightStyle;
        int i9 = paragraphStyle.lineBreak;
        if (i9 == 0) {
            i9 = LineBreak.Simple;
        }
        int i10 = i9;
        int i11 = paragraphStyle.hyphens;
        int i12 = i11 == 0 ? 1 : i11;
        TextMotion textMotion = paragraphStyle.textMotion;
        if (textMotion == null) {
            textMotion = TextMotion.Static;
        }
        return new TextStyle(spanStyle2, new ParagraphStyle(i5, i, j7, textIndent2, platformParagraphStyle, lineHeightStyle, i10, i12, textMotion), textStyle.platformStyle);
    }
}
