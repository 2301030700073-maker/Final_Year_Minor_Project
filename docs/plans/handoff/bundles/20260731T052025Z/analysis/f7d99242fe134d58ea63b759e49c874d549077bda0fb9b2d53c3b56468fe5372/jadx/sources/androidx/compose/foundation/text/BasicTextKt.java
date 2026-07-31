package androidx.compose.foundation.text;

import android.text.Spanned;
import android.view.KeyEvent;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
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
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.StringAnnotation;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessLookupCallback;
import androidx.emoji2.text.TypefaceEmojiSpan;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.sqlite.SQLite;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import com.fsck.k9.R;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.collections.PriorityQueue;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListViewModel;
import net.thunderbird.feature.mail.message.list.ui.effect.MessageListEffect;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.ui.host.DisplayInAppNotificationFlag;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerGlobalVisual;
import net.thunderbird.feature.notification.api.ui.host.visual.BannerInlineVisual;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Huffman;
import okio.Okio;
import okio.internal.FileSystem$commonDeleteRecursively$sequence$1;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BasicTextKt {
    public static final int AltShift = 9;
    public static final int CtrlShift = 10;
    public static final int ShiftMeta = 12;
    public static final PreviewView.AnonymousClass1 defaultKeyMapping = new PreviewView.AnonymousClass1(14, new KeyMappingKt$commonKeyMapping$1(0));
    public static final KeyMappingKt$commonKeyMapping$1 platformDefaultKeyMapping = new KeyMappingKt$commonKeyMapping$1(1);
    public static final AndroidPointerIconType handwritingPointerIcon = new AndroidPointerIconType(1022);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: BasicText-CL7eQgs, reason: not valid java name */
    public static final void m266BasicTextCL7eQgs(final AnnotatedString annotatedString, final Modifier modifier, final TextStyle textStyle, final Function1 function1, final int i, final boolean z, final int i2, final int i3, final Map map, Composer composer, final int i4, final int i5) {
        int i6;
        Modifier modifier2;
        Function1 function12;
        int i7;
        int i8;
        boolean z2;
        int i9;
        List list;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1343466571);
        if ((i4 & 6) == 0) {
            i6 = (gapComposer.changed(annotatedString) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            modifier2 = modifier;
            i6 |= gapComposer.changed(modifier2) ? 32 : 16;
        } else {
            modifier2 = modifier;
        }
        if ((i4 & 384) == 0) {
            i6 |= gapComposer.changed(textStyle) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            function12 = function1;
            i6 |= gapComposer.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        if ((i4 & 24576) == 0) {
            i6 |= gapComposer.changed(i) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i6 |= gapComposer.changed(z) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i6 |= gapComposer.changed(i2) ? 1048576 : 524288;
        }
        if ((12582912 & i4) == 0) {
            i6 |= gapComposer.changed(i3) ? 8388608 : 4194304;
        }
        if ((100663296 & i4) == 0) {
            i6 |= gapComposer.changedInstance(map) ? 67108864 : 33554432;
        }
        int i10 = i6 | 805306368;
        if ((i5 & 6) == 0) {
            i7 = i5 | ((i5 & 8) == 0 ? gapComposer.changed((Object) null) : gapComposer.changedInstance(null) ? 4 : 2);
        } else {
            i7 = i5;
        }
        boolean z3 = false;
        if (gapComposer.shouldExecute(i10 & 1, ((i10 & 306783379) == 306783378 && (i7 & 3) == 2) ? false : true)) {
            validateMinMaxLines(i3, i2);
            if (gapComposer.consume(SelectionRegistrarKt.LocalSelectionRegistrar) != null) {
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return;
            }
            gapComposer.startReplaceGroup(1588759409);
            gapComposer.end(false);
            Pair pair = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
            int length = annotatedString.text.length();
            List list2 = annotatedString.annotations;
            if (list2 != null) {
                int size = list2.size();
                int i11 = 0;
                while (i11 < size) {
                    AnnotatedString.Range range = (AnnotatedString.Range) list2.get(i11);
                    i8 = i10;
                    if (range.item instanceof StringAnnotation) {
                        list = list2;
                        if ("androidx.compose.foundation.text.inlineContent".equals(range.tag)) {
                            int i12 = range.start;
                            int i13 = range.end;
                            z3 = false;
                            if (AnnotatedStringKt.intersect(0, length, i12, i13)) {
                                z2 = true;
                                break;
                            } else {
                                i11++;
                                i10 = i8;
                                list2 = list;
                            }
                        }
                    } else {
                        list = list2;
                    }
                    z3 = false;
                    i11++;
                    i10 = i8;
                    list2 = list;
                }
            }
            i8 = i10;
            z2 = z3;
            boolean hasLinks = SQLite.hasLinks(annotatedString);
            FontFamily$Resolver fontFamily$Resolver = (FontFamily$Resolver) gapComposer.consume(CompositionLocalsKt.LocalFontFamilyResolver);
            if (z2 || hasLinks) {
                gapComposer.startReplaceGroup(1590022070);
                boolean z4 = (i8 & 14) == 4;
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                if (z4 || rememberedValue == obj) {
                    rememberedValue = Updater.mutableStateOf$default(annotatedString);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                AnnotatedString annotatedString2 = (AnnotatedString) mutableState.getValue();
                boolean changed = gapComposer.changed(mutableState);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed || rememberedValue2 == obj) {
                    i9 = 0;
                    rememberedValue2 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, i9);
                    gapComposer.updateRememberedValue(rememberedValue2);
                } else {
                    i9 = 0;
                }
                int i14 = i8 << 6;
                m268LayoutWithLinksAndInlineContent11Od_4g(modifier, annotatedString2, function1, z2, map, textStyle, i, z, i2, i3, fontFamily$Resolver, (Function1) rememberedValue2, gapComposer, ((i8 >> 3) & 910) | ((i8 >> 12) & 57344) | ((i8 << 9) & 458752) | (3670016 & i14) | (29360128 & i14) | (234881024 & i14) | (i14 & 1879048192), ((i8 >> 21) & 896) | ((i7 << 12) & 57344));
                gapComposer.end(i9);
            } else {
                gapComposer.startReplaceGroup(1589006262);
                BasicText_androidKt.BackgroundTextMeasurement(annotatedString, textStyle, fontFamily$Resolver, null, gapComposer);
                Modifier m271textModifierCL7eQgs = m271textModifierCL7eQgs(modifier2, annotatedString, textStyle, function12, i, z, i2, i3, fontFamily$Resolver, null, null, null);
                EmptyMeasurePolicy emptyMeasurePolicy = EmptyMeasurePolicy.INSTANCE;
                long j = gapComposer.compositeKeyHashCode;
                int i15 = (int) (j ^ (j >>> 32));
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m271textModifierCL7eQgs);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                ComposeUiNode.Companion.getClass();
                Function0 function0 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(function0);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, emptyMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Updater.m380setimpl(gapComposer, Integer.valueOf(i15), ComposeUiNode.Companion.SetCompositeKeyHash);
                gapComposer.end(true);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    BasicTextKt.m266BasicTextCL7eQgs(AnnotatedString.this, modifier, textStyle, function1, i, z, i2, i3, map, (Composer) obj2, Updater.updateChangedFlags(i4 | 1), Updater.updateChangedFlags(i5));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00df  */
    /* renamed from: BasicText-RWo7tUw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m267BasicTextRWo7tUw(final java.lang.String r19, final androidx.compose.ui.Modifier r20, final androidx.compose.ui.text.TextStyle r21, kotlin.jvm.functions.Function1 r22, int r23, boolean r24, final int r25, int r26, androidx.compose.runtime.Composer r27, final int r28, final int r29) {
        /*
            Method dump skipped, instructions count: 593
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m267BasicTextRWo7tUw(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, int, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void CommonContextMenuArea(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        Modifier textContextMenuToolbarHandler;
        GapComposer gapComposer = (GapComposer) composer;
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
                textContextMenuToolbarHandler = TextContextMenuModifierKt.textContextMenuToolbarHandler(TextContextMenuModifierKt.showTextContextMenuOnSecondaryClick(new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, i4)), textFieldSelectionManager.toolbarRequester, new DataStoreImpl$doWithWriteFileLock$2(textFieldSelectionManager, continuation, 3), new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, i5), new CoreTextFieldKt$$ExternalSyntheticLambda7(textFieldSelectionManager, i3));
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

    public static final void ContextMenuArea(TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
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

    /* JADX WARN: Code restructure failed: missing block: B:206:0x04a6, code lost:
    
        if (r7 > ((r0 != null ? r0.longValue() : 0) + 5000)) goto L241;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:236:0x060c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0663 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0691  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x06ac A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0709  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x075b  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x076a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x07ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x07e8  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0808 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0826  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0830  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0844 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0865  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0888  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x08ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x08dc  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x08f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0968  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0994  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0868  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0828  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x075d  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0748  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x06a3  */
    /* JADX WARN: Type inference failed for: r3v41, types: [androidx.compose.ui.Modifier] */
    /* JADX WARN: Type inference failed for: r5v58, types: [androidx.compose.ui.Modifier] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoreTextField(final androidx.compose.ui.text.input.TextFieldValue r66, final kotlin.jvm.functions.Function1 r67, final androidx.compose.ui.Modifier r68, final androidx.compose.ui.text.TextStyle r69, final androidx.compose.ui.text.input.VisualTransformation r70, final kotlin.jvm.functions.Function1 r71, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r72, final androidx.compose.ui.graphics.SolidColor r73, final boolean r74, final int r75, final int r76, final androidx.compose.ui.text.input.ImeOptions r77, final androidx.compose.foundation.text.KeyboardActions r78, final boolean r79, final boolean r80, final androidx.compose.runtime.internal.ComposableLambdaImpl r81, androidx.compose.runtime.Composer r82, final int r83, final int r84) {
        /*
            Method dump skipped, instructions count: 2595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.CoreTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.ui.graphics.SolidColor, boolean, int, int, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.text.KeyboardActions, boolean, boolean, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void CoreTextFieldRootBox(Modifier modifier, TextFieldSelectionManager textFieldSelectionManager, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
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
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ContextMenuArea(textFieldSelectionManager, composableLambdaImpl, gapComposer, (i2 >> 3) & 126);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SegmentedButtonKt$$ExternalSyntheticLambda4((Object) modifier, (Object) textFieldSelectionManager, composableLambdaImpl, i, 2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.compose.foundation.text.TextLinkScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r15v27, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v14, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.MutableState, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v18, types: [java.util.ArrayList] */
    /* renamed from: LayoutWithLinksAndInlineContent-11Od_4g, reason: not valid java name */
    public static final void m268LayoutWithLinksAndInlineContent11Od_4g(final Modifier modifier, AnnotatedString annotatedString, final Function1 function1, final boolean z, final Map map, final TextStyle textStyle, final int i, final boolean z2, final int i2, final int i3, final FontFamily$Resolver fontFamily$Resolver, final Function1 function12, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        GapComposer gapComposer;
        ?? r0;
        Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6;
        Function0 function0;
        Pair pair;
        BasicTextKt$$ExternalSyntheticLambda0 basicTextKt$$ExternalSyntheticLambda0;
        ?? r8;
        Object textMeasurePolicy;
        boolean z3;
        boolean z4;
        Object obj;
        EmptyList emptyList;
        int i8;
        final AnnotatedString annotatedString2 = annotatedString;
        Map map2 = map;
        ?? r7 = (GapComposer) composer;
        r7.startRestartGroup(-2118572703);
        if ((i4 & 6) == 0) {
            i6 = (r7.changed(modifier) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= r7.changed(annotatedString2) ? 32 : 16;
        }
        if ((i4 & 384) == 0) {
            i6 |= r7.changedInstance(function1) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i6 |= r7.changed(z) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i6 |= r7.changedInstance(map2) ? 16384 : 8192;
        }
        if ((196608 & i4) == 0) {
            i6 |= r7.changed(textStyle) ? 131072 : 65536;
        }
        if ((1572864 & i4) == 0) {
            i6 |= r7.changed(i) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            i6 |= r7.changed(z2) ? 8388608 : 4194304;
        }
        if ((i4 & 100663296) == 0) {
            i6 |= r7.changed(i2) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i6 |= r7.changed(i3) ? 536870912 : 268435456;
        }
        if ((i5 & 6) == 0) {
            i7 = i5 | (r7.changedInstance(fontFamily$Resolver) ? 4 : 2);
        } else {
            i7 = i5;
        }
        if ((i5 & 48) == 0) {
            i7 |= r7.changedInstance(null) ? 32 : 16;
        }
        if ((i5 & 384) == 0) {
            i7 |= r7.changedInstance(null) ? 256 : 128;
        }
        if ((i5 & 3072) == 0) {
            i7 |= r7.changedInstance(function12) ? 2048 : 1024;
        }
        if ((i5 & 24576) == 0) {
            i7 |= (32768 & i5) == 0 ? r7.changed(null) : r7.changedInstance(null) ? 16384 : 8192;
        }
        if (r7.shouldExecute(i6 & 1, ((i6 & 306783379) == 306783378 && (i7 & 9363) == 9362) ? false : true)) {
            boolean hasLinks = SQLite.hasLinks(annotatedString2);
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (hasLinks) {
                r7.startReplaceGroup(145641571);
                boolean z5 = (i6 & 112) == 32;
                Object rememberedValue = r7.rememberedValue();
                Object obj2 = rememberedValue;
                if (z5 || rememberedValue == neverEqualPolicy) {
                    TextLinkScope textLinkScope = new TextLinkScope(annotatedString2);
                    r7.updateRememberedValue(textLinkScope);
                    obj2 = textLinkScope;
                }
                r7.end(false);
                r0 = (TextLinkScope) obj2;
            } else {
                r7.startReplaceGroup(145707228);
                r7.end(false);
                r0 = 0;
            }
            if (SQLite.hasLinks(annotatedString2)) {
                r7.startReplaceGroup(145905443);
                boolean changed = ((i6 & 112) == 32) | r7.changed(r0);
                ?? rememberedValue2 = r7.rememberedValue();
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda62 = rememberedValue2;
                if (changed || rememberedValue2 == neverEqualPolicy) {
                    Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda63 = new Recomposer$$ExternalSyntheticLambda6(14, (Object) r0, annotatedString2);
                    r7.updateRememberedValue(recomposer$$ExternalSyntheticLambda63);
                    recomposer$$ExternalSyntheticLambda62 = recomposer$$ExternalSyntheticLambda63;
                }
                recomposer$$ExternalSyntheticLambda6 = recomposer$$ExternalSyntheticLambda62;
                r7.end(false);
            } else {
                r7.startReplaceGroup(146002721);
                boolean z6 = (i6 & 112) == 32;
                Object rememberedValue3 = r7.rememberedValue();
                Object obj3 = rememberedValue3;
                if (z6 || rememberedValue3 == neverEqualPolicy) {
                    OnBackPressedDispatcher$$ExternalSyntheticLambda0 onBackPressedDispatcher$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$$ExternalSyntheticLambda0(17, annotatedString2);
                    r7.updateRememberedValue(onBackPressedDispatcher$$ExternalSyntheticLambda0);
                    obj3 = onBackPressedDispatcher$$ExternalSyntheticLambda0;
                }
                recomposer$$ExternalSyntheticLambda6 = (Function0) obj3;
                r7.end(false);
            }
            if (z) {
                if (map2 != null) {
                    Pair pair2 = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
                    if (!map2.isEmpty()) {
                        int length = annotatedString2.text.length();
                        List list = annotatedString2.annotations;
                        if (list != null) {
                            ?? arrayList = new ArrayList(list.size());
                            int size = list.size();
                            int i9 = 0;
                            while (i9 < size) {
                                List list2 = list;
                                AnnotatedString.Range range = (AnnotatedString.Range) list.get(i9);
                                int i10 = size;
                                Object obj4 = range.item;
                                int i11 = i9;
                                int i12 = range.end;
                                int i13 = range.start;
                                Function0 function02 = recomposer$$ExternalSyntheticLambda6;
                                String str = range.tag;
                                if ((obj4 instanceof StringAnnotation) && "androidx.compose.foundation.text.inlineContent".equals(str) && AnnotatedStringKt.intersect(0, length, i13, i12)) {
                                    Object obj5 = range.item;
                                    obj5.getClass();
                                    arrayList.add(new AnnotatedString.Range(i13, i12, ((StringAnnotation) obj5).value, str));
                                }
                                i9 = i11 + 1;
                                size = i10;
                                list = list2;
                                recomposer$$ExternalSyntheticLambda6 = function02;
                            }
                            function0 = recomposer$$ExternalSyntheticLambda6;
                            emptyList = arrayList;
                        } else {
                            function0 = recomposer$$ExternalSyntheticLambda6;
                            emptyList = EmptyList.INSTANCE;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        int size2 = emptyList.size();
                        int i14 = 0;
                        EmptyList emptyList2 = emptyList;
                        while (i14 < size2) {
                            AnnotatedString.Range range2 = (AnnotatedString.Range) emptyList2.get(i14);
                            Object obj6 = range2.item;
                            EmptyList emptyList3 = emptyList2;
                            int i15 = range2.end;
                            int i16 = range2.start;
                            InlineTextContent inlineTextContent = (InlineTextContent) map2.get(obj6);
                            if (inlineTextContent != null) {
                                i8 = size2;
                                arrayList2.add(new AnnotatedString.Range(i16, i15, inlineTextContent.placeholder));
                                arrayList3.add(new AnnotatedString.Range(i16, i15, inlineTextContent.children));
                            } else {
                                i8 = size2;
                            }
                            i14++;
                            map2 = map;
                            emptyList2 = emptyList3;
                            size2 = i8;
                        }
                        pair = new Pair(arrayList2, arrayList3);
                        basicTextKt$$ExternalSyntheticLambda0 = null;
                    }
                }
                function0 = recomposer$$ExternalSyntheticLambda6;
                pair = AnnotatedStringResolveInlineContentKt.EmptyInlineContent;
                basicTextKt$$ExternalSyntheticLambda0 = null;
            } else {
                function0 = recomposer$$ExternalSyntheticLambda6;
                basicTextKt$$ExternalSyntheticLambda0 = null;
                pair = new Pair(null, null);
            }
            List list3 = (List) pair.first;
            List list4 = (List) pair.second;
            if (z) {
                r7.startReplaceGroup(146318828);
                Object rememberedValue4 = r7.rememberedValue();
                Object obj7 = rememberedValue4;
                if (rememberedValue4 == neverEqualPolicy) {
                    ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(basicTextKt$$ExternalSyntheticLambda0);
                    r7.updateRememberedValue(mutableStateOf$default);
                    obj7 = mutableStateOf$default;
                }
                r7.end(false);
                r8 = (MutableState) obj7;
            } else {
                r7.startReplaceGroup(146406588);
                r7.end(false);
                r8 = basicTextKt$$ExternalSyntheticLambda0;
            }
            if (z) {
                r7.startReplaceGroup(146499837);
                boolean changed2 = r7.changed(r8);
                ?? rememberedValue5 = r7.rememberedValue();
                BasicTextKt$$ExternalSyntheticLambda0 basicTextKt$$ExternalSyntheticLambda02 = rememberedValue5;
                if (changed2 || rememberedValue5 == neverEqualPolicy) {
                    BasicTextKt$$ExternalSyntheticLambda0 basicTextKt$$ExternalSyntheticLambda03 = new BasicTextKt$$ExternalSyntheticLambda0(r8, 2);
                    r7.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda03);
                    basicTextKt$$ExternalSyntheticLambda02 = basicTextKt$$ExternalSyntheticLambda03;
                }
                basicTextKt$$ExternalSyntheticLambda0 = basicTextKt$$ExternalSyntheticLambda02;
                r7.end(false);
            } else {
                r7.startReplaceGroup(146571260);
                r7.end(false);
            }
            Function1 function13 = basicTextKt$$ExternalSyntheticLambda0;
            int i17 = (i6 >> 3) & 14;
            BasicText_androidKt.BackgroundTextMeasurement(annotatedString2, textStyle, fontFamily$Resolver, list3, r7);
            AnnotatedString annotatedString3 = (AnnotatedString) function0.invoke();
            boolean changedInstance = ((i6 & 896) == 256) | r7.changedInstance(r0);
            Object rememberedValue6 = r7.rememberedValue();
            Object obj8 = rememberedValue6;
            if (changedInstance || rememberedValue6 == neverEqualPolicy) {
                BasicTextKt$$ExternalSyntheticLambda5 basicTextKt$$ExternalSyntheticLambda5 = new BasicTextKt$$ExternalSyntheticLambda5(r0, function1, 0);
                r7.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda5);
                obj8 = basicTextKt$$ExternalSyntheticLambda5;
            }
            ?? r4 = r7;
            MutableState mutableState = r8;
            int i18 = 4;
            Modifier m271textModifierCL7eQgs = m271textModifierCL7eQgs(modifier, annotatedString3, textStyle, (Function1) obj8, i, z2, i2, i3, fontFamily$Resolver, list3, function13, function12);
            if (z) {
                r4.startReplaceGroup(147927697);
                boolean changedInstance2 = r4.changedInstance(r0);
                Object rememberedValue7 = r4.rememberedValue();
                Object obj9 = rememberedValue7;
                if (changedInstance2 || rememberedValue7 == neverEqualPolicy) {
                    BasicTextKt$$ExternalSyntheticLambda6 basicTextKt$$ExternalSyntheticLambda6 = new BasicTextKt$$ExternalSyntheticLambda6(r0, 1);
                    r4.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda6);
                    obj9 = basicTextKt$$ExternalSyntheticLambda6;
                }
                Function0 function03 = (Function0) obj9;
                boolean changed3 = r4.changed(mutableState);
                Object rememberedValue8 = r4.rememberedValue();
                Object obj10 = rememberedValue8;
                if (changed3 || rememberedValue8 == neverEqualPolicy) {
                    TooltipKt$$ExternalSyntheticLambda1 tooltipKt$$ExternalSyntheticLambda1 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, i18);
                    r4.updateRememberedValue(tooltipKt$$ExternalSyntheticLambda1);
                    obj10 = tooltipKt$$ExternalSyntheticLambda1;
                }
                textMeasurePolicy = new TextMeasurePolicy(0, function03, (Function0) obj10);
                r4.end(false);
            } else {
                r4.startReplaceGroup(147750935);
                boolean changedInstance3 = r4.changedInstance(r0);
                Object rememberedValue9 = r4.rememberedValue();
                if (changedInstance3 || rememberedValue9 == neverEqualPolicy) {
                    z4 = false;
                    BasicTextKt$$ExternalSyntheticLambda6 basicTextKt$$ExternalSyntheticLambda62 = new BasicTextKt$$ExternalSyntheticLambda6(r0, false ? 1 : 0);
                    r4.updateRememberedValue(basicTextKt$$ExternalSyntheticLambda62);
                    obj = basicTextKt$$ExternalSyntheticLambda62;
                } else {
                    z4 = false;
                    obj = rememberedValue9;
                }
                textMeasurePolicy = new LinksTextMeasurePolicy((Function0) obj);
                r4.end(z4);
            }
            long j = r4.compositeKeyHashCode;
            int i19 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = r4.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(r4, m271textModifierCL7eQgs);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            r4.startReusableNode();
            if (r4.inserting) {
                r4.createNode(layoutNode$Companion$Constructor$1);
            } else {
                r4.useNode();
            }
            Updater.m380setimpl(r4, textMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(r4, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(r4, Integer.valueOf(i19), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(r4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(r4, materializeModifier, ComposeUiNode.Companion.SetModifier);
            if (r0 == 0) {
                r4.startReplaceGroup(-433557001);
                z3 = false;
            } else {
                z3 = false;
                r4.startReplaceGroup(-291080374);
                r0.LinksComposables(r4, 0);
            }
            r4.end(z3);
            if (list4 == null) {
                r4.startReplaceGroup(-433506223);
                r4.end(z3);
                annotatedString2 = annotatedString;
            } else {
                r4.startReplaceGroup(-433506222);
                annotatedString2 = annotatedString;
                AnnotatedStringResolveInlineContentKt.InlineChildren(annotatedString2, list4, r4, i17);
                r4.end(z3);
            }
            r4.end(true);
            gapComposer = r4;
        } else {
            GapComposer gapComposer2 = r7;
            gapComposer2.skipToGroupEnd();
            gapComposer = gapComposer2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj11, Object obj12) {
                    ((Integer) obj12).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i4 | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i5);
                    BasicTextKt.m268LayoutWithLinksAndInlineContent11Od_4g(Modifier.this, annotatedString2, function1, z, map, textStyle, i, z2, i2, i3, fontFamily$Resolver, function12, (Composer) obj11, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SelectionToolbarAndHandles(TextFieldSelectionManager textFieldSelectionManager, boolean z, Composer composer, int i) {
        TextLayoutResultProxy layoutResult;
        GapComposer gapComposer = (GapComposer) composer;
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
                if (TextRange.m699getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection)) {
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
                        Utf8.SafeProcessor.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, gapComposer, ((i2 << 6) & 896) | 6);
                        gapComposer.end(false);
                    }
                    LegacyTextFieldState legacyTextFieldState4 = textFieldSelectionManager.state;
                    if (legacyTextFieldState4 == null || !((Boolean) legacyTextFieldState4.showSelectionHandleEnd$delegate.getValue()).booleanValue()) {
                        gapComposer.startReplaceGroup(2110838734);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(2110574459);
                        Utf8.SafeProcessor.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, gapComposer, ((i2 << 6) & 896) | 6);
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
            endRestartGroup.block = new CoreTextFieldKt$$ExternalSyntheticLambda17(textFieldSelectionManager, z, i);
        }
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionManager textFieldSelectionManager, Composer composer, int i) {
        AnnotatedString transformedText$foundation;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1436003720);
        int i2 = 2;
        int i3 = (gapComposer.changedInstance(textFieldSelectionManager) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
            if (legacyTextFieldState == null || !((Boolean) legacyTextFieldState.showCursorHandle$delegate.getValue()).booleanValue() || (transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation()) == null || transformedText$foundation.text.length() <= 0) {
                gapComposer.startReplaceGroup(-2111042550);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-2112351432);
                boolean changed = gapComposer.changed(textFieldSelectionManager);
                Object rememberedValue = gapComposer.rememberedValue();
                Object obj = Composer.Companion.Empty;
                if (changed || rememberedValue == obj) {
                    rememberedValue = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDrag-k-4lQ0M */
                        public final void mo278onDragk4lQ0M(long j) {
                            TextLayoutResultProxy layoutResult;
                            HapticFeedback hapticFeedback;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.dragTotalDistance = Offset.m441plusMKHz9U(textFieldSelectionManager2.dragTotalDistance, j);
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.state;
                            if (legacyTextFieldState2 == null || (layoutResult = legacyTextFieldState2.getLayoutResult()) == null) {
                                return;
                            }
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(new Offset(Offset.m441plusMKHz9U(textFieldSelectionManager2.dragBeginPosition, textFieldSelectionManager2.dragTotalDistance)));
                            OffsetMapping offsetMapping = textFieldSelectionManager2.offsetMapping;
                            Offset m311getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m311getCurrentDragPosition_m7T9E();
                            m311getCurrentDragPosition_m7T9E.getClass();
                            int transformedToOriginal = offsetMapping.transformedToOriginal(layoutResult.m281getOffsetForPosition3MmeM6k(m311getCurrentDragPosition_m7T9E.packedValue, true));
                            long TextRange = ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal);
                            if (TextRange.m698equalsimpl0(TextRange, textFieldSelectionManager2.getValue$foundation().selection)) {
                                return;
                            }
                            LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager2.state;
                            if ((legacyTextFieldState3 == null || ((Boolean) legacyTextFieldState3.isInTouchMode$delegate.getValue()).booleanValue()) && (hapticFeedback = textFieldSelectionManager2.hapticFeedBack) != null) {
                                ((PlatformHapticFeedback) hapticFeedback).m555performHapticFeedbackCdsT49E(9);
                            }
                            textFieldSelectionManager2.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().annotatedString, TextRange));
                            textFieldSelectionManager2.latestSelection = new TextRange(TextRange);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onStart-3MmeM6k */
                        public final void mo279onStart3MmeM6k(long j, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0) {
                            TextLayoutResultProxy layoutResult;
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            long m306getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m306getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager2.m312getHandlePositiontuRUvjQ$foundation(true));
                            LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager2.state;
                            if (legacyTextFieldState2 == null || (layoutResult = legacyTextFieldState2.getLayoutResult()) == null) {
                                return;
                            }
                            long m284translateInnerToDecorationCoordinatesMKHz9U$foundation = layoutResult.m284translateInnerToDecorationCoordinatesMKHz9U$foundation(m306getAdjustedCoordinatesk4lQ0M);
                            textFieldSelectionManager2.dragBeginPosition = m284translateInnerToDecorationCoordinatesMKHz9U$foundation;
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(new Offset(m284translateInnerToDecorationCoordinatesMKHz9U$foundation));
                            textFieldSelectionManager2.dragTotalDistance = 0L;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(Handle.Cursor);
                            textFieldSelectionManager2.updateFloatingToolbar(false);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onStop() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(null);
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onUp() {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            textFieldSelectionManager2.draggingHandle$delegate.setValue(null);
                            textFieldSelectionManager2.currentDragPosition$delegate.setValue(null);
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        public final void onCancel() {
                        }

                        @Override // androidx.compose.foundation.text.TextDragObserver
                        /* renamed from: onDown-k-4lQ0M */
                        public final void mo277onDownk4lQ0M() {
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                final TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
                Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
                long j = textFieldSelectionManager.getValue$foundation().selection;
                int i4 = TextRange.$r8$clinit;
                int originalToTransformed = offsetMapping.originalToTransformed((int) (j >> 32));
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                TextLayoutResultProxy layoutResult = legacyTextFieldState2 != null ? legacyTextFieldState2.getLayoutResult() : null;
                layoutResult.getClass();
                TextLayoutResult textLayoutResult = layoutResult.value;
                Rect cursorRect = textLayoutResult.getCursorRect(RangesKt.coerceIn(originalToTransformed, 0, textLayoutResult.layoutInput.text.text.length()));
                final long floatToRawIntBits = (Float.floatToRawIntBits((density.mo177toPx0680j_4(2.0f) / 2.0f) + cursorRect.left) << 32) | (Float.floatToRawIntBits(cursorRect.bottom) & 4294967295L);
                boolean changed2 = gapComposer.changed(floatToRawIntBits);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue2 == obj) {
                    rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$1$1
                        @Override // androidx.compose.foundation.text.selection.OffsetProvider
                        /* renamed from: provide-F1C5BW0, reason: not valid java name */
                        public final long mo272provideF1C5BW0() {
                            return floatToRawIntBits;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
                boolean changedInstance = gapComposer.changedInstance(textDragObserver) | gapComposer.changedInstance(textFieldSelectionManager);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue3 == obj) {
                    rememberedValue3 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1
                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                            Object coroutineScope = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, TextDragObserver.this, textFieldSelectionManager, (Continuation) null, 0), continuation);
                            return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
                        }

                        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                        /* renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1, reason: invalid class name */
                        public final class AnonymousClass1 extends SuspendLambda implements Function2 {
                            public final /* synthetic */ Object $manager;
                            public final /* synthetic */ Object $observer;
                            public final /* synthetic */ int $r8$classId;
                            public final /* synthetic */ Object $this_pointerInput;
                            public /* synthetic */ Object L$0;

                            /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                            /* renamed from: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1, reason: invalid class name and collision with other inner class name */
                            public final class C00011 extends SuspendLambda implements Function2 {
                                public final /* synthetic */ TextDragObserver $observer;
                                public final /* synthetic */ int $r8$classId;
                                public final /* synthetic */ PointerInputScope $this_pointerInput;
                                public int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public /* synthetic */ C00011(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation, int i) {
                                    super(2, continuation);
                                    this.$r8$classId = i;
                                    this.$this_pointerInput = pointerInputScope;
                                    this.$observer = textDragObserver;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation create(Object obj, Continuation continuation) {
                                    switch (this.$r8$classId) {
                                        case 0:
                                            return new C00011(this.$this_pointerInput, this.$observer, continuation, 0);
                                        case 1:
                                            return new C00011(this.$this_pointerInput, this.$observer, continuation, 1);
                                        default:
                                            return new C00011(this.$this_pointerInput, this.$observer, continuation, 2);
                                    }
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    int i = this.$r8$classId;
                                    Unit unit = Unit.INSTANCE;
                                    CoroutineScope coroutineScope = (CoroutineScope) obj;
                                    Continuation continuation = (Continuation) obj2;
                                    switch (i) {
                                    }
                                    return ((C00011) create(coroutineScope, continuation)).invokeSuspend(unit);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    int i = this.$r8$classId;
                                    PointerInputScope pointerInputScope = this.$this_pointerInput;
                                    final TextDragObserver textDragObserver = this.$observer;
                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                    Unit unit = Unit.INSTANCE;
                                    Continuation continuation = null;
                                    final int i2 = 1;
                                    switch (i) {
                                        case 0:
                                            int i3 = this.label;
                                            if (i3 == 0) {
                                                ResultKt.throwOnFailure(obj);
                                                this.label = 1;
                                                Object coroutineScope = JobKt.coroutineScope(new ImageLoadKt$ImageLoad$2$1$1(pointerInputScope, textDragObserver, continuation, i2), this);
                                                if (coroutineScope != coroutineSingletons) {
                                                    coroutineScope = unit;
                                                }
                                                if (coroutineScope == coroutineSingletons) {
                                                }
                                            } else if (i3 != 1) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                                break;
                                            } else {
                                                ResultKt.throwOnFailure(obj);
                                            }
                                            break;
                                        case 1:
                                            int i4 = this.label;
                                            if (i4 == 0) {
                                                ResultKt.throwOnFailure(obj);
                                                this.label = 1;
                                                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new FileSystem$commonDeleteRecursively$sequence$1(textDragObserver, null, 4), this);
                                                if (awaitEachGesture != coroutineSingletons) {
                                                    awaitEachGesture = unit;
                                                }
                                                if (awaitEachGesture == coroutineSingletons) {
                                                }
                                            } else if (i4 != 1) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                                break;
                                            } else {
                                                ResultKt.throwOnFailure(obj);
                                            }
                                            break;
                                        default:
                                            int i5 = this.label;
                                            if (i5 == 0) {
                                                ResultKt.throwOnFailure(obj);
                                                this.label = 1;
                                                final int i6 = 0;
                                                Object detectDragGestures = DragGestureDetectorKt.detectDragGestures(this.$this_pointerInput, new LongPressTextDragObserverKt$$ExternalSyntheticLambda0(textDragObserver, 0), 
                                                /*  JADX ERROR: Method code generation error
                                                    jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x003f: INVOKE (r14v11 'detectDragGestures' java.lang.Object) = 
                                                      (wrap:androidx.compose.ui.input.pointer.PointerInputScope:0x003c: IGET (r14v0 'this' androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1 A[IMMUTABLE_TYPE, THIS]) A[WRAPPED] (LINE:61) androidx.compose.foundation.text.CoreTextFieldKt.TextFieldCursorHandle.2.1.1.1.$this_pointerInput androidx.compose.ui.input.pointer.PointerInputScope)
                                                      (wrap:androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda0:0x0029: CONSTRUCTOR (r2v0 'textDragObserver' androidx.compose.foundation.text.TextDragObserver), (0 int) A[MD:(androidx.compose.foundation.text.TextDragObserver, int):void (m), WRAPPED] (LINE:42) call: androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda0.<init>(androidx.compose.foundation.text.TextDragObserver, int):void type: CONSTRUCTOR)
                                                      (wrap:kotlin.jvm.functions.Function0:0x002e: CONSTRUCTOR 
                                                      (r2v0 'textDragObserver' androidx.compose.foundation.text.TextDragObserver A[DONT_INLINE])
                                                      (r15v2 'i6' int A[DONT_INLINE])
                                                     A[MD:(androidx.compose.foundation.text.TextDragObserver, int):void (m), WRAPPED] (LINE:47) call: androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1.<init>(androidx.compose.foundation.text.TextDragObserver, int):void type: CONSTRUCTOR)
                                                      (wrap:kotlin.jvm.functions.Function0:0x0033: CONSTRUCTOR 
                                                      (r2v0 'textDragObserver' androidx.compose.foundation.text.TextDragObserver A[DONT_INLINE])
                                                      (r7v0 'i2' int A[DONT_INLINE])
                                                     A[MD:(androidx.compose.foundation.text.TextDragObserver, int):void (m), WRAPPED] (LINE:52) call: androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1.<init>(androidx.compose.foundation.text.TextDragObserver, int):void type: CONSTRUCTOR)
                                                      (wrap:androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0:0x0039: CONSTRUCTOR (6 int), (r2v0 'textDragObserver' androidx.compose.foundation.text.TextDragObserver) A[MD:(int, java.lang.Object):void (m), WRAPPED] (LINE:58) call: androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0.<init>(int, java.lang.Object):void type: CONSTRUCTOR)
                                                      (r14v0 'this' androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1$1$1 A[IMMUTABLE_TYPE, THIS])
                                                     STATIC call: androidx.compose.foundation.gestures.DragGestureDetectorKt.detectDragGestures(androidx.compose.ui.input.pointer.PointerInputScope, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object A[DECLARE_VAR, MD:(androidx.compose.ui.input.pointer.PointerInputScope, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object (m)] (LINE:64) in method: androidx.compose.foundation.text.CoreTextFieldKt.TextFieldCursorHandle.2.1.1.1.invokeSuspend(java.lang.Object):java.lang.Object, file: classes.dex
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                                                    	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                                                    	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                                                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                                                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:267)
                                                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                                                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                                                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:297)
                                                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:276)
                                                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:406)
                                                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                                                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                                                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
                                                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
                                                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                                                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
                                                    Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1, state: NOT_LOADED
                                                    	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:305)
                                                    	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                                                    	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                                                    	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                                                    	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                                                    	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                                                    	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                                                    	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                                                    	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                                                    	... 27 more
                                                    */
                                                /*
                                                    this = this;
                                                    int r0 = r14.$r8$classId
                                                    androidx.compose.ui.input.pointer.PointerInputScope r1 = r14.$this_pointerInput
                                                    androidx.compose.foundation.text.TextDragObserver r2 = r14.$observer
                                                    java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                                                    kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                                                    r6 = 0
                                                    r7 = 1
                                                    switch(r0) {
                                                        case 0: goto L71;
                                                        case 1: goto L4a;
                                                        default: goto L11;
                                                    }
                                                L11:
                                                    int r0 = r14.label
                                                    if (r0 == 0) goto L21
                                                    if (r0 != r7) goto L1c
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                L1a:
                                                    r4 = r5
                                                    goto L49
                                                L1c:
                                                    okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
                                                    r4 = r6
                                                    goto L49
                                                L21:
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                    r14.label = r7
                                                    androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda0 r9 = new androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda0
                                                    r15 = 0
                                                    r9.<init>(r2, r15)
                                                    androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1 r10 = new androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1
                                                    r10.<init>(r2, r15)
                                                    androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1 r11 = new androidx.compose.foundation.text.LongPressTextDragObserverKt$$ExternalSyntheticLambda1
                                                    r11.<init>(r2, r7)
                                                    androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0 r12 = new androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0
                                                    r15 = 6
                                                    r12.<init>(r15, r2)
                                                    androidx.compose.ui.input.pointer.PointerInputScope r8 = r14.$this_pointerInput
                                                    r13 = r14
                                                    java.lang.Object r14 = androidx.compose.foundation.gestures.DragGestureDetectorKt.detectDragGestures(r8, r9, r10, r11, r12, r13)
                                                    if (r14 != r4) goto L46
                                                    goto L47
                                                L46:
                                                    r14 = r5
                                                L47:
                                                    if (r14 != r4) goto L1a
                                                L49:
                                                    return r4
                                                L4a:
                                                    r13 = r14
                                                    int r14 = r13.label
                                                    if (r14 == 0) goto L5b
                                                    if (r14 != r7) goto L56
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                L54:
                                                    r4 = r5
                                                    goto L70
                                                L56:
                                                    okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
                                                    r4 = r6
                                                    goto L70
                                                L5b:
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                    r13.label = r7
                                                    okio.internal.-FileSystem$commonDeleteRecursively$sequence$1 r14 = new okio.internal.-FileSystem$commonDeleteRecursively$sequence$1
                                                    r15 = 4
                                                    r14.<init>(r2, r6, r15)
                                                    java.lang.Object r14 = androidx.compose.foundation.gestures.ScrollableKt.awaitEachGesture(r1, r14, r13)
                                                    if (r14 != r4) goto L6d
                                                    goto L6e
                                                L6d:
                                                    r14 = r5
                                                L6e:
                                                    if (r14 != r4) goto L54
                                                L70:
                                                    return r4
                                                L71:
                                                    r13 = r14
                                                    int r14 = r13.label
                                                    if (r14 == 0) goto L81
                                                    if (r14 != r7) goto L7c
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                    goto L96
                                                L7c:
                                                    okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r3)
                                                    r4 = r6
                                                    goto L97
                                                L81:
                                                    kotlin.ResultKt.throwOnFailure(r15)
                                                    r13.label = r7
                                                    com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1 r14 = new com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1
                                                    r14.<init>(r1, r2, r6, r7)
                                                    java.lang.Object r14 = kotlinx.coroutines.JobKt.coroutineScope(r14, r13)
                                                    if (r14 != r4) goto L92
                                                    goto L93
                                                L92:
                                                    r14 = r5
                                                L93:
                                                    if (r14 != r4) goto L96
                                                    goto L97
                                                L96:
                                                    r4 = r5
                                                L97:
                                                    return r4
                                                */
                                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1.AnonymousClass1.C00011.invokeSuspend(java.lang.Object):java.lang.Object");
                                            }
                                        }

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        public AnonymousClass1(Function1 function1, MutableState mutableState, InAppNotificationHostStateHolder inAppNotificationHostStateHolder, MutableState mutableState2, Continuation continuation) {
                                            super(2, continuation);
                                            this.$r8$classId = 2;
                                            this.L$0 = function1;
                                            this.$this_pointerInput = mutableState;
                                            this.$observer = inAppNotificationHostStateHolder;
                                            this.$manager = mutableState2;
                                        }

                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Continuation create(Object obj, Continuation continuation) {
                                            int i = this.$r8$classId;
                                            Object obj2 = this.$manager;
                                            Object obj3 = this.$observer;
                                            Object obj4 = this.$this_pointerInput;
                                            switch (i) {
                                                case 0:
                                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1((PointerInputScope) obj4, (TextDragObserver) obj3, (TextFieldSelectionManager) obj2, continuation, 0);
                                                    anonymousClass1.L$0 = obj;
                                                    return anonymousClass1;
                                                case 1:
                                                    AnonymousClass1 anonymousClass12 = new AnonymousClass1((Logger) obj4, (MessageListViewModel) obj3, (StringsResourceManager) obj2, continuation, 1);
                                                    anonymousClass12.L$0 = obj;
                                                    return anonymousClass12;
                                                default:
                                                    return new AnonymousClass1((Function1) this.L$0, (MutableState) obj4, (InAppNotificationHostStateHolder) obj3, (MutableState) obj2, continuation);
                                            }
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj, Object obj2) {
                                            int i = this.$r8$classId;
                                            Unit unit = Unit.INSTANCE;
                                            switch (i) {
                                                case 0:
                                                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                                                    break;
                                                case 1:
                                                    ((AnonymousClass1) create((MessageListState) obj, (Continuation) obj2)).invokeSuspend(unit);
                                                    break;
                                                default:
                                                    ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                                                    break;
                                            }
                                            return unit;
                                        }

                                        /* JADX WARN: Multi-variable type inference failed */
                                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                        public final Object invokeSuspend(Object obj) {
                                            int i;
                                            Object value;
                                            InAppNotificationHostStateHolder.InAppNotificationHostStateImpl copy$default;
                                            Object value2;
                                            BannerGlobalVisual bannerGlobalVisual;
                                            Object value3;
                                            int i2 = this.$r8$classId;
                                            Object[] objArr = 0;
                                            Unit unit = Unit.INSTANCE;
                                            Object obj2 = this.$this_pointerInput;
                                            Object obj3 = this.$observer;
                                            Object obj4 = this.$manager;
                                            Continuation continuation = null;
                                            switch (i2) {
                                                case 0:
                                                    ResultKt.throwOnFailure(obj);
                                                    CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                                                    PointerInputScope pointerInputScope = (PointerInputScope) obj2;
                                                    C00011 c00011 = new C00011(pointerInputScope, (TextDragObserver) obj3, continuation, objArr == true ? 1 : 0);
                                                    CoroutineStart coroutineStart = CoroutineStart.UNDISPATCHED;
                                                    JobKt.launch$default(coroutineScope, null, coroutineStart, c00011, 1);
                                                    JobKt.launch$default(coroutineScope, null, coroutineStart, new RippleNode$onAttach$1(pointerInputScope, (TextFieldSelectionManager) obj4, null, 21), 1);
                                                    return unit;
                                                case 1:
                                                    MessageListState messageListState = (MessageListState) this.L$0;
                                                    ResultKt.throwOnFailure(obj);
                                                    Sink$CC.verbose$default((Logger) obj2, "MessageListViewModel", null, new ResourceFileSystem$$ExternalSyntheticLambda0(9, messageListState), 2);
                                                    if (messageListState instanceof MessageListState.SelectingMessages) {
                                                        ImmutableList immutableList = ((MessageListState.SelectingMessages) messageListState).messages;
                                                        if (immutableList == null || !immutableList.isEmpty()) {
                                                            Iterator it = immutableList.iterator();
                                                            i = 0;
                                                            while (it.hasNext()) {
                                                                if (((MessageItemUi) it.next()).selected && (i = i + 1) < 0) {
                                                                    IntOffsetKt.throwCountOverflow();
                                                                    throw null;
                                                                }
                                                            }
                                                        } else {
                                                            i = 0;
                                                        }
                                                        ((MessageListViewModel) obj3).emitEffect(i > 0 ? new MessageListEffect.UpdateToolbarActionMode(((AndroidResourceManager) ((StringsResourceManager) obj4)).stringResource(R.string.actionbar_selected, new Integer(i)), i == ((AbstractCollection) immutableList).getSize()) : MessageListEffect.ResetToolbarActionMode.INSTANCE);
                                                    }
                                                    return unit;
                                                default:
                                                    MutableState mutableState = (MutableState) obj4;
                                                    InAppNotificationHostStateHolder inAppNotificationHostStateHolder = (InAppNotificationHostStateHolder) obj3;
                                                    ResultKt.throwOnFailure(obj);
                                                    Set set = (Set) ((MutableState) obj2).getValue();
                                                    Function1 function1 = (Function1) this.L$0;
                                                    ArrayList arrayList = new ArrayList();
                                                    for (Object obj5 : set) {
                                                        if (((Boolean) function1.invoke(obj5)).booleanValue()) {
                                                            arrayList.add(obj5);
                                                        }
                                                    }
                                                    Set<InAppNotification> set2 = CollectionsKt.toSet(arrayList);
                                                    for (InAppNotification inAppNotification : set2) {
                                                        PriorityQueue priorityQueue = inAppNotificationHostStateHolder.bannerGlobalVisuals;
                                                        StateFlowImpl stateFlowImpl = inAppNotificationHostStateHolder.internalState;
                                                        inAppNotification.getClass();
                                                        InAppNotificationHostStateHolder.InAppNotificationHostStateImpl inAppNotificationData = InAppNotificationHostStateHolder.toInAppNotificationData(inAppNotification);
                                                        if (inAppNotificationHostStateHolder.isEnabled(DisplayInAppNotificationFlag.BannerGlobalNotifications) && (bannerGlobalVisual = inAppNotificationData.bannerGlobalVisual) != null) {
                                                            priorityQueue.add(bannerGlobalVisual);
                                                            do {
                                                                value3 = stateFlowImpl.getValue();
                                                            } while (!stateFlowImpl.compareAndSet(value3, InAppNotificationHostStateHolder.InAppNotificationHostStateImpl.copy$default((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) value3, (BannerGlobalVisual) CollectionsKt.firstOrNull((List) priorityQueue.heap), null, 6)));
                                                        }
                                                        do {
                                                            value = stateFlowImpl.getValue();
                                                            ImmutableSet immutableSet = inAppNotificationData.bannerInlineVisuals;
                                                            if (inAppNotificationHostStateHolder.isEnabled(DisplayInAppNotificationFlag.BannerInlineNotifications)) {
                                                                InAppNotificationHostStateHolder.InAppNotificationHostStateImpl inAppNotificationHostStateImpl = (InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) stateFlowImpl.getValue();
                                                                copy$default = !inAppNotificationHostStateImpl.bannerInlineVisuals.containsAll(immutableSet) ? InAppNotificationHostStateHolder.InAppNotificationHostStateImpl.copy$default(inAppNotificationHostStateImpl, null, Okio.toPersistentSet(Validate.plus((Set) inAppNotificationHostStateImpl.bannerInlineVisuals, (Iterable) immutableSet)), 5) : inAppNotificationHostStateImpl;
                                                            } else {
                                                                copy$default = (InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) stateFlowImpl.getValue();
                                                            }
                                                        } while (!stateFlowImpl.compareAndSet(value, copy$default));
                                                        do {
                                                            value2 = stateFlowImpl.getValue();
                                                        } while (!stateFlowImpl.compareAndSet(value2, !inAppNotificationHostStateHolder.isEnabled(DisplayInAppNotificationFlag.SnackbarNotifications) ? (InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) stateFlowImpl.getValue() : (InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) stateFlowImpl.getValue()));
                                                    }
                                                    Set set3 = set2;
                                                    Set set4 = (Set) mutableState.getValue();
                                                    ArrayList arrayList2 = new ArrayList();
                                                    for (Object obj6 : set4) {
                                                        if (!set3.contains((InAppNotification) obj6)) {
                                                            arrayList2.add(obj6);
                                                        }
                                                    }
                                                    Iterator it2 = arrayList2.iterator();
                                                    while (it2.hasNext()) {
                                                        InAppNotification inAppNotification2 = (InAppNotification) it2.next();
                                                        inAppNotification2.getClass();
                                                        InAppNotificationHostStateHolder.InAppNotificationHostStateImpl inAppNotificationData2 = InAppNotificationHostStateHolder.toInAppNotificationData(inAppNotification2);
                                                        BannerInlineVisual bannerInlineVisual = (BannerInlineVisual) CollectionsKt.singleOrNull(inAppNotificationData2.bannerInlineVisuals);
                                                        if (bannerInlineVisual != null) {
                                                            inAppNotificationHostStateHolder.dismiss(bannerInlineVisual);
                                                        }
                                                        BannerGlobalVisual bannerGlobalVisual2 = inAppNotificationData2.bannerGlobalVisual;
                                                        if (bannerGlobalVisual2 != null) {
                                                            inAppNotificationHostStateHolder.dismiss(bannerGlobalVisual2);
                                                        }
                                                    }
                                                    mutableState.setValue(set3);
                                                    return unit;
                                            }
                                        }

                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        public /* synthetic */ AnonymousClass1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
                                            super(2, continuation);
                                            this.$r8$classId = i;
                                            this.$this_pointerInput = obj;
                                            this.$observer = obj2;
                                            this.$manager = obj3;
                                        }
                                    }
                                };
                                gapComposer.updateRememberedValue(rememberedValue3);
                            }
                            SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(textDragObserver, null, (PointerInputEventHandler) rememberedValue3, 6);
                            boolean changed3 = gapComposer.changed(floatToRawIntBits);
                            Object rememberedValue4 = gapComposer.rememberedValue();
                            if (changed3 || rememberedValue4 == obj) {
                                rememberedValue4 = new WorkSpecDao_Impl$$ExternalSyntheticLambda26(i2, floatToRawIntBits);
                                gapComposer.updateRememberedValue(rememberedValue4);
                            }
                            AndroidCursorHandle_androidKt.m265CursorHandleUSBMPiE(offsetProvider, SemanticsModifierKt.semantics(suspendPointerInputElement, false, (Function1) rememberedValue4), 0L, gapComposer, 0);
                            gapComposer.end(false);
                        }
                    } else {
                        gapComposer.skipToGroupEnd();
                    }
                    RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
                    if (endRestartGroup != null) {
                        endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 5, textFieldSelectionManager);
                    }
                }

                public static final Rect access$getCursorRectInScroller(Placeable.PlacementScope placementScope, int i, TransformedText transformedText, TextLayoutResult textLayoutResult, boolean z, int i2) {
                    Rect cursorRect = textLayoutResult != null ? textLayoutResult.getCursorRect(transformedText.offsetMapping.originalToTransformed(i)) : Rect.Zero;
                    float f = cursorRect.left;
                    placementScope.getClass();
                    int m388$default$roundToPx0680j_4 = Modifier.CC.m388$default$roundToPx0680j_4(placementScope, 2.0f);
                    return new Rect(z ? (i2 - f) - m388$default$roundToPx0680j_4 : f, cursorRect.top, z ? i2 - f : m388$default$roundToPx0680j_4 + f, cursorRect.bottom);
                }

                /* renamed from: access$isKeyCode-YhN2O0w, reason: not valid java name */
                public static final boolean m269access$isKeyCodeYhN2O0w(int i, KeyEvent keyEvent) {
                    return ((int) (Key_androidKt.m557getKeyZmokQxo(keyEvent) >> 32)) == i;
                }

                public static final ArrayList access$measureWithTextRangeMeasureConstraints(List list, Function0 function0) {
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
                        CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 = ((TextRangeLayoutModifier) parentData).measurePolicy;
                        TextLinkScope textLinkScope = (TextLinkScope) captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0.f$0;
                        AnnotatedString.Range range = (AnnotatedString.Range) captureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0.f$1;
                        TextLayoutResult textLayoutResult = (TextLayoutResult) textLinkScope.textLayoutResult$delegate.getValue();
                        if (textLayoutResult == null) {
                            node = new Huffman.Node(0, 0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(18));
                        } else {
                            AnnotatedString.Range calculateVisibleLinkRange = TextLinkScope.calculateVisibleLinkRange(range, textLayoutResult);
                            if (calculateVisibleLinkRange == null) {
                                node = new Huffman.Node(0, 0, new ImmLeaksCleaner$$ExternalSyntheticLambda0(19));
                            } else {
                                IntRect roundToIntRect = IntRectKt.roundToIntRect(textLayoutResult.getPathForRange(calculateVisibleLinkRange.start, calculateVisibleLinkRange.end).getBounds());
                                node = new Huffman.Node(roundToIntRect.getWidth(), roundToIntRect.getHeight(), new OnBackPressedDispatcher$$ExternalSyntheticLambda0(20, roundToIntRect));
                            }
                        }
                        int i2 = node.symbol;
                        int i3 = node.terminalBitCount;
                        arrayList.add(new Pair(measurable.mo571measureBRTryo0(MathKt.m987fitPrioritizingWidthZbe2FdA(i2, i2, i3, i3)), (Function0) node.children));
                    }
                    return arrayList;
                }

                public static final void appendInlineContent(AnnotatedString.Builder builder, String str, String str2) {
                    if (str2.length() <= 0) {
                        InlineClassHelperKt.throwIllegalArgumentException("alternateText can't be an empty string.");
                    }
                    AnnotatedString.Builder.MutableRange mutableRange = new AnnotatedString.Builder.MutableRange(new StringAnnotation(str), builder.text.length(), 0, 4);
                    ArrayList arrayList = builder.styleStack;
                    arrayList.add(mutableRange);
                    builder.annotations.add(mutableRange);
                    arrayList.size();
                    builder.append(str2);
                    builder.pop();
                }

                public static final int ceilToIntPx(float f) {
                    return Math.round((float) Math.ceil(f));
                }

                public static final void endInputSession(LegacyTextFieldState legacyTextFieldState) {
                    TextInputSession textInputSession = legacyTextFieldState.inputSession;
                    if (textInputSession != null) {
                        legacyTextFieldState.onValueChange.invoke(TextFieldValue.m714copy3r_uNRQ$default((TextFieldValue) legacyTextFieldState.processor.values, null, 0L, 3));
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

                /* JADX WARN: Multi-variable type inference failed */
                public static final int findFollowingBreak(String str, int i) {
                    String str2;
                    int i2;
                    EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
                    Integer num = null;
                    if (emojiCompatIfLoaded != null) {
                        RelationUtil.checkState("Not initialized yet", emojiCompatIfLoaded.getLoadState() == 1);
                        RelationUtil.checkNotNull(str, "charSequence cannot be null");
                        MenuHostHelper menuHostHelper = emojiCompatIfLoaded.mHelper.mProcessor;
                        menuHostHelper.getClass();
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
                            i2 = ((EmojiProcessor$EmojiProcessLookupCallback) menuHostHelper.process(str2, Math.max(0, i - 16), Math.min(str.length(), i + 16), Integer.MAX_VALUE, true, new EmojiProcessor$EmojiProcessLookupCallback(i))).end;
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

                public static final int findParagraphEnd(int i, CharSequence charSequence) {
                    int length = charSequence.length();
                    while (i < length) {
                        if (charSequence.charAt(i) == '\n') {
                            return i;
                        }
                        i++;
                    }
                    return charSequence.length();
                }

                public static final int findParagraphStart(int i, CharSequence charSequence) {
                    while (i > 0) {
                        if (charSequence.charAt(i - 1) == '\n') {
                            return i;
                        }
                        i--;
                    }
                    return 0;
                }

                public static final int findPrecedingBreak(String str, int i) {
                    EmojiCompat emojiCompatIfLoaded = getEmojiCompatIfLoaded();
                    Integer num = null;
                    if (emojiCompatIfLoaded != null) {
                        Integer valueOf = Integer.valueOf(emojiCompatIfLoaded.getEmojiStart(Math.max(0, i - 1), str));
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

                /* renamed from: getModifiers-ZmokQxo, reason: not valid java name */
                public static final int m270getModifiersZmokQxo(KeyEvent keyEvent) {
                    return (keyEvent.isAltPressed() ? 1 : 0) | (keyEvent.isCtrlPressed() ? 2 : 0) | (keyEvent.isMetaPressed() ? 4 : 0) | (keyEvent.isShiftPressed() ? 8 : 0);
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
                        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m701getMaximpl(textFieldValue.selection));
                        String str = TextFieldDelegateKt.EmptyTextReplacement;
                        if (originalToTransformed < textLayoutResult.layoutInput.text.text.length()) {
                            rect = textLayoutResult.getBoundingBox(originalToTransformed);
                        } else if (originalToTransformed != 0) {
                            rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
                        } else {
                            computeSizeForDefaultText = TextFieldDelegateKt.computeSizeForDefaultText(textDelegate.style, textDelegate.density, textDelegate.fontFamilyResolver, TextFieldDelegateKt.EmptyTextReplacement, 1);
                            rect = new Rect(0.0f, 0.0f, 1.0f, (int) (computeSizeForDefaultText & 4294967295L));
                        }
                        float f = rect.top;
                        float f2 = rect.left;
                        long mo579localToRootMKHz9U = layoutCoordinates.mo579localToRootMKHz9U((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
                        float intBitsToFloat = Float.intBitsToFloat((int) (mo579localToRootMKHz9U >> 32));
                        float intBitsToFloat2 = Float.intBitsToFloat((int) (mo579localToRootMKHz9U & 4294967295L));
                        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                        float f3 = rect.right - f2;
                        float f4 = rect.bottom - f;
                        Rect m1090Recttz77jQw = Util.m1090Recttz77jQw(floatToRawIntBits, (Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L));
                        if (Intrinsics.areEqual((TextInputSession) textInputSession.textInputService._currentInputSession.get(), textInputSession)) {
                            textInputSession.platformTextInputService.notifyFocusedRect(m1090Recttz77jQw);
                        }
                    }
                }

                public static final void startInputSession(TextInputService textInputService, LegacyTextFieldState legacyTextFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping) {
                    WeakCache weakCache = legacyTextFieldState.processor;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda12 = legacyTextFieldState.onImeActionPerformed;
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0 = new SimpleActor$$ExternalSyntheticLambda0(weakCache, coreTextFieldKt$$ExternalSyntheticLambda1, ref$ObjectRef, 8);
                    PlatformTextInputService platformTextInputService = textInputService.platformTextInputService;
                    platformTextInputService.startInput(textFieldValue, imeOptions, simpleActor$$ExternalSyntheticLambda0, coreTextFieldKt$$ExternalSyntheticLambda12);
                    TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
                    textInputService._currentInputSession.set(textInputSession);
                    ref$ObjectRef.element = textInputSession;
                    legacyTextFieldState.inputSession = textInputSession;
                    notifyFocusedRect(legacyTextFieldState, textFieldValue, offsetMapping);
                }

                /* renamed from: textModifier-CL7eQgs, reason: not valid java name */
                public static final Modifier m271textModifierCL7eQgs(Modifier modifier, AnnotatedString annotatedString, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, FontFamily$Resolver fontFamily$Resolver, List list, Function1 function12, Function1 function13) {
                    return modifier.then(Modifier.Companion.$$INSTANCE).then(new TextAnnotatedStringElement(annotatedString, textStyle, fontFamily$Resolver, function1, i, z, i2, i3, list, function12, function13));
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
            }
