package org.wikipedia.games;

import android.graphics.Paint;
import android.os.Bundle;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda23 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda23(TextFieldValue textFieldValue, AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter, ImeOptions imeOptions, UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1, Function1 function1) {
        this.$r8$classId = 4;
        this.f$0 = textFieldValue;
        this.f$2 = androidLegacyPlatformTextInputServiceAdapter;
        this.f$3 = imeOptions;
        this.f$4 = utilsKt$$ExternalSyntheticLambda1;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        List list;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 1;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$1;
        Object obj5 = this.f$2;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                List list2 = (List) obj6;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(list2.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new GamesHubScreenKt$$ExternalSyntheticLambda25(list2, (Function1) obj4, (GamesHubViewModel) obj5, (OnThisDayGameArchiveCalendarHelper) obj3, (MutableState) obj2), true, -4606101));
                break;
            case 1:
                ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) obj6;
                activityResultLauncherHolder.launcher = ((ComponentActivity$activityResultRegistry$1) obj4).register((String) obj5, (FragmentManager$FragmentIntentSenderContract) obj3, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(i2, (MutableState) obj2));
                break;
            case 2:
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj6;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj4;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj3;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                float floatValue = ((Float) obj).floatValue();
                MouseWheelScrollingLogic.MouseWheelScrollDelta sumOrNull = MouseWheelScrollingLogic.sumOrNull(mouseWheelScrollingLogic.channel);
                if (sumOrNull != null) {
                    CardView.AnonymousClass1 anonymousClass1 = mouseWheelScrollingLogic.velocityTracker;
                    long j = sumOrNull.timeMillis;
                    long j2 = sumOrNull.value;
                    ((JsonWriteContext) anonymousClass1.mCardBackground).addDataPoint(Float.intBitsToFloat((int) (j2 >> 32)), j);
                    ((JsonWriteContext) anonymousClass1.this$0).addDataPoint(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
                    MouseWheelScrollingLogic.MouseWheelScrollDelta plus = ((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef.element).plus(sumOrNull);
                    ref$ObjectRef.element = plus;
                    ref$FloatRef.element = scrollingLogic.m105toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m102reverseIfNeededMKHz9U(plus.value));
                    ref$BooleanRef.element = !ScrollableKt.isLowScrollingDelta(r0 - floatValue);
                }
                break;
            case 3:
                OffsetMapping offsetMapping = (OffsetMapping) obj4;
                TextFieldValue textFieldValue = (TextFieldValue) obj5;
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj3;
                SolidColor solidColor = (SolidColor) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                float floatValue2 = ((CursorAnimationState) obj6).cursorAlpha$delegate.getFloatValue();
                if (floatValue2 != RecyclerView.DECELERATION_RATE) {
                    long j3 = textFieldValue.selection;
                    int i3 = TextRange.$r8$clinit;
                    int originalToTransformed = offsetMapping.originalToTransformed((int) (j3 >> 32));
                    TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                    Rect cursorRect = layoutResult != null ? layoutResult.value.getCursorRect(originalToTransformed) : new Rect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
                    float floor = (float) Math.floor(layoutNodeDrawScope.mo87toPx0680j_4(2.0f));
                    if (floor < 1.0f) {
                        floor = 1.0f;
                    }
                    float f = floor / 2.0f;
                    float f2 = cursorRect.left + f;
                    float intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m796getSizeNHjbRc() >> 32)) - f;
                    if (f2 > intBitsToFloat) {
                        f2 = intBitsToFloat;
                    }
                    if (f2 >= f) {
                        f = f2;
                    }
                    float floor2 = ((int) floor) % 2 == 1 ? ((float) Math.floor(f)) + 0.5f : (float) Math.rint(f);
                    long floatToRawIntBits = (Float.floatToRawIntBits(floor2) << 32) | (Float.floatToRawIntBits(cursorRect.top) & 4294967295L);
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(floor2) << 32) | (Float.floatToRawIntBits(cursorRect.bottom) & 4294967295L);
                    Canvas canvas = canvasDrawScope.drawParams.canvas;
                    AndroidPaint androidPaint = canvasDrawScope.strokePaint;
                    if (androidPaint == null) {
                        androidPaint = ColorKt.Paint();
                        androidPaint.m415setStylek9PVt8s(1);
                        canvasDrawScope.strokePaint = androidPaint;
                    }
                    Paint paint = androidPaint.internalPaint;
                    solidColor.mo421applyToPq9zytI(floatValue2, canvasDrawScope.drawContext.m796getSizeNHjbRc(), androidPaint);
                    if (!Intrinsics.areEqual(androidPaint.internalColorFilter, null)) {
                        androidPaint.setColorFilter(null);
                    }
                    if (androidPaint._blendMode != 3) {
                        androidPaint.m410setBlendModes9anfk8(3);
                    }
                    if (paint.getStrokeWidth() != floor) {
                        androidPaint.setStrokeWidth(floor);
                    }
                    if (paint.getStrokeMiter() != 4.0f) {
                        paint.setStrokeMiter(4.0f);
                    }
                    if (androidPaint.m408getStrokeCapKaPHkGw() != 0) {
                        androidPaint.m413setStrokeCapBeK7IIE(0);
                    }
                    if (androidPaint.m409getStrokeJoinLxFBmk8() != 0) {
                        androidPaint.m414setStrokeJoinWw9F2mQ(0);
                    }
                    if (!paint.isFilterBitmap()) {
                        androidPaint.m412setFilterQualityvDHp3xo(1);
                    }
                    canvas.mo407drawLineWko1d7g(floatToRawIntBits, floatToRawIntBits2, androidPaint);
                    break;
                }
                break;
            case 4:
                LegacyTextInputMethodRequest legacyTextInputMethodRequest = (LegacyTextInputMethodRequest) obj;
                LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = ((AndroidLegacyPlatformTextInputServiceAdapter) obj5).textInputModifierNode;
                legacyTextInputMethodRequest.state = (TextFieldValue) obj6;
                legacyTextInputMethodRequest.imeOptions = (ImeOptions) obj3;
                legacyTextInputMethodRequest.onEditCommand = (UtilsKt$$ExternalSyntheticLambda1) obj2;
                legacyTextInputMethodRequest.onImeActionPerformed = (Function1) obj4;
                legacyTextInputMethodRequest.legacyTextFieldState = legacyAdaptingPlatformTextInputModifierNode != null ? legacyAdaptingPlatformTextInputModifierNode.legacyTextFieldState : null;
                legacyTextInputMethodRequest.textFieldSelectionManager = legacyAdaptingPlatformTextInputModifierNode != null ? legacyAdaptingPlatformTextInputModifierNode.textFieldSelectionManager : null;
                legacyTextInputMethodRequest.viewConfiguration = legacyAdaptingPlatformTextInputModifierNode != null ? (ViewConfiguration) HitTestResultKt.currentValueOf(legacyAdaptingPlatformTextInputModifierNode, CompositionLocalsKt.LocalViewConfiguration) : null;
                break;
            case 5:
                ArrayList arrayList = (ArrayList) obj4;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj5;
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj3;
                Bundle bundle = (Bundle) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj6).element = true;
                int indexOf = arrayList.indexOf(navBackStackEntry);
                if (indexOf != -1) {
                    int i4 = indexOf + 1;
                    list = arrayList.subList(ref$IntRef.element, i4);
                    ref$IntRef.element = i4;
                } else {
                    list = EmptyList.INSTANCE;
                }
                navControllerImpl.addEntryToBackStack(navBackStackEntry.destination, bundle, navBackStackEntry, list);
                break;
            default:
                final HomePreferenceType homePreferenceType = (HomePreferenceType) obj6;
                final HomeContentState homeContentState = (HomeContentState) obj5;
                final Function1 function1 = (Function1) obj4;
                final Function1 function12 = (Function1) obj3;
                final HomeContentState homeContentState2 = (HomeContentState) obj2;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                final int i5 = 0;
                LazyItemScope$CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj7, Object obj8, Object obj9) {
                        int i6 = i5;
                        Unit unit2 = Unit.INSTANCE;
                        HomePreferenceType homePreferenceType2 = homePreferenceType;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj7;
                        GapComposer gapComposer = (GapComposer) obj8;
                        int intValue = ((Integer) obj9).intValue();
                        switch (i6) {
                            case 0:
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    HomePreferenceType homePreferenceType3 = HomePreferenceType.COMMUNITY;
                                    HomePreferenceScreenKt.HomePreferenceSection(homeContentState, homePreferenceType2 == homePreferenceType3, homePreferenceType3, function1, function12, gapComposer, 384);
                                    break;
                                }
                            default:
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    HomePreferenceType homePreferenceType4 = HomePreferenceType.PERSONALIZED;
                                    HomePreferenceScreenKt.HomePreferenceSection(homeContentState, homePreferenceType2 == homePreferenceType4, homePreferenceType4, function1, function12, gapComposer, 384);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, -1120373245), 3);
                final int i6 = 1;
                LazyItemScope$CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj7, Object obj8, Object obj9) {
                        int i62 = i6;
                        Unit unit2 = Unit.INSTANCE;
                        HomePreferenceType homePreferenceType2 = homePreferenceType;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj7;
                        GapComposer gapComposer = (GapComposer) obj8;
                        int intValue = ((Integer) obj9).intValue();
                        switch (i62) {
                            case 0:
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    HomePreferenceType homePreferenceType3 = HomePreferenceType.COMMUNITY;
                                    HomePreferenceScreenKt.HomePreferenceSection(homeContentState2, homePreferenceType2 == homePreferenceType3, homePreferenceType3, function1, function12, gapComposer, 384);
                                    break;
                                }
                            default:
                                lazyItemScopeImpl.getClass();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    HomePreferenceType homePreferenceType4 = HomePreferenceType.PERSONALIZED;
                                    HomePreferenceScreenKt.HomePreferenceSection(homeContentState2, homePreferenceType2 == homePreferenceType4, homePreferenceType4, function1, function12, gapComposer, 384);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, -1709651028), 3);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda23(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda23(HomePreferenceType homePreferenceType, HomeContentState homeContentState, Function1 function1, Function1 function12, HomeContentState homeContentState2) {
        this.$r8$classId = 6;
        this.f$0 = homePreferenceType;
        this.f$2 = homeContentState;
        this.f$1 = function1;
        this.f$3 = function12;
        this.f$4 = homeContentState2;
    }
}
