package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import coil3.network.NetworkFetcher$fetch$2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractClickableNode extends DelegatingNode implements PointerInputModifierNode, KeyInputModifierNode, SemanticsModifierNode, TraversableNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, IndirectPointerInputModifierNode, GestureConnection {
    public static final NoIndicationInstance TraverseKey = new NoIndicationInstance();
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
    public MutableInteractionSource interactionSource;
    public boolean lazilyCreateIndication;
    public IndicationNodeFactory localIndicationNodeFactory;
    public Function0 onClick;
    public PressInteraction.Press pressInteraction;
    public Role role;
    public final NoIndicationInstance traverseKey;
    public boolean useLocalIndication;
    public MutableInteractionSource userProvidedInteractionSource;

    public AbstractClickableNode(IndicationNodeFactory indicationNodeFactory, MutableInteractionSource mutableInteractionSource, Role role, Function0 function0, boolean z, boolean z2) {
        this.interactionSource = mutableInteractionSource;
        this.indicationNodeFactory = indicationNodeFactory;
        this.useLocalIndication = z;
        this.role = role;
        this.enabled = z2;
        this.onClick = function0;
        this.focusableNode = new FocusableNode(mutableInteractionSource, new NetworkFetcher$fetch$2(1, this, AbstractClickableNode.class, "onFocusChange", "onFocusChange(Z)V", 0, 1));
        int i = LongObjectMapKt.$r8$clinit;
        this.currentKeyPressInteractions = new MutableLongObjectMap(6);
        this.centerOffset = 0L;
        MutableInteractionSource mutableInteractionSource2 = this.interactionSource;
        this.userProvidedInteractionSource = mutableInteractionSource2;
        this.lazilyCreateIndication = mutableInteractionSource2 == null;
        this.traverseKey = TraverseKey;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Role role = this.role;
        if (role != null) {
            SemanticsPropertiesKt.m399setRolekuIjeqM(semanticsPropertyReceiver, role.value);
        }
        AbstractClickableNode$$ExternalSyntheticLambda0 abstractClickableNode$$ExternalSyntheticLambda0 = new AbstractClickableNode$$ExternalSyntheticLambda0(this, 1);
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        semanticsPropertyReceiver.set(SemanticsActions.OnClick, new AccessibilityAction(null, abstractClickableNode$$ExternalSyntheticLambda0));
        if (this.enabled) {
            this.focusableNode.applySemantics(semanticsPropertyReceiver);
        } else {
            semanticsPropertyReceiver.set(SemanticsProperties.Disabled, Unit.INSTANCE);
        }
        applyAdditionalSemantics(semanticsPropertyReceiver);
    }

    public final void disposeInteractions() {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        MutableLongObjectMap mutableLongObjectMap = this.currentKeyPressInteractions;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = this.pressInteraction;
            if (press != null) {
                ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new PressInteraction.Cancel(press));
            }
            PressInteraction.Press press2 = this.indirectPointerPressInteraction;
            if (press2 != null) {
                ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new PressInteraction.Cancel(press2));
            }
            HoverInteraction$Enter hoverInteraction$Enter = this.hoverInteraction;
            if (hoverInteraction$Enter != null) {
                ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new HoverInteraction$Exit(hoverInteraction$Enter));
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
                                ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new PressInteraction.Cancel((PressInteraction.Press) objArr[(i << 3) + i3]));
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
    public final long m11getExtendedTouchPaddinghWWAJMo(long j) {
        long mo64toSizeXkaWNTQ = HitTestResultKt.requireLayoutNode(this).density.mo64toSizeXkaWNTQ(((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).mo323getMinimumTouchTargetSizeMYxV2XQ());
        float max = Math.max(0.0f, Float.intBitsToFloat((int) (mo64toSizeXkaWNTQ >> 32)) - ((int) (j >> 32))) / 2.0f;
        float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (mo64toSizeXkaWNTQ & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
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
    public final long mo12getTouchBoundsExpansionRZrCHBk() {
        return HitTestResultKt.None;
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object getTraverseKey() {
        return this.traverseKey;
    }

    public final void handlePressInteractionCancel(boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            StandaloneCoroutine standaloneCoroutine = this.delayJob;
            if (standaloneCoroutine == null || !standaloneCoroutine.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    Job job = (Job) ((ContextScope) getCoroutineScope()).coroutineContext.get(Job.Key.$$INSTANCE);
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionCancel$1$1$1(mutableInteractionSource, cancel, job != null ? job.invokeOnCompletion(new Recomposer$$ExternalSyntheticLambda4(mutableInteractionSource, cancel, 7)) : null, null), 3);
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
    public final void m13handlePressInteractionRelease3MmeM6k(long j, boolean z) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            StandaloneCoroutine standaloneCoroutine = this.delayJob;
            if (standaloneCoroutine == null || !standaloneCoroutine.isActive()) {
                PressInteraction.Press press = z ? this.indirectPointerPressInteraction : this.pressInteraction;
                if (press != null) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$2$1(mutableInteractionSource, press, null), 3);
                }
            } else {
                standaloneCoroutine.cancel(null);
                JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionRelease$1$1(standaloneCoroutine, j, mutableInteractionSource, null), 3);
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
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(pointerInputChange.position);
            NoIndicationInstance noIndicationInstance = GestureNode.TraverseKey;
            if (pointerInputChange == null) {
                TraversableNode findNearestAncestor = HitTestResultKt.findNearestAncestor(this, noIndicationInstance);
                GestureNode gestureNode = findNearestAncestor instanceof GestureNode ? (GestureNode) findNearestAncestor : null;
                z = (gestureNode != null ? gestureNode.gestureConnection : null) != null;
            } else {
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                HitTestResultKt.traverseAncestors(this, noIndicationInstance, new GestureNodeKt$$ExternalSyntheticLambda0(new Recomposer$$ExternalSyntheticLambda4(pointerInputChange, ref$BooleanRef, 9), r2));
                z = ref$BooleanRef.element;
            }
            if (((z || Clickable_androidKt.isComposeRootInScrollableContainer(this)) ? 1 : 0) != 0) {
                this.delayJob = JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$1(mutableInteractionSource, press, this, null), 3);
            } else {
                this.pressInteraction = press;
                JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$2$2(mutableInteractionSource, press, null), 3);
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
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            mutableInteractionSource.getClass();
            DelegatableNode create = indicationNodeFactory.create(mutableInteractionSource);
            delegate(create);
            this.indicationNode = create;
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean interceptOutOfBoundsChildEvents() {
        return false;
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
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null && (hoverInteraction$Enter = this.hoverInteraction) != null) {
            ((MutableInteractionSourceImpl) mutableInteractionSource).tryEmit(new HoverInteraction$Exit(hoverInteraction$Enter));
        }
        this.hoverInteraction = null;
    }

    /* renamed from: onClickKeyDownEvent-ZmokQxo, reason: not valid java name */
    public abstract boolean mo14onClickKeyDownEventZmokQxo(KeyEvent keyEvent);

    /* renamed from: onClickKeyUpEvent-ZmokQxo, reason: not valid java name */
    public abstract void mo15onClickKeyUpEventZmokQxo(KeyEvent keyEvent);

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
    public final boolean mo16onKeyEventZmokQxo(android.view.KeyEvent r11) {
        /*
            r10 = this;
            r10.initializeIndicationAndInteractionSourceIfNeeded()
            long r0 = kotlin.text.CharsKt.m671getKeyZmokQxo(r11)
            boolean r2 = r10.enabled
            r3 = 3
            r4 = 0
            androidx.collection.MutableLongObjectMap r5 = r10.currentKeyPressInteractions
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L4a
            int r2 = kotlin.text.CharsKt.m672getTypeZmokQxo(r11)
            r8 = 2
            if (r2 != r8) goto L4a
            boolean r2 = androidx.compose.foundation.ImageKt.m32isEnterZmokQxo(r11)
            if (r2 == 0) goto L4a
            boolean r2 = r5.containsKey(r0)
            if (r2 != 0) goto L40
            androidx.compose.foundation.interaction.PressInteraction$Press r2 = new androidx.compose.foundation.interaction.PressInteraction$Press
            long r8 = r10.centerOffset
            r2.<init>(r8)
            r5.set(r0, r2)
            androidx.compose.foundation.interaction.MutableInteractionSource r0 = r10.interactionSource
            if (r0 == 0) goto L3e
            kotlinx.coroutines.CoroutineScope r0 = r10.getCoroutineScope()
            androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1 r1 = new androidx.compose.foundation.AbstractClickableNode$onKeyEvent$1
            r1.<init>(r10, r2, r4)
            kotlinx.coroutines.JobKt.launch$default(r0, r4, r4, r1, r3)
        L3e:
            r0 = r6
            goto L41
        L40:
            r0 = r7
        L41:
            boolean r10 = r10.mo14onClickKeyDownEventZmokQxo(r11)
            if (r10 != 0) goto L77
            if (r0 == 0) goto L78
            goto L77
        L4a:
            boolean r2 = r10.enabled
            if (r2 == 0) goto L78
            int r2 = kotlin.text.CharsKt.m672getTypeZmokQxo(r11)
            if (r2 != r6) goto L78
            boolean r2 = androidx.compose.foundation.ImageKt.m32isEnterZmokQxo(r11)
            if (r2 == 0) goto L78
            java.lang.Object r0 = r5.remove(r0)
            androidx.compose.foundation.interaction.PressInteraction$Press r0 = (androidx.compose.foundation.interaction.PressInteraction.Press) r0
            if (r0 == 0) goto L75
            androidx.compose.foundation.interaction.MutableInteractionSource r1 = r10.interactionSource
            if (r1 == 0) goto L72
            kotlinx.coroutines.CoroutineScope r1 = r10.getCoroutineScope()
            androidx.compose.foundation.AbstractClickableNode$onKeyEvent$2 r2 = new androidx.compose.foundation.AbstractClickableNode$onKeyEvent$2
            r2.<init>(r10, r0, r4)
            kotlinx.coroutines.JobKt.launch$default(r1, r4, r4, r2, r3)
        L72:
            r10.mo15onClickKeyUpEventZmokQxo(r11)
        L75:
            if (r0 == 0) goto L78
        L77:
            return r6
        L78:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode.mo16onKeyEventZmokQxo(android.view.KeyEvent):boolean");
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        if (this.useLocalIndication) {
            HitTestResultKt.observeReads(this, new AbstractClickableNode$$ExternalSyntheticLambda0(this, 0));
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY, reason: not valid java name */
    public void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        long j2 = (((j << 32) >> 33) & 4294967295L) | ((j >> 33) << 32);
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
                if (i == 4) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$1(this, null), 3);
                } else if (i == 5) {
                    JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$onPointerEvent$2(this, null), 3);
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        if (r3.indicationNode == null) goto L37;
     */
    /* renamed from: updateCommon-O2vRcR0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18updateCommonO2vRcR0(androidx.compose.foundation.IndicationNodeFactory r4, androidx.compose.foundation.interaction.MutableInteractionSource r5, androidx.compose.ui.semantics.Role r6, kotlin.jvm.functions.Function0 r7, boolean r8, boolean r9) {
        /*
            r3 = this;
            androidx.compose.foundation.interaction.MutableInteractionSource r0 = r3.userProvidedInteractionSource
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r5)
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L13
            r3.disposeInteractions()
            r3.userProvidedInteractionSource = r5
            r3.interactionSource = r5
            r5 = r1
            goto L14
        L13:
            r5 = r2
        L14:
            androidx.compose.foundation.IndicationNodeFactory r0 = r3.indicationNodeFactory
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r4)
            if (r0 != 0) goto L1f
            r3.indicationNodeFactory = r4
            r5 = r1
        L1f:
            boolean r4 = r3.useLocalIndication
            if (r4 == r8) goto L2b
            r3.useLocalIndication = r8
            if (r8 == 0) goto L2a
            r3.onObservedReadsChanged()
        L2a:
            r5 = r1
        L2b:
            boolean r4 = r3.enabled
            androidx.compose.foundation.FocusableNode r8 = r3.focusableNode
            if (r4 == r9) goto L42
            if (r9 == 0) goto L37
            r3.delegate(r8)
            goto L3d
        L37:
            r3.undelegate(r8)
            r3.disposeInteractions()
        L3d:
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r3)
            r3.enabled = r9
        L42:
            androidx.compose.ui.semantics.Role r4 = r3.role
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r6)
            if (r4 != 0) goto L4f
            r3.role = r6
            androidx.compose.ui.node.HitTestResultKt.invalidateSemantics(r3)
        L4f:
            r3.onClick = r7
            boolean r4 = r3.lazilyCreateIndication
            androidx.compose.foundation.interaction.MutableInteractionSource r6 = r3.userProvidedInteractionSource
            if (r6 != 0) goto L59
            r7 = r1
            goto L5a
        L59:
            r7 = r2
        L5a:
            if (r4 == r7) goto L68
            if (r6 != 0) goto L5f
            r2 = r1
        L5f:
            r3.lazilyCreateIndication = r2
            if (r2 != 0) goto L68
            androidx.compose.ui.node.DelegatableNode r4 = r3.indicationNode
            if (r4 != 0) goto L68
            goto L69
        L68:
            r1 = r5
        L69:
            if (r1 == 0) goto L7e
            androidx.compose.ui.node.DelegatableNode r4 = r3.indicationNode
            if (r4 != 0) goto L73
            boolean r5 = r3.lazilyCreateIndication
            if (r5 != 0) goto L7e
        L73:
            if (r4 == 0) goto L78
            r3.undelegate(r4)
        L78:
            r4 = 0
            r3.indicationNode = r4
            r3.initializeIndicationAndInteractionSourceIfNeeded()
        L7e:
            androidx.compose.foundation.interaction.MutableInteractionSource r3 = r3.interactionSource
            r8.update(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AbstractClickableNode.m18updateCommonO2vRcR0(androidx.compose.foundation.IndicationNodeFactory, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.semantics.Role, kotlin.jvm.functions.Function0, boolean, boolean):void");
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final /* synthetic */ boolean isInterested(PointerInputChange pointerInputChange) {
        return false;
    }

    public void onCancelKeyInput() {
    }

    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    public final void handlePressInteractionStart(IndirectPointerInputChange indirectPointerInputChange) {
        MutableInteractionSource mutableInteractionSource = this.interactionSource;
        if (mutableInteractionSource != null) {
            PressInteraction.Press press = new PressInteraction.Press(indirectPointerInputChange.position);
            Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            HitTestResultKt.traverseAncestors(this, GestureNode.TraverseKey, new GestureNodeKt$$ExternalSyntheticLambda0(new Recomposer$$ExternalSyntheticLambda4(indirectPointerInputChange, ref$BooleanRef, 8), 0));
            if (!ref$BooleanRef.element && !Clickable_androidKt.isComposeRootInScrollableContainer(this)) {
                this.indirectPointerPressInteraction = press;
                JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$2(mutableInteractionSource, press, null), 3);
            } else {
                this.delayJob = JobKt.launch$default(getCoroutineScope(), null, null, new AbstractClickableNode$handlePressInteractionStart$1$1(mutableInteractionSource, press, this, null), 3);
            }
        }
    }
}
