package androidx.compose.foundation.text;

import android.text.Spanned;
import android.view.KeyEvent;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.modifiers.SelectableTextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.foundation.text.selection.SelectionManager$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.material3.TooltipStateImpl$show$cancellableShow$1;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.AndroidPointerIconType;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.StringAnnotation;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRect;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessLookupCallback;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.navigation.NavOptions;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Huffman;
import org.wikipedia.compose.components.ArticleCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BasicTextKt {
    public static final int AltShift = 9;
    public static final int CtrlShift = 10;
    public static final int ShiftMeta = 12;
    public static final PopupMenu$1 defaultKeyMapping = new PopupMenu$1(21, new KeyMappingKt$commonKeyMapping$1(0));
    public static final KeyMappingKt$commonKeyMapping$1 platformDefaultKeyMapping = new KeyMappingKt$commonKeyMapping$1(1);
    public static final AndroidPointerIconType handwritingPointerIcon = new AndroidPointerIconType(1022);
    public static final NavOptions.Builder ValidatingEmptyOffsetMappingIdentity = new NavOptions.Builder(0, 0);

    /* renamed from: BasicText-CL7eQgs, reason: not valid java name */
    public static final void m179BasicTextCL7eQgs(AnnotatedString annotatedString, Modifier modifier, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, Map map, GapComposer gapComposer, int i4, int i5) {
        Function1 function12;
        GapComposer gapComposer2;
        int i6;
        SelectionController selectionController;
        boolean z2;
        boolean z3;
        gapComposer.startRestartGroup(-1343466571);
        int i7 = (i4 & 6) == 0 ? (gapComposer.changed(annotatedString) ? 4 : 2) | i4 : i4;
        if ((i4 & 48) == 0) {
            i7 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i7 |= gapComposer.changed(textStyle) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            function12 = function1;
            i7 |= gapComposer.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        if ((i4 & 24576) == 0) {
            i7 |= gapComposer.changed(i) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i7 |= gapComposer.changed(z) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i7 |= gapComposer.changed(i2) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i7 |= gapComposer.changed(i3) ? 8388608 : 4194304;
        }
        if ((100663296 & i4) == 0) {
            i7 |= gapComposer.changedInstance(map) ? 67108864 : 33554432;
        }
        int i8 = i7 | 805306368;
        int i9 = (i5 & 6) == 0 ? i5 | ((i5 & 8) == 0 ? gapComposer.changed((Object) null) : gapComposer.changedInstance(null) ? 4 : 2) : i5;
        if (gapComposer.shouldExecute(i8 & 1, ((i8 & 306783379) == 306783378 && (i9 & 3) == 2) ? false : true)) {
            validateMinMaxLines(i3, i2);
            SelectionRegistrarImpl selectionRegistrarImpl = (SelectionRegistrarImpl) gapComposer.consume(SelectionRegistrarKt.LocalSelectionRegistrar);
            Object obj = Composer$Companion.Empty;
            if (selectionRegistrarImpl != null) {
                gapComposer.startReplaceGroup(1588268245);
                long j = ((TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors)).backgroundColor;
                Object[] objArr = {selectionRegistrarImpl};
                i6 = i8;
                CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(12, new HintHandler$$ExternalSyntheticLambda0(6, selectionRegistrarImpl), new BasicTextKt$$ExternalSyntheticLambda3(0));
                boolean changedInstance = gapComposer.changedInstance(selectionRegistrarImpl);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == obj) {
                    rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(selectionRegistrarImpl, 1);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                long longValue = ((Number) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0)).longValue();
                boolean changed = gapComposer.changed(longValue) | gapComposer.changed(selectionRegistrarImpl) | gapComposer.changed(j);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    rememberedValue2 = new SelectionController(longValue, selectionRegistrarImpl, j);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                gapComposer.end(false);
                selectionController = (SelectionController) rememberedValue2;
            } else {
                i6 = i8;
                gapComposer.startReplaceGroup(1588759409);
                gapComposer.end(false);
                selectionController = null;
            }
            Pair pair = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
            int length = annotatedString.text.length();
            List list = annotatedString.annotations;
            if (list != null) {
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    AnnotatedString.Range range = (AnnotatedString.Range) list.get(i10);
                    if ((range.item instanceof StringAnnotation) && "androidx.compose.foundation.text.inlineContent".equals(range.tag)) {
                        z2 = false;
                        if (AnnotatedStringKt.intersect(0, length, range.start, range.end)) {
                            z3 = true;
                            break;
                        }
                    }
                }
            }
            z2 = false;
            z3 = false;
            boolean hasLinks = UtilsKt.hasLinks(annotatedString);
            FontFamily.Resolver resolver = (FontFamily.Resolver) gapComposer.consume(CompositionLocalsKt.LocalFontFamilyResolver);
            if (z3 || hasLinks) {
                boolean z4 = z2;
                gapComposer.startReplaceGroup(1590022070);
                boolean z5 = (i6 & 14) == 4 ? true : z4;
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (z5 || rememberedValue3 == obj) {
                    rememberedValue3 = Updater.mutableStateOf$default(annotatedString);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                MutableState mutableState = (MutableState) rememberedValue3;
                AnnotatedString annotatedString2 = (AnnotatedString) mutableState.getValue();
                boolean changed2 = gapComposer.changed(mutableState);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue4 == obj) {
                    rememberedValue4 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 2);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                int i11 = i6 << 6;
                gapComposer2 = gapComposer;
                m181LayoutWithLinksAndInlineContent11Od_4g(modifier, annotatedString2, function1, z3, map, textStyle, i, z, i2, i3, resolver, selectionController, (Function1) rememberedValue4, gapComposer2, ((i6 >> 3) & 910) | ((i6 >> 12) & 57344) | ((i6 << 9) & 458752) | (3670016 & i11) | (29360128 & i11) | (234881024 & i11) | (i11 & 1879048192), ((i6 >> 21) & 896) | (57344 & (i9 << 12)));
                gapComposer2.end(false);
            } else {
                gapComposer.startReplaceGroup(1589006262);
                BasicText_androidKt.BackgroundTextMeasurement(annotatedString, textStyle, resolver, null, gapComposer);
                Modifier m184textModifierCL7eQgs = m184textModifierCL7eQgs(modifier, annotatedString, textStyle, function12, i, z, i2, i3, resolver, null, null, selectionController, null, null);
                EmptyMeasurePolicy emptyMeasurePolicy = EmptyMeasurePolicy.INSTANCE;
                long j2 = gapComposer.compositeKeyHashCode;
                int i12 = (int) (j2 ^ (j2 >>> 32));
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m184textModifierCL7eQgs);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                ComposeUiNode.Companion.getClass();
                Function0 function0 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(function0);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, emptyMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Updater.m327setimpl(gapComposer, Integer.valueOf(i12), ComposeUiNode.Companion.SetCompositeKeyHash);
                gapComposer.end(true);
                gapComposer.end(false);
                gapComposer2 = gapComposer;
            }
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BasicTextKt$$ExternalSyntheticLambda1(annotatedString, modifier, textStyle, function1, i, z, i2, i3, map, i4, i5, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:99:? A[RETURN, SYNTHETIC] */
    /* renamed from: BasicText-RWo7tUw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m180BasicTextRWo7tUw(java.lang.String r21, androidx.compose.ui.Modifier r22, androidx.compose.ui.text.TextStyle r23, kotlin.jvm.functions.Function1 r24, int r25, boolean r26, int r27, int r28, androidx.compose.foundation.text.AutoSizeStepBased r29, androidx.compose.runtime.GapComposer r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m180BasicTextRWo7tUw(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, int, androidx.compose.foundation.text.AutoSizeStepBased, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void CommonContextMenuArea(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        Modifier textContextMenuToolbarHandler;
        gapComposer.startRestartGroup(1533506138);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i4 = 1;
        int i5 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.startReplaceGroup(-885604480);
            if (textFieldSelectionManager.getEnabled()) {
                Continuation continuation = null;
                textContextMenuToolbarHandler = TextContextMenuModifierKt.textContextMenuToolbarHandler(TextContextMenuModifierKt.showTextContextMenuOnSecondaryClick(new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, i4)), textFieldSelectionManager.toolbarRequester, new TooltipStateImpl$show$cancellableShow$1(i3, textFieldSelectionManager, continuation), new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, i5), new CoreTextFieldKt$$ExternalSyntheticLambda7(textFieldSelectionManager, i3));
            } else {
                textContextMenuToolbarHandler = Modifier.Companion.$$INSTANCE;
            }
            AndroidTextContextMenuToolbarProvider_androidKt.ProvideDefaultPlatformTextContextMenuProviders(textContextMenuToolbarHandler, composableLambdaImpl, gapComposer, i2 & 112);
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ContextMenu_androidKt$$ExternalSyntheticLambda0(textFieldSelectionManager, composableLambdaImpl, i, i4);
        }
    }

    public static final void ContextMenuArea(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(2080741862);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            CommonContextMenuArea(textFieldSelectionManager, composableLambdaImpl, gapComposer, i2 & 126);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ContextMenu_androidKt$$ExternalSyntheticLambda0(textFieldSelectionManager, composableLambdaImpl, i, i3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:204:0x04af, code lost:
    
        if (r8 > ((r2 != null ? r2.longValue() : 0) + 5000)) goto L240;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03dd  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0437  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0461 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0481  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x048c  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x04e1  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x055f  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x057f  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x05c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x065b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x06f1  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0714 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0781  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x07a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x07c2  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x07de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x07ff  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0824  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0846 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0878  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x088c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0930  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0945  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0801  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0798  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x06f3  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0652  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x056d  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0561  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x03e1  */
    /* JADX WARN: Type inference failed for: r0v96, types: [androidx.compose.ui.Modifier] */
    /* JADX WARN: Type inference failed for: r2v81, types: [androidx.compose.ui.Modifier] */
    /* JADX WARN: Type inference failed for: r86v0, types: [androidx.compose.runtime.GapComposer] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoreTextField(final androidx.compose.ui.text.input.TextFieldValue r71, final kotlin.jvm.functions.Function1 r72, final androidx.compose.ui.Modifier r73, final androidx.compose.ui.text.TextStyle r74, final androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0 r75, final kotlin.jvm.functions.Function1 r76, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r77, final androidx.compose.ui.graphics.SolidColor r78, final boolean r79, final int r80, final int r81, final androidx.compose.ui.text.input.ImeOptions r82, final androidx.compose.foundation.text.KeyboardActions r83, final boolean r84, final androidx.compose.runtime.internal.ComposableLambdaImpl r85, androidx.compose.runtime.GapComposer r86, final int r87, final int r88) {
        /*
            Method dump skipped, instructions count: 2493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.CoreTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.ui.graphics.SolidColor, boolean, int, int, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.text.KeyboardActions, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final void CoreTextFieldRootBox(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(2036174316);
        int i2 = (gapComposer.changed(modifier) ? 4 : 2) | i | (gapComposer.changedInstance(textFieldSelectionManager) ? 32 : 16);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) ((j >>> 32) ^ j);
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
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ContextMenuArea(textFieldSelectionManager, composableLambdaImpl, gapComposer, (i2 >> 3) & 126);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier, textFieldSelectionManager, composableLambdaImpl, i, 2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r42v0, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r7v39, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14, types: [androidx.compose.runtime.MutableState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v41, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v14, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.util.ArrayList] */
    /* renamed from: LayoutWithLinksAndInlineContent-11Od_4g, reason: not valid java name */
    public static final void m181LayoutWithLinksAndInlineContent11Od_4g(final Modifier modifier, AnnotatedString annotatedString, final Function1 function1, final boolean z, final Map map, final TextStyle textStyle, final int i, final boolean z2, final int i2, final int i3, final FontFamily.Resolver resolver, final SelectionController selectionController, final Function1 function12, GapComposer gapComposer, final int i4, final int i5) {
        int i6;
        int i7;
        AnnotatedString annotatedString2;
        TextLinkScope textLinkScope;
        Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6;
        Function0 function0;
        Pair pair;
        SearchResultsScreenKt$$ExternalSyntheticLambda2 searchResultsScreenKt$$ExternalSyntheticLambda2;
        ?? r8;
        int i8;
        Object obj;
        Object textMeasurePolicy;
        ?? r9;
        Map map2 = map;
        gapComposer.startRestartGroup(-2118572703);
        if ((i4 & 6) == 0) {
            i6 = (gapComposer.changed(modifier) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposer.changed(annotatedString) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i6 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i6 |= gapComposer.changed(z) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i6 |= gapComposer.changedInstance(map2) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i6 |= gapComposer.changed(textStyle) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i6 |= gapComposer.changed(i) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            i6 |= gapComposer.changed(z2) ? 8388608 : 4194304;
        }
        if ((i4 & 100663296) == 0) {
            i6 |= gapComposer.changed(i2) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i6 |= gapComposer.changed(i3) ? 536870912 : 268435456;
        }
        if ((i5 & 6) == 0) {
            i7 = i5 | (gapComposer.changedInstance(resolver) ? 4 : 2);
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= gapComposer.changedInstance(selectionController) ? 32 : 16;
        }
        if ((i5 & 384) == 0) {
            i7 |= gapComposer.changedInstance(null) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i7 |= gapComposer.changedInstance(function12) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i7 |= (i5 & 32768) == 0 ? gapComposer.changed(null) : gapComposer.changedInstance(null) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i6 & 1, ((i6 & 306783379) == 306783378 && (i7 & 9363) == 9362) ? false : true)) {
            boolean hasLinks = UtilsKt.hasLinks(annotatedString);
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (hasLinks) {
                gapComposer.startReplaceGroup(145641571);
                boolean z3 = (i6 & 112) == 32;
                ?? rememberedValue = gapComposer.rememberedValue();
                TextLinkScope textLinkScope2 = rememberedValue;
                if (z3 || rememberedValue == neverEqualPolicy) {
                    TextLinkScope textLinkScope3 = new TextLinkScope(annotatedString);
                    gapComposer.updateRememberedValue(textLinkScope3);
                    textLinkScope2 = textLinkScope3;
                }
                gapComposer.end(false);
                textLinkScope = textLinkScope2;
            } else {
                gapComposer.startReplaceGroup(145707228);
                gapComposer.end(false);
                textLinkScope = null;
            }
            if (UtilsKt.hasLinks(annotatedString)) {
                gapComposer.startReplaceGroup(145905443);
                boolean changed = ((i6 & 112) == 32) | gapComposer.changed(textLinkScope);
                ?? rememberedValue2 = gapComposer.rememberedValue();
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda62 = rememberedValue2;
                if (changed || rememberedValue2 == neverEqualPolicy) {
                    Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda63 = new Recomposer$$ExternalSyntheticLambda6(11, textLinkScope, annotatedString);
                    gapComposer.updateRememberedValue(recomposer$$ExternalSyntheticLambda63);
                    recomposer$$ExternalSyntheticLambda62 = recomposer$$ExternalSyntheticLambda63;
                }
                recomposer$$ExternalSyntheticLambda6 = recomposer$$ExternalSyntheticLambda62;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(146002721);
                boolean z4 = (i6 & 112) == 32;
                Object rememberedValue3 = gapComposer.rememberedValue();
                Object obj2 = rememberedValue3;
                if (z4 || rememberedValue3 == neverEqualPolicy) {
                    NavBackStackEntry$$ExternalSyntheticLambda0 navBackStackEntry$$ExternalSyntheticLambda0 = new NavBackStackEntry$$ExternalSyntheticLambda0(9, annotatedString);
                    gapComposer.updateRememberedValue(navBackStackEntry$$ExternalSyntheticLambda0);
                    obj2 = navBackStackEntry$$ExternalSyntheticLambda0;
                }
                recomposer$$ExternalSyntheticLambda6 = (Function0) obj2;
                gapComposer.end(false);
            }
            if (z) {
                if (map2 != null) {
                    Pair pair2 = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
                    if (!map2.isEmpty()) {
                        int length = annotatedString.text.length();
                        function0 = recomposer$$ExternalSyntheticLambda6;
                        List list = annotatedString.annotations;
                        if (list != null) {
                            r9 = new ArrayList(list.size());
                            int size = list.size();
                            int i9 = 0;
                            while (i9 < size) {
                                List list2 = list;
                                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i9);
                                int i10 = size;
                                Object obj3 = range.item;
                                int i11 = i9;
                                int i12 = range.end;
                                int i13 = range.start;
                                String str = range.tag;
                                if ((obj3 instanceof StringAnnotation) && "androidx.compose.foundation.text.inlineContent".equals(str) && AnnotatedStringKt.intersect(0, length, i13, i12)) {
                                    Object obj4 = range.item;
                                    obj4.getClass();
                                    r9.add(new AnnotatedString.Range(i13, i12, ((StringAnnotation) obj4).value, str));
                                }
                                i9 = i11 + 1;
                                size = i10;
                                list = list2;
                            }
                        } else {
                            r9 = EmptyList.INSTANCE;
                        }
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = r9.size();
                        int i14 = 0;
                        List list3 = r9;
                        while (i14 < size2) {
                            AnnotatedString.Range range2 = (AnnotatedString.Range) list3.get(i14);
                            Object obj5 = range2.item;
                            List list4 = list3;
                            int i15 = range2.end;
                            int i16 = range2.start;
                            InlineTextContent inlineTextContent = (InlineTextContent) map2.get(obj5);
                            if (inlineTextContent != null) {
                                arrayList.add(new AnnotatedString.Range(i16, i15, inlineTextContent.placeholder));
                                arrayList2.add(new AnnotatedString.Range(i16, i15, DonationReminderScreenKt.lambda$1933540096));
                            }
                            i14++;
                            map2 = map;
                            list3 = list4;
                        }
                        pair = new Pair(arrayList, arrayList2);
                        searchResultsScreenKt$$ExternalSyntheticLambda2 = null;
                    }
                }
                function0 = recomposer$$ExternalSyntheticLambda6;
                pair = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
                searchResultsScreenKt$$ExternalSyntheticLambda2 = null;
            } else {
                function0 = recomposer$$ExternalSyntheticLambda6;
                searchResultsScreenKt$$ExternalSyntheticLambda2 = null;
                pair = new Pair(null, null);
            }
            List list5 = (List) pair.first;
            List list6 = (List) pair.second;
            if (z) {
                gapComposer.startReplaceGroup(146318828);
                Object rememberedValue4 = gapComposer.rememberedValue();
                Object obj6 = rememberedValue4;
                if (rememberedValue4 == neverEqualPolicy) {
                    ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(searchResultsScreenKt$$ExternalSyntheticLambda2);
                    gapComposer.updateRememberedValue(mutableStateOf$default);
                    obj6 = mutableStateOf$default;
                }
                gapComposer.end(false);
                r8 = (MutableState) obj6;
            } else {
                gapComposer.startReplaceGroup(146406588);
                gapComposer.end(false);
                r8 = searchResultsScreenKt$$ExternalSyntheticLambda2;
            }
            if (z) {
                gapComposer.startReplaceGroup(146499837);
                boolean changed2 = gapComposer.changed(r8);
                ?? rememberedValue5 = gapComposer.rememberedValue();
                SearchResultsScreenKt$$ExternalSyntheticLambda2 searchResultsScreenKt$$ExternalSyntheticLambda22 = rememberedValue5;
                if (changed2 || rememberedValue5 == neverEqualPolicy) {
                    SearchResultsScreenKt$$ExternalSyntheticLambda2 searchResultsScreenKt$$ExternalSyntheticLambda23 = new SearchResultsScreenKt$$ExternalSyntheticLambda2(r8, 3);
                    gapComposer.updateRememberedValue(searchResultsScreenKt$$ExternalSyntheticLambda23);
                    searchResultsScreenKt$$ExternalSyntheticLambda22 = searchResultsScreenKt$$ExternalSyntheticLambda23;
                }
                searchResultsScreenKt$$ExternalSyntheticLambda2 = searchResultsScreenKt$$ExternalSyntheticLambda22;
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(146571260);
                gapComposer.end(false);
            }
            Function1 function13 = searchResultsScreenKt$$ExternalSyntheticLambda2;
            int i17 = (i6 >> 3) & 14;
            BasicText_androidKt.BackgroundTextMeasurement(annotatedString, textStyle, resolver, list5, gapComposer);
            AnnotatedString annotatedString3 = (AnnotatedString) function0.invoke();
            boolean changedInstance = gapComposer.changedInstance(textLinkScope) | ((i6 & 896) == 256);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue6 == neverEqualPolicy) {
                i8 = 0;
                BasicTextKt$$ExternalSyntheticLambda10 basicTextKt$$ExternalSyntheticLambda10 = new BasicTextKt$$ExternalSyntheticLambda10(textLinkScope, function1, i8);
                gapComposer.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda10);
                obj = basicTextKt$$ExternalSyntheticLambda10;
            } else {
                i8 = 0;
                obj = rememberedValue6;
            }
            MutableState mutableState = r8;
            ?? r2 = i8;
            Modifier m184textModifierCL7eQgs = m184textModifierCL7eQgs(modifier, annotatedString3, textStyle, (Function1) obj, i, z2, i2, i3, resolver, list5, function13, selectionController, function12, null);
            if (z) {
                gapComposer.startReplaceGroup(147927697);
                boolean changedInstance2 = gapComposer.changedInstance(textLinkScope);
                Object rememberedValue7 = gapComposer.rememberedValue();
                Object obj7 = rememberedValue7;
                if (changedInstance2 || rememberedValue7 == neverEqualPolicy) {
                    BasicTextKt$$ExternalSyntheticLambda11 basicTextKt$$ExternalSyntheticLambda11 = new BasicTextKt$$ExternalSyntheticLambda11(textLinkScope, 1);
                    gapComposer.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda11);
                    obj7 = basicTextKt$$ExternalSyntheticLambda11;
                }
                Function0 function02 = (Function0) obj7;
                boolean changed3 = gapComposer.changed(mutableState);
                Object rememberedValue8 = gapComposer.rememberedValue();
                Object obj8 = rememberedValue8;
                if (changed3 || rememberedValue8 == neverEqualPolicy) {
                    ForYouCardKt$$ExternalSyntheticLambda2 forYouCardKt$$ExternalSyntheticLambda2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 5);
                    gapComposer.updateRememberedValue(forYouCardKt$$ExternalSyntheticLambda2);
                    obj8 = forYouCardKt$$ExternalSyntheticLambda2;
                }
                textMeasurePolicy = new TextMeasurePolicy(r2 == true ? 1 : 0, function02, (Function0) obj8);
                gapComposer.end(r2);
            } else {
                gapComposer.startReplaceGroup(147750935);
                boolean changedInstance3 = gapComposer.changedInstance(textLinkScope);
                Object rememberedValue9 = gapComposer.rememberedValue();
                Object obj9 = rememberedValue9;
                if (changedInstance3 || rememberedValue9 == neverEqualPolicy) {
                    BasicTextKt$$ExternalSyntheticLambda11 basicTextKt$$ExternalSyntheticLambda112 = new BasicTextKt$$ExternalSyntheticLambda11(textLinkScope, r2 == true ? 1 : 0);
                    gapComposer.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda112);
                    obj9 = basicTextKt$$ExternalSyntheticLambda112;
                }
                textMeasurePolicy = new LinksTextMeasurePolicy((Function0) obj9);
                gapComposer.end(r2);
            }
            long j = gapComposer.compositeKeyHashCode;
            int i18 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m184textModifierCL7eQgs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, textMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i18), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (textLinkScope == null) {
                gapComposer.startReplaceGroup(-433557001);
            } else {
                gapComposer.startReplaceGroup(-291080374);
                textLinkScope.LinksComposables(r2 == true ? 1 : 0, gapComposer);
            }
            gapComposer.end(r2);
            if (list6 == null) {
                gapComposer.startReplaceGroup(-433506223);
                gapComposer.end(r2);
                annotatedString2 = annotatedString;
            } else {
                gapComposer.startReplaceGroup(-433506222);
                annotatedString2 = annotatedString;
                AnnotatedStringResolveInlineContentKt.InlineChildren(annotatedString2, list6, gapComposer, i17);
                gapComposer.end(r2);
            }
            gapComposer.end(true);
        } else {
            annotatedString2 = annotatedString;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            final AnnotatedString annotatedString4 = annotatedString2;
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj10, Object obj11) {
                    ((Integer) obj11).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i4 | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i5);
                    BasicTextKt.m181LayoutWithLinksAndInlineContent11Od_4g(Modifier.this, annotatedString4, function1, z, map, textStyle, i, z2, i2, i3, resolver, selectionController, function12, (GapComposer) obj10, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SelectionToolbarAndHandles(TextFieldSelectionManager textFieldSelectionManager, boolean z, GapComposer gapComposer, int i) {
        TextLayoutResultProxy layoutResult;
        gapComposer.startRestartGroup(626339208);
        int i2 = (gapComposer.changedInstance(textFieldSelectionManager) ? 4 : 2) | i | (gapComposer.changed(z) ? 32 : 16);
        if (!gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.skipToGroupEnd();
        } else if (z) {
            gapComposer.startReplaceGroup(1530097388);
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
            TextLayoutResult textLayoutResult = null;
            if (legacyTextFieldState != null && (layoutResult = legacyTextFieldState.getLayoutResult()) != null) {
                TextLayoutResult textLayoutResult2 = layoutResult.value;
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                if (!(legacyTextFieldState2 != null ? legacyTextFieldState2.isLayoutResultStale : true)) {
                    textLayoutResult = textLayoutResult2;
                }
            }
            if (textLayoutResult == null) {
                gapComposer.startReplaceGroup(1530097387);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1530097388);
                if (TextRange.m641getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection)) {
                    gapComposer.startReplaceGroup(2110860558);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(2109807302);
                    int originalToTransformed = textFieldSelectionManager.offsetMapping.originalToTransformed((int) (textFieldSelectionManager.getValue$foundation().selection >> 32));
                    int originalToTransformed2 = textFieldSelectionManager.offsetMapping.originalToTransformed((int) (textFieldSelectionManager.getValue$foundation().selection & 4294967295L));
                    ResolvedTextDirection bidiRunDirection = textLayoutResult.getBidiRunDirection(originalToTransformed);
                    ResolvedTextDirection bidiRunDirection2 = textLayoutResult.getBidiRunDirection(Math.max(originalToTransformed2 - 1, 0));
                    LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.state;
                    if (legacyTextFieldState3 == null || !((Boolean) legacyTextFieldState3.showSelectionHandleStart$delegate.getValue()).booleanValue()) {
                        gapComposer.startReplaceGroup(2110490542);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(2110225306);
                        SimpleLayoutKt.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, gapComposer, ((i2 << 6) & 896) | 6);
                        gapComposer.end(false);
                    }
                    LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.state;
                    if (legacyTextFieldState4 == null || !((Boolean) legacyTextFieldState4.showSelectionHandleEnd$delegate.getValue()).booleanValue()) {
                        gapComposer.startReplaceGroup(2110838734);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(2110574459);
                        SimpleLayoutKt.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, gapComposer, ((i2 << 6) & 896) | 6);
                        gapComposer.end(false);
                    }
                    gapComposer.end(false);
                }
                LegacyTextFieldState legacyTextFieldState5 = textFieldSelectionManager.state;
                if (legacyTextFieldState5 != null) {
                    ParcelableSnapshotMutableState parcelableSnapshotMutableState = legacyTextFieldState5.showFloatingToolbar$delegate;
                    if (!Intrinsics.areEqual(textFieldSelectionManager.oldValue.annotatedString.text, textFieldSelectionManager.getValue$foundation().annotatedString.text)) {
                        parcelableSnapshotMutableState.setValue(Boolean.FALSE);
                    }
                    if (legacyTextFieldState5.getHasFocus()) {
                        if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                            textFieldSelectionManager.showSelectionToolbar$foundation();
                        } else {
                            textFieldSelectionManager.hideSelectionToolbar$foundation();
                        }
                    }
                }
                gapComposer.end(false);
            }
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(1989076778);
            gapComposer.end(false);
            textFieldSelectionManager.hideSelectionToolbar$foundation();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ArticleCardKt$$ExternalSyntheticLambda1(textFieldSelectionManager, z, i);
        }
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionManager textFieldSelectionManager, GapComposer gapComposer, int i) {
        AnnotatedString transformedText$foundation;
        gapComposer.startRestartGroup(-1436003720);
        int i2 = 2;
        int i3 = (gapComposer.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        int i4 = 0;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
            if (legacyTextFieldState == null || !((Boolean) legacyTextFieldState.showCursorHandle$delegate.getValue()).booleanValue() || (transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation()) == null || transformedText$foundation.text.length() <= 0) {
                gapComposer.startReplaceGroup(-2111042550);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-2112351432);
                boolean changed = gapComposer.changed(textFieldSelectionManager);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDrag-k-4lQ0M */
                        public final void mo194onDragk4lQ0M(long j) {
                            TextLayoutResultProxy layoutResult;
                            HapticFeedback hapticFeedback;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.dragTotalDistance = Offset.m386plusMKHz9U(textFieldSelectionManager2.dragTotalDistance, j);
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.state;
                            if (legacyTextFieldState2 == null || (layoutResult = legacyTextFieldState2.getLayoutResult()) == null) {
                                return;
                            }
                            textFieldSelectionManager2.m244setCurrentDragPosition_kEHs6E(new Offset(Offset.m386plusMKHz9U(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                            OffsetMapping offsetMapping = textFieldSelectionManager2.offsetMapping;
                            Offset m241getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m241getCurrentDragPosition_m7T9E();
                            m241getCurrentDragPosition_m7T9E.getClass();
                            int transformedToOriginal = offsetMapping.transformedToOriginal(layoutResult.m197getOffsetForPosition3MmeM6k(m241getCurrentDragPosition_m7T9E.packedValue, true));
                            long TextRange = ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal);
                            if (TextRange.m640equalsimpl0(TextRange, textFieldSelectionManager2.getValue$foundation().selection)) {
                                return;
                            }
                            LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager2.state;
                            if ((legacyTextFieldState3 == null || ((Boolean) legacyTextFieldState3.isInTouchMode$delegate.getValue()).booleanValue()) && (hapticFeedback = textFieldSelectionManager2.hapticFeedBack) != null) {
                                ((PlatformHapticFeedback) hapticFeedback).m497performHapticFeedbackCdsT49E(9);
                            }
                            textFieldSelectionManager2.onValueChange.invoke(TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().annotatedString, TextRange));
                            textFieldSelectionManager2.latestSelection = new TextRange(TextRange);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onStart-3MmeM6k */
                        public final void mo195onStart3MmeM6k(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
                            TextLayoutResultProxy layoutResult;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            long m230getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m230getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager2.m242getHandlePositiontuRUvjQ$foundation(true));
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.state;
                            if (legacyTextFieldState2 == null || (layoutResult = legacyTextFieldState2.getLayoutResult()) == null) {
                                return;
                            }
                            long m200translateInnerToDecorationCoordinatesMKHz9U$foundation = layoutResult.m200translateInnerToDecorationCoordinatesMKHz9U$foundation(m230getAdjustedCoordinatesk4lQ0M);
                            textFieldSelectionManager2.dragBeginPosition = m200translateInnerToDecorationCoordinatesMKHz9U$foundation;
                            textFieldSelectionManager2.m244setCurrentDragPosition_kEHs6E(new Offset(m200translateInnerToDecorationCoordinatesMKHz9U$foundation));
                            textFieldSelectionManager2.dragTotalDistance = 0L;
                            textFieldSelectionManager2.setDraggingHandle(Handle.Cursor);
                            textFieldSelectionManager2.updateFloatingToolbar(false);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onStop() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.setDraggingHandle(null);
                            textFieldSelectionManager2.m244setCurrentDragPosition_kEHs6E(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onUp() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.setDraggingHandle(null);
                            textFieldSelectionManager2.m244setCurrentDragPosition_kEHs6E(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onCancel() {
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDown-k-4lQ0M */
                        public final void mo193onDownk4lQ0M() {
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
                Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
                long j = textFieldSelectionManager.getValue$foundation().selection;
                int i5 = TextRange.$r8$clinit;
                int originalToTransformed = offsetMapping.originalToTransformed((int) (j >> 32));
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                TextLayoutResultProxy layoutResult = legacyTextFieldState2 != null ? legacyTextFieldState2.getLayoutResult() : null;
                layoutResult.getClass();
                TextLayoutResult textLayoutResult = layoutResult.value;
                Rect cursorRect = textLayoutResult.getCursorRect(RegexKt.coerceIn(originalToTransformed, 0, textLayoutResult.layoutInput.text.text.length()));
                final long floatToRawIntBits = (Float.floatToRawIntBits((density.mo87toPx0680j_4(2.0f) / 2.0f) + cursorRect.left) << 32) | (Float.floatToRawIntBits(cursorRect.bottom) & 4294967295L);
                boolean changed2 = gapComposer.changed(floatToRawIntBits);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* renamed from: provide-F1C5BW0, reason: not valid java name */
                        public final long mo185provideF1C5BW0() {
                            return floatToRawIntBits;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
                boolean changedInstance = gapComposer.changedInstance(textDragObserver) | gapComposer.changedInstance(textFieldSelectionManager);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new CoreTextFieldKt$TextFieldCursorHandle$2$1(i4, textDragObserver, textFieldSelectionManager);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(textDragObserver, null, (PointerInputEventHandler) rememberedValue3, 6);
                boolean changed3 = gapComposer.changed(floatToRawIntBits);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new WorkSpecDao_Impl$$ExternalSyntheticLambda28(floatToRawIntBits, i2);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                AndroidCursorHandle_androidKt.m178CursorHandleUSBMPiE(offsetProvider, SemanticsModifierKt.semantics(suspendPointerInputElement, false, (Function1) rememberedValue4), 0L, gapComposer, 0);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HintHandler$$ExternalSyntheticLambda0(i, 7, textFieldSelectionManager);
        }
    }

    public static final void appendInlineContent(AnnotatedString.Builder builder) {
        AnnotatedString.Builder.MutableRange mutableRange = new AnnotatedString.Builder.MutableRange(new StringAnnotation("element"), builder.text.length(), 0, 4);
        ArrayList arrayList = builder.styleStack;
        arrayList.add(mutableRange);
        builder.annotations.add(mutableRange);
        arrayList.size();
        builder.append("[element]");
        builder.pop();
    }

    public static final int ceilToIntPx(float f) {
        return Math.round((float) Math.ceil(f));
    }

    public static final Object detectDownAndDragGesturesWithObserver(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
        Object coroutineScope = AwaitKt.coroutineScope(new ShareUtil$shareImage$2$uri$1(pointerInputScope, textDragObserver, (Continuation) null, 1), continuation);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }

    public static final void endInputSession(LegacyTextFieldState legacyTextFieldState) {
        TextInputSession textInputSession = legacyTextFieldState.inputSession;
        if (textInputSession != null) {
            legacyTextFieldState.onValueChange.invoke(TextFieldValue.m659copy3r_uNRQ$default((TextFieldValue) legacyTextFieldState.processor.mCardBackground, null, 0L, 3));
            TextInputService textInputService = textInputSession.textInputService;
            AtomicReference atomicReference = textInputService._currentInputSession;
            while (true) {
                if (atomicReference.compareAndSet(textInputSession, null)) {
                    textInputService.platformTextInputService.stopInput();
                    break;
                } else if (atomicReference.get() != textInputSession) {
                    break;
                }
            }
        }
        legacyTextFieldState.inputSession = null;
    }

    public static final TransformedText filterWithValidation(VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0, AnnotatedString annotatedString) {
        visualTransformation$Companion$$ExternalSyntheticLambda0.getClass();
        int length = annotatedString.text.length();
        int length2 = annotatedString.text.length();
        int min = Math.min(length, 100);
        for (int i = 0; i < min; i++) {
            validateOriginalToTransformed(i, length2, i);
        }
        validateOriginalToTransformed(length, length2, length);
        int min2 = Math.min(length2, 100);
        for (int i2 = 0; i2 < min2; i2++) {
            validateTransformedToOriginal(i2, length, i2);
        }
        validateTransformedToOriginal(length2, length, length2);
        return new TransformedText(annotatedString, new NavOptions.Builder(annotatedString.text.length(), annotatedString.text.length()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final int findFollowingBreak(int i, String str) {
        String str2;
        int i2;
        EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
        Integer num = null;
        if (emojiCompatIfLoaded != null) {
            if (!(emojiCompatIfLoaded.getLoadState() == 1)) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Not initialized yet");
                return 0;
            }
            Operation$State.checkNotNull("charSequence cannot be null", str);
            SVG svg = emojiCompatIfLoaded.mHelper.mProcessor;
            svg.getClass();
            if (i < 0 || i >= str.length()) {
                str2 = str;
                i2 = -1;
            } else {
                if (str instanceof Spanned) {
                    Spanned spanned = (Spanned) str;
                    TypefaceEmojiSpan[] typefaceEmojiSpanArr = (TypefaceEmojiSpan[]) spanned.getSpans(i, i + 1, TypefaceEmojiSpan.class);
                    if (typefaceEmojiSpanArr.length > 0) {
                        i2 = spanned.getSpanEnd(typefaceEmojiSpanArr[0]);
                        str2 = str;
                    }
                }
                str2 = str;
                i2 = ((EmojiProcessor$EmojiProcessLookupCallback) svg.process(str2, Math.max(0, i - 16), Math.min(str.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessor$EmojiProcessLookupCallback(i))).end;
            }
            Integer valueOf = Integer.valueOf(i2);
            if (i2 != -1) {
                num = valueOf;
            }
        } else {
            str2 = str;
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str2);
        return characterInstance.following(i);
    }

    public static final int findParagraphEnd(CharSequence charSequence, int i) {
        int length = charSequence.length();
        while (i < length) {
            if (charSequence.charAt(i) == '\n') {
                return i;
            }
            i++;
        }
        return charSequence.length();
    }

    public static final int findParagraphStart(CharSequence charSequence, int i) {
        while (i > 0) {
            if (charSequence.charAt(i - 1) == '\n') {
                return i;
            }
            i--;
        }
        return 0;
    }

    public static final int findPrecedingBreak(int i, String str) {
        EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
        Integer num = null;
        if (emojiCompatIfLoaded != null) {
            Integer valueOf = Integer.valueOf(emojiCompatIfLoaded.getEmojiStart(str, Math.max(0, i - 1)));
            if (valueOf.intValue() != -1) {
                num = valueOf;
            }
        }
        if (num != null) {
            return num.intValue();
        }
        BreakIterator characterInstance = BreakIterator.getCharacterInstance();
        characterInstance.setText(str);
        return characterInstance.preceding(i);
    }

    public static final Rect getCursorRectInScroller(Placeable.PlacementScope placementScope, int i, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z, int i2) {
        Rect cursorRect = textLayoutResult != null ? textLayoutResult.getCursorRect(transformedText.offsetMapping.originalToTransformed(i)) : Rect.Zero;
        placementScope.getClass();
        int m334$default$roundToPx0680j_4 = Modifier.CC.m334$default$roundToPx0680j_4(placementScope, 2.0f);
        float f = cursorRect.left;
        return Rect.copy$default(cursorRect, z ? (i2 - f) - m334$default$roundToPx0680j_4 : f, z ? i2 - f : m334$default$roundToPx0680j_4 + f, RecyclerView.DECELERATION_RATE, 10);
    }

    public static final EmojiCompat getEmojiCompatIfLoaded() {
        if (!EmojiCompat.isConfigured()) {
            return null;
        }
        EmojiCompat emojiCompat = EmojiCompat.get();
        if (emojiCompat.getLoadState() == 1) {
            return emojiCompat;
        }
        return null;
    }

    public static final float getLineHeight(TextLayoutResult textLayoutResult, int i) {
        if (i < 0) {
            return RecyclerView.DECELERATION_RATE;
        }
        TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        if (textLayoutInput.text.text.length() == 0) {
            return RecyclerView.DECELERATION_RATE;
        }
        int min = Math.min(multiParagraph.getLineForOffset(i), Math.min(multiParagraph.maxLines - 1, multiParagraph.lineCount - 1));
        if (i > multiParagraph.getLineEnd(min, false)) {
            return RecyclerView.DECELERATION_RATE;
        }
        multiParagraph.requireLineIndexInRange(min);
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, min));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int i2 = min - paragraphInfo.startLineIndex;
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.getLineBottom(i2) - textLayout.getLineTop(i2);
    }

    /* renamed from: getModifiers-ZmokQxo, reason: not valid java name */
    public static final int m182getModifiersZmokQxo(KeyEvent keyEvent) {
        return (keyEvent.isAltPressed() ? 1 : 0) | (keyEvent.isCtrlPressed() ? 2 : 0) | (keyEvent.isMetaPressed() ? 4 : 0) | (keyEvent.isShiftPressed() ? 8 : 0);
    }

    /* renamed from: isKeyCode-YhN2O0w, reason: not valid java name */
    public static final boolean m183isKeyCodeYhN2O0w(int i, KeyEvent keyEvent) {
        return ((int) (Key_androidKt.m499getKeyZmokQxo(keyEvent) >> 32)) == i;
    }

    public static final ArrayList measureWithTextRangeMeasureConstraints(List list, Function0 function0) {
        Huffman.Node node;
        if (!((Boolean) function0.invoke()).booleanValue()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = (Measurable) list.get(i);
            Object parentData = measurable.getParentData();
            parentData.getClass();
            TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = ((TextRangeLayoutModifier) parentData).measurePolicy;
            TextLinkScope textLinkScope = (TextLinkScope) textLinkScope$$ExternalSyntheticLambda3.f$0;
            AnnotatedString.Range range = (AnnotatedString.Range) textLinkScope$$ExternalSyntheticLambda3.f$1;
            TextLayoutResult textLayoutResult = (TextLayoutResult) textLinkScope.textLayoutResult$delegate.getValue();
            if (textLayoutResult == null) {
                node = new Huffman.Node(0, 0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(15));
            } else {
                AnnotatedString.Range calculateVisibleLinkRange = TextLinkScope.calculateVisibleLinkRange(range, textLayoutResult);
                if (calculateVisibleLinkRange == null) {
                    node = new Huffman.Node(0, 0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(16));
                } else {
                    IntRect roundToIntRect = OperationKt.roundToIntRect(textLayoutResult.getPathForRange(calculateVisibleLinkRange.start, calculateVisibleLinkRange.end).getBounds());
                    node = new Huffman.Node(roundToIntRect.getWidth(), roundToIntRect.getHeight(), new NavBackStackEntry$$ExternalSyntheticLambda0(12, roundToIntRect));
                }
            }
            int i2 = node.symbol;
            int i3 = node.terminalBitCount;
            arrayList.add(new Pair(measurable.mo512measureBRTryo0(UStringsKt.m843fitPrioritizingWidthZbe2FdA(i2, i2, i3, i3)), (Function0) node.children));
        }
        return arrayList;
    }

    public static final void notifyFocusedRect(LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
            if (layoutResult == null) {
                return;
            }
            TextInputSession textInputSession = legacyTextFieldState.inputSession;
            if (textInputSession == null) {
                return;
            }
            LayoutCoordinates layoutCoordinates = legacyTextFieldState.getLayoutCoordinates();
            if (layoutCoordinates == null) {
                return;
            }
            notifyFocusedRect$foundation(textFieldValue, legacyTextFieldState.textDelegate, layoutResult.value, layoutCoordinates, textInputSession, legacyTextFieldState.getHasFocus(), offsetMapping);
        } finally {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
        }
    }

    public static void notifyFocusedRect$foundation(TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, TextInputSession textInputSession, boolean z, OffsetMapping offsetMapping) {
        long computeSizeForDefaultText;
        Rect rect;
        if (z) {
            int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m643getMaximpl(textFieldValue.selection));
            String str = TextFieldDelegateKt.EmptyTextReplacement;
            if (originalToTransformed < textLayoutResult.layoutInput.text.text.length()) {
                rect = textLayoutResult.getBoundingBox(originalToTransformed);
            } else if (originalToTransformed != 0) {
                rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
            } else {
                computeSizeForDefaultText = TextFieldDelegateKt.computeSizeForDefaultText((TextStyle) textDelegate.style, (Density) textDelegate.density, (FontFamily.Resolver) textDelegate.fontFamilyResolver, TextFieldDelegateKt.EmptyTextReplacement, 1);
                rect = new Rect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 1.0f, (int) (computeSizeForDefaultText & 4294967295L));
            }
            float f = rect.top;
            float f2 = rect.left;
            long mo520localToRootMKHz9U = layoutCoordinates.mo520localToRootMKHz9U((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
            float intBitsToFloat = Float.intBitsToFloat((int) (mo520localToRootMKHz9U >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (mo520localToRootMKHz9U & 4294967295L));
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
            float f3 = rect.right - f2;
            float f4 = rect.bottom - f;
            Rect m793Recttz77jQw = UtilsKt.m793Recttz77jQw(floatToRawIntBits, (Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L));
            if (Intrinsics.areEqual((TextInputSession) textInputSession.textInputService._currentInputSession.get(), textInputSession)) {
                textInputSession.platformTextInputService.notifyFocusedRect(m793Recttz77jQw);
            }
        }
    }

    public static final void startInputSession(TextInputService textInputService, LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping) {
        CardView.AnonymousClass1 anonymousClass1 = legacyTextFieldState.processor;
        CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
        CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda12 = legacyTextFieldState.onImeActionPerformed;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1 = new UtilsKt$$ExternalSyntheticLambda1(anonymousClass1, coreTextFieldKt$$ExternalSyntheticLambda1, ref$ObjectRef, 6);
        PlatformTextInputService platformTextInputService = textInputService.platformTextInputService;
        platformTextInputService.startInput(textFieldValue, imeOptions, utilsKt$$ExternalSyntheticLambda1, coreTextFieldKt$$ExternalSyntheticLambda12);
        TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
        textInputService._currentInputSession.set(textInputSession);
        ref$ObjectRef.element = textInputSession;
        legacyTextFieldState.inputSession = textInputSession;
        notifyFocusedRect(legacyTextFieldState, textFieldValue, offsetMapping);
    }

    /* renamed from: textModifier-CL7eQgs, reason: not valid java name */
    public static final Modifier m184textModifierCL7eQgs(Modifier modifier, AnnotatedString annotatedString, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, FontFamily.Resolver resolver, List list, Function1 function12, SelectionController selectionController, Function1 function13, AutoSizeStepBased autoSizeStepBased) {
        if (selectionController == null) {
            return modifier.then(Modifier.Companion.$$INSTANCE).then(new TextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i, z, i2, i3, list, function12, autoSizeStepBased, function13));
        }
        return modifier.then(selectionController.modifier).then(new SelectableTextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i, z, i2, i3, list, function12, selectionController, autoSizeStepBased));
    }

    public static final void validateMinMaxLines(int i, int i2) {
        if (!(i > 0 && i2 > 0)) {
            InlineClassHelperKt.throwIllegalArgumentException("both minLines " + i + " and maxLines " + i2 + " must be greater than zero");
        }
        if (i <= i2) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("minLines " + i + " must be less than or equal to maxLines " + i2);
    }

    public static final void validateOriginalToTransformed(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder m = Animation.CC.m(i3, i, "OffsetMapping.originalToTransformed returned invalid mapping: ", " -> ", " is not in range of transformed text [0, ");
        m.append(i2);
        m.append(']');
        InlineClassHelperKt.throwIllegalStateException(m.toString());
    }

    public static final void validateTransformedToOriginal(int i, int i2, int i3) {
        boolean z = false;
        if (i >= 0 && i <= i2) {
            z = true;
        }
        if (z) {
            return;
        }
        StringBuilder m = Animation.CC.m(i3, i, "OffsetMapping.transformedToOriginal returned invalid mapping: ", " -> ", " is not in range of original text [0, ");
        m.append(i2);
        m.append(']');
        InlineClassHelperKt.throwIllegalStateException(m.toString());
    }

    public static final void ContextMenuArea(SelectionManager selectionManager, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-954926513);
        int i2 = (gapComposer.changedInstance(selectionManager) ? 4 : 2) | i;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            CommonContextMenuArea(selectionManager, composableLambdaImpl, gapComposer, i2 & 126);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ContextMenu_androidKt$$ExternalSyntheticLambda1(selectionManager, composableLambdaImpl, i, i3);
        }
    }

    public static final void CommonContextMenuArea(SelectionManager selectionManager, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-614342087);
        int i2 = (gapComposer.changedInstance(selectionManager) ? 4 : 2) | i;
        int i3 = 1;
        int i4 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            gapComposer.startReplaceGroup(-1009319487);
            Continuation continuation = null;
            AndroidTextContextMenuToolbarProvider_androidKt.ProvideDefaultPlatformTextContextMenuProviders(TextContextMenuModifierKt.textContextMenuToolbarHandler(TextContextMenuModifierKt.showTextContextMenuOnSecondaryClick(new ThumbNode$onAttach$1(11, selectionManager, continuation)), selectionManager.toolbarRequester, new TooltipStateImpl$show$cancellableShow$1(i3, selectionManager, continuation), null, new SelectionManager$$ExternalSyntheticLambda0(selectionManager, i4)), composableLambdaImpl, gapComposer, 48);
            gapComposer.end(false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ContextMenu_androidKt$$ExternalSyntheticLambda1(selectionManager, composableLambdaImpl, i, i3);
        }
    }
}
