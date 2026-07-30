package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoreTextField.kt */
/* loaded from: classes.dex */
public abstract class CoreTextFieldKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean CoreTextField$lambda$11(State state) {
        return ((Boolean) state.getValue()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x03da, code lost:
    
        if (r9 == r1.getEmpty()) goto L263;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x054e  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0587  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x061d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0649  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x06bd  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0717  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0726  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0748  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x075f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x076e  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0799  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x07a1  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x07af  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x07da  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0807 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0832  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0855  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x085d  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0871  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0899  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x08c6  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x08e5  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0936  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x094f  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x09b5  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0956  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x089c  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0857  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x07b1  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x07a3  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0761  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x06bf  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:323:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x02d2  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:356:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:360:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:361:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:363:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x09da  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0354  */
    /* JADX WARN: Type inference failed for: r0v45, types: [androidx.compose.ui.Modifier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoreTextField(final androidx.compose.ui.text.input.TextFieldValue r54, final kotlin.jvm.functions.Function1 r55, androidx.compose.ui.Modifier r56, androidx.compose.ui.text.TextStyle r57, androidx.compose.ui.text.input.VisualTransformation r58, kotlin.jvm.functions.Function1 r59, androidx.compose.foundation.interaction.MutableInteractionSource r60, androidx.compose.ui.graphics.Brush r61, boolean r62, int r63, int r64, androidx.compose.ui.text.input.ImeOptions r65, androidx.compose.foundation.text.KeyboardActions r66, boolean r67, boolean r68, kotlin.jvm.functions.Function3 r69, androidx.compose.runtime.Composer r70, final int r71, final int r72, final int r73) {
        /*
            Method dump skipped, instructions count: 2550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt.CoreTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, boolean, int, int, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.text.KeyboardActions, boolean, boolean, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CoreTextFieldRootBox(final Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final Function2 function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-20551815);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changedInstance(textFieldSelectionManager) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-20551815, i2, -1, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:801)");
            }
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), true);
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, modifier);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0 constructor = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl, maybeCachedBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ContextMenu_androidKt.ContextMenuArea(textFieldSelectionManager, function2, startRestartGroup, (i2 >> 3) & 126);
            startRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextFieldRootBox$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    CoreTextFieldKt.CoreTextFieldRootBox(Modifier.this, textFieldSelectionManager, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    private static final Modifier previewKeyEventToDeselectOnBack(Modifier modifier, final LegacyTextFieldState legacyTextFieldState, final TextFieldSelectionManager textFieldSelectionManager) {
        return KeyInputModifierKt.onPreviewKeyEvent(modifier, new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m390invokeZmokQxo(((KeyEvent) obj).m1628unboximpl());
            }

            /* renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m390invokeZmokQxo(android.view.KeyEvent keyEvent) {
                boolean z;
                if (LegacyTextFieldState.this.getHandleState() == HandleState.Selection && KeyEventHelpers_androidKt.m392cancelsTextSelectionZmokQxo(keyEvent)) {
                    z = true;
                    TextFieldSelectionManager.m560deselect_kEHs6E$foundation_release$default(textFieldSelectionManager, null, 1, null);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tapToFocus(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z) {
        SoftwareKeyboardController keyboardController;
        if (!legacyTextFieldState.getHasFocus()) {
            focusRequester.requestFocus();
        } else {
            if (!z || (keyboardController = legacyTextFieldState.getKeyboardController()) == null) {
                return;
            }
            keyboardController.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startInputSession(TextInputService textInputService, LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping) {
        legacyTextFieldState.setInputSession(TextFieldDelegate.Companion.onFocus$foundation_release(textInputService, textFieldValue, legacyTextFieldState.getProcessor(), imeOptions, legacyTextFieldState.getOnValueChange(), legacyTextFieldState.getOnImeActionPerformed()));
        notifyFocusedRect(legacyTextFieldState, textFieldValue, offsetMapping);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void endInputSession(LegacyTextFieldState legacyTextFieldState) {
        TextInputSession inputSession = legacyTextFieldState.getInputSession();
        if (inputSession != null) {
            TextFieldDelegate.Companion.onBlur$foundation_release(inputSession, legacyTextFieldState.getProcessor(), legacyTextFieldState.getOnValueChange());
        }
        legacyTextFieldState.setInputSession(null);
    }

    public static final Object bringSelectionEndIntoView(BringIntoViewRequester bringIntoViewRequester, TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, Continuation continuation) {
        Rect rect;
        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m2122getMaximpl(textFieldValue.m2247getSelectiond9O1mEE()));
        if (originalToTransformed < textLayoutResult.getLayoutInput().getText().length()) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed);
        } else if (originalToTransformed != 0) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
        } else {
            rect = new Rect(0.0f, 0.0f, 1.0f, IntSize.m2483getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null)));
        }
        Object bringIntoView = bringIntoViewRequester.bringIntoView(rect, continuation);
        return bringIntoView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? bringIntoView : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void SelectionToolbarAndHandles(final TextFieldSelectionManager textFieldSelectionManager, final boolean z, Composer composer, final int i) {
        int i2;
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        Composer startRestartGroup = composer.startRestartGroup(626339208);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(626339208, i2, -1, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:1146)");
            }
            if (z) {
                startRestartGroup.startReplaceGroup(-1286242594);
                LegacyTextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
                TextLayoutResult textLayoutResult = null;
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                    LegacyTextFieldState state$foundation_release2 = textFieldSelectionManager.getState$foundation_release();
                    if (!(state$foundation_release2 != null ? state$foundation_release2.isLayoutResultStale() : true)) {
                        textLayoutResult = value;
                    }
                }
                if (textLayoutResult == null) {
                    startRestartGroup.startReplaceGroup(-1285984396);
                } else {
                    startRestartGroup.startReplaceGroup(-1285984395);
                    if (!TextRange.m2119getCollapsedimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE())) {
                        startRestartGroup.startReplaceGroup(-1680616096);
                        int originalToTransformed = textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m2125getStartimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE()));
                        int originalToTransformed2 = textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m2120getEndimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE()));
                        ResolvedTextDirection bidiRunDirection = textLayoutResult.getBidiRunDirection(originalToTransformed);
                        ResolvedTextDirection bidiRunDirection2 = textLayoutResult.getBidiRunDirection(Math.max(originalToTransformed2 - 1, 0));
                        LegacyTextFieldState state$foundation_release3 = textFieldSelectionManager.getState$foundation_release();
                        if (state$foundation_release3 != null && state$foundation_release3.getShowSelectionHandleStart()) {
                            startRestartGroup.startReplaceGroup(-1680216289);
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, startRestartGroup, ((i2 << 6) & 896) | 6);
                            startRestartGroup.endReplaceGroup();
                        } else {
                            startRestartGroup.startReplaceGroup(-1679975078);
                            startRestartGroup.endReplaceGroup();
                        }
                        LegacyTextFieldState state$foundation_release4 = textFieldSelectionManager.getState$foundation_release();
                        if (state$foundation_release4 != null && state$foundation_release4.getShowSelectionHandleEnd()) {
                            startRestartGroup.startReplaceGroup(-1679895904);
                            TextFieldSelectionManagerKt.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, startRestartGroup, ((i2 << 6) & 896) | 6);
                            startRestartGroup.endReplaceGroup();
                        } else {
                            startRestartGroup.startReplaceGroup(-1679655654);
                            startRestartGroup.endReplaceGroup();
                        }
                        startRestartGroup.endReplaceGroup();
                    } else {
                        startRestartGroup.startReplaceGroup(-1679637798);
                        startRestartGroup.endReplaceGroup();
                    }
                    LegacyTextFieldState state$foundation_release5 = textFieldSelectionManager.getState$foundation_release();
                    if (state$foundation_release5 != null) {
                        if (textFieldSelectionManager.isTextChanged$foundation_release()) {
                            state$foundation_release5.setShowFloatingToolbar(false);
                        }
                        if (state$foundation_release5.getHasFocus()) {
                            if (state$foundation_release5.getShowFloatingToolbar()) {
                                textFieldSelectionManager.showSelectionToolbar$foundation_release();
                            } else {
                                textFieldSelectionManager.hideSelectionToolbar$foundation_release();
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                }
                startRestartGroup.endReplaceGroup();
                startRestartGroup.endReplaceGroup();
            } else {
                startRestartGroup.startReplaceGroup(651305535);
                startRestartGroup.endReplaceGroup();
                textFieldSelectionManager.hideSelectionToolbar$foundation_release();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$SelectionToolbarAndHandles$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    CoreTextFieldKt.SelectionToolbarAndHandles(TextFieldSelectionManager.this, z, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionManager textFieldSelectionManager, Composer composer, final int i) {
        int i2;
        AnnotatedString transformedText$foundation_release;
        Composer startRestartGroup = composer.startRestartGroup(-1436003720);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) == 2 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1436003720, i2, -1, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1189)");
            }
            LegacyTextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
            if (state$foundation_release == null || !state$foundation_release.getShowCursorHandle() || (transformedText$foundation_release = textFieldSelectionManager.getTransformedText$foundation_release()) == null || transformedText$foundation_release.length() <= 0) {
                startRestartGroup.startReplaceGroup(-284257090);
                startRestartGroup.endReplaceGroup();
            } else {
                startRestartGroup.startReplaceGroup(-285446808);
                boolean changed = startRestartGroup.changed(textFieldSelectionManager);
                Object rememberedValue = startRestartGroup.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = textFieldSelectionManager.cursorDragObserver$foundation_release();
                    startRestartGroup.updateRememberedValue(rememberedValue);
                }
                TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
                final long m565getCursorPositiontuRUvjQ$foundation_release = textFieldSelectionManager.m565getCursorPositiontuRUvjQ$foundation_release((Density) startRestartGroup.consume(CompositionLocalsKt.getLocalDensity()));
                boolean changed2 = startRestartGroup.changed(m565getCursorPositiontuRUvjQ$foundation_release);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.Companion.getEmpty()) {
                    rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* renamed from: provide-F1C5BW0, reason: not valid java name */
                        public final long mo388provideF1C5BW0() {
                            return m565getCursorPositiontuRUvjQ$foundation_release;
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
                Modifier.Companion companion = Modifier.Companion;
                boolean changedInstance = startRestartGroup.changedInstance(textDragObserver) | startRestartGroup.changedInstance(textFieldSelectionManager);
                Object rememberedValue3 = startRestartGroup.rememberedValue();
                if (changedInstance || rememberedValue3 == Composer.Companion.getEmpty()) {
                    rememberedValue3 = new CoreTextFieldKt$TextFieldCursorHandle$2$1(textDragObserver, textFieldSelectionManager, null);
                    startRestartGroup.updateRememberedValue(rememberedValue3);
                }
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion, textDragObserver, (Function2) rememberedValue3);
                boolean changed3 = startRestartGroup.changed(m565getCursorPositiontuRUvjQ$foundation_release);
                Object rememberedValue4 = startRestartGroup.rememberedValue();
                if (changed3 || rememberedValue4 == Composer.Companion.getEmpty()) {
                    rememberedValue4 = new Function1() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$3$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            invoke((SemanticsPropertyReceiver) obj);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            semanticsPropertyReceiver.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(Handle.Cursor, m565getCursorPositiontuRUvjQ$foundation_release, SelectionHandleAnchor.Middle, true, null));
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue4);
                }
                AndroidCursorHandle_androidKt.m378CursorHandleUSBMPiE(offsetProvider, SemanticsModifierKt.semantics$default(pointerInput, false, (Function1) rememberedValue4, 1, null), 0L, startRestartGroup, 0, 4);
                startRestartGroup.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i3) {
                    CoreTextFieldKt.TextFieldCursorHandle(TextFieldSelectionManager.this, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyFocusedRect(LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            if (layoutResult == null) {
                return;
            }
            TextInputSession inputSession = legacyTextFieldState.getInputSession();
            if (inputSession == null) {
                return;
            }
            LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
            if (layoutCoordinates == null) {
                return;
            }
            TextFieldDelegate.Companion.notifyFocusedRect$foundation_release(textFieldValue, legacyTextFieldState.getTextDelegate(), layoutResult.getValue(), layoutCoordinates, inputSession, legacyTextFieldState.getHasFocus(), offsetMapping);
            Unit unit = Unit.INSTANCE;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
        }
    }
}
