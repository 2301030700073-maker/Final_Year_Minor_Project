package androidx.compose.ui.text;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.cardview.widget.CardView;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
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
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryState;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.SharingConfig;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        Bundle bundle = null;
        switch (this.$r8$classId) {
            case 0:
                LinkAnnotation.Clickable clickable = (LinkAnnotation.Clickable) obj2;
                return Room.arrayListOf(clickable.tag, SaversKt.save(clickable.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 1:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                Shadow shadow = (Shadow) obj2;
                return Room.arrayListOf(SaversKt.save(new Color(shadow.color), SaversKt.ColorSaver, saveableHolder), SaversKt.save(new Offset(shadow.offset), SaversKt.OffsetSaver, saveableHolder), Float.valueOf(shadow.blurRadius));
            case 2:
                return Integer.valueOf(((TextAlign) obj2).value);
            case 3:
                return Integer.valueOf(((TextDirection) obj2).value);
            case 4:
                return Integer.valueOf(((Hyphens) obj2).value);
            case 5:
                return Integer.valueOf(((FontStyle) obj2).value);
            case 6:
                return Integer.valueOf(((FontSynthesis) obj2).value);
            case 7:
                TextUnit textUnit = (TextUnit) obj2;
                return textUnit == null ? false : TextUnit.m723equalsimpl0(textUnit.packedValue, TextUnit.Unspecified) ? Boolean.FALSE : Room.arrayListOf(Float.valueOf(TextUnit.m725getValueimpl(textUnit.packedValue)), SaversKt.save(new TextUnitType(TextUnit.m724getTypeUIouoOA(textUnit.packedValue)), SaversKt.TextUnitTypeSaver, (SaveableHolder) obj));
            case 8:
                long j = ((TextUnitType) obj2).type;
                if (TextUnitType.m728equalsimpl0(j, 8589934592L)) {
                    return 0;
                }
                if (TextUnitType.m728equalsimpl0(j, 4294967296L)) {
                    return 1;
                }
                return Boolean.FALSE;
            case 9:
                Offset offset = (Offset) obj2;
                return offset == null ? false : Offset.m383equalsimpl0(offset.packedValue, 9205357640488583168L) ? Boolean.FALSE : Room.arrayListOf(Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue >> 32))), Float.valueOf(Float.intBitsToFloat((int) (offset.packedValue & 4294967295L))));
            case 10:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
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
                switch (SaversKt.WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()]) {
                    case 1:
                        obj3.getClass();
                        save = SaversKt.save((ParagraphStyle) obj3, SaversKt.ParagraphStyleSaver, saveableHolder2);
                        break;
                    case 2:
                        obj3.getClass();
                        save = SaversKt.save((SpanStyle) obj3, SaversKt.SpanStyleSaver, saveableHolder2);
                        break;
                    case 3:
                        obj3.getClass();
                        save = SaversKt.save((VerbatimTtsAnnotation) obj3, SaversKt.VerbatimTtsAnnotationSaver, saveableHolder2);
                        break;
                    case 4:
                        obj3.getClass();
                        save = SaversKt.save((UrlAnnotation) obj3, SaversKt.UrlAnnotationSaver, saveableHolder2);
                        break;
                    case 5:
                        obj3.getClass();
                        save = SaversKt.save((LinkAnnotation.Url) obj3, SaversKt.LinkSaver, saveableHolder2);
                        break;
                    case 6:
                        obj3.getClass();
                        save = SaversKt.save((LinkAnnotation.Clickable) obj3, SaversKt.ClickableSaver, saveableHolder2);
                        break;
                    case 7:
                        obj3.getClass();
                        save = ((StringAnnotation) obj3).value;
                        break;
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                }
                return Room.arrayListOf(annotationType, save, Integer.valueOf(range.start), Integer.valueOf(range.end), range.tag);
            case 11:
                SaveableHolder saveableHolder3 = (SaveableHolder) obj;
                List list = ((LocaleList) obj2).localeList;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(SaversKt.save((Locale) list.get(i), SaversKt.LocaleSaver, saveableHolder3));
                }
                return arrayList;
            case 12:
                return ((Locale) obj2).platformLocale.toLanguageTag();
            case IMAGE_VALUE:
                SaveableHolder saveableHolder4 = (SaveableHolder) obj;
                LineHeightStyle lineHeightStyle = (LineHeightStyle) obj2;
                return Room.arrayListOf(SaversKt.save(new LineHeightStyle.Alignment(lineHeightStyle.alignment), SaversKt.LineHeightStyleAlignmentSaver, saveableHolder4), SaversKt.save(new LineHeightStyle.Trim(lineHeightStyle.trim), SaversKt.LineHeightStyleTrimSaver, saveableHolder4), SaversKt.save(new LineHeightStyle.Mode(lineHeightStyle.mode), SaversKt.LineHeightStyleModeSaver, saveableHolder4));
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return Float.valueOf(((LineHeightStyle.Alignment) obj2).topRatio);
            case 15:
                return Integer.valueOf(((LineHeightStyle.Trim) obj2).value);
            case LAZY_VERTICAL_GRID_VALUE:
                return Integer.valueOf(((LineHeightStyle.Mode) obj2).value);
            case VERTICAL_GRID_ITEM_VALUE:
                return ((VerbatimTtsAnnotation) obj2).verbatim;
            case RADIO_GROUP_VALUE:
                SaveableHolder saveableHolder5 = (SaveableHolder) obj;
                ParagraphStyle paragraphStyle = (ParagraphStyle) obj2;
                Object save2 = SaversKt.save(new TextAlign(paragraphStyle.textAlign), SaversKt.TextAlignSaver, saveableHolder5);
                Object save3 = SaversKt.save(new TextDirection(paragraphStyle.textDirection), SaversKt.TextDirectionSaver, saveableHolder5);
                Object save4 = SaversKt.save(new TextUnit(paragraphStyle.lineHeight), SaversKt.TextUnitSaver, saveableHolder5);
                TextIndent textIndent = paragraphStyle.textIndent;
                TextIndent textIndent2 = TextIndent.None;
                Object save5 = SaversKt.save(textIndent, SaversKt.TextIndentSaver, saveableHolder5);
                Object save6 = SaversKt.save(paragraphStyle.platformStyle, ParagraphKt.PlatformParagraphStyleSaver, saveableHolder5);
                LineHeightStyle lineHeightStyle2 = paragraphStyle.lineHeightStyle;
                LineHeightStyle lineHeightStyle3 = LineHeightStyle.Default;
                return Room.arrayListOf(save2, save3, save4, save5, save6, SaversKt.save(lineHeightStyle2, SaversKt.LineHeightStyleSaver, saveableHolder5), SaversKt.save(new LineBreak(paragraphStyle.lineBreak), ParagraphKt.LineBreakSaver, saveableHolder5), SaversKt.save(new Hyphens(paragraphStyle.hyphens), SaversKt.HyphensSaver, saveableHolder5), SaversKt.save(paragraphStyle.textMotion, ParagraphKt.TextMotionSaver, saveableHolder5));
            case RADIO_BUTTON_VALUE:
                return ((UrlAnnotation) obj2).url;
            case RADIO_ROW_VALUE:
                SaveableHolder saveableHolder6 = (SaveableHolder) obj;
                SpanStyle spanStyle = (SpanStyle) obj2;
                Color color = new Color(spanStyle.textForegroundStyle.mo667getColor0d7_KjU());
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.ColorSaver;
                Object save7 = SaversKt.save(color, saversKt$NonNullValueClassSaver$1, saveableHolder6);
                TextUnit textUnit2 = new TextUnit(spanStyle.fontSize);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.TextUnitSaver;
                Object save8 = SaversKt.save(textUnit2, saversKt$NonNullValueClassSaver$12, saveableHolder6);
                FontWeight fontWeight = spanStyle.fontWeight;
                FontWeight fontWeight2 = FontWeight.W500;
                Object save9 = SaversKt.save(fontWeight, SaversKt.FontWeightSaver, saveableHolder6);
                Object save10 = SaversKt.save(spanStyle.fontStyle, SaversKt.FontStyleSaver, saveableHolder6);
                Object save11 = SaversKt.save(spanStyle.fontSynthesis, SaversKt.FontSynthesisSaver, saveableHolder6);
                String str = spanStyle.fontFeatureSettings;
                Object save12 = SaversKt.save(new TextUnit(spanStyle.letterSpacing), saversKt$NonNullValueClassSaver$12, saveableHolder6);
                Object save13 = SaversKt.save(spanStyle.baselineShift, SaversKt.BaselineShiftSaver, saveableHolder6);
                Object save14 = SaversKt.save(spanStyle.textGeometricTransform, SaversKt.TextGeometricTransformSaver, saveableHolder6);
                LocaleList localeList = spanStyle.localeList;
                LocaleList localeList2 = LocaleList.Empty;
                Object save15 = SaversKt.save(localeList, SaversKt.LocaleListSaver, saveableHolder6);
                Object save16 = SaversKt.save(new Color(spanStyle.background), saversKt$NonNullValueClassSaver$1, saveableHolder6);
                Object save17 = SaversKt.save(spanStyle.textDecoration, SaversKt.TextDecorationSaver, saveableHolder6);
                Shadow shadow2 = spanStyle.shadow;
                Shadow shadow3 = Shadow.None;
                return Room.arrayListOf(save7, save8, save9, save10, save11, -1, str, save12, save13, save14, save15, save16, save17, SaversKt.save(shadow2, SaversKt.ShadowSaver, saveableHolder6));
            case RADIO_COLUMN_VALUE:
                SaveableHolder saveableHolder7 = (SaveableHolder) obj;
                TextLinkStyles textLinkStyles = (TextLinkStyles) obj2;
                SpanStyle spanStyle2 = textLinkStyles.style;
                CardView.AnonymousClass1 anonymousClass1 = SaversKt.SpanStyleSaver;
                return Room.arrayListOf(SaversKt.save(spanStyle2, anonymousClass1, saveableHolder7), SaversKt.save(textLinkStyles.focusedStyle, anonymousClass1, saveableHolder7), SaversKt.save(textLinkStyles.hoveredStyle, anonymousClass1, saveableHolder7), SaversKt.save(textLinkStyles.pressedStyle, anonymousClass1, saveableHolder7));
            case SIZE_BOX_VALUE:
                PlatformParagraphStyle platformParagraphStyle = (PlatformParagraphStyle) obj2;
                Boolean valueOf = Boolean.valueOf(platformParagraphStyle.includeFontPadding);
                CardView.AnonymousClass1 anonymousClass12 = SaversKt.AnnotationRangeListSaver;
                return Room.arrayListOf(valueOf, SaversKt.save(new EmojiSupportMatch(platformParagraphStyle.emojiSupportMatch), ParagraphKt.emojiSupportMatchSaver, (SaveableHolder) obj));
            case 23:
                return Integer.valueOf(((EmojiSupportMatch) obj2).value);
            case 24:
                return Integer.valueOf(((LineBreak) obj2).mask);
            case 25:
                TextMotion textMotion = (TextMotion) obj2;
                return Room.arrayListOf(SaversKt.save(new TextMotion.Linearity(textMotion.linearity), ParagraphKt.TextMotionLinearitySaver, (SaveableHolder) obj), Boolean.valueOf(textMotion.subpixelTextPositioning));
            case 26:
                return Integer.valueOf(((TextMotion.Linearity) obj2).value);
            case 27:
                NavHostController navHostController = (NavHostController) obj2;
                NavControllerImpl navControllerImpl = navHostController.impl;
                LinkedHashMap linkedHashMap = navControllerImpl.backStackStates;
                ArrayDeque arrayDeque = navControllerImpl.backQueue;
                LinkedHashMap linkedHashMap2 = navControllerImpl.backStackMap;
                ArrayList arrayList2 = new ArrayList();
                Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                for (Map.Entry entry : MapsKt__MapsKt.toMap(navControllerImpl._navigatorProvider._navigators).entrySet()) {
                    ((Navigator) entry.getValue()).getClass();
                }
                if (!arrayList2.isEmpty()) {
                    bundle = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    OperationKt.m770putStringListimpl(bundleOf, "android-support-nav:controller:navigatorState:names", arrayList2);
                    bundle.putBundle("android-support-nav:controller:navigatorState", bundleOf);
                }
                if (!arrayDeque.isEmpty()) {
                    if (bundle == null) {
                        bundle = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
                    Iterator<E> it = arrayDeque.iterator();
                    while (it.hasNext()) {
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
                        navBackStackEntry.getClass();
                        int i2 = navBackStackEntry.destination.impl.size;
                        String str2 = navBackStackEntry.id;
                        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry.impl;
                        Bundle arguments$navigation_common_release = navBackStackEntryImpl.getArguments$navigation_common_release();
                        Bundle bundleOf2 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        navBackStackEntryImpl.savedStateRegistryController.performSave(bundleOf2);
                        Bundle bundleOf3 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        bundleOf3.putString("nav-entry-state:id", str2);
                        bundleOf3.putInt("nav-entry-state:destination-id", i2);
                        if (arguments$navigation_common_release == null) {
                            arguments$navigation_common_release = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        }
                        bundleOf3.putBundle("nav-entry-state:args", arguments$navigation_common_release);
                        bundleOf3.putBundle("nav-entry-state:saved-state", bundleOf2);
                        arrayList3.add(bundleOf3);
                    }
                    bundle.putParcelableArrayList("android-support-nav:controller:backStack", arrayList3);
                }
                if (!linkedHashMap2.isEmpty()) {
                    if (bundle == null) {
                        bundle = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    int[] iArr = new int[linkedHashMap2.size()];
                    ArrayList arrayList4 = new ArrayList();
                    int i3 = 0;
                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                        int intValue = ((Number) entry2.getKey()).intValue();
                        String str3 = (String) entry2.getValue();
                        int i4 = i3 + 1;
                        iArr[i3] = intValue;
                        if (str3 == null) {
                            str3 = "";
                        }
                        arrayList4.add(str3);
                        i3 = i4;
                    }
                    bundle.putIntArray("android-support-nav:controller:backStackDestIds", iArr);
                    OperationKt.m770putStringListimpl(bundle, "android-support-nav:controller:backStackIds", arrayList4);
                }
                if (!linkedHashMap.isEmpty()) {
                    if (bundle == null) {
                        bundle = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    ArrayList arrayList5 = new ArrayList();
                    for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                        String str4 = (String) entry3.getKey();
                        ArrayDeque arrayDeque2 = (ArrayDeque) entry3.getValue();
                        arrayList5.add(str4);
                        ArrayList<? extends Parcelable> arrayList6 = new ArrayList<>();
                        Iterator it2 = arrayDeque2.iterator();
                        while (it2.hasNext()) {
                            SharingConfig sharingConfig = ((NavBackStackEntryState) it2.next()).impl;
                            Bundle bundleOf4 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                            bundleOf4.putString("nav-entry-state:id", (String) sharingConfig.upstream);
                            bundleOf4.putInt("nav-entry-state:destination-id", sharingConfig.extraBufferCapacity);
                            Bundle bundle2 = (Bundle) sharingConfig.onBufferOverflow;
                            if (bundle2 == null) {
                                bundle2 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                            }
                            bundleOf4.putBundle("nav-entry-state:args", bundle2);
                            bundleOf4.putBundle("nav-entry-state:saved-state", (Bundle) sharingConfig.context);
                            arrayList6.add(bundleOf4);
                        }
                        bundle.putParcelableArrayList("android-support-nav:controller:backStackStates:" + str4, arrayList6);
                    }
                    OperationKt.m770putStringListimpl(bundle, "android-support-nav:controller:backStackStates", arrayList5);
                }
                if (navHostController.deepLinkHandled) {
                    if (bundle == null) {
                        bundle = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
                    }
                    bundle.putBoolean("android-support-nav:controller:deepLinkHandled", navHostController.deepLinkHandled);
                }
                return bundle;
            case 28:
                String str5 = (String) obj;
                CoroutineContext.Element element = (CoroutineContext.Element) obj2;
                str5.getClass();
                element.getClass();
                if (str5.length() == 0) {
                    return element.toString();
                }
                return str5 + ", " + element;
            default:
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
        }
    }
}
