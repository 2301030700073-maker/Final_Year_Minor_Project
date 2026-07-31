package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.GestureNode;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.InvalidationTracker$implementation$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractClickableNode extends DelegatingNode implements PointerInputModifierNode, KeyInputModifierNode, SemanticsModifierNode, TraversableNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, IndirectPointerInputModifierNode, GestureConnection {
    public static final GestureNode.TraverseKey TraverseKey = new GestureNode.TraverseKey();
    public long centerOffset;
    public final MutableLongObjectMap currentKeyPressInteractions;
    public StandaloneCoroutine delayJob;
    public boolean enabled;
    public final FocusableNode focusableNode;
    public GestureNode gestureNode;
    public HoverInteraction$Enter hoverInteraction;
    public DelegatableNode indicationNode;
    public IndicationNodeFactory indicationNodeFactory;
    public PressInteraction.Press indirectPointerPressInteraction;
    public MutableInteractionSourceImpl interactionSource;
    public boolean lazilyCreateIndication;
    public IndicationNodeFactory localIndicationNodeFactory;
    public Function0 onClick;
    public String onClickLabel;
    public SuspendingPointerInputModifierNodeImpl pointerInputNode;
    public PressInteraction.Press pressInteraction;
    public Role role;
    public final GestureNode.TraverseKey traverseKey;
    public boolean useLocalIndication;
    public MutableInteractionSourceImpl userProvidedInteractionSource;

    public AbstractClickableNode(MutableInteractionSourceImpl mutableInteractionSourceImpl, IndicationNodeFactory indicationNodeFactory, boolean z, boolean z2, String str, Role role, Function0 function0) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.indicationNodeFactory = indicationNodeFactory;
        this.useLocalIndication = z;
        this.onClickLabel = str;
        this.role = role;
        this.enabled = z2;
        this.onClick = function0;
        this.focusableNode = new FocusableNode(mutableInteractionSourceImpl, 0, new InvalidationTracker$implementation$1(1, this, AbstractClickableNode.class, "onFocusChange", "onFocusChange(Z)V", 0, 3));
        int i = LongObjectMapKt.$r8$clinit;
        this.currentKeyPressInteractions = new MutableLongObjectMap(6);
        this.centerOffset = 0L;
        MutableInteractionSourceImpl mutableInteractionSourceImpl2 = this.interactionSource;
        this.userProvidedInteractionSource = mutableInteractionSourceImpl2;
        this.lazilyCreateIndication = mutableInteractionSourceImpl2 == null;
        this.traverseKey = TraverseKey;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Role role = this.role;
        if (role != null) {
            SemanticsPropertiesKt.m674setRolekuIjeqM(semanticsPropertyReceiver, role.value);
        }
        String str = this.onClickLabel;
        AbstractClickableNode$$ExternalSyntheticLambda0 abstractClickableNode$$ExternalSyntheticLambda0 = new AbstractClickableNode$$ExternalSyntheticLambda0(this, 1);
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        semanticsPropertyReceiver.set(SemanticsActions.OnClick, new AccessibilityAction(str, abstractClickableNode$$ExternalSyntheticLambda0));
        if (this.enabled) {
            this.focusableNode.applySemantics(semanticsPropertyReceiver);
        } else {
            semanticsPropertyReceiver.set(SemanticsProperties.Disabled, Unit.INSTANCE);
        }
        applyAdditionalSemantics(semanticsPropertyReceiver);
    }

    public SuspendingPointerInputModifierNodeImpl createPointerInputNodeIfNeeded() {
        return null;
    }

    public final void disposeInteractions() {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        MutableLongObjectMap mutableLongObjectMap = this.currentKeyPressInteractions;
        if (mutableInteractionSourceImpl != null) {
            PressInteraction.Press press = this.pressInteraction;
            if (press != null) {
                mutableInteractionSourceImpl.tryEmit(new PressInteraction.Cancel(press));
            }
            PressInteraction.Press press2 = this.indirectPointerPressInteraction;
            if (press2 != null) {
                mutableInteractionSourceImpl.tryEmit(new PressInteraction.Cancel(press2));
            }
            HoverInteraction$Enter hoverInteraction$Enter = this.hoverInteraction;
            if (hoverInteraction$Enter != null) {
                mutableInteractionSourceImpl.tryEmit(new HoverInteraction$Exit(hoverInteraction$Enter));
            }
            Object[] objArr = mutableLongObjectMap.values;
            long[] jArr = mutableLongObjectMap.metadata;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                mutableInteractionSourceImpl.tryEmit(new PressInteraction.Cancel((PressInteraction.Press) objArr[(i << 3) + i3]));
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.pressInteraction = null;
        this.indirectPointerPressInteraction = null;
        this.hoverInteraction = null;
        mutableLongObjectMap.clear();
    }

    /* renamed from: getExtendedTouchPadding-hWWAJMo, reason: not valid java name */
    public final long m114getExtendedTouchPaddinghWWAJMo(long j) {
        long mo178toSizeXkaWNTQ = HitTestResultKt.requireLayoutNode(this).density.mo178toSizeXkaWNTQ(((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).mo607getMinimumTouchTargetSizeMYxV2XQ());
        float max = Math.max(0.0f, Float.intBitsToFloat((int) (mo178toSizeXkaWNTQ >> 32)) - ((int) (j >> 32))) / 2.0f;
        float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (mo178toSizeXkaWNTQ & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
        return (Float.floatToRawIntBits(max2) & 4294967295L) | (Float.floatToRawIntBits(max) << 32);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk, reason: not valid java name */
    public final long mo115getTouchBoundsExpansionRZrCHBk() {
        return TouchBoundsExpansion.None;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return this.traverseKey;
    }

    public final void handlePressInteractionCancel(boolean z) {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        if (mutableInteractionSourceImpl != null) {
            StandaloneCoroutine standaloneCoroutine = this.delayJob;
            Continuation continuation = null;
            if (standaloneCoroutine == null || !standaloneCoroutine.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    Job job = (Job) ((ContextScope) getCoroutineScope()).coroutineContext.get(Job.Key.$$INSTANCE);
                    JobKt.launch$default(getCoroutineScope(), null, null, new DraggableNode$drag$2(mutableInteractionSourceImpl, cancel, job != null ? job.invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(15, mutableInteractionSourceImpl, cancel)) : null, continuation, 11), 3);
                }
            } else {
                StandaloneCoroutine standaloneCoroutine2 = this.delayJob;
                if (standaloneCoroutine2 != null) {
                    standaloneCoroutine2.cancel(null);
                }
            }
            if (z) {
                this.indirectPointerPressInteraction = null;
            } else {
                this.pressInteraction = null;
            }
        }
    }

    /* renamed from: handlePressInteractionRelease-3MmeM6k, reason: not valid java name */
    public final void m116handlePressInteractionRelease3MmeM6k(long j, boolean z) {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        if (mutableInteractionSourceImpl != null) {
            StandaloneCoroutine standaloneCoroutine = this.delayJob;
            if (standaloneCoroutine == null || !standaloneCoroutine.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(press, mutableInteractionSourceImpl, null), 3);
                }
            } else {
                standaloneCoroutine.cancel(null);
                JobKt.launch$default(getCoroutineScope(), null, null, new ScrollableKt$semanticsScrollBy$2(1, j, standaloneCoroutine, mutableInteractionSourceImpl, (Continuation) null), 3);
            }
            if (z) {
                this.indirectPointerPressInteraction = null;
            } else {
                this.pressInteraction = null;
            }
        }
    }

    public final void handlePressInteractionStart(PointerInputChange pointerInputChange) {
        boolean z;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        if (mutableInteractionSourceImpl != null) {
            PressInteraction.Press press = new PressInteraction.Press(pointerInputChange.position);
            int i = 2;
            GestureNode.TraverseKey traverseKey = GestureNode.TraverseKey;
            if (pointerInputChange == null) {
                TraversableNode findNearestAncestor = HitTestResultKt.findNearestAncestor(this, traverseKey);
                GestureNode gestureNode = findNearestAncestor instanceof GestureNode ? (GestureNode) findNearestAncestor : null;
                z = (gestureNode != null ? gestureNode.gestureConnection : null) != null;
            } else {
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                HitTestResultKt.traverseAncestors(this, traverseKey, new ImageKt$$ExternalSyntheticLambda0(i, new BackHandlerKt$$ExternalSyntheticLambda2(19, pointerInputChange, ref$BooleanRef)));
                z = ref$BooleanRef.element;
            }
            Continuation continuation = null;
            if (z || Clickable_androidKt.isComposeRootInScrollableContainer(this)) {
                this.delayJob = JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSourceImpl, press, this, continuation, 1), 3);
            } else {
                this.pressInteraction = press;
                JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSourceImpl, press, null, 2), 3);
            }
        }
    }

    public final void initializeIndicationAndInteractionSourceIfNeeded() {
        if (this.indicationNode != null) {
            return;
        }
        IndicationNodeFactory indicationNodeFactory = this.useLocalIndication ? this.localIndicationNodeFactory : this.indicationNodeFactory;
        if (indicationNodeFactory != null) {
            if (this.interactionSource == null) {
                this.interactionSource = new MutableInteractionSourceImpl();
            }
            this.focusableNode.update(this.interactionSource);
            MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
            mutableInteractionSourceImpl.getClass();
            DelegatableNode create = indicationNodeFactory.create(mutableInteractionSourceImpl);
            delegate(create);
            this.indicationNode = create;
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final /* synthetic */ boolean isInterested(IndirectPointerInputChange indirectPointerInputChange) {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        onObservedReadsChanged();
        if (!this.lazilyCreateIndication) {
            initializeIndicationAndInteractionSourceIfNeeded();
        }
        if (this.enabled) {
            delegate(this.focusableNode);
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        HoverInteraction$Enter hoverInteraction$Enter;
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        if (mutableInteractionSourceImpl != null && (hoverInteraction$Enter = this.hoverInteraction) != null) {
            mutableInteractionSourceImpl.tryEmit(new HoverInteraction$Exit(hoverInteraction$Enter));
        }
        this.hoverInteraction = null;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.pointerInputNode;
        if (suspendingPointerInputModifierNodeImpl != null) {
            suspendingPointerInputModifierNodeImpl.onCancelPointerInput();
        }
    }

    /* renamed from: onClickKeyDownEvent-ZmokQxo, reason: not valid java name */
    public abstract boolean mo117onClickKeyDownEventZmokQxo(KeyEvent keyEvent);

    /* renamed from: onClickKeyUpEvent-ZmokQxo, reason: not valid java name */
    public abstract void mo118onClickKeyUpEventZmokQxo(KeyEvent keyEvent);

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        disposeInteractions();
        if (this.userProvidedInteractionSource == null) {
            this.interactionSource = null;
        }
        DelegatableNode delegatableNode = this.indicationNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.indicationNode = null;
        GestureNode gestureNode = this.gestureNode;
        if (gestureNode != null) {
            undelegate(gestureNode);
        }
        this.gestureNode = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0077 A[RETURN] */
    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onKeyEvent-ZmokQxo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo119onKeyEventZmokQxo(android.view.KeyEvent r11) {
        /*
            r10 = this;
            r10.initializeIndicationAndInteractionSourceIfNeeded()
            long r0 = androidx.compose.ui.input.key.Key_androidKt.m557getKeyZmokQxo(r11)
            boolean r2 = r10.enabled
            r3 = 3
            r4 = 0
            androidx.collection.MutableLongObjectMap r5 = r10.currentKeyPressInteractions
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L4a
            int r2 = androidx.compose.ui.input.key.Key_androidKt.m558getTypeZmokQxo(r11)
            r8 = 2
            if (r2 != r8) goto L4a
            boolean r2 = androidx.compose.foundation.ImageKt.m139isEnterZmokQxo(r11)
            if (r2 == 0) goto L4a
            boolean r2 = r5.containsKey(r0)
            if (r2 != 0) goto L40
            androidx.compose.foundation.interaction.PressInteraction$Press r2 = new androidx.compose.foundation.interaction.PressInteraction$Press
            long r8 = r10.centerOffset
            r2.<init>(r8)
            r5.set(r0, r2)
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r0 = r10.interactionSource
            if (r0 == 0) goto L3e
            kotlinx.coroutines.CoroutineScope r0 = r10.getCoroutineScope()
            androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1 r1 = new androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1
            r1.<init>(r10, r2, r4, r7)
            kotlinx.coroutines.JobKt.launch$default(r0, r4, r4, r1, r3)
        L3e:
            r0 = r6
            goto L41
        L40:
            r0 = r7
        L41:
            boolean r10 = r10.mo117onClickKeyDownEventZmokQxo(r11)
            if (r10 != 0) goto L77
            if (r0 == 0) goto L78
            goto L77
        L4a:
            boolean r2 = r10.enabled
            if (r2 == 0) goto L78
            int r2 = androidx.compose.ui.input.key.Key_androidKt.m558getTypeZmokQxo(r11)
            if (r2 != r6) goto L78
            boolean r2 = androidx.compose.foundation.ImageKt.m139isEnterZmokQxo(r11)
            if (r2 == 0) goto L78
            java.lang.Object r0 = r5.remove(r0)
            androidx.compose.foundation.interaction.PressInteraction$Press r0 = (androidx.compose.foundation.interaction.PressInteraction.Press) r0
            if (r0 == 0) goto L75
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r1 = r10.interactionSource
            if (r1 == 0) goto L72
            kotlinx.coroutines.CoroutineScope r1 = r10.getCoroutineScope()
            androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1 r2 = new androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1
            r2.<init>(r10, r0, r4, r3)
            kotlinx.coroutines.JobKt.launch$default(r1, r4, r4, r2, r3)
        L72:
            r10.mo118onClickKeyUpEventZmokQxo(r11)
        L75:
            if (r0 == 0) goto L78
        L77:
            return r6
        L78:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode.mo119onKeyEventZmokQxo(android.view.KeyEvent):boolean");
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        if (this.useLocalIndication) {
            HitTestResultKt.observeReads(this, new AbstractClickableNode$$ExternalSyntheticLambda0(this, 0));
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY, reason: not valid java name */
    public void mo120onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        SuspendingPointerInputModifierNodeImpl createPointerInputNodeIfNeeded;
        long j2 = ((j >> 33) << 32) | (((j << 32) >> 33) & 4294967295L);
        this.centerOffset = (Float.floatToRawIntBits((int) (j2 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j2 >> 32)) << 32);
        initializeIndicationAndInteractionSourceIfNeeded();
        if (this.enabled) {
            if (this.gestureNode == null) {
                GestureNode gestureNode = new GestureNode(this);
                delegate(gestureNode);
                this.gestureNode = gestureNode;
            }
            if (pointerEventPass == PointerEventPass.Main) {
                int i = pointerEvent.type;
                Continuation continuation = null;
                if (i == 4) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$1(this, continuation, 0), 3);
                } else if (i == 5) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$1(this, continuation, 1), 3);
                }
            }
        }
        if (this.pointerInputNode == null && (createPointerInputNodeIfNeeded = createPointerInputNodeIfNeeded()) != null) {
            delegate(createPointerInputNodeIfNeeded);
            this.pointerInputNode = createPointerInputNodeIfNeeded;
        }
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.pointerInputNode;
        if (suspendingPointerInputModifierNodeImpl != null) {
            suspendingPointerInputModifierNodeImpl.mo120onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* renamed from: onPreKeyEvent-ZmokQxo, reason: not valid java name */
    public final boolean mo121onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0072, code lost:
    
        if (r3.indicationNode == null) goto L40;
     */
    /* renamed from: updateCommon-O2vRcR0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m122updateCommonO2vRcR0(androidx.compose.foundation.interaction.MutableInteractionSourceImpl r4, androidx.compose.foundation.IndicationNodeFactory r5, boolean r6, boolean r7, java.lang.String r8, androidx.compose.ui.semantics.Role r9, kotlin.jvm.functions.Function0 r10) {
        /*
            r3 = this;
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r0 = r3.userProvidedInteractionSource
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r4)
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L13
            r3.disposeInteractions()
            r3.userProvidedInteractionSource = r4
            r3.interactionSource = r4
            r4 = r1
            goto L14
        L13:
            r4 = r2
        L14:
            androidx.compose.foundation.IndicationNodeFactory r0 = r3.indicationNodeFactory
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r5)
            if (r0 != 0) goto L1f
            r3.indicationNodeFactory = r5
            r4 = r1
        L1f:
            boolean r5 = r3.useLocalIndication
            if (r5 == r6) goto L2b
            r3.useLocalIndication = r6
            if (r6 == 0) goto L2a
            r3.onObservedReadsChanged()
        L2a:
            r4 = r1
        L2b:
            boolean r5 = r3.enabled
            androidx.compose.foundation.FocusableNode r6 = r3.focusableNode
            if (r5 == r7) goto L42
            if (r7 == 0) goto L37
            r3.delegate(r6)
            goto L3d
        L37:
            r3.undelegate(r6)
            r3.disposeInteractions()
        L3d:
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r3)
            r3.enabled = r7
        L42:
            java.lang.String r5 = r3.onClickLabel
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r8)
            if (r5 != 0) goto L4f
            r3.onClickLabel = r8
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r3)
        L4f:
            androidx.compose.ui.semantics.Role r5 = r3.role
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r9)
            if (r5 != 0) goto L5c
            r3.role = r9
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r3)
        L5c:
            r3.onClick = r10
            boolean r5 = r3.lazilyCreateIndication
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r7 = r3.userProvidedInteractionSource
            if (r7 != 0) goto L66
            r8 = r1
            goto L67
        L66:
            r8 = r2
        L67:
            if (r5 == r8) goto L75
            if (r7 != 0) goto L6c
            r2 = r1
        L6c:
            r3.lazilyCreateIndication = r2
            if (r2 != 0) goto L75
            androidx.compose.ui.node.DelegatableNode r5 = r3.indicationNode
            if (r5 != 0) goto L75
            goto L76
        L75:
            r1 = r4
        L76:
            if (r1 == 0) goto L8b
            androidx.compose.ui.node.DelegatableNode r4 = r3.indicationNode
            if (r4 != 0) goto L80
            boolean r5 = r3.lazilyCreateIndication
            if (r5 != 0) goto L8b
        L80:
            if (r4 == 0) goto L85
            r3.undelegate(r4)
        L85:
            r4 = 0
            r3.indicationNode = r4
            r3.initializeIndicationAndInteractionSourceIfNeeded()
        L8b:
            androidx.compose.foundation.interaction.MutableInteractionSourceImpl r3 = r3.interactionSource
            r6.update(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode.m122updateCommonO2vRcR0(androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.foundation.IndicationNodeFactory, boolean, boolean, java.lang.String, androidx.compose.ui.semantics.Role, kotlin.jvm.functions.Function0):void");
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final /* synthetic */ boolean isInterested(PointerInputChange pointerInputChange) {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ void interceptOutOfBoundsChildEvents() {
    }

    public void onCancelKeyInput() {
    }

    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    public final void handlePressInteractionStart(IndirectPointerInputChange indirectPointerInputChange) {
        MutableInteractionSourceImpl mutableInteractionSourceImpl = this.interactionSource;
        if (mutableInteractionSourceImpl != null) {
            PressInteraction.Press press = new PressInteraction.Press(indirectPointerInputChange.position);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            HitTestResultKt.traverseAncestors(this, GestureNode.TraverseKey, new ImageKt$$ExternalSyntheticLambda0(2, new BackHandlerKt$$ExternalSyntheticLambda2(18, indirectPointerInputChange, ref$BooleanRef)));
            Continuation continuation = null;
            if (!ref$BooleanRef.element && !Clickable_androidKt.isComposeRootInScrollableContainer(this)) {
                this.indirectPointerPressInteraction = press;
                JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSourceImpl, press, null, 0), 3);
            } else {
                this.delayJob = JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSourceImpl, press, this, continuation, 0), 3);
            }
        }
    }
}
