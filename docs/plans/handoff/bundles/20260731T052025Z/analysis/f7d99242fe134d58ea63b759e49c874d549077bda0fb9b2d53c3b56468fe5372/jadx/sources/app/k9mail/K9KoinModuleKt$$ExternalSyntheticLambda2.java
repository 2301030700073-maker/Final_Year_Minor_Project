package app.k9mail;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotationType;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.SaversKt$NonNullValueClassSaver$1;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.StringAnnotation;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.datastore.core.Message$Update;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import app.k9mail.auth.K9OAuthConfigurationFactory;
import app.k9mail.core.android.common.camera.io.CaptureImageFileWriter;
import app.k9mail.featureflag.K9FeatureFlagFactory;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CompletableDeferredImpl;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class K9KoinModuleKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ K9KoinModuleKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AnnotationType annotationType;
        Object save;
        switch (this.$r8$classId) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return "K-9 Mail";
            case 1:
                TextUnit textUnit = (TextUnit) obj2;
                return textUnit == null ? false : TextUnit.m771equalsimpl0(textUnit.packedValue, TextUnit.Unspecified) ? Boolean.FALSE : IntOffsetKt.arrayListOf(Float.valueOf(TextUnit.m773getValueimpl(textUnit.packedValue)), SaversKt.save(new TextUnitType(TextUnit.m772getTypeUIouoOA(textUnit.packedValue)), SaversKt.TextUnitTypeSaver, (SaveableHolder) obj));
            case 2:
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) obj2;
                return IntOffsetKt.arrayListOf(clickable.tag, SaversKt.save(clickable.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 3:
                long j = ((TextUnitType) obj2).type;
                if (TextUnitType.m776equalsimpl0(j, 8589934592L)) {
                    return 0;
                }
                if (TextUnitType.m776equalsimpl0(j, 4294967296L)) {
                    return 1;
                }
                return Boolean.FALSE;
            case 4:
                Offset offset = (Offset) obj2;
                return offset == null ? false : Offset.m437equalsimpl0(offset.packedValue, 9205357640488583168L) ? Boolean.FALSE : IntOffsetKt.arrayListOf(Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue >> 32))), Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue & 4294967295L))));
            case 5:
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
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                }
                return IntOffsetKt.arrayListOf(annotationType, save, Integer.valueOf(range.start), Integer.valueOf(range.end), range.tag);
            case 6:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
                List list = ((LocaleList) obj2).localeList;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(SaversKt.save((Locale) list.get(i), SaversKt.LocaleSaver, saveableHolder2));
                }
                return arrayList;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Locale) obj2).platformLocale.toLanguageTag();
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SaveableHolder saveableHolder3 = (SaveableHolder) obj;
                LineHeightStyle lineHeightStyle = (LineHeightStyle) obj2;
                return IntOffsetKt.arrayListOf(SaversKt.save(new LineHeightStyle.Alignment(lineHeightStyle.alignment), SaversKt.LineHeightStyleAlignmentSaver, saveableHolder3), SaversKt.save(new LineHeightStyle.Trim(lineHeightStyle.trim), SaversKt.LineHeightStyleTrimSaver, saveableHolder3), SaversKt.save(new LineHeightStyle.Mode(lineHeightStyle.mode), SaversKt.LineHeightStyleModeSaver, saveableHolder3));
            case 9:
                return Float.valueOf(((LineHeightStyle.Alignment) obj2).topRatio);
            case 10:
                return Integer.valueOf(((LineHeightStyle.Trim) obj2).value);
            case 11:
                return Integer.valueOf(((LineHeightStyle.Mode) obj2).value);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((VerbatimTtsAnnotation) obj2).verbatim;
            case 13:
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
                return IntOffsetKt.arrayListOf(save2, save3, save4, save5, save6, SaversKt.save(lineHeightStyle2, SaversKt.LineHeightStyleSaver, saveableHolder4), SaversKt.save(new LineBreak(paragraphStyle.lineBreak), ParagraphKt.LineBreakSaver, saveableHolder4), SaversKt.save(new Hyphens(paragraphStyle.hyphens), SaversKt.HyphensSaver, saveableHolder4), SaversKt.save(paragraphStyle.textMotion, ParagraphKt.TextMotionSaver, saveableHolder4));
            case 14:
                return ((UrlAnnotation) obj2).url;
            case OffsetKt.Horizontal /* 15 */:
                SaveableHolder saveableHolder5 = (SaveableHolder) obj;
                SpanStyle spanStyle = (SpanStyle) obj2;
                Color color = new Color(spanStyle.textForegroundStyle.mo720getColor0d7_KjU());
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.ColorSaver;
                Object save7 = SaversKt.save(color, saversKt$NonNullValueClassSaver$1, saveableHolder5);
                TextUnit textUnit2 = new TextUnit(spanStyle.fontSize);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.TextUnitSaver;
                Object save8 = SaversKt.save(textUnit2, saversKt$NonNullValueClassSaver$12, saveableHolder5);
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
                return IntOffsetKt.arrayListOf(save7, save8, save9, save10, save11, -1, str, save12, save13, save14, save15, save16, save17, SaversKt.save(shadow, SaversKt.ShadowSaver, saveableHolder5));
            case 16:
                SaveableHolder saveableHolder6 = (SaveableHolder) obj;
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                SpanStyle spanStyle2 = textLinkStyles.style;
                WeakCache weakCache = SaversKt.SpanStyleSaver;
                return IntOffsetKt.arrayListOf(SaversKt.save(spanStyle2, weakCache, saveableHolder6), SaversKt.save(textLinkStyles.focusedStyle, weakCache, saveableHolder6), SaversKt.save(textLinkStyles.hoveredStyle, weakCache, saveableHolder6), SaversKt.save(textLinkStyles.pressedStyle, weakCache, saveableHolder6));
            case 17:
                PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj2;
                Boolean valueOf = Boolean.valueOf(platformParagraphStyle.includeFontPadding);
                WeakCache weakCache2 = SaversKt.AnnotatedStringSaver;
                return IntOffsetKt.arrayListOf(valueOf, SaversKt.save(new EmojiSupportMatch(platformParagraphStyle.emojiSupportMatch), ParagraphKt.emojiSupportMatchSaver, (SaveableHolder) obj));
            case 18:
                return Integer.valueOf(((EmojiSupportMatch) obj2).value);
            case 19:
                return Integer.valueOf(((LineBreak) obj2).mask);
            case 20:
                TextMotion textMotion = (TextMotion) obj2;
                return IntOffsetKt.arrayListOf(SaversKt.save(new TextMotion.Linearity(textMotion.linearity), ParagraphKt.TextMotionLinearitySaver, (SaveableHolder) obj), Boolean.valueOf(textMotion.subpixelTextPositioning));
            case 21:
                return Integer.valueOf(((TextMotion.Linearity) obj2).value);
            case 22:
                SaveableHolder saveableHolder7 = (SaveableHolder) obj;
                TextFieldValue textFieldValue = (TextFieldValue) obj2;
                return IntOffsetKt.arrayListOf(SaversKt.save(textFieldValue.annotatedString, SaversKt.AnnotatedStringSaver, saveableHolder7), SaversKt.save(new TextRange(textFieldValue.selection), SaversKt.TextRangeSaver, saveableHolder7));
            case 23:
                Message$Update message$Update = (Message$Update) obj;
                Throwable th = (Throwable) obj2;
                message$Update.getClass();
                CompletableDeferredImpl completableDeferredImpl = message$Update.ack;
                if (th == null) {
                    th = new CancellationException("DataStore scope was cancelled before updateData could complete");
                }
                completableDeferredImpl.completeExceptionally(th);
                return Unit.INSTANCE;
            case 24:
                return ((NavHostController) obj2).saveState();
            case 25:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return "21.0";
            case 26:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return K9KoinModuleKt.appConfig;
            case 27:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9OAuthConfigurationFactory();
            case 28:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new K9FeatureFlagFactory();
            default:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CaptureImageFileWriter((Context) scope.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
        }
    }
}
