package androidx.compose.foundation.text.selection;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.modifiers.SelectionController$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAbsoluteAlignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.compose.ui.window.SecureFlagPolicy;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.activitytab.ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.search.NoSearchResultsKt$$ExternalSyntheticLambda3;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SimpleLayoutKt {
    public static AndroidCanvas canvas;
    public static CanvasDrawScope canvasDrawScope;
    public static AndroidImageBitmap imageBitmap;
    public static final Rect invertedInfiniteRect = new Rect(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);

    public static final void HandlePopup(OffsetProvider offsetProvider, Alignment alignment, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-1090171650);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(offsetProvider) : gapComposer.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(alignment) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 256 : 128;
        }
        boolean z = true;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            boolean z2 = (i2 & 112) == 32;
            if ((i2 & 14) != 4 && ((i2 & 8) == 0 || !gapComposer.changed(offsetProvider))) {
                z = false;
            }
            boolean z3 = z2 | z;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new HandlePositionProvider(alignment, offsetProvider);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            AndroidPopup_androidKt.Popup((HandlePositionProvider) rememberedValue, null, new PopupProperties(false, SecureFlagPolicy.Inherit, false, 0), composableLambdaImpl, gapComposer, ((i2 << 3) & 7168) | 384, 2);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) offsetProvider, (Object) alignment, (Object) composableLambdaImpl, i, 8);
        }
    }

    public static final void SelectionContainer(Modifier modifier, Selection selection, Function1 function1, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-917932944);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(selection) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        int i4 = 0;
        int i5 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object[] objArr = new Object[0];
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = new ImmLeaksCleaner$$ExternalSyntheticLambda0(20);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) SaverKt.rememberSaveable(objArr, SelectionRegistrarImpl.Saver, (Function0) rememberedValue, gapComposer, 384);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new SelectionManager(selectionRegistrarImpl);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            SelectionManager selectionManager = (SelectionManager) rememberedValue2;
            Object obj2 = (Clipboard) gapComposer.consume(CompositionLocalsKt.LocalClipboard);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (rememberedValue3 == obj) {
                rememberedValue3 = Updater.createCompositionCoroutineScope(gapComposer);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue3;
            selectionManager.hapticFeedBack = (HapticFeedback) gapComposer.consume(CompositionLocalsKt.LocalHapticFeedback);
            boolean changed = gapComposer.changed(coroutineScope) | gapComposer.changed(obj2);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed || rememberedValue4 == obj) {
                rememberedValue4 = new NavController$$ExternalSyntheticLambda3(8, coroutineScope, obj2);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            selectionManager.onCopyHandler = (Function1) rememberedValue4;
            selectionManager.onSelectionChange = new NavController$$ExternalSyntheticLambda3(9, selectionManager, function1);
            selectionManager.setSelection(selection);
            gapComposer.startReplaceGroup(-82280708);
            selectionManager.platformSelectionBehaviors = PlatformSelectionBehaviors_androidKt.rememberPlatformSelectionBehaviors(SelectedTextType.StaticText, null, gapComposer, 54);
            selectionManager.coroutineScope = coroutineScope;
            gapComposer.end(false);
            selectionManager.isNonEmptySelection$foundation();
            CoreTextFieldKt$TextFieldCursorHandle$2$1 coreTextFieldKt$TextFieldCursorHandle$2$1 = new CoreTextFieldKt$TextFieldCursorHandle$2$1(i5, selectionManager, new SelectionManager$$ExternalSyntheticLambda1(selectionManager, i4));
            Modifier modifier2 = Modifier.Companion.$$INSTANCE;
            int i6 = 5;
            Modifier onKeyEvent = Key_androidKt.onKeyEvent(SuspendingPointerInputFilterKt.pointerInput(ImageKt.focusable(FocusTraversalKt.onFocusChanged(FocusTraversalKt.focusRequester(RulerKt.onGloballyPositioned(SuspendingPointerInputFilterKt.pointerInput(modifier2, Unit.INSTANCE, coreTextFieldKt$TextFieldCursorHandle$2$1), new SelectionManager$$ExternalSyntheticLambda0(selectionManager, i3)), selectionManager.focusRequester), new SelectionManager$$ExternalSyntheticLambda0(selectionManager, i6)), true, null), 8675309, new LazyLayoutPagerKt$dragDirectionDetector$1(i6, new SelectionManager$$ExternalSyntheticLambda0(selectionManager, 6))), new CallsKt$await$2$1(2, selectionManager));
            if (selectionManager.getDraggingHandle() != null && selectionManager.isInTouchMode()) {
                Selection selection2 = selectionManager.getSelection();
                if (!(selection2 == null ? true : Intrinsics.areEqual(selection2.start, selection2.end)) && Magnifier_androidKt.isPlatformMagnifierSupported$default()) {
                    modifier2 = modifier2.then(new ComposedModifier(new CommunityContentTabKt$$ExternalSyntheticLambda47(3, selectionManager)));
                }
            }
            SimpleLayout(modifier.then(TextContextMenuModifierKt.addTextContextMenuComponentsWithContext(onKeyEvent.then(modifier2), new HintHandler$$ExternalSyntheticLambda0(14, selectionManager))), Expect_jvmKt.rememberComposableLambda(-1799563674, new SelectionContainerKt$$ExternalSyntheticLambda6(selectionManager, selectionRegistrarImpl, composableLambdaImpl), gapComposer), gapComposer, 48);
            boolean changedInstance = gapComposer.changedInstance(selectionManager);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue5 == obj) {
                rememberedValue5 = new SelectionManager$$ExternalSyntheticLambda0(selectionManager, i5);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Updater.DisposableEffect(selectionManager, (Function1) rememberedValue5, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(modifier, (Object) selection, function1, composableLambdaImpl, i, 1);
        }
    }

    /* renamed from: SelectionHandle-wLIcFTc, reason: not valid java name */
    public static final void m235SelectionHandlewLIcFTc(final OffsetProvider offsetProvider, final boolean z, final ResolvedTextDirection resolvedTextDirection, final boolean z2, long j, final float f, final SuspendPointerInputElement suspendPointerInputElement, GapComposer gapComposer, final int i) {
        int i2;
        final long j2;
        int i3;
        long j3;
        final boolean z3;
        gapComposer.startRestartGroup(-466280168);
        if ((i & 6) == 0) {
            i2 = ((i & 8) == 0 ? gapComposer.changed(offsetProvider) : gapComposer.changedInstance(offsetProvider) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(resolvedTextDirection.ordinal()) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(suspendPointerInputElement) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (533651 & i2) != 533650)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i3 = i2 & (-57345);
                j3 = 9205357640488583168L;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-57345);
                j3 = j;
            }
            gapComposer.endDefaults();
            if (z) {
                SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.SelectionHandleInfoKey;
                z3 = (resolvedTextDirection == ResolvedTextDirection.Ltr && !z2) || (resolvedTextDirection == ResolvedTextDirection.Rtl && z2);
            } else {
                SemanticsPropertyKey semanticsPropertyKey2 = SelectionHandlesKt.SelectionHandleInfoKey;
                z3 = (resolvedTextDirection != ResolvedTextDirection.Ltr || z2) && !(resolvedTextDirection == ResolvedTextDirection.Rtl && z2);
            }
            BiasAbsoluteAlignment biasAbsoluteAlignment = z3 ? AbsoluteAlignment.TopRight : AbsoluteAlignment.TopLeft;
            int i4 = i3 & 14;
            boolean changed = (i4 == 4 || ((i3 & 8) != 0 && gapComposer.changedInstance(offsetProvider))) | ((i3 & 112) == 32) | gapComposer.changed(z3);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new ActivityTabCustomizationActivityKt$$ExternalSyntheticLambda3(offsetProvider, z, z3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final Modifier semantics = SemanticsModifierKt.semantics(suspendPointerInputElement, false, (Function1) rememberedValue);
            final ViewConfiguration viewConfiguration = (ViewConfiguration) gapComposer.consume(CompositionLocalsKt.LocalViewConfiguration);
            long j4 = j3;
            BiasAbsoluteAlignment biasAbsoluteAlignment2 = biasAbsoluteAlignment;
            j2 = j4;
            HandlePopup(offsetProvider, biasAbsoluteAlignment2, Expect_jvmKt.rememberComposableLambda(1365123137, new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        ProvidedValue defaultProvidedValue$runtime = CompositionLocalsKt.LocalViewConfiguration.defaultProvidedValue$runtime(ViewConfiguration.this);
                        final long j5 = j2;
                        final boolean z4 = z3;
                        final Modifier modifier = semantics;
                        final OffsetProvider offsetProvider2 = offsetProvider;
                        Updater.CompositionLocalProvider(defaultProvidedValue$runtime, Expect_jvmKt.rememberComposableLambda(1260045569, new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda4
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Modifier then;
                                GapComposer gapComposer3 = (GapComposer) obj3;
                                int intValue2 = ((Integer) obj4).intValue();
                                final int i5 = 1;
                                final int i6 = 0;
                                if (gapComposer3.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    long j6 = j5;
                                    boolean z5 = z4;
                                    Modifier modifier2 = modifier;
                                    final OffsetProvider offsetProvider3 = offsetProvider2;
                                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                                    if (j6 != 9205357640488583168L) {
                                        gapComposer3.startReplaceGroup(3458246);
                                        Arrangement$End$1 arrangement$End$1 = z5 ? OffsetKt.f4Right : OffsetKt.f3Left;
                                        then = modifier2.then(new SizeElement(DpSize.m712getWidthD9Ej5fM(j6), (r13 & 2) != 0 ? Float.NaN : DpSize.m711getHeightD9Ej5fM(j6), (r13 & 4) != 0 ? Float.NaN : RecyclerView.DECELERATION_RATE, (r13 & 8) != 0 ? Float.NaN : RecyclerView.DECELERATION_RATE, false));
                                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, Alignment.Companion.Top, gapComposer3, 0);
                                        long j7 = gapComposer3.compositeKeyHashCode;
                                        int i7 = (int) (j7 ^ (j7 >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer3.currentCompositionLocalScope();
                                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer3, then);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer3.startReusableNode();
                                        if (gapComposer3.inserting) {
                                            gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer3.useNode();
                                        }
                                        Updater.m327setimpl(gapComposer3, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m327setimpl(gapComposer3, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m327setimpl(gapComposer3, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m327setimpl(gapComposer3, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        boolean changedInstance = gapComposer3.changedInstance(offsetProvider3);
                                        Object rememberedValue2 = gapComposer3.rememberedValue();
                                        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new Function0() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda5
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    int i8 = i6;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo185provideF1C5BW0()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo185provideF1C5BW0()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            gapComposer3.updateRememberedValue(rememberedValue2);
                                        }
                                        SimpleLayoutKt.SelectionHandleIcon(Modifier.Companion.$$INSTANCE, (Function0) rememberedValue2, z5, gapComposer3, 6);
                                        gapComposer3.end(true);
                                        gapComposer3.end(false);
                                    } else {
                                        gapComposer3.startReplaceGroup(4389176);
                                        boolean changedInstance2 = gapComposer3.changedInstance(offsetProvider3);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new Function0() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda5
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Object invoke() {
                                                    int i8 = i5;
                                                    OffsetProvider offsetProvider4 = offsetProvider3;
                                                    switch (i8) {
                                                        case 0:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo185provideF1C5BW0()) != 9205357640488583168L);
                                                        default:
                                                            return Boolean.valueOf((9223372034707292159L & offsetProvider4.mo185provideF1C5BW0()) != 9205357640488583168L);
                                                    }
                                                }
                                            };
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        SimpleLayoutKt.SelectionHandleIcon(modifier2, (Function0) rememberedValue3, z5, gapComposer3, 0);
                                        gapComposer3.end(false);
                                    }
                                } else {
                                    gapComposer3.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 56);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, i4 | 384);
        } else {
            gapComposer.skipToGroupEnd();
            j2 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final long j5 = j2;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SimpleLayoutKt.m235SelectionHandlewLIcFTc(OffsetProvider.this, z, resolvedTextDirection, z2, j5, f, suspendPointerInputElement, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SelectionHandleIcon(Modifier modifier, Function0 function0, boolean z, GapComposer gapComposer, int i) {
        int i2;
        Modifier then;
        gapComposer.startRestartGroup(2111672474);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128);
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            SemanticsPropertyKey semanticsPropertyKey = SelectionHandlesKt.SelectionHandleInfoKey;
            then = SizeKt.m146sizeVpY3zN4(modifier, 25.0f, 25.0f).then(new ComposedModifier(new HomeScreenKt$$ExternalSyntheticLambda1(function0, z, i4)));
            OffsetKt.Spacer(gapComposer, then);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldSelectionManagerKt$$ExternalSyntheticLambda0(modifier, function0, z, i);
        }
    }

    public static final void SimpleLayout(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-1854833411);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = SimpleLayoutKt$SimpleLayout$1$1.INSTANCE;
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SimpleLayoutKt$$ExternalSyntheticLambda0(modifier, composableLambdaImpl, i, i3);
        }
    }

    public static final void TextFieldSelectionHandle(final boolean z, ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, GapComposer gapComposer, int i) {
        int i2;
        TextLayoutResultProxy layoutResult;
        gapComposer.startRestartGroup(-1344558920);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(resolvedTextDirection.ordinal()) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(textFieldSelectionManager) ? 256 : 128;
        }
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            int i4 = i2 & 14;
            boolean changed = (i4 == 4) | gapComposer.changed(textFieldSelectionManager);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = new SelectionManager$handleDragObserver$1(textFieldSelectionManager, z);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
            boolean changedInstance = gapComposer.changedInstance(textFieldSelectionManager) | (i4 == 4);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == obj) {
                rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                    @Override // androidx.compose.foundation.text.selection.OffsetProvider
                    /* renamed from: provide-F1C5BW0 */
                    public final long mo185provideF1C5BW0() {
                        return TextFieldSelectionManager.this.m242getHandlePositiontuRUvjQ$foundation(z);
                    }
                };
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
            boolean m645getReversedimpl = TextRange.m645getReversedimpl(textFieldSelectionManager.getValue$foundation().selection);
            int i5 = (int) (z ? textFieldSelectionManager.getValue$foundation().selection >> 32 : textFieldSelectionManager.getValue$foundation().selection & 4294967295L);
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
            float lineHeight = (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) ? RecyclerView.DECELERATION_RATE : BasicTextKt.getLineHeight(layoutResult.value, i5);
            boolean changedInstance2 = gapComposer.changedInstance(textDragObserver);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == obj) {
                rememberedValue3 = new SelectionContainerKt$SelectionContainer$5$1$1$1$1$1$1(textDragObserver, i3);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            m235SelectionHandlewLIcFTc(offsetProvider, z, resolvedTextDirection, m645getReversedimpl, 0L, lineHeight, new SuspendPointerInputElement(textDragObserver, null, (PointerInputEventHandler) rememberedValue3, 6), gapComposer, (i2 << 3) & 1008);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldSelectionManagerKt$$ExternalSyntheticLambda0(z, resolvedTextDirection, textFieldSelectionManager, i);
        }
    }

    public static final Selection adjustToBoundaries(SelectionLayout selectionLayout, SelectionAdjustment$Companion selectionAdjustment$Companion) {
        boolean z = selectionLayout.getCrossStatus() == CrossStatus.CROSSED;
        return new Selection(anchorOnBoundary(selectionLayout.getStartInfo(), z, true, selectionLayout.getStartSlot(), selectionAdjustment$Companion), anchorOnBoundary(selectionLayout.getEndInfo(), z, false, selectionLayout.getEndSlot(), selectionAdjustment$Companion), z);
    }

    public static final Selection.AnchorInfo anchorOnBoundary(SelectableInfo selectableInfo, boolean z, boolean z2, int i, SelectionAdjustment$Companion selectionAdjustment$Companion) {
        long TextRange;
        long j;
        int i2 = z2 ? selectableInfo.rawStartHandleOffset : selectableInfo.rawEndHandleOffset;
        if (i != selectableInfo.slot) {
            return selectableInfo.anchorForOffset(i2);
        }
        switch (selectionAdjustment$Companion.$r8$classId) {
            case 1:
                String str = selectableInfo.textLayoutResult.layoutInput.text.text;
                TextRange = ParagraphKt.TextRange(BasicTextKt.findParagraphStart(str, i2), BasicTextKt.findParagraphEnd(str, i2));
                break;
            default:
                TextRange = selectableInfo.textLayoutResult.m638getWordBoundaryjx7JFs(i2);
                break;
        }
        if (z ^ z2) {
            int i3 = TextRange.$r8$clinit;
            j = TextRange >> 32;
        } else {
            int i4 = TextRange.$r8$clinit;
            j = 4294967295L & TextRange;
        }
        return selectableInfo.anchorForOffset((int) j);
    }

    public static final Direction appendSelectableInfo_Parwq6A$otherDirection(Direction direction, Direction direction2, SelectionLayoutBuilder selectionLayoutBuilder, long j, Selection.AnchorInfo anchorInfo) {
        if (anchorInfo != null) {
            int compare = selectionLayoutBuilder.selectableIdOrderingComparator.compare(Long.valueOf(anchorInfo.selectableId), Long.valueOf(j));
            Direction direction3 = compare < 0 ? Direction.BEFORE : compare > 0 ? Direction.AFTER : Direction.ON;
            if (direction3 != null) {
                return direction3;
            }
        }
        return resolve2dDirection(direction, direction2);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:10:0x0040). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r7, kotlin.coroutines.jvm.internal.BaseContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = (androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1 r0 = new androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitDown$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L40
        L29:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
        L33:
            androidx.compose.ui.input.pointer.PointerEventPass r8 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = r7.awaitPointerEvent(r8, r0)
            if (r8 != r1) goto L40
            return r1
        L40:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            java.util.List r2 = r8.changes
            int r4 = r2.size()
            r5 = 0
        L49:
            if (r5 >= r4) goto L5b
            java.lang.Object r6 = r2.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerId.changedToDown(r6)
            if (r6 != 0) goto L58
            goto L33
        L58:
            int r5 = r5 + 1
            goto L49
        L5b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SimpleLayoutKt.awaitDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Object awaitSelectionGestures(PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation continuation) {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) pointerInputScope;
        suspendingPointerInputModifierNodeImpl.getClass();
        Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new BasicTooltipKt$handleGestures$2$1$1(new StatusLine(HitTestResultKt.requireLayoutNode(suspendingPointerInputModifierNodeImpl).viewConfiguration), mouseSelectionObserver, textDragObserver, null), continuation);
        return awaitEachGesture == CoroutineSingletons.COROUTINE_SUSPENDED ? awaitEachGesture : Unit.INSTANCE;
    }

    public static final Selection.AnchorInfo changeOffset(Selection.AnchorInfo anchorInfo, SelectableInfo selectableInfo, int i) {
        return new Selection.AnchorInfo(selectableInfo.textLayoutResult.getBidiRunDirection(i), i, anchorInfo.selectableId);
    }

    /* renamed from: containsInclusive-Uv8p0NA, reason: not valid java name */
    public static final boolean m236containsInclusiveUv8p0NA(Rect rect, long j) {
        float f = rect.left;
        float f2 = rect.right;
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        if (f > intBitsToFloat || intBitsToFloat > f2) {
            return false;
        }
        float f3 = rect.top;
        float f4 = rect.bottom;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return f3 <= intBitsToFloat2 && intBitsToFloat2 <= f4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
    
        if (r1 <= r6.getHeight()) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.graphics.AndroidImageBitmap createHandleImage(androidx.compose.ui.draw.CacheDrawScope r27, float r28) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SimpleLayoutKt.createHandleImage(androidx.compose.ui.draw.CacheDrawScope, float):androidx.compose.ui.graphics.AndroidImageBitmap");
    }

    /* renamed from: getMagnifierCenter-JVtK1S4, reason: not valid java name */
    public static final long m237getMagnifierCenterJVtK1S4(SelectionManager selectionManager, long j, Selection.AnchorInfo anchorInfo) {
        LayoutCoordinates layoutCoordinates;
        long TextRange;
        long j2;
        MultiParagraph multiParagraph;
        int lineForOffset;
        float coerceIn;
        MultiParagraph multiParagraph2;
        int lineForOffset2;
        MultiParagraph multiParagraph3;
        int lineForOffset3;
        float lineBottom;
        MultiParagraph multiParagraph4;
        int lineForOffset4;
        MultiWidgetSelectionDelegate anchorSelectable$foundation = selectionManager.getAnchorSelectable$foundation(anchorInfo);
        if (anchorSelectable$foundation == null) {
            return 9205357640488583168L;
        }
        SelectionController$$ExternalSyntheticLambda0 selectionController$$ExternalSyntheticLambda0 = anchorSelectable$foundation.layoutResultCallback;
        LayoutCoordinates layoutCoordinates2 = selectionManager.containerLayoutCoordinates;
        if (layoutCoordinates2 == null || (layoutCoordinates = anchorSelectable$foundation.getLayoutCoordinates()) == null) {
            return 9205357640488583168L;
        }
        int i = anchorInfo.offset;
        TextLayoutResult textLayoutResult = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
        if (i > (textLayoutResult == null ? 0 : anchorSelectable$foundation.getLastVisibleOffset(textLayoutResult))) {
            return 9205357640488583168L;
        }
        Offset offset = (Offset) selectionManager.currentDragPosition$delegate.getValue();
        offset.getClass();
        float intBitsToFloat = Float.intBitsToFloat((int) (layoutCoordinates.mo518localPositionOfR5De75A(layoutCoordinates2, offset.packedValue) >> 32));
        TextLayoutResult textLayoutResult2 = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
        if (textLayoutResult2 == null) {
            TextRange = TextRange.Zero;
        } else {
            MultiParagraph multiParagraph5 = textLayoutResult2.multiParagraph;
            int lastVisibleOffset = anchorSelectable$foundation.getLastVisibleOffset(textLayoutResult2);
            if (lastVisibleOffset < 1) {
                TextRange = TextRange.Zero;
            } else {
                int lineForOffset5 = multiParagraph5.getLineForOffset(RegexKt.coerceIn(i, 0, lastVisibleOffset - 1));
                TextRange = ParagraphKt.TextRange(textLayoutResult2.getLineStart(lineForOffset5), multiParagraph5.getLineEnd(lineForOffset5, true));
            }
        }
        if (TextRange.m641getCollapsedimpl(TextRange)) {
            TextLayoutResult textLayoutResult3 = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
            coerceIn = (textLayoutResult3 != null && (lineForOffset4 = (multiParagraph4 = textLayoutResult3.multiParagraph).getLineForOffset(i)) < multiParagraph4.lineCount) ? textLayoutResult3.getLineLeft(lineForOffset4) : -1.0f;
            j2 = 4294967295L;
        } else {
            j2 = 4294967295L;
            int i2 = (int) (TextRange >> 32);
            TextLayoutResult textLayoutResult4 = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
            float lineLeft = (textLayoutResult4 != null && (lineForOffset2 = (multiParagraph2 = textLayoutResult4.multiParagraph).getLineForOffset(i2)) < multiParagraph2.lineCount) ? textLayoutResult4.getLineLeft(lineForOffset2) : -1.0f;
            int i3 = ((int) (TextRange & 4294967295L)) - 1;
            TextLayoutResult textLayoutResult5 = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
            float lineRight = (textLayoutResult5 != null && (lineForOffset = (multiParagraph = textLayoutResult5.multiParagraph).getLineForOffset(i3)) < multiParagraph.lineCount) ? textLayoutResult5.getLineRight(lineForOffset) : -1.0f;
            coerceIn = RegexKt.coerceIn(intBitsToFloat, Math.min(lineLeft, lineRight), Math.max(lineLeft, lineRight));
        }
        if (coerceIn == -1.0f) {
            return 9205357640488583168L;
        }
        if (!IntSize.m721equalsimpl0(j, 0L) && Math.abs(intBitsToFloat - coerceIn) > ((int) (j >> 32)) / 2) {
            return 9205357640488583168L;
        }
        TextLayoutResult textLayoutResult6 = (TextLayoutResult) selectionController$$ExternalSyntheticLambda0.invoke();
        if (textLayoutResult6 != null && (lineForOffset3 = (multiParagraph3 = textLayoutResult6.multiParagraph).getLineForOffset(i)) < multiParagraph3.lineCount) {
            float lineTop = multiParagraph3.getLineTop(lineForOffset3);
            lineBottom = ((multiParagraph3.getLineBottom(lineForOffset3) - lineTop) / 2.0f) + lineTop;
        } else {
            lineBottom = -1.0f;
        }
        if (lineBottom == -1.0f) {
            return 9205357640488583168L;
        }
        return layoutCoordinates2.mo518localPositionOfR5De75A(layoutCoordinates, (Float.floatToRawIntBits(coerceIn) << 32) | (Float.floatToRawIntBits(lineBottom) & j2));
    }

    /* renamed from: getOffsetForPosition-3MmeM6k, reason: not valid java name */
    public static final int m238getOffsetForPosition3MmeM6k(long j, TextLayoutResult textLayoutResult) {
        int i = (int) (4294967295L & j);
        if (Float.intBitsToFloat(i) <= RecyclerView.DECELERATION_RATE) {
            return 0;
        }
        float intBitsToFloat = Float.intBitsToFloat(i);
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        return intBitsToFloat >= multiParagraph.height ? textLayoutResult.layoutInput.text.text.length() : multiParagraph.m629getOffsetForPositionk4lQ0M(j);
    }

    public static final long getSelectionHandleCoordinates(TextLayoutResult textLayoutResult, int i, boolean z, boolean z2) {
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        long j = textLayoutResult.size;
        if (multiParagraph.getLineForOffset(i) >= multiParagraph.lineCount) {
            return 9205357640488583168L;
        }
        boolean z3 = textLayoutResult.getBidiRunDirection(((!z || z2) && (z || !z2)) ? Math.max(i + (-1), 0) : i) == textLayoutResult.getParagraphDirection(i);
        multiParagraph.requireIndexInRangeInclusiveEnd(i);
        int length = ((AnnotatedString) multiParagraph.intrinsics.url).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? arrayList.size() - 1 : ParagraphKt.findParagraphByIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        TextLayout textLayout = androidParagraph.layout;
        return (Float.floatToRawIntBits(RegexKt.coerceIn(z3 ? textLayout.getPrimaryHorizontal(localIndex, false) : textLayout.getSecondaryHorizontal(localIndex, false), RecyclerView.DECELERATION_RATE, (int) (j >> 32))) << 32) | (Float.floatToRawIntBits(RegexKt.coerceIn(multiParagraph.getLineBottom(r3), RecyclerView.DECELERATION_RATE, (int) (j & 4294967295L))) & 4294967295L);
    }

    public static final ResolvedTextDirection getTextDirectionForOffset(TextLayoutResult textLayoutResult, int i) {
        TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        if (textLayoutInput.text.text.length() != 0) {
            int lineForOffset = multiParagraph.getLineForOffset(i);
            if ((i != 0 && lineForOffset == multiParagraph.getLineForOffset(i - 1)) || (i != textLayoutInput.text.text.length() && lineForOffset == multiParagraph.getLineForOffset(i + 1))) {
                return textLayoutResult.getBidiRunDirection(i);
            }
        }
        return textLayoutResult.getParagraphDirection(i);
    }

    public static final boolean isSelectionHandleInVisibleBoundDefault(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        LayoutCoordinates layoutCoordinates;
        LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
        if (legacyTextFieldState == null || (layoutCoordinates = legacyTextFieldState.getLayoutCoordinates()) == null) {
            return false;
        }
        return m236containsInclusiveUv8p0NA(visibleBounds(layoutCoordinates), textFieldSelectionManager.m242getHandlePositiontuRUvjQ$foundation(z));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00fc A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x002f, B:13:0x00e4, B:15:0x00ec, B:17:0x00f0, B:19:0x00fc, B:21:0x0108, B:62:0x00bd), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0081 A[Catch: all -> 0x0046, TryCatch #1 {all -> 0x0046, blocks: (B:34:0x0042, B:35:0x0079, B:37:0x0081, B:39:0x008d, B:41:0x0099, B:52:0x0060), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object mouseSelection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r10, androidx.compose.foundation.text.selection.MouseSelectionObserver r11, okhttp3.internal.http.StatusLine r12, androidx.compose.ui.input.pointer.PointerEvent r13, kotlin.coroutines.jvm.internal.BaseContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SimpleLayoutKt.mouseSelection(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.foundation.text.selection.MouseSelectionObserver, okhttp3.internal.http.StatusLine, androidx.compose.ui.input.pointer.PointerEvent, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Direction resolve2dDirection(Direction direction, Direction direction2) {
        int[] iArr = SelectionLayoutKt$WhenMappings.$EnumSwitchMapping$0;
        int i = iArr[direction2.ordinal()];
        if (i == 1) {
            return Direction.BEFORE;
        }
        if (i != 2) {
            if (i == 3) {
                return Direction.AFTER;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        int i2 = iArr[direction.ordinal()];
        if (i2 == 1) {
            return Direction.BEFORE;
        }
        if (i2 == 2) {
            return Direction.ON;
        }
        if (i2 == 3) {
            return Direction.AFTER;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r15 == r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[Catch: CancellationException -> 0x0031, TryCatch #0 {CancellationException -> 0x0031, blocks: (B:12:0x002c, B:13:0x00a1, B:15:0x00a9, B:17:0x00b5, B:19:0x00c1, B:21:0x00c4, B:24:0x00c7, B:28:0x00cb, B:32:0x0040, B:34:0x0063, B:36:0x0067, B:40:0x0086, B:45:0x004a), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object touchSelectionFirstPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r12, androidx.compose.foundation.text.TextDragObserver r13, androidx.compose.ui.input.pointer.PointerEvent r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SimpleLayoutKt.touchSelectionFirstPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
    
        if (r15 == r1) goto L48;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095 A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009b A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r11, androidx.compose.foundation.text.TextDragObserver r12, androidx.compose.ui.input.pointer.PointerEvent r13, int r14, kotlin.coroutines.jvm.internal.BaseContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SimpleLayoutKt.touchSelectionSubsequentPress(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, androidx.compose.foundation.text.TextDragObserver, androidx.compose.ui.input.pointer.PointerEvent, int, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static final Selection.AnchorInfo updateSelectionBoundary(final SelectionLayout selectionLayout, final SelectableInfo selectableInfo, Selection.AnchorInfo anchorInfo) {
        final int i = selectionLayout.isStartHandle() ? selectableInfo.rawStartHandleOffset : selectableInfo.rawEndHandleOffset;
        int startSlot = selectionLayout.isStartHandle() ? selectionLayout.getStartSlot() : selectionLayout.getEndSlot();
        int i2 = selectableInfo.slot;
        TextLayoutResult textLayoutResult = selectableInfo.textLayoutResult;
        int i3 = selectableInfo.rawPreviousHandleOffset;
        if (startSlot != i2) {
            return selectableInfo.anchorForOffset(i);
        }
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        final Lazy lazy = ContextsKt.lazy(lazyThreadSafetyMode, new NoSearchResultsKt$$ExternalSyntheticLambda3(i, 2, selectableInfo));
        final int i4 = selectionLayout.isStartHandle() ? selectableInfo.rawEndHandleOffset : selectableInfo.rawStartHandleOffset;
        Lazy lazy2 = ContextsKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustmentKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int intValue = ((Number) lazy.getValue()).intValue();
                SelectionLayout selectionLayout2 = selectionLayout;
                boolean isStartHandle = selectionLayout2.isStartHandle();
                boolean z = selectionLayout2.getCrossStatus() == CrossStatus.CROSSED;
                SelectableInfo selectableInfo2 = SelectableInfo.this;
                TextLayoutResult textLayoutResult2 = selectableInfo2.textLayoutResult;
                int i5 = i;
                long m638getWordBoundaryjx7JFs = textLayoutResult2.m638getWordBoundaryjx7JFs(i5);
                TextLayoutResult textLayoutResult3 = selectableInfo2.textLayoutResult;
                MultiParagraph multiParagraph = textLayoutResult3.multiParagraph;
                int i6 = TextRange.$r8$clinit;
                int i7 = (int) (m638getWordBoundaryjx7JFs >> 32);
                int i8 = multiParagraph.lineCount;
                if (multiParagraph.getLineForOffset(i7) != intValue) {
                    i7 = intValue >= i8 ? textLayoutResult3.getLineStart(i8 - 1) : textLayoutResult3.getLineStart(intValue);
                }
                int i9 = (int) (m638getWordBoundaryjx7JFs & 4294967295L);
                if (multiParagraph.getLineForOffset(i9) != intValue) {
                    i9 = intValue >= i8 ? multiParagraph.getLineEnd(i8 - 1, false) : multiParagraph.getLineEnd(intValue, false);
                }
                int i10 = i4;
                if (i7 == i10) {
                    return selectableInfo2.anchorForOffset(i9);
                }
                if (i9 == i10) {
                    return selectableInfo2.anchorForOffset(i7);
                }
                if (!(isStartHandle ^ z) ? i5 >= i7 : i5 > i9) {
                    i7 = i9;
                }
                return selectableInfo2.anchorForOffset(i7);
            }
        });
        if (selectableInfo.selectableId != anchorInfo.selectableId) {
            return (Selection.AnchorInfo) lazy2.getValue();
        }
        if (i == i3) {
            return anchorInfo;
        }
        if (((Number) lazy.getValue()).intValue() != textLayoutResult.multiParagraph.getLineForOffset(i3)) {
            return (Selection.AnchorInfo) lazy2.getValue();
        }
        int i5 = anchorInfo.offset;
        long m638getWordBoundaryjx7JFs = textLayoutResult.m638getWordBoundaryjx7JFs(i5);
        boolean isStartHandle = selectionLayout.isStartHandle();
        if (i3 != -1) {
            if (i != i3) {
                if (!(isStartHandle ^ (selectableInfo.getRawCrossStatus() == CrossStatus.CROSSED))) {
                }
            }
            return selectableInfo.anchorForOffset(i);
        }
        int i6 = TextRange.$r8$clinit;
        return (i5 == ((int) (m638getWordBoundaryjx7JFs >> 32)) || i5 == ((int) (m638getWordBoundaryjx7JFs & 4294967295L))) ? (Selection.AnchorInfo) lazy2.getValue() : selectableInfo.anchorForOffset(i);
    }

    public static final Rect visibleBounds(LayoutCoordinates layoutCoordinates) {
        Rect boundsInWindow = RulerKt.boundsInWindow(layoutCoordinates, true);
        long mo526windowToLocalMKHz9U = layoutCoordinates.mo526windowToLocalMKHz9U(boundsInWindow.m392getTopLeftF1C5BW0());
        float f = boundsInWindow.right;
        float f2 = boundsInWindow.bottom;
        long mo526windowToLocalMKHz9U2 = layoutCoordinates.mo526windowToLocalMKHz9U((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
        return new Rect(Float.intBitsToFloat((int) (mo526windowToLocalMKHz9U >> 32)), Float.intBitsToFloat((int) (mo526windowToLocalMKHz9U & 4294967295L)), Float.intBitsToFloat((int) (mo526windowToLocalMKHz9U2 >> 32)), Float.intBitsToFloat((int) (mo526windowToLocalMKHz9U2 & 4294967295L)));
    }

    public static final void SelectionContainer(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(1949207773);
        int i2 = i | 6;
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Selection selection = (Selection) mutableState.getValue();
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 8);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer2 = gapComposer;
            SelectionContainer(companion, selection, (Function1) rememberedValue2, composableLambdaImpl2, gapComposer2, 3462);
            modifier = companion;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SimpleLayoutKt$$ExternalSyntheticLambda0(modifier, composableLambdaImpl2, i, i3);
        }
    }
}
