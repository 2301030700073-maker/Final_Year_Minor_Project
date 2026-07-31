package org.wikipedia.feed;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.serialization.RouteBuilder$ParamType;
import androidx.navigation.serialization.RouteBuilder$WhenMappings;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import j$.time.LocalDate;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.serialization.KSerializer;
import org.wikipedia.R;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.compose.components.error.ComposeErrorType;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.dayheader.DayHeaderCard;
import org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda6;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGround;
import org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundViewModel;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CommunityContentTabKt$$ExternalSyntheticLambda47 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda47(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.$r8$classId = 7;
        this.f$0 = mutexImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        Modifier then;
        Modifier then2;
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                WikiSite wikiSite = (WikiSite) obj4;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ForYouCardKt.CommunityDisclaimer(SizeKt.fillMaxWidth(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), 1.0f), wikiSite, gapComposer, 6);
                    OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 16.0f));
                    break;
                }
            case 1:
                ((LongPressTextDragObserverKt$$ExternalSyntheticLambda0) obj4).f$0.mo195onStart3MmeM6k(((PointerInputChange) obj2).position, SelectionAdjustment$Companion.None);
                break;
            case 2:
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) obj4;
                int intValue2 = ((Integer) obj).intValue();
                int intValue3 = ((Integer) obj2).intValue();
                boolean booleanValue = ((Boolean) obj3).booleanValue();
                if (!booleanValue) {
                    intValue2 = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(intValue2);
                }
                if (!booleanValue) {
                    intValue3 = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(intValue3);
                }
                if (coreTextFieldSemanticsModifierNode.enabled) {
                    long j = coreTextFieldSemanticsModifierNode.value.selection;
                    int i2 = TextRange.$r8$clinit;
                    if (intValue2 != ((int) (j >> 32)) || intValue3 != ((int) (j & 4294967295L))) {
                        if (Math.min(intValue2, intValue3) < 0 || Math.max(intValue2, intValue3) > coreTextFieldSemanticsModifierNode.value.annotatedString.text.length()) {
                            TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.manager;
                            textFieldSelectionManager.updateFloatingToolbar(false);
                            textFieldSelectionManager.setHandleState(HandleState.None);
                            z = false;
                        } else {
                            if (booleanValue || intValue2 == intValue3) {
                                TextFieldSelectionManager textFieldSelectionManager2 = coreTextFieldSemanticsModifierNode.manager;
                                textFieldSelectionManager2.updateFloatingToolbar(false);
                                textFieldSelectionManager2.setHandleState(HandleState.None);
                            } else {
                                coreTextFieldSemanticsModifierNode.manager.enterSelectionMode$foundation(true);
                            }
                            coreTextFieldSemanticsModifierNode.state.onValueChange.invoke(new TextFieldValue(coreTextFieldSemanticsModifierNode.value.annotatedString, ParagraphKt.TextRange(intValue2, intValue3), (TextRange) null));
                            z = true;
                        }
                        break;
                    }
                }
                z = false;
                break;
            case 3:
                SelectionManager selectionManager = (SelectionManager) obj4;
                Modifier modifier = (Modifier) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                gapComposer2.startReplaceGroup(-1914520728);
                Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                Object rememberedValue = gapComposer2.rememberedValue();
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = Updater.mutableStateOf$default(new IntSize(0L));
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                boolean changedInstance = gapComposer2.changedInstance(selectionManager);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Recomposer$$ExternalSyntheticLambda6(17, selectionManager, mutableState);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Function0 function0 = (Function0) rememberedValue2;
                boolean changed = gapComposer2.changed(density);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new OnThisDayModuleKt$$ExternalSyntheticLambda6(density, mutableState, 1);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                }
                AnimationVector2D animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                then = modifier.then(new ComposedModifier(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(r9, function0, (Function1) rememberedValue3)));
                gapComposer2.end(false);
                break;
            case 4:
                TextFieldSelectionManager textFieldSelectionManager3 = (TextFieldSelectionManager) obj4;
                Modifier modifier2 = (Modifier) obj;
                GapComposer gapComposer3 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                gapComposer3.startReplaceGroup(1980580247);
                Density density2 = (Density) gapComposer3.consume(CompositionLocalsKt.LocalDensity);
                Object rememberedValue4 = gapComposer3.rememberedValue();
                if (rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = Updater.mutableStateOf$default(new IntSize(0L));
                    gapComposer3.updateRememberedValue(rememberedValue4);
                }
                MutableState mutableState2 = (MutableState) rememberedValue4;
                boolean changedInstance2 = gapComposer3.changedInstance(textFieldSelectionManager3);
                Object rememberedValue5 = gapComposer3.rememberedValue();
                if (changedInstance2 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new Recomposer$$ExternalSyntheticLambda6(19, textFieldSelectionManager3, mutableState2);
                    gapComposer3.updateRememberedValue(rememberedValue5);
                }
                Function0 function02 = (Function0) rememberedValue5;
                boolean changed2 = gapComposer3.changed(density2);
                Object rememberedValue6 = gapComposer3.rememberedValue();
                if (changed2 || rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new OnThisDayModuleKt$$ExternalSyntheticLambda6(density2, mutableState2, 3);
                    gapComposer3.updateRememberedValue(rememberedValue6);
                }
                AnimationVector2D animationVector2D2 = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                then2 = modifier2.then(new ComposedModifier(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(r9, function02, (Function1) rememberedValue6)));
                gapComposer3.end(false);
                break;
            case 5:
                ImageLoader$Builder imageLoader$Builder = (ImageLoader$Builder) obj4;
                int intValue4 = ((Integer) obj).intValue();
                String str = (String) obj2;
                NavType navType = (NavType) obj3;
                str.getClass();
                navType.getClass();
                int i3 = RouteBuilder$WhenMappings.$EnumSwitchMapping$0[(((navType instanceof CollectionNavType) || ((KSerializer) imageLoader$Builder.application).getDescriptor().isElementOptional(intValue4)) ? RouteBuilder$ParamType.QUERY : RouteBuilder$ParamType.PATH).ordinal()];
                if (i3 == 1) {
                    imageLoader$Builder.componentRegistry = ((String) imageLoader$Builder.componentRegistry) + '/' + Animation.CC.m('}', "{", str);
                } else if (i3 != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    imageLoader$Builder.addQuery(str, "{" + str + '}');
                }
                break;
            case 6:
                ((DiskLruCache$$ExternalSyntheticLambda0) obj4).invoke((Throwable) obj);
                break;
            case 7:
                MutexImpl mutexImpl = (MutexImpl) obj4;
                MutexImpl.owner$volatile$FU.set(mutexImpl, null);
                mutexImpl.unlock(null);
                break;
            case 8:
                ((SemaphoreAndMutexImpl) obj4).release();
                break;
            case 9:
                BoxScope boxScope = (BoxScope) obj4;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer4.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TimelineModuleKt.TimelineModuleEmptyView(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(boxScope.align(companion, Alignment.Companion.Center), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, 32.0f, RecyclerView.DECELERATION_RATE, 52.0f, 5), gapComposer4, 0);
                    break;
                }
            case 10:
                ComposeErrorType composeErrorType = (ComposeErrorType) obj4;
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer5.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(composeErrorType.buttonText, gapComposer5), null, 0L, null, ContextsKt.getSp(16), null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer5, 24576, 0, 262126);
                    break;
                }
            case 11:
                int i4 = ((DayHeaderCard) obj4).age;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    LocalDate minusDays = LocalDate.now().minusDays(i4);
                    minusDays.getClass();
                    ForYouCardKt.DayHeader(minusDays, i4 == 0, gapComposer6, 0, 0);
                    break;
                }
            case 12:
                LottieCompositionResultImpl lottieCompositionResultImpl = (LottieCompositionResultImpl) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue8 & 6) == 0) {
                    intValue8 |= gapComposer7.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 19) != 18)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.padding(fillElement, paddingValues), 24.0f, RecyclerView.DECELERATION_RATE, 2), ImageKt.rememberScrollState(gapComposer7), true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer7, 54);
                    long j2 = gapComposer7.compositeKeyHashCode;
                    int i5 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer7, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer7.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer7, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i5);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer7, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer7, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer7, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_building_text, gapComposer7), SizeKt.fillMaxWidth(companion, 1.0f), ((WikipediaColor) gapComposer7.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer7.consume(TypographyKt.LocalTypography)).headlineMedium, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer7, 48, 0, 131064);
                    OffsetKt.Spacer(gapComposer7, SizeKt.m140height3ABfNKs(companion, 16.0f));
                    Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(companion, 185.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j3 = gapComposer7.compositeKeyHashCode;
                    int i6 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer7, m140height3ABfNKs);
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m327setimpl(gapComposer7, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i6, gapComposer7, composeUiNode$Companion$SetModifier$13, gapComposer7, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer7, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    RegexKt.LottieAnimation((LottieComposition) lottieCompositionResultImpl.getValue(), fillElement, gapComposer7, 1572912);
                    gapComposer7.end(true);
                    gapComposer7.end(true);
                    break;
                }
            default:
                CategoryDeveloperPlayGround categoryDeveloperPlayGround = (CategoryDeveloperPlayGround) obj4;
                String str2 = (String) obj;
                String str3 = (String) obj2;
                String str4 = (String) obj3;
                int i7 = CategoryDeveloperPlayGround.$r8$clinit;
                str2.getClass();
                str3.getClass();
                str4.getClass();
                if (categoryDeveloperPlayGround.validateInput(str2.length() == 0 || str3.length() == 0 || str4.length() == 0)) {
                    CategoryDeveloperPlayGroundViewModel viewModel = categoryDeveloperPlayGround.getViewModel();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 11), null, new GlanceAppWidgetReceiver$onReceive$1$1(Integer.parseInt(str4), str2, str3, viewModel, categoryDeveloperPlayGround, (Continuation) null), 2);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda47(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
