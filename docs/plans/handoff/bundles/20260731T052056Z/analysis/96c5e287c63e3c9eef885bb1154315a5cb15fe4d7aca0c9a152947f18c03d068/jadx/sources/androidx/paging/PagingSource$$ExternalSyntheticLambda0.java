package androidx.paging;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
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
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
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
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.internal.NavBackStackEntryImpl;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PagingSource$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ PagingSource$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AnnotatedString.Range range;
        r9 = null;
        EmojiSupportMatch emojiSupportMatch = null;
        r9 = null;
        Shadow shadow = null;
        r9 = null;
        TextMotion textMotion = null;
        r9 = null;
        LinkAnnotation.Clickable clickable = null;
        r9 = null;
        LinkAnnotation.Url url = null;
        r9 = null;
        UrlAnnotation urlAnnotation = null;
        r9 = null;
        VerbatimTtsAnnotation verbatimTtsAnnotation = null;
        r9 = null;
        SpanStyle spanStyle = null;
        r9 = null;
        ParagraphStyle paragraphStyle = null;
        switch (this.$r8$classId) {
            case 0:
                Function0 function0 = (Function0) obj;
                function0.getClass();
                function0.invoke();
                return Unit.INSTANCE;
            case 1:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                return new LinkAnnotation.Clickable(str, (Intrinsics.areEqual(obj3, Boolean.FALSE) || obj3 == null) ? null : (TextLinkStyles) ((Function1) SaversKt.TextLinkStylesSaver.this$0).invoke(obj3), null);
            case 2:
                obj.getClass();
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                float f = LineHeightStyle.Alignment.Center;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.LineHeightStyleAlignmentSaver;
                Boolean bool = Boolean.FALSE;
                Intrinsics.areEqual(obj4, bool);
                LineHeightStyle.Alignment alignment = obj4 != null ? (LineHeightStyle.Alignment) saversKt$NonNullValueClassSaver$1.$restore.invoke(obj4) : null;
                alignment.getClass();
                float f2 = alignment.topRatio;
                Object obj5 = list2.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.LineHeightStyleTrimSaver;
                Intrinsics.areEqual(obj5, bool);
                LineHeightStyle.Trim trim = obj5 != null ? (LineHeightStyle.Trim) saversKt$NonNullValueClassSaver$12.$restore.invoke(obj5) : null;
                trim.getClass();
                int i = trim.value;
                Object obj6 = list2.get(2);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$13 = SaversKt.LineHeightStyleModeSaver;
                Intrinsics.areEqual(obj6, bool);
                LineHeightStyle.Mode mode = obj6 != null ? (LineHeightStyle.Mode) saversKt$NonNullValueClassSaver$13.$restore.invoke(obj6) : null;
                mode.getClass();
                return new LineHeightStyle(i, f2, mode.value);
            case 3:
                obj.getClass();
                float floatValue = ((Float) obj).floatValue();
                LineHeightStyle.Alignment.m670constructorimpl(floatValue);
                return new LineHeightStyle.Alignment(floatValue);
            case 4:
                obj.getClass();
                return new LineHeightStyle.Trim(((Integer) obj).intValue());
            case 5:
                obj.getClass();
                List list3 = (List) obj;
                Object obj7 = list3.get(0);
                AnnotationType annotationType = obj7 != null ? (AnnotationType) obj7 : null;
                annotationType.getClass();
                Object obj8 = list3.get(2);
                Integer num = obj8 != null ? (Integer) obj8 : null;
                num.getClass();
                int intValue = num.intValue();
                Object obj9 = list3.get(3);
                Integer num2 = obj9 != null ? (Integer) obj9 : null;
                num2.getClass();
                int intValue2 = num2.intValue();
                Object obj10 = list3.get(4);
                String str2 = obj10 != null ? (String) obj10 : null;
                str2.getClass();
                switch (SaversKt.WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()]) {
                    case 1:
                        Object obj11 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass1 = SaversKt.ParagraphStyleSaver;
                        if (!Intrinsics.areEqual(obj11, Boolean.FALSE) && obj11 != null) {
                            paragraphStyle = (ParagraphStyle) ((Function1) anonymousClass1.this$0).invoke(obj11);
                        }
                        paragraphStyle.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, paragraphStyle, str2);
                        break;
                    case 2:
                        Object obj12 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass12 = SaversKt.SpanStyleSaver;
                        if (!Intrinsics.areEqual(obj12, Boolean.FALSE) && obj12 != null) {
                            spanStyle = (SpanStyle) ((Function1) anonymousClass12.this$0).invoke(obj12);
                        }
                        spanStyle.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, spanStyle, str2);
                        break;
                    case 3:
                        Object obj13 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass13 = SaversKt.VerbatimTtsAnnotationSaver;
                        if (!Intrinsics.areEqual(obj13, Boolean.FALSE) && obj13 != null) {
                            verbatimTtsAnnotation = (VerbatimTtsAnnotation) ((Function1) anonymousClass13.this$0).invoke(obj13);
                        }
                        verbatimTtsAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, verbatimTtsAnnotation, str2);
                        break;
                    case 4:
                        Object obj14 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass14 = SaversKt.UrlAnnotationSaver;
                        if (!Intrinsics.areEqual(obj14, Boolean.FALSE) && obj14 != null) {
                            urlAnnotation = (UrlAnnotation) ((Function1) anonymousClass14.this$0).invoke(obj14);
                        }
                        urlAnnotation.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, urlAnnotation, str2);
                        break;
                    case 5:
                        Object obj15 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass15 = SaversKt.LinkSaver;
                        if (!Intrinsics.areEqual(obj15, Boolean.FALSE) && obj15 != null) {
                            url = (LinkAnnotation.Url) ((Function1) anonymousClass15.this$0).invoke(obj15);
                        }
                        url.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, url, str2);
                        break;
                    case 6:
                        Object obj16 = list3.get(1);
                        CardView.AnonymousClass1 anonymousClass16 = SaversKt.ClickableSaver;
                        if (!Intrinsics.areEqual(obj16, Boolean.FALSE) && obj16 != null) {
                            clickable = (LinkAnnotation.Clickable) ((Function1) anonymousClass16.this$0).invoke(obj16);
                        }
                        clickable.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, clickable, str2);
                        break;
                    case 7:
                        Object obj17 = list3.get(1);
                        String str3 = obj17 != null ? (String) obj17 : null;
                        str3.getClass();
                        range = new AnnotatedString.Range(intValue, intValue2, new StringAnnotation(str3), str2);
                        break;
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                }
                return range;
            case 6:
                obj.getClass();
                return new LineHeightStyle.Mode(((Integer) obj).intValue());
            case 7:
                String str4 = obj != null ? (String) obj : null;
                str4.getClass();
                return new VerbatimTtsAnnotation(str4);
            case 8:
                String str5 = obj != null ? (String) obj : null;
                str5.getClass();
                return new UrlAnnotation(str5);
            case 9:
                obj.getClass();
                List list4 = (List) obj;
                Object obj18 = list4.get(0);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$14 = SaversKt.TextAlignSaver;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.areEqual(obj18, bool2);
                TextAlign textAlign = obj18 != null ? (TextAlign) saversKt$NonNullValueClassSaver$14.$restore.invoke(obj18) : null;
                textAlign.getClass();
                int i2 = textAlign.value;
                Object obj19 = list4.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$15 = SaversKt.TextDirectionSaver;
                Intrinsics.areEqual(obj19, bool2);
                TextDirection textDirection = obj19 != null ? (TextDirection) saversKt$NonNullValueClassSaver$15.$restore.invoke(obj19) : null;
                textDirection.getClass();
                int i3 = textDirection.value;
                Object obj20 = list4.get(2);
                TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$16 = SaversKt.TextUnitSaver;
                Intrinsics.areEqual(obj20, bool2);
                TextUnit textUnit = obj20 != null ? (TextUnit) saversKt$NonNullValueClassSaver$16.$restore.invoke(obj20) : null;
                textUnit.getClass();
                long j = textUnit.packedValue;
                Object obj21 = list4.get(3);
                TextIndent textIndent = TextIndent.None;
                TextIndent textIndent2 = (Intrinsics.areEqual(obj21, bool2) || obj21 == null) ? null : (TextIndent) ((Function1) SaversKt.TextIndentSaver.this$0).invoke(obj21);
                Object obj22 = list4.get(4);
                PlatformParagraphStyle platformParagraphStyle = (Intrinsics.areEqual(obj22, bool2) || obj22 == null) ? null : (PlatformParagraphStyle) ((Function1) ParagraphKt.PlatformParagraphStyleSaver.this$0).invoke(obj22);
                Object obj23 = list4.get(5);
                LineHeightStyle lineHeightStyle = LineHeightStyle.Default;
                LineHeightStyle lineHeightStyle2 = (Intrinsics.areEqual(obj23, bool2) || obj23 == null) ? null : (LineHeightStyle) ((Function1) SaversKt.LineHeightStyleSaver.this$0).invoke(obj23);
                Object obj24 = list4.get(6);
                LineBreak lineBreak = (Intrinsics.areEqual(obj24, bool2) || obj24 == null) ? null : (LineBreak) ((Function1) ParagraphKt.LineBreakSaver.this$0).invoke(obj24);
                lineBreak.getClass();
                int i4 = lineBreak.mask;
                Object obj25 = list4.get(7);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$17 = SaversKt.HyphensSaver;
                Intrinsics.areEqual(obj25, bool2);
                Hyphens hyphens = obj25 != null ? (Hyphens) saversKt$NonNullValueClassSaver$17.$restore.invoke(obj25) : null;
                hyphens.getClass();
                int i5 = hyphens.value;
                Object obj26 = list4.get(8);
                CardView.AnonymousClass1 anonymousClass17 = ParagraphKt.TextMotionSaver;
                if (!Intrinsics.areEqual(obj26, bool2) && obj26 != null) {
                    textMotion = (TextMotion) ((Function1) anonymousClass17.this$0).invoke(obj26);
                }
                return new ParagraphStyle(i2, i3, j, textIndent2, platformParagraphStyle, lineHeightStyle2, i4, i5, textMotion);
            case 10:
                obj.getClass();
                List list5 = (List) obj;
                Object obj27 = list5.get(0);
                int i6 = Color.$r8$clinit;
                Boolean bool3 = Boolean.FALSE;
                Intrinsics.areEqual(obj27, bool3);
                Color color = obj27 != null ? Intrinsics.areEqual(obj27, Boolean.FALSE) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj27).intValue())) : null;
                color.getClass();
                long j2 = color.value;
                Object obj28 = list5.get(1);
                TextUnitType[] textUnitTypeArr2 = TextUnit.TextUnitTypes;
                Function1 function1 = SaversKt.TextUnitSaver.$restore;
                Intrinsics.areEqual(obj28, bool3);
                TextUnit textUnit2 = obj28 != null ? (TextUnit) function1.invoke(obj28) : null;
                textUnit2.getClass();
                long j3 = textUnit2.packedValue;
                Object obj29 = list5.get(2);
                FontWeight fontWeight = FontWeight.W500;
                FontWeight fontWeight2 = (Intrinsics.areEqual(obj29, bool3) || obj29 == null) ? null : (FontWeight) ((Function1) SaversKt.FontWeightSaver.this$0).invoke(obj29);
                Object obj30 = list5.get(3);
                FontStyle fontStyle = (Intrinsics.areEqual(obj30, bool3) || obj30 == null) ? null : (FontStyle) ((Function1) SaversKt.FontStyleSaver.this$0).invoke(obj30);
                Object obj31 = list5.get(4);
                FontSynthesis fontSynthesis = (Intrinsics.areEqual(obj31, bool3) || obj31 == null) ? null : (FontSynthesis) ((Function1) SaversKt.FontSynthesisSaver.this$0).invoke(obj31);
                Object obj32 = list5.get(6);
                String str6 = obj32 != null ? (String) obj32 : null;
                Object obj33 = list5.get(7);
                Intrinsics.areEqual(obj33, bool3);
                TextUnit textUnit3 = obj33 != null ? (TextUnit) function1.invoke(obj33) : null;
                textUnit3.getClass();
                long j4 = textUnit3.packedValue;
                Object obj34 = list5.get(8);
                BaselineShift baselineShift = (Intrinsics.areEqual(obj34, bool3) || obj34 == null) ? null : (BaselineShift) ((Function1) SaversKt.BaselineShiftSaver.this$0).invoke(obj34);
                Object obj35 = list5.get(9);
                TextGeometricTransform textGeometricTransform = (Intrinsics.areEqual(obj35, bool3) || obj35 == null) ? null : (TextGeometricTransform) ((Function1) SaversKt.TextGeometricTransformSaver.this$0).invoke(obj35);
                Object obj36 = list5.get(10);
                LocaleList localeList = LocaleList.Empty;
                LocaleList localeList2 = (Intrinsics.areEqual(obj36, bool3) || obj36 == null) ? null : (LocaleList) ((Function1) SaversKt.LocaleListSaver.this$0).invoke(obj36);
                Object obj37 = list5.get(11);
                Intrinsics.areEqual(obj37, bool3);
                Color color2 = obj37 != null ? Intrinsics.areEqual(obj37, Boolean.FALSE) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj37).intValue())) : null;
                color2.getClass();
                long j5 = color2.value;
                Object obj38 = list5.get(12);
                TextDecoration textDecoration = (Intrinsics.areEqual(obj38, bool3) || obj38 == null) ? null : (TextDecoration) ((Function1) SaversKt.TextDecorationSaver.this$0).invoke(obj38);
                Object obj39 = list5.get(13);
                Shadow shadow2 = Shadow.None;
                CardView.AnonymousClass1 anonymousClass18 = SaversKt.ShadowSaver;
                if (!Intrinsics.areEqual(obj39, bool3) && obj39 != null) {
                    shadow = (Shadow) ((Function1) anonymousClass18.this$0).invoke(obj39);
                }
                return new SpanStyle(j2, j3, fontWeight2, fontStyle, fontSynthesis, (FontFamily) null, str6, j4, baselineShift, textGeometricTransform, localeList2, j5, textDecoration, shadow, 49184);
            case 11:
                obj.getClass();
                List list6 = (List) obj;
                Object obj40 = list6.get(0);
                Boolean bool4 = obj40 != null ? (Boolean) obj40 : null;
                bool4.getClass();
                boolean booleanValue = bool4.booleanValue();
                Object obj41 = list6.get(1);
                CardView.AnonymousClass1 anonymousClass19 = ParagraphKt.emojiSupportMatchSaver;
                if (!Intrinsics.areEqual(obj41, Boolean.FALSE) && obj41 != null) {
                    emojiSupportMatch = (EmojiSupportMatch) ((Function1) anonymousClass19.this$0).invoke(obj41);
                }
                emojiSupportMatch.getClass();
                return new PlatformParagraphStyle(emojiSupportMatch.value, booleanValue);
            case 12:
                obj.getClass();
                return new EmojiSupportMatch(((Integer) obj).intValue());
            case IMAGE_VALUE:
                obj.getClass();
                return new LineBreak(((Integer) obj).intValue());
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                obj.getClass();
                List list7 = (List) obj;
                Object obj42 = list7.get(0);
                TextMotion.Linearity linearity = (Intrinsics.areEqual(obj42, Boolean.FALSE) || obj42 == null) ? null : (TextMotion.Linearity) ((Function1) ParagraphKt.TextMotionLinearitySaver.this$0).invoke(obj42);
                linearity.getClass();
                int i7 = linearity.value;
                Object obj43 = list7.get(1);
                Boolean bool5 = obj43 != null ? (Boolean) obj43 : null;
                bool5.getClass();
                return new TextMotion(i7, bool5.booleanValue());
            case 15:
                obj.getClass();
                return new TextMotion.Linearity(((Integer) obj).intValue());
            case LAZY_VERTICAL_GRID_VALUE:
                Context context = (Context) obj;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case VERTICAL_GRID_ITEM_VALUE:
                Context context2 = (Context) obj;
                context2.getClass();
                if (context2 instanceof ContextWrapper) {
                    return ((ContextWrapper) context2).getBaseContext();
                }
                return null;
            case RADIO_GROUP_VALUE:
                ((CreationExtras) obj).getClass();
                return new NavControllerViewModel();
            case RADIO_BUTTON_VALUE:
                Context context3 = (Context) obj;
                context3.getClass();
                ContextWrapper contextWrapper = context3 instanceof ContextWrapper ? (ContextWrapper) context3 : null;
                if (contextWrapper != null) {
                    return contextWrapper.getBaseContext();
                }
                return null;
            case RADIO_ROW_VALUE:
                Context context4 = (Context) obj;
                context4.getClass();
                if (context4 instanceof Activity) {
                    return (Activity) context4;
                }
                return null;
            case RADIO_COLUMN_VALUE:
                NavDestination navDestination = (NavDestination) obj;
                navDestination.getClass();
                return navDestination.parent;
            case SIZE_BOX_VALUE:
                NavDestination navDestination2 = (NavDestination) obj;
                navDestination2.getClass();
                if (!(navDestination2 instanceof NavGraph)) {
                    return null;
                }
                Dispatcher dispatcher = ((NavGraph) navDestination2).impl;
                return dispatcher.findNode$navigation_common_release(dispatcher.maxRequestsPerHost);
            case 23:
                return new BackStackEntryIdViewModel(ViewModelKt.createSavedStateHandle((CreationExtras) obj));
            case 24:
                NavDestination navDestination3 = ((NavBackStackEntry) ((AnimatedContentTransitionScopeImpl) obj).getTargetState()).destination;
                navDestination3.getClass();
                int i8 = NavDestination.$r8$clinit;
                for (NavDestination navDestination4 : UStringsKt.getHierarchy((ComposeNavigator.Destination) navDestination3)) {
                }
                return null;
            case 25:
                return ((NavBackStackEntry) obj).id;
            case 26:
                CreationExtras creationExtras = (CreationExtras) obj;
                creationExtras.getClass();
                return new NavBackStackEntryImpl.SavedStateViewModel(ViewModelKt.createSavedStateHandle(creationExtras));
            case 27:
                NavDestination navDestination5 = (NavDestination) obj;
                navDestination5.getClass();
                NavGraph navGraph = navDestination5.parent;
                if (navGraph == null || navGraph.impl.maxRequestsPerHost != navDestination5.impl.size) {
                    return null;
                }
                return navGraph;
            case 28:
                NavDestination navDestination6 = (NavDestination) obj;
                navDestination6.getClass();
                NavGraph navGraph2 = navDestination6.parent;
                if (navGraph2 == null || navGraph2.impl.maxRequestsPerHost != navDestination6.impl.size) {
                    return null;
                }
                return navGraph2;
            default:
                NavDestination navDestination7 = (NavDestination) obj;
                navDestination7.getClass();
                return Integer.valueOf(navDestination7.impl.size);
        }
    }
}
