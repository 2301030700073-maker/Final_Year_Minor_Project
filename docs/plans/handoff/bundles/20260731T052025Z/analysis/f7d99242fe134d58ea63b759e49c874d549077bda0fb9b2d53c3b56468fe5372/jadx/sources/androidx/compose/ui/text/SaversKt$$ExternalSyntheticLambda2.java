package androidx.compose.ui.text;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLite;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AnnotatedString.Range range;
        int i = 0;
        TextLinkStyles textLinkStyles = null;
        r10 = null;
        EmojiSupportMatch emojiSupportMatch = null;
        r10 = null;
        Shadow shadow = null;
        r10 = null;
        TextMotion textMotion = null;
        r10 = null;
        LinkAnnotation.Clickable clickable = null;
        r10 = null;
        LinkAnnotation.Url url = null;
        r10 = null;
        UrlAnnotation urlAnnotation = null;
        r10 = null;
        VerbatimTtsAnnotation verbatimTtsAnnotation = null;
        r10 = null;
        SpanStyle spanStyle = null;
        r10 = null;
        ParagraphStyle paragraphStyle = null;
        r10 = null;
        TextLinkStyles textLinkStyles2 = null;
        textLinkStyles = null;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                WeakCache weakCache = SaversKt.TextLinkStylesSaver;
                if (!Intrinsics.areEqual(obj3, Boolean.FALSE) && obj3 != null) {
                    textLinkStyles = (TextLinkStyles) ((Function1) weakCache.referenceQueue).invoke(obj3);
                }
                return new LinkAnnotation.Url(str, textLinkStyles, 4);
            case 1:
                obj.getClass();
                return new TextDecoration(((Integer) obj).intValue());
            case 2:
                obj.getClass();
                List list2 = (List) obj;
                return new TextGeometricTransform(((Number) list2.get(0)).floatValue(), ((Number) list2.get(1)).floatValue());
            case 3:
                obj.getClass();
                List list3 = (List) obj;
                Object obj4 = list3.get(0);
                TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
                Function1 function1 = SaversKt.TextUnitSaver.$restore;
                Boolean bool = Boolean.FALSE;
                Intrinsics.areEqual(obj4, bool);
                TextUnit textUnit = obj4 != null ? (TextUnit) function1.invoke(obj4) : null;
                textUnit.getClass();
                long j = textUnit.packedValue;
                Object obj5 = list3.get(1);
                Intrinsics.areEqual(obj5, bool);
                TextUnit textUnit2 = obj5 != null ? (TextUnit) function1.invoke(obj5) : null;
                textUnit2.getClass();
                return new TextIndent(j, textUnit2.packedValue);
            case 4:
                obj.getClass();
                return new FontWeight(((Integer) obj).intValue());
            case 5:
                obj.getClass();
                return new BaselineShift(((Float) obj).floatValue());
            case 6:
                obj.getClass();
                List list4 = (List) obj;
                Object obj6 = list4.get(0);
                Integer num = obj6 != null ? (Integer) obj6 : null;
                num.getClass();
                int intValue = num.intValue();
                Object obj7 = list4.get(1);
                Integer num2 = obj7 != null ? (Integer) obj7 : null;
                num2.getClass();
                return new TextRange(ParagraphKt.TextRange(intValue, num2.intValue()));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                obj.getClass();
                List list5 = (List) obj;
                Object obj8 = list5.get(0);
                int i2 = Color.$r8$clinit;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.areEqual(obj8, bool2);
                Color color = obj8 != null ? Intrinsics.areEqual(obj8, Boolean.FALSE) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj8).intValue())) : null;
                color.getClass();
                long j2 = color.value;
                Object obj9 = list5.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.OffsetSaver;
                Intrinsics.areEqual(obj9, bool2);
                Offset offset = obj9 != null ? (Offset) saversKt$NonNullValueClassSaver$1.$restore.invoke(obj9) : null;
                offset.getClass();
                long j3 = offset.packedValue;
                Object obj10 = list5.get(2);
                Float f = obj10 != null ? (Float) obj10 : null;
                f.getClass();
                return new Shadow(j2, j3, f.floatValue());
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                obj.getClass();
                return new TextAlign(((Integer) obj).intValue());
            case 9:
                obj.getClass();
                return new TextDirection(((Integer) obj).intValue());
            case 10:
                obj.getClass();
                return new Hyphens(((Integer) obj).intValue());
            case 11:
                obj.getClass();
                List list6 = (List) obj;
                ArrayList arrayList = new ArrayList(list6.size());
                int size = list6.size();
                while (i < size) {
                    Object obj11 = list6.get(i);
                    AnnotatedString.Range range2 = (Intrinsics.areEqual(obj11, Boolean.FALSE) || obj11 == null) ? null : (AnnotatedString.Range) ((Function1) SaversKt.AnnotationRangeSaver.referenceQueue).invoke(obj11);
                    range2.getClass();
                    arrayList.add(range2);
                    i++;
                }
                return arrayList;
            case BasicTextKt.ShiftMeta /* 12 */:
                obj.getClass();
                return new FontStyle(((Integer) obj).intValue());
            case 13:
                obj.getClass();
                return new FontSynthesis(((Integer) obj).intValue());
            case 14:
                Boolean bool3 = Boolean.FALSE;
                if (Intrinsics.areEqual(obj, bool3)) {
                    return new TextUnit(TextUnit.Unspecified);
                }
                obj.getClass();
                List list7 = (List) obj;
                Object obj12 = list7.get(0);
                Float f2 = obj12 != null ? (Float) obj12 : null;
                f2.getClass();
                float floatValue = f2.floatValue();
                Object obj13 = list7.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.TextUnitTypeSaver;
                Intrinsics.areEqual(obj13, bool3);
                TextUnitType textUnitType = obj13 != null ? (TextUnitType) saversKt$NonNullValueClassSaver$12.$restore.invoke(obj13) : null;
                textUnitType.getClass();
                return new TextUnit(SQLite.pack(floatValue, textUnitType.type));
            case OffsetKt.Horizontal /* 15 */:
                return Intrinsics.areEqual(obj, 0) ? new TextUnitType(8589934592L) : Intrinsics.areEqual(obj, 1) ? new TextUnitType(4294967296L) : new TextUnitType(0L);
            case 16:
                if (Intrinsics.areEqual(obj, Boolean.FALSE)) {
                    return new Offset(9205357640488583168L);
                }
                obj.getClass();
                List list8 = (List) obj;
                Object obj14 = list8.get(0);
                Float f3 = obj14 != null ? (Float) obj14 : null;
                f3.getClass();
                float floatValue2 = f3.floatValue();
                Object obj15 = list8.get(1);
                (obj15 != null ? (Float) obj15 : null).getClass();
                return new Offset((Float.floatToRawIntBits(floatValue2) << 32) | (Float.floatToRawIntBits(r10.floatValue()) & 4294967295L));
            case 17:
                obj.getClass();
                List list9 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list9.size());
                int size2 = list9.size();
                while (i < size2) {
                    Object obj16 = list9.get(i);
                    Locale locale = (Intrinsics.areEqual(obj16, Boolean.FALSE) || obj16 == null) ? null : (Locale) ((Function1) SaversKt.LocaleSaver.referenceQueue).invoke(obj16);
                    locale.getClass();
                    arrayList2.add(locale);
                    i++;
                }
                return new LocaleList(arrayList2);
            case 18:
                obj.getClass();
                String str2 = (String) obj;
                java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(str2);
                if (Intrinsics.areEqual(forLanguageTag.toLanguageTag(), "und")) {
                    System.err.println("The language tag " + str2 + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
                }
                return new Locale(forLanguageTag);
            case 19:
                obj.getClass();
                List list10 = (List) obj;
                Object obj17 = list10.get(0);
                String str3 = obj17 != null ? (String) obj17 : null;
                str3.getClass();
                Object obj18 = list10.get(1);
                WeakCache weakCache2 = SaversKt.TextLinkStylesSaver;
                if (!Intrinsics.areEqual(obj18, Boolean.FALSE) && obj18 != null) {
                    textLinkStyles2 = (TextLinkStyles) ((Function1) weakCache2.referenceQueue).invoke(obj18);
                }
                return new LinkAnnotation.Clickable(str3, textLinkStyles2);
            case 20:
                obj.getClass();
                List list11 = (List) obj;
                Object obj19 = list11.get(0);
                float f4 = LineHeightStyle.Alignment.Center;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$13 = SaversKt.LineHeightStyleAlignmentSaver;
                Boolean bool4 = Boolean.FALSE;
                Intrinsics.areEqual(obj19, bool4);
                LineHeightStyle.Alignment alignment = obj19 != null ? (LineHeightStyle.Alignment) saversKt$NonNullValueClassSaver$13.$restore.invoke(obj19) : null;
                alignment.getClass();
                float f5 = alignment.topRatio;
                Object obj20 = list11.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$14 = SaversKt.LineHeightStyleTrimSaver;
                Intrinsics.areEqual(obj20, bool4);
                LineHeightStyle.Trim trim = obj20 != null ? (LineHeightStyle.Trim) saversKt$NonNullValueClassSaver$14.$restore.invoke(obj20) : null;
                trim.getClass();
                int i3 = trim.value;
                Object obj21 = list11.get(2);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$15 = SaversKt.LineHeightStyleModeSaver;
                Intrinsics.areEqual(obj21, bool4);
                LineHeightStyle.Mode mode = obj21 != null ? (LineHeightStyle.Mode) saversKt$NonNullValueClassSaver$15.$restore.invoke(obj21) : null;
                mode.getClass();
                return new LineHeightStyle(i3, f5, mode.value);
            case 21:
                obj.getClass();
                float floatValue3 = ((Float) obj).floatValue();
                LineHeightStyle.Alignment.m723constructorimpl(floatValue3);
                return new LineHeightStyle.Alignment(floatValue3);
            case 22:
                obj.getClass();
                return new LineHeightStyle.Trim(((Integer) obj).intValue());
            case 23:
                obj.getClass();
                List list12 = (List) obj;
                Object obj22 = list12.get(0);
                AnnotationType annotationType = obj22 != null ? (AnnotationType) obj22 : null;
                annotationType.getClass();
                Object obj23 = list12.get(2);
                Integer num3 = obj23 != null ? (Integer) obj23 : null;
                num3.getClass();
                int intValue2 = num3.intValue();
                Object obj24 = list12.get(3);
                Integer num4 = obj24 != null ? (Integer) obj24 : null;
                num4.getClass();
                int intValue3 = num4.intValue();
                Object obj25 = list12.get(4);
                String str4 = obj25 != null ? (String) obj25 : null;
                str4.getClass();
                switch (annotationType.ordinal()) {
                    case 0:
                        Object obj26 = list12.get(1);
                        WeakCache weakCache3 = SaversKt.ParagraphStyleSaver;
                        if (!Intrinsics.areEqual(obj26, Boolean.FALSE) && obj26 != null) {
                            paragraphStyle = (ParagraphStyle) ((Function1) weakCache3.referenceQueue).invoke(obj26);
                        }
                        paragraphStyle.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, paragraphStyle, str4);
                        break;
                    case 1:
                        Object obj27 = list12.get(1);
                        WeakCache weakCache4 = SaversKt.SpanStyleSaver;
                        if (!Intrinsics.areEqual(obj27, Boolean.FALSE) && obj27 != null) {
                            spanStyle = (SpanStyle) ((Function1) weakCache4.referenceQueue).invoke(obj27);
                        }
                        spanStyle.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, spanStyle, str4);
                        break;
                    case 2:
                        Object obj28 = list12.get(1);
                        WeakCache weakCache5 = SaversKt.VerbatimTtsAnnotationSaver;
                        if (!Intrinsics.areEqual(obj28, Boolean.FALSE) && obj28 != null) {
                            verbatimTtsAnnotation = (VerbatimTtsAnnotation) ((Function1) weakCache5.referenceQueue).invoke(obj28);
                        }
                        verbatimTtsAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, verbatimTtsAnnotation, str4);
                        break;
                    case 3:
                        Object obj29 = list12.get(1);
                        WeakCache weakCache6 = SaversKt.UrlAnnotationSaver;
                        if (!Intrinsics.areEqual(obj29, Boolean.FALSE) && obj29 != null) {
                            urlAnnotation = (UrlAnnotation) ((Function1) weakCache6.referenceQueue).invoke(obj29);
                        }
                        urlAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, urlAnnotation, str4);
                        break;
                    case 4:
                        Object obj30 = list12.get(1);
                        WeakCache weakCache7 = SaversKt.LinkSaver;
                        if (!Intrinsics.areEqual(obj30, Boolean.FALSE) && obj30 != null) {
                            url = (LinkAnnotation.Url) ((Function1) weakCache7.referenceQueue).invoke(obj30);
                        }
                        url.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, url, str4);
                        break;
                    case 5:
                        Object obj31 = list12.get(1);
                        WeakCache weakCache8 = SaversKt.ClickableSaver;
                        if (!Intrinsics.areEqual(obj31, Boolean.FALSE) && obj31 != null) {
                            clickable = (LinkAnnotation.Clickable) ((Function1) weakCache8.referenceQueue).invoke(obj31);
                        }
                        clickable.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, clickable, str4);
                        break;
                    case 6:
                        Object obj32 = list12.get(1);
                        String str5 = obj32 != null ? (String) obj32 : null;
                        str5.getClass();
                        range = new AnnotatedString.Range(intValue2, intValue3, new StringAnnotation(str5), str4);
                        break;
                    default:
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                }
                return range;
            case 24:
                obj.getClass();
                return new LineHeightStyle.Mode(((Integer) obj).intValue());
            case 25:
                String str6 = obj != null ? (String) obj : null;
                str6.getClass();
                return new VerbatimTtsAnnotation(str6);
            case 26:
                String str7 = obj != null ? (String) obj : null;
                str7.getClass();
                return new UrlAnnotation(str7);
            case 27:
                obj.getClass();
                List list13 = (List) obj;
                Object obj33 = list13.get(0);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$16 = SaversKt.TextAlignSaver;
                Boolean bool5 = Boolean.FALSE;
                Intrinsics.areEqual(obj33, bool5);
                TextAlign textAlign = obj33 != null ? (TextAlign) saversKt$NonNullValueClassSaver$16.$restore.invoke(obj33) : null;
                textAlign.getClass();
                int i4 = textAlign.value;
                Object obj34 = list13.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$17 = SaversKt.TextDirectionSaver;
                Intrinsics.areEqual(obj34, bool5);
                TextDirection textDirection = obj34 != null ? (TextDirection) saversKt$NonNullValueClassSaver$17.$restore.invoke(obj34) : null;
                textDirection.getClass();
                int i5 = textDirection.value;
                Object obj35 = list13.get(2);
                TextUnitType[] textUnitTypeArr2 = TextUnit.TextUnitTypes;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$18 = SaversKt.TextUnitSaver;
                Intrinsics.areEqual(obj35, bool5);
                TextUnit textUnit3 = obj35 != null ? (TextUnit) saversKt$NonNullValueClassSaver$18.$restore.invoke(obj35) : null;
                textUnit3.getClass();
                long j4 = textUnit3.packedValue;
                Object obj36 = list13.get(3);
                TextIndent textIndent = TextIndent.None;
                TextIndent textIndent2 = (Intrinsics.areEqual(obj36, bool5) || obj36 == null) ? null : (TextIndent) ((Function1) SaversKt.TextIndentSaver.referenceQueue).invoke(obj36);
                Object obj37 = list13.get(4);
                PlatformParagraphStyle platformParagraphStyle = (Intrinsics.areEqual(obj37, bool5) || obj37 == null) ? null : (PlatformParagraphStyle) ((Function1) ParagraphKt.PlatformParagraphStyleSaver.referenceQueue).invoke(obj37);
                Object obj38 = list13.get(5);
                LineHeightStyle lineHeightStyle = LineHeightStyle.Default;
                LineHeightStyle lineHeightStyle2 = (Intrinsics.areEqual(obj38, bool5) || obj38 == null) ? null : (LineHeightStyle) ((Function1) SaversKt.LineHeightStyleSaver.referenceQueue).invoke(obj38);
                Object obj39 = list13.get(6);
                LineBreak lineBreak = (Intrinsics.areEqual(obj39, bool5) || obj39 == null) ? null : (LineBreak) ((Function1) ParagraphKt.LineBreakSaver.referenceQueue).invoke(obj39);
                lineBreak.getClass();
                int i6 = lineBreak.mask;
                Object obj40 = list13.get(7);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$19 = SaversKt.HyphensSaver;
                Intrinsics.areEqual(obj40, bool5);
                Hyphens hyphens = obj40 != null ? (Hyphens) saversKt$NonNullValueClassSaver$19.$restore.invoke(obj40) : null;
                hyphens.getClass();
                int i7 = hyphens.value;
                Object obj41 = list13.get(8);
                boolean areEqual = Intrinsics.areEqual(obj41, bool5);
                WeakCache weakCache9 = ParagraphKt.TextMotionSaver;
                if (!areEqual && obj41 != null) {
                    textMotion = (TextMotion) ((Function1) weakCache9.referenceQueue).invoke(obj41);
                }
                return new ParagraphStyle(i4, i5, j4, textIndent2, platformParagraphStyle, lineHeightStyle2, i6, i7, textMotion);
            case 28:
                obj.getClass();
                List list14 = (List) obj;
                Object obj42 = list14.get(0);
                int i8 = Color.$r8$clinit;
                Boolean bool6 = Boolean.FALSE;
                Intrinsics.areEqual(obj42, bool6);
                Color color2 = obj42 != null ? obj42.equals(bool6) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj42).intValue())) : null;
                color2.getClass();
                long j5 = color2.value;
                Object obj43 = list14.get(1);
                TextUnitType[] textUnitTypeArr3 = TextUnit.TextUnitTypes;
                Function1 function12 = SaversKt.TextUnitSaver.$restore;
                Intrinsics.areEqual(obj43, bool6);
                TextUnit textUnit4 = obj43 != null ? (TextUnit) function12.invoke(obj43) : null;
                textUnit4.getClass();
                long j6 = textUnit4.packedValue;
                Object obj44 = list14.get(2);
                FontWeight fontWeight = FontWeight.W600;
                FontWeight fontWeight2 = (Intrinsics.areEqual(obj44, bool6) || obj44 == null) ? null : (FontWeight) ((Function1) SaversKt.FontWeightSaver.referenceQueue).invoke(obj44);
                Object obj45 = list14.get(3);
                FontStyle fontStyle = (Intrinsics.areEqual(obj45, bool6) || obj45 == null) ? null : (FontStyle) ((Function1) SaversKt.FontStyleSaver.referenceQueue).invoke(obj45);
                Object obj46 = list14.get(4);
                FontSynthesis fontSynthesis = (Intrinsics.areEqual(obj46, bool6) || obj46 == null) ? null : (FontSynthesis) ((Function1) SaversKt.FontSynthesisSaver.referenceQueue).invoke(obj46);
                Object obj47 = list14.get(6);
                String str8 = obj47 != null ? (String) obj47 : null;
                Object obj48 = list14.get(7);
                Intrinsics.areEqual(obj48, bool6);
                TextUnit textUnit5 = obj48 != null ? (TextUnit) function12.invoke(obj48) : null;
                textUnit5.getClass();
                long j7 = textUnit5.packedValue;
                Object obj49 = list14.get(8);
                BaselineShift baselineShift = (Intrinsics.areEqual(obj49, bool6) || obj49 == null) ? null : (BaselineShift) ((Function1) SaversKt.BaselineShiftSaver.referenceQueue).invoke(obj49);
                Object obj50 = list14.get(9);
                TextGeometricTransform textGeometricTransform = (Intrinsics.areEqual(obj50, bool6) || obj50 == null) ? null : (TextGeometricTransform) ((Function1) SaversKt.TextGeometricTransformSaver.referenceQueue).invoke(obj50);
                Object obj51 = list14.get(10);
                LocaleList localeList = LocaleList.Empty;
                LocaleList localeList2 = (Intrinsics.areEqual(obj51, bool6) || obj51 == null) ? null : (LocaleList) ((Function1) SaversKt.LocaleListSaver.referenceQueue).invoke(obj51);
                Object obj52 = list14.get(11);
                Intrinsics.areEqual(obj52, bool6);
                Color color3 = obj52 != null ? obj52.equals(bool6) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj52).intValue())) : null;
                color3.getClass();
                long j8 = color3.value;
                Object obj53 = list14.get(12);
                TextDecoration textDecoration = (Intrinsics.areEqual(obj53, bool6) || obj53 == null) ? null : (TextDecoration) ((Function1) SaversKt.TextDecorationSaver.referenceQueue).invoke(obj53);
                Object obj54 = list14.get(13);
                Shadow shadow2 = Shadow.None;
                WeakCache weakCache10 = SaversKt.ShadowSaver;
                if (!Intrinsics.areEqual(obj54, bool6) && obj54 != null) {
                    shadow = (Shadow) ((Function1) weakCache10.referenceQueue).invoke(obj54);
                }
                return new SpanStyle(j5, j6, fontWeight2, fontStyle, fontSynthesis, (SystemFontFamily) null, str8, j7, baselineShift, textGeometricTransform, localeList2, j8, textDecoration, shadow, 49184);
            default:
                obj.getClass();
                List list15 = (List) obj;
                Object obj55 = list15.get(0);
                Boolean bool7 = obj55 != null ? (Boolean) obj55 : null;
                bool7.getClass();
                boolean booleanValue = bool7.booleanValue();
                Object obj56 = list15.get(1);
                boolean areEqual2 = Intrinsics.areEqual(obj56, Boolean.FALSE);
                WeakCache weakCache11 = ParagraphKt.emojiSupportMatchSaver;
                if (!areEqual2 && obj56 != null) {
                    emojiSupportMatch = (EmojiSupportMatch) ((Function1) weakCache11.referenceQueue).invoke(obj56);
                }
                emojiSupportMatch.getClass();
                return new PlatformParagraphStyle(emojiSupportMatch.value, booleanValue);
        }
    }
}
