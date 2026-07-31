package androidx.glance;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.contentcapture.AndroidContentCaptureManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeCoordinator$invalidateParentLayer$1;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.SemanticsNodeCopy;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.glance.color.DynamicThemeColorProviders;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.room.Room;
import coil3.util.UtilsKt;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.RenderMode;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceThemeKt$GlanceTheme$1 extends Lambda implements Function2 {
    public final /* synthetic */ Object $colors;
    public final /* synthetic */ Object $content;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlanceThemeKt$GlanceTheme$1(LottieComposition lottieComposition, Modifier modifier, RenderMode renderMode, AsyncUpdates asyncUpdates, int i) {
        super(2);
        this.$r8$classId = 7;
        this.$colors = lottieComposition;
        this.$content = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = 0;
        r2 = false;
        boolean z = false;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$content;
        Object obj4 = this.$colors;
        switch (i) {
            case 0:
                ((Number) obj2).intValue();
                ExceptionsKt.GlanceTheme((DynamicThemeColorProviders) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, 49);
                return unit;
            case 1:
                int intValue = ((Number) obj).intValue();
                SemanticsNode semanticsNode = (SemanticsNode) obj2;
                AndroidContentCaptureManager androidContentCaptureManager = (AndroidContentCaptureManager) obj3;
                if (!((SemanticsNodeCopy) obj4).children.contains(semanticsNode.id)) {
                    androidContentCaptureManager.updateBuffersOnAppeared(intValue, semanticsNode);
                    androidContentCaptureManager.boundsUpdateChannel.mo757trySendJP2dKIU(unit);
                }
                return unit;
            case 2:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    Boolean bool = (Boolean) ((LayoutNodeSubcompositionsState.NodeState) obj4).activeState.getValue();
                    boolean booleanValue = bool.booleanValue();
                    Function2 function2 = (Function2) obj3;
                    gapComposer.startReusableGroup(bool);
                    boolean changed = gapComposer.changed(booleanValue);
                    if (booleanValue) {
                        function2.invoke(gapComposer, 0);
                    } else {
                        if (gapComposer.groupNodeCount != 0) {
                            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling deactivateToEndGroup");
                        }
                        if (!gapComposer.inserting) {
                            if (changed) {
                                SlotReader slotReader = gapComposer.reader;
                                int i3 = slotReader.currentGroup;
                                int i4 = slotReader.currentEnd;
                                ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                                composerChangeListWriter.getClass();
                                composerChangeListWriter.realizeOperationLocation(false);
                                composerChangeListWriter.changeList.operations.pushOp(Operation.DeactivateCurrentGroup.INSTANCE);
                                Updater.removeRange(i3, i4, gapComposer.invalidations);
                                gapComposer.reader.skipToGroupEnd();
                            } else {
                                gapComposer.skipReaderToGroupEnd();
                            }
                        }
                    }
                    if (gapComposer.reusing && gapComposer.reader.parent == gapComposer.reusingGroup) {
                        gapComposer.reusingGroup = -1;
                        gapComposer.reusing = false;
                    }
                    gapComposer.end(false);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 3:
                Canvas canvas = (Canvas) obj;
                GraphicsLayer graphicsLayer = (GraphicsLayer) obj2;
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj4;
                LayoutNode layoutNode = nodeCoordinator.layoutNode;
                if (layoutNode.isPlaced()) {
                    nodeCoordinator.drawBlockCanvas = canvas;
                    nodeCoordinator.drawBlockParentLayer = graphicsLayer;
                    OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(layoutNode)).getSnapshotObserver();
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                    snapshotObserver.observer.observeReads(nodeCoordinator, OwnerSnapshotObserver$onCommitAffectingLayout$1.INSTANCE$3, (NodeCoordinator$invalidateParentLayer$1) obj3);
                    nodeCoordinator.lastLayerDrawingWasSkipped = false;
                } else {
                    nodeCoordinator.lastLayerDrawingWasSkipped = true;
                }
                return unit;
            case 4:
                ((Number) obj2).intValue();
                UtilsKt.DialogLayout(Updater.updateChangedFlags(1), (GapComposer) obj, (Modifier) obj4, (Function2) obj3);
                return unit;
            case 5:
                ((Number) obj2).intValue();
                ResultKt.m816LazyColumnEiNPFjs((GlanceModifier) obj4, (Function1) obj3, (GapComposer) obj, 1);
                return unit;
            case 6:
                GapComposer gapComposer2 = (GapComposer) obj;
                if ((((Number) obj2).intValue() & 3) == 2 && gapComposer2.getSkipping()) {
                    gapComposer2.skipToGroupEnd();
                    return unit;
                }
                Alignment alignment = (Alignment) obj3;
                Iterator it = ((ArrayList) obj4).iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    int i5 = i2 + 1;
                    if (i2 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    Pair pair = (Pair) next;
                    Long l = (Long) pair.first;
                    Function3 function3 = (Function3) pair.second;
                    if (l != null && l.longValue() == Long.MIN_VALUE) {
                        l = null;
                    }
                    long longValue = l != null ? l.longValue() : (-4611686018427387904L) - i2;
                    if (longValue == Long.MIN_VALUE) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Implicit list item ids exhausted.");
                        return null;
                    }
                    ResultKt.LazyListItem(longValue, alignment, Expect_jvmKt.composableLambda(gapComposer2, -163738694, new SpacerKt$Spacer$3(9, function3)), gapComposer2, 384);
                    i2 = i5;
                }
                return unit;
            case 7:
                ((Number) obj2).intValue();
                RegexKt.LottieAnimation((LottieComposition) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1572913));
                return unit;
            default:
                DeclarationDescriptor declarationDescriptor = (DeclarationDescriptor) obj2;
                if (Intrinsics.areEqual((DeclarationDescriptor) obj, (CallableDescriptor) obj4) && Intrinsics.areEqual(declarationDescriptor, (CallableDescriptor) obj3)) {
                    z = true;
                }
                return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GlanceThemeKt$GlanceTheme$1(int i, Object obj, Object obj2) {
        super(2);
        this.$r8$classId = i;
        this.$colors = obj;
        this.$content = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GlanceThemeKt$GlanceTheme$1(int i, int i2, Object obj, Function function) {
        super(2);
        this.$r8$classId = i2;
        this.$colors = obj;
        this.$content = function;
    }
}
