package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
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
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda4(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AnnotatedString.Range range;
        TextMotion textMotion;
        int i;
        int i2;
        int i3 = 0;
        EmojiSupportMatch emojiSupportMatch = null;
        emojiSupportMatch = null;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                break;
            case 1:
                obj.getClass();
                break;
            case 2:
                obj.getClass();
                break;
            case 3:
                obj.getClass();
                List list2 = (List) obj;
                ArrayList arrayList = new ArrayList(list2.size());
                int size = list2.size();
                while (i3 < size) {
                    Object obj4 = list2.get(i3);
                    AnnotatedString.Range range2 = (Intrinsics.areEqual(obj4, Boolean.FALSE) || obj4 == null) ? null : (AnnotatedString.Range) ((Function1) SaversKt.AnnotationRangeSaver.this$0).invoke(obj4);
                    range2.getClass();
                    arrayList.add(range2);
                    i3++;
                }
                break;
            case 4:
                obj.getClass();
                break;
            case 5:
                obj.getClass();
                break;
            case 6:
                Boolean bool = Boolean.FALSE;
                if (!Intrinsics.areEqual(obj, bool)) {
                    obj.getClass();
                    List list3 = (List) obj;
                    Object obj5 = list3.get(0);
                    Float f = obj5 != null ? (Float) obj5 : null;
                    f.getClass();
                    float floatValue = f.floatValue();
                    Object obj6 = list3.get(1);
                    SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.TextUnitTypeSaver;
                    Intrinsics.areEqual(obj6, bool);
                    TextUnitType textUnitType = obj6 != null ? (TextUnitType) saversKt$NonNullValueClassSaver$1.$restore.invoke(obj6) : null;
                    textUnitType.getClass();
                    break;
                } else {
                    break;
                }
            case 7:
                if (!Intrinsics.areEqual(obj, 0)) {
                    if (!Intrinsics.areEqual(obj, 1)) {
                        break;
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            case 8:
                if (!Intrinsics.areEqual(obj, Boolean.FALSE)) {
                    obj.getClass();
                    List list4 = (List) obj;
                    Object obj7 = list4.get(0);
                    Float f2 = obj7 != null ? (Float) obj7 : null;
                    f2.getClass();
                    float floatValue2 = f2.floatValue();
                    Object obj8 = list4.get(1);
                    (obj8 != null ? (Float) obj8 : null).getClass();
                    break;
                } else {
                    break;
                }
            case 9:
                obj.getClass();
                List list5 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list5.size());
                int size2 = list5.size();
                while (i3 < size2) {
                    Object obj9 = list5.get(i3);
                    Locale locale = (Intrinsics.areEqual(obj9, Boolean.FALSE) || obj9 == null) ? null : (Locale) ((Function1) SaversKt.LocaleSaver.this$0).invoke(obj9);
                    locale.getClass();
                    arrayList2.add(locale);
                    i3++;
                }
                break;
            case 10:
                obj.getClass();
                String str2 = (String) obj;
                java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(str2);
                if (Intrinsics.areEqual(forLanguageTag.toLanguageTag(), C.LANGUAGE_UNDETERMINED)) {
                    System.err.println("The language tag " + str2 + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
                }
                break;
            case 11:
                obj.getClass();
                List list6 = (List) obj;
                Object obj10 = list6.get(0);
                float f3 = LineHeightStyle.Alignment.Center;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.LineHeightStyleAlignmentSaver;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.areEqual(obj10, bool2);
                LineHeightStyle.Alignment alignment = obj10 != null ? (LineHeightStyle.Alignment) saversKt$NonNullValueClassSaver$12.$restore.invoke(obj10) : null;
                alignment.getClass();
                float f4 = alignment.topRatio;
                Object obj11 = list6.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$13 = SaversKt.LineHeightStyleTrimSaver;
                Intrinsics.areEqual(obj11, bool2);
                LineHeightStyle.Trim trim = obj11 != null ? (LineHeightStyle.Trim) saversKt$NonNullValueClassSaver$13.$restore.invoke(obj11) : null;
                trim.getClass();
                int i4 = trim.value;
                Object obj12 = list6.get(2);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$14 = SaversKt.LineHeightStyleModeSaver;
                Intrinsics.areEqual(obj12, bool2);
                LineHeightStyle.Mode mode = obj12 != null ? (LineHeightStyle.Mode) saversKt$NonNullValueClassSaver$14.$restore.invoke(obj12) : null;
                mode.getClass();
                break;
            case 12:
                obj.getClass();
                float floatValue3 = ((Float) obj).floatValue();
                LineHeightStyle.Alignment.m422constructorimpl(floatValue3);
                break;
            case 13:
                obj.getClass();
                break;
            case 14:
                obj.getClass();
                List list7 = (List) obj;
                Object obj13 = list7.get(0);
                AnnotationType annotationType = obj13 != null ? (AnnotationType) obj13 : null;
                annotationType.getClass();
                Object obj14 = list7.get(2);
                Integer num = obj14 != null ? (Integer) obj14 : null;
                num.getClass();
                int intValue = num.intValue();
                Object obj15 = list7.get(3);
                Integer num2 = obj15 != null ? (Integer) obj15 : null;
                num2.getClass();
                int intValue2 = num2.intValue();
                Object obj16 = list7.get(4);
                String str3 = obj16 != null ? (String) obj16 : null;
                str3.getClass();
                switch (annotationType.ordinal()) {
                    case 0:
                        Object obj17 = list7.get(1);
                        ParagraphStyle paragraphStyle = (Intrinsics.areEqual(obj17, Boolean.FALSE) || obj17 == null) ? null : (ParagraphStyle) ((Function1) SaversKt.ParagraphStyleSaver.this$0).invoke(obj17);
                        paragraphStyle.getClass();
                        range = new AnnotatedString.Range(intValue, str3, paragraphStyle, intValue2);
                        break;
                    case 1:
                        Object obj18 = list7.get(1);
                        SpanStyle spanStyle = (Intrinsics.areEqual(obj18, Boolean.FALSE) || obj18 == null) ? null : (SpanStyle) ((Function1) SaversKt.SpanStyleSaver.this$0).invoke(obj18);
                        spanStyle.getClass();
                        range = new AnnotatedString.Range(intValue, str3, spanStyle, intValue2);
                        break;
                    case 2:
                        Object obj19 = list7.get(1);
                        VerbatimTtsAnnotation verbatimTtsAnnotation = (Intrinsics.areEqual(obj19, Boolean.FALSE) || obj19 == null) ? null : (VerbatimTtsAnnotation) ((Function1) SaversKt.VerbatimTtsAnnotationSaver.this$0).invoke(obj19);
                        verbatimTtsAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue, str3, verbatimTtsAnnotation, intValue2);
                        break;
                    case 3:
                        Object obj20 = list7.get(1);
                        UrlAnnotation urlAnnotation = (Intrinsics.areEqual(obj20, Boolean.FALSE) || obj20 == null) ? null : (UrlAnnotation) ((Function1) SaversKt.UrlAnnotationSaver.this$0).invoke(obj20);
                        urlAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue, str3, urlAnnotation, intValue2);
                        break;
                    case 4:
                        Object obj21 = list7.get(1);
                        LinkAnnotation.Url url = (Intrinsics.areEqual(obj21, Boolean.FALSE) || obj21 == null) ? null : (LinkAnnotation.Url) ((Function1) SaversKt.LinkSaver.this$0).invoke(obj21);
                        url.getClass();
                        range = new AnnotatedString.Range(intValue, str3, url, intValue2);
                        break;
                    case 5:
                        Object obj22 = list7.get(1);
                        LinkAnnotation.Clickable clickable = (Intrinsics.areEqual(obj22, Boolean.FALSE) || obj22 == null) ? null : (LinkAnnotation.Clickable) ((Function1) SaversKt.ClickableSaver.this$0).invoke(obj22);
                        clickable.getClass();
                        range = new AnnotatedString.Range(intValue, str3, clickable, intValue2);
                        break;
                    case 6:
                        Object obj23 = list7.get(1);
                        String str4 = obj23 != null ? (String) obj23 : null;
                        str4.getClass();
                        range = new AnnotatedString.Range(intValue, str3, new StringAnnotation(str4), intValue2);
                        break;
                    default:
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        break;
                }
                break;
            case 15:
                obj.getClass();
                break;
            case 16:
                String str5 = obj != null ? (String) obj : null;
                str5.getClass();
                break;
            case 17:
                String str6 = obj != null ? (String) obj : null;
                str6.getClass();
                break;
            case 18:
                obj.getClass();
                List list8 = (List) obj;
                Object obj24 = list8.get(0);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$15 = SaversKt.TextAlignSaver;
                Boolean bool3 = Boolean.FALSE;
                Intrinsics.areEqual(obj24, bool3);
                TextAlign textAlign = obj24 != null ? (TextAlign) saversKt$NonNullValueClassSaver$15.$restore.invoke(obj24) : null;
                textAlign.getClass();
                int i5 = textAlign.value;
                Object obj25 = list8.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$16 = SaversKt.TextDirectionSaver;
                Intrinsics.areEqual(obj25, bool3);
                TextDirection textDirection = obj25 != null ? (TextDirection) saversKt$NonNullValueClassSaver$16.$restore.invoke(obj25) : null;
                textDirection.getClass();
                int i6 = textDirection.value;
                Object obj26 = list8.get(2);
                TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$17 = SaversKt.TextUnitSaver;
                Intrinsics.areEqual(obj26, bool3);
                TextUnit textUnit = obj26 != null ? (TextUnit) saversKt$NonNullValueClassSaver$17.$restore.invoke(obj26) : null;
                textUnit.getClass();
                long j = textUnit.packedValue;
                Object obj27 = list8.get(3);
                TextIndent textIndent = TextIndent.None;
                TextIndent textIndent2 = (Intrinsics.areEqual(obj27, bool3) || obj27 == null) ? null : (TextIndent) ((Function1) SaversKt.TextIndentSaver.this$0).invoke(obj27);
                Object obj28 = list8.get(4);
                PlatformParagraphStyle platformParagraphStyle = (Intrinsics.areEqual(obj28, bool3) || obj28 == null) ? null : (PlatformParagraphStyle) ((Function1) ParagraphKt.PlatformParagraphStyleSaver.this$0).invoke(obj28);
                Object obj29 = list8.get(5);
                LineHeightStyle lineHeightStyle = LineHeightStyle.Default;
                LineHeightStyle lineHeightStyle2 = (Intrinsics.areEqual(obj29, bool3) || obj29 == null) ? null : (LineHeightStyle) ((Function1) SaversKt.LineHeightStyleSaver.this$0).invoke(obj29);
                Object obj30 = list8.get(6);
                LineBreak lineBreak = (Intrinsics.areEqual(obj30, bool3) || obj30 == null) ? null : (LineBreak) ((Function1) ParagraphKt.LineBreakSaver.this$0).invoke(obj30);
                lineBreak.getClass();
                int i7 = lineBreak.mask;
                Object obj31 = list8.get(7);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$18 = SaversKt.HyphensSaver;
                Intrinsics.areEqual(obj31, bool3);
                Hyphens hyphens = obj31 != null ? (Hyphens) saversKt$NonNullValueClassSaver$18.$restore.invoke(obj31) : null;
                hyphens.getClass();
                int i8 = hyphens.value;
                Object obj32 = list8.get(8);
                boolean areEqual = Intrinsics.areEqual(obj32, bool3);
                CardView.AnonymousClass1 anonymousClass1 = ParagraphKt.TextMotionSaver;
                if (areEqual || obj32 == null) {
                    i = i7;
                    i2 = i8;
                    textMotion = null;
                } else {
                    textMotion = (TextMotion) ((Function1) anonymousClass1.this$0).invoke(obj32);
                    i = i7;
                    i2 = i8;
                }
                break;
            case 19:
                obj.getClass();
                List list9 = (List) obj;
                Object obj33 = list9.get(0);
                int i9 = Color.$r8$clinit;
                Boolean bool4 = Boolean.FALSE;
                Intrinsics.areEqual(obj33, bool4);
                Color color = obj33 != null ? obj33.equals(bool4) ? new Color(Color.Unspecified) : new Color(Brush.Color(((Integer) obj33).intValue())) : null;
                color.getClass();
                long j2 = color.value;
                Object obj34 = list9.get(1);
                TextUnitType[] textUnitTypeArr2 = TextUnit.TextUnitTypes;
                Function1 function1 = SaversKt.TextUnitSaver.$restore;
                Intrinsics.areEqual(obj34, bool4);
                TextUnit textUnit2 = obj34 != null ? (TextUnit) function1.invoke(obj34) : null;
                textUnit2.getClass();
                long j3 = textUnit2.packedValue;
                Object obj35 = list9.get(2);
                FontWeight fontWeight = FontWeight.W600;
                FontWeight fontWeight2 = (Intrinsics.areEqual(obj35, bool4) || obj35 == null) ? null : (FontWeight) ((Function1) SaversKt.FontWeightSaver.this$0).invoke(obj35);
                Object obj36 = list9.get(3);
                FontStyle fontStyle = (Intrinsics.areEqual(obj36, bool4) || obj36 == null) ? null : (FontStyle) ((Function1) SaversKt.FontStyleSaver.this$0).invoke(obj36);
                Object obj37 = list9.get(4);
                FontSynthesis fontSynthesis = (Intrinsics.areEqual(obj37, bool4) || obj37 == null) ? null : (FontSynthesis) ((Function1) SaversKt.FontSynthesisSaver.this$0).invoke(obj37);
                Object obj38 = list9.get(6);
                String str7 = obj38 != null ? (String) obj38 : null;
                Object obj39 = list9.get(7);
                Intrinsics.areEqual(obj39, bool4);
                TextUnit textUnit3 = obj39 != null ? (TextUnit) function1.invoke(obj39) : null;
                textUnit3.getClass();
                long j4 = textUnit3.packedValue;
                Object obj40 = list9.get(8);
                BaselineShift baselineShift = (Intrinsics.areEqual(obj40, bool4) || obj40 == null) ? null : (BaselineShift) ((Function1) SaversKt.BaselineShiftSaver.this$0).invoke(obj40);
                Object obj41 = list9.get(9);
                TextGeometricTransform textGeometricTransform = (Intrinsics.areEqual(obj41, bool4) || obj41 == null) ? null : (TextGeometricTransform) ((Function1) SaversKt.TextGeometricTransformSaver.this$0).invoke(obj41);
                Object obj42 = list9.get(10);
                LocaleList localeList = LocaleList.Empty;
                LocaleList localeList2 = (Intrinsics.areEqual(obj42, bool4) || obj42 == null) ? null : (LocaleList) ((Function1) SaversKt.LocaleListSaver.this$0).invoke(obj42);
                Object obj43 = list9.get(11);
                Intrinsics.areEqual(obj43, bool4);
                Color color2 = obj43 != null ? obj43.equals(bool4) ? new Color(Color.Unspecified) : new Color(Brush.Color(((Integer) obj43).intValue())) : null;
                color2.getClass();
                long j5 = color2.value;
                Object obj44 = list9.get(12);
                TextDecoration textDecoration = (Intrinsics.areEqual(obj44, bool4) || obj44 == null) ? null : (TextDecoration) ((Function1) SaversKt.TextDecorationSaver.this$0).invoke(obj44);
                Object obj45 = list9.get(13);
                Shadow shadow = Shadow.None;
                break;
            case 20:
                obj.getClass();
                List list10 = (List) obj;
                Object obj46 = list10.get(0);
                Boolean bool5 = obj46 != null ? (Boolean) obj46 : null;
                bool5.getClass();
                boolean booleanValue = bool5.booleanValue();
                Object obj47 = list10.get(1);
                boolean areEqual2 = Intrinsics.areEqual(obj47, Boolean.FALSE);
                CardView.AnonymousClass1 anonymousClass12 = ParagraphKt.emojiSupportMatchSaver;
                if (!areEqual2 && obj47 != null) {
                    emojiSupportMatch = (EmojiSupportMatch) ((Function1) anonymousClass12.this$0).invoke(obj47);
                }
                emojiSupportMatch.getClass();
                break;
            case 21:
                obj.getClass();
                break;
            case 22:
                obj.getClass();
                break;
            case 23:
                obj.getClass();
                List list11 = (List) obj;
                Object obj48 = list11.get(0);
                TextMotion.Linearity linearity = (Intrinsics.areEqual(obj48, Boolean.FALSE) || obj48 == null) ? null : (TextMotion.Linearity) ((Function1) ParagraphKt.TextMotionLinearitySaver.this$0).invoke(obj48);
                linearity.getClass();
                int i10 = linearity.value;
                Object obj49 = list11.get(1);
                Boolean bool6 = obj49 != null ? (Boolean) obj49 : null;
                bool6.getClass();
                break;
            case 24:
                obj.getClass();
                break;
            case 25:
                break;
            case 26:
                break;
            case 27:
                break;
            case 28:
                break;
            default:
                break;
        }
        return new ContentTransform(EnterExitTransitionKt.fadeIn$default(ArcSplineKt.tween$default(700, 6, null)), EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(700, 6, null)));
    }
}
