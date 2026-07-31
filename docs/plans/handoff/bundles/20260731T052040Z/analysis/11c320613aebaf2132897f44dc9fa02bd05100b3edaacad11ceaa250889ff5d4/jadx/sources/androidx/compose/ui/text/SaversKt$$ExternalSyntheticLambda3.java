package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.Fade;
import androidx.compose.animation.Scale;
import androidx.compose.animation.TransitionData;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.ThreadLocalElement;
import org.jsoup.Jsoup;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AnnotationType annotationType;
        Object save;
        CombinedContext combinedContext;
        switch (this.$r8$classId) {
            case 0:
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) obj2;
                return Jsoup.arrayListOf(clickable.tag, SaversKt.save(clickable.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 1:
                long j = ((TextUnitType) obj2).type;
                if (TextUnitType.m456equalsimpl0(j, 8589934592L)) {
                    return 0;
                }
                if (TextUnitType.m456equalsimpl0(j, 4294967296L)) {
                    return 1;
                }
                return Boolean.FALSE;
            case 2:
                Offset offset = (Offset) obj2;
                return offset == null ? false : Offset.m196equalsimpl0(offset.packedValue, 9205357640488583168L) ? Boolean.FALSE : Jsoup.arrayListOf(Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue >> 32))), Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue & 4294967295L))));
            case 3:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                AnnotatedString.Range range = (AnnotatedString.Range) obj2;
                Object obj3 = range.item;
                if (obj3 instanceof ParagraphStyle) {
                    annotationType = AnnotationType.Paragraph;
                } else if (obj3 instanceof SpanStyle) {
                    annotationType = AnnotationType.Span;
                } else if (obj3 instanceof VerbatimTtsAnnotation) {
                    annotationType = AnnotationType.VerbatimTts;
                } else if (obj3 instanceof UrlAnnotation) {
                    annotationType = AnnotationType.Url;
                } else if (obj3 instanceof LinkAnnotation.Url) {
                    annotationType = AnnotationType.Link;
                } else if (obj3 instanceof LinkAnnotation.Clickable) {
                    annotationType = AnnotationType.Clickable;
                } else {
                    if (!(obj3 instanceof StringAnnotation)) {
                        throw new UnsupportedOperationException();
                    }
                    annotationType = AnnotationType.String;
                }
                switch (annotationType.ordinal()) {
                    case 0:
                        obj3.getClass();
                        save = SaversKt.save((ParagraphStyle) obj3, SaversKt.ParagraphStyleSaver, saveableHolder);
                        break;
                    case 1:
                        obj3.getClass();
                        save = SaversKt.save((SpanStyle) obj3, SaversKt.SpanStyleSaver, saveableHolder);
                        break;
                    case 2:
                        obj3.getClass();
                        save = SaversKt.save((VerbatimTtsAnnotation) obj3, SaversKt.VerbatimTtsAnnotationSaver, saveableHolder);
                        break;
                    case 3:
                        obj3.getClass();
                        save = SaversKt.save((UrlAnnotation) obj3, SaversKt.UrlAnnotationSaver, saveableHolder);
                        break;
                    case 4:
                        obj3.getClass();
                        save = SaversKt.save((LinkAnnotation.Url) obj3, SaversKt.LinkSaver, saveableHolder);
                        break;
                    case 5:
                        obj3.getClass();
                        save = SaversKt.save((LinkAnnotation.Clickable) obj3, SaversKt.ClickableSaver, saveableHolder);
                        break;
                    case 6:
                        obj3.getClass();
                        save = ((StringAnnotation) obj3).value;
                        break;
                    default:
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return null;
                }
                return Jsoup.arrayListOf(annotationType, save, Integer.valueOf(range.start), Integer.valueOf(range.end), range.tag);
            case 4:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
                List list = ((LocaleList) obj2).localeList;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(SaversKt.save((Locale) list.get(i), SaversKt.LocaleSaver, saveableHolder2));
                }
                return arrayList;
            case 5:
                return ((Locale) obj2).platformLocale.toLanguageTag();
            case 6:
                SaveableHolder saveableHolder3 = (SaveableHolder) obj;
                LineHeightStyle lineHeightStyle = (LineHeightStyle) obj2;
                return Jsoup.arrayListOf(SaversKt.save(new LineHeightStyle.Alignment(lineHeightStyle.alignment), SaversKt.LineHeightStyleAlignmentSaver, saveableHolder3), SaversKt.save(new LineHeightStyle.Trim(lineHeightStyle.trim), SaversKt.LineHeightStyleTrimSaver, saveableHolder3), SaversKt.save(new LineHeightStyle.Mode(lineHeightStyle.mode), SaversKt.LineHeightStyleModeSaver, saveableHolder3));
            case 7:
                return Float.valueOf(((LineHeightStyle.Alignment) obj2).topRatio);
            case 8:
                return Integer.valueOf(((LineHeightStyle.Trim) obj2).value);
            case 9:
                return Integer.valueOf(((LineHeightStyle.Mode) obj2).value);
            case 10:
                return ((VerbatimTtsAnnotation) obj2).verbatim;
            case 11:
                SaveableHolder saveableHolder4 = (SaveableHolder) obj;
                ParagraphStyle paragraphStyle = (ParagraphStyle) obj2;
                Object save2 = SaversKt.save(new TextAlign(paragraphStyle.textAlign), SaversKt.TextAlignSaver, saveableHolder4);
                Object save3 = SaversKt.save(new TextDirection(paragraphStyle.textDirection), SaversKt.TextDirectionSaver, saveableHolder4);
                Object save4 = SaversKt.save(new TextUnit(paragraphStyle.lineHeight), SaversKt.TextUnitSaver, saveableHolder4);
                TextIndent textIndent = paragraphStyle.textIndent;
                TextIndent textIndent2 = TextIndent.None;
                Object save5 = SaversKt.save(textIndent, SaversKt.TextIndentSaver, saveableHolder4);
                Object save6 = SaversKt.save(paragraphStyle.platformStyle, ParagraphKt.PlatformParagraphStyleSaver, saveableHolder4);
                LineHeightStyle lineHeightStyle2 = paragraphStyle.lineHeightStyle;
                LineHeightStyle lineHeightStyle3 = LineHeightStyle.Default;
                return Jsoup.arrayListOf(save2, save3, save4, save5, save6, SaversKt.save(lineHeightStyle2, SaversKt.LineHeightStyleSaver, saveableHolder4), SaversKt.save(new LineBreak(paragraphStyle.lineBreak), ParagraphKt.LineBreakSaver, saveableHolder4), SaversKt.save(new Hyphens(paragraphStyle.hyphens), SaversKt.HyphensSaver, saveableHolder4), SaversKt.save(paragraphStyle.textMotion, ParagraphKt.TextMotionSaver, saveableHolder4));
            case 12:
                return ((UrlAnnotation) obj2).url;
            case 13:
                SaveableHolder saveableHolder5 = (SaveableHolder) obj;
                SpanStyle spanStyle = (SpanStyle) obj2;
                Color color = new Color(spanStyle.textForegroundStyle.mo419getColor0d7_KjU());
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.ColorSaver;
                Object save7 = SaversKt.save(color, saversKt$NonNullValueClassSaver$1, saveableHolder5);
                TextUnit textUnit = new TextUnit(spanStyle.fontSize);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.TextUnitSaver;
                Object save8 = SaversKt.save(textUnit, saversKt$NonNullValueClassSaver$12, saveableHolder5);
                FontWeight fontWeight = spanStyle.fontWeight;
                FontWeight fontWeight2 = FontWeight.W600;
                Object save9 = SaversKt.save(fontWeight, SaversKt.FontWeightSaver, saveableHolder5);
                Object save10 = SaversKt.save(spanStyle.fontStyle, SaversKt.FontStyleSaver, saveableHolder5);
                Object save11 = SaversKt.save(spanStyle.fontSynthesis, SaversKt.FontSynthesisSaver, saveableHolder5);
                String str = spanStyle.fontFeatureSettings;
                Object save12 = SaversKt.save(new TextUnit(spanStyle.letterSpacing), saversKt$NonNullValueClassSaver$12, saveableHolder5);
                Object save13 = SaversKt.save(spanStyle.baselineShift, SaversKt.BaselineShiftSaver, saveableHolder5);
                Object save14 = SaversKt.save(spanStyle.textGeometricTransform, SaversKt.TextGeometricTransformSaver, saveableHolder5);
                LocaleList localeList = spanStyle.localeList;
                LocaleList localeList2 = LocaleList.Empty;
                Object save15 = SaversKt.save(localeList, SaversKt.LocaleListSaver, saveableHolder5);
                Object save16 = SaversKt.save(new Color(spanStyle.background), saversKt$NonNullValueClassSaver$1, saveableHolder5);
                Object save17 = SaversKt.save(spanStyle.textDecoration, SaversKt.TextDecorationSaver, saveableHolder5);
                Shadow shadow = spanStyle.shadow;
                Shadow shadow2 = Shadow.None;
                return Jsoup.arrayListOf(save7, save8, save9, save10, save11, -1, str, save12, save13, save14, save15, save16, save17, SaversKt.save(shadow, SaversKt.ShadowSaver, saveableHolder5));
            case 14:
                SaveableHolder saveableHolder6 = (SaveableHolder) obj;
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                SpanStyle spanStyle2 = textLinkStyles.style;
                CardView.AnonymousClass1 anonymousClass1 = SaversKt.SpanStyleSaver;
                return Jsoup.arrayListOf(SaversKt.save(spanStyle2, anonymousClass1, saveableHolder6), SaversKt.save(textLinkStyles.focusedStyle, anonymousClass1, saveableHolder6), SaversKt.save(textLinkStyles.hoveredStyle, anonymousClass1, saveableHolder6), SaversKt.save(textLinkStyles.pressedStyle, anonymousClass1, saveableHolder6));
            case 15:
                PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj2;
                Boolean valueOf = Boolean.valueOf(platformParagraphStyle.includeFontPadding);
                CardView.AnonymousClass1 anonymousClass12 = SaversKt.AnnotationRangeListSaver;
                return Jsoup.arrayListOf(valueOf, SaversKt.save(new EmojiSupportMatch(platformParagraphStyle.emojiSupportMatch), ParagraphKt.emojiSupportMatchSaver, (SaveableHolder) obj));
            case 16:
                return Integer.valueOf(((EmojiSupportMatch) obj2).value);
            case 17:
                return Integer.valueOf(((LineBreak) obj2).mask);
            case 18:
                TextMotion textMotion = (TextMotion) obj2;
                return Jsoup.arrayListOf(SaversKt.save(new TextMotion.Linearity(textMotion.linearity), ParagraphKt.TextMotionLinearitySaver, (SaveableHolder) obj), Boolean.valueOf(textMotion.subpixelTextPositioning));
            case 19:
                return Integer.valueOf(((TextMotion.Linearity) obj2).value);
            case 20:
                ((Integer) obj2).getClass();
                return new ContentTransform(EnterExitTransitionKt.fadeIn$default(ArcSplineKt.spring$default(1.0f, 1600.0f, null, 4)), new ExitTransitionImpl(new TransitionData((Fade) null, new Scale(0.7f, TransformOrigin.Center, ArcSplineKt.spring$default(0.0f, 400.0f, null, 5)), (LinkedHashMap) null, Token.INC)));
            case 21:
                String str2 = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                str2.getClass();
                element.getClass();
                if (str2.length() == 0) {
                    return element.toString();
                }
                return str2 + ", " + element;
            case 22:
                CoroutineContext coroutineContext = (CoroutineContext) obj;
                CoroutineContext.Element element2 = (CoroutineContext.Element) obj2;
                coroutineContext.getClass();
                element2.getClass();
                CoroutineContext minusKey = coroutineContext.minusKey(element2.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
                if (minusKey == emptyCoroutineContext) {
                    return element2;
                }
                ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
                CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) minusKey.get(continuationInterceptor$Key);
                if (coroutineDispatcher == null) {
                    combinedContext = new CombinedContext(element2, minusKey);
                } else {
                    CoroutineContext minusKey2 = minusKey.minusKey(continuationInterceptor$Key);
                    if (minusKey2 == emptyCoroutineContext) {
                        return new CombinedContext(coroutineDispatcher, element2);
                    }
                    combinedContext = new CombinedContext(coroutineDispatcher, new CombinedContext(element2, minusKey2));
                }
                return combinedContext;
            case 23:
                return new Pair(obj, obj2);
            case 24:
                return ((CoroutineContext) obj).plus((CoroutineContext.Element) obj2);
            case 25:
                return ((CoroutineContext) obj).plus((CoroutineContext.Element) obj2);
            case 26:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return bool;
            case 27:
                return Integer.valueOf(((Integer) obj).intValue() + 1);
            case 28:
                CoroutineContext.Element element3 = (CoroutineContext.Element) obj2;
                if (!(element3 instanceof ThreadLocalElement)) {
                    return obj;
                }
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num != null ? num.intValue() : 1;
                return intValue == 0 ? element3 : Integer.valueOf(intValue + 1);
            default:
                ThreadLocalElement threadLocalElement = (ThreadLocalElement) obj;
                CoroutineContext.Element element4 = (CoroutineContext.Element) obj2;
                if (threadLocalElement != null) {
                    return threadLocalElement;
                }
                if (element4 instanceof ThreadLocalElement) {
                    return (ThreadLocalElement) element4;
                }
                return null;
        }
    }
}
