package androidx.compose.runtime.changelist;

import androidx.compose.runtime.Anchor;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.OffsetApplier;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberManager;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.SlotTable;
import androidx.compose.runtime.SlotWriter;
import androidx.compose.runtime.internal.IntRef;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.joran.action.Action;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: Operation.kt */
/* loaded from: classes.dex */
public abstract class Operation {
    private final int ints;
    private final int objects;

    /* compiled from: Operation.kt */
    public static final class IntParameter {
        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m1047constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1048equalsimpl0(int i, int i2) {
            return i == i2;
        }
    }

    /* compiled from: Operation.kt */
    public static final class ObjectParameter {
        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m1049constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1050equalsimpl0(int i, int i2) {
            return i == i2;
        }
    }

    public /* synthetic */ Operation(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    public abstract void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager);

    private Operation(int i, int i2) {
        this.ints = i;
        this.objects = i2;
    }

    public /* synthetic */ Operation(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, null);
    }

    public final int getInts() {
        return this.ints;
    }

    public final int getObjects() {
        return this.objects;
    }

    public final String getName() {
        String simpleName = Reflection.getOrCreateKotlinClass(getClass()).getSimpleName();
        return simpleName == null ? "" : simpleName;
    }

    /* renamed from: intParamName-w8GmfQM, reason: not valid java name */
    public String mo1045intParamNamew8GmfQM(int i) {
        return "IntParameter(" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* renamed from: objectParamName-31yXWZQ, reason: not valid java name */
    public String mo1046objectParamName31yXWZQ(int i) {
        return "ObjectParameter(" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public String toString() {
        return getName();
    }

    /* compiled from: Operation.kt */
    public static final class Ups extends Operation {
        public static final Ups INSTANCE = new Ups();

        private Ups() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            for (int i = 0; i < mo1051getIntw8GmfQM; i++) {
                applier.up();
            }
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "count" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class Downs extends Operation {
        public static final Downs INSTANCE = new Downs();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Downs() {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r3.<init>(r2, r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.Downs.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "nodes" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            for (Object obj : (Object[]) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0))) {
                applier.down(obj);
            }
        }
    }

    /* compiled from: Operation.kt */
    public static final class AdvanceSlotsBy extends Operation {
        public static final AdvanceSlotsBy INSTANCE = new AdvanceSlotsBy();

        private AdvanceSlotsBy() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.advanceBy(operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "distance" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class SideEffect extends Operation {
        public static final SideEffect INSTANCE = new SideEffect();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private SideEffect() {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r3.<init>(r2, r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.SideEffect.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            rememberManager.sideEffect((Function0) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "effect" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class Remember extends Operation {
        public static final Remember INSTANCE = new Remember();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Remember() {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r3.<init>(r2, r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.Remember.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            rememberManager.remembering((RememberObserver) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? Action.VALUE_ATTRIBUTE : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class AppendValue extends Operation {
        public static final AppendValue INSTANCE = new AppendValue();

        private AppendValue() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            Object mo1052getObject31yXWZQ = operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            if (mo1052getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering(((RememberObserverHolder) mo1052getObject31yXWZQ).getWrapped());
            }
            slotWriter.appendSlot(anchor, mo1052getObject31yXWZQ);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "anchor" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? Action.VALUE_ATTRIBUTE : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class TrimParentValues extends Operation {
        public static final TrimParentValues INSTANCE = new TrimParentValues();

        private TrimParentValues() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            int dataIndexToDataAddress;
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            int slotsSize = slotWriter.getSlotsSize();
            int parent = slotWriter.getParent();
            int slotsStartIndex$runtime_release = slotWriter.slotsStartIndex$runtime_release(parent);
            int slotsEndIndex$runtime_release = slotWriter.slotsEndIndex$runtime_release(parent);
            for (int max = Math.max(slotsStartIndex$runtime_release, slotsEndIndex$runtime_release - mo1051getIntw8GmfQM); max < slotsEndIndex$runtime_release; max++) {
                Object[] objArr = slotWriter.slots;
                dataIndexToDataAddress = slotWriter.dataIndexToDataAddress(max);
                Object obj = objArr[dataIndexToDataAddress];
                if (obj instanceof RememberObserverHolder) {
                    rememberManager.forgetting(((RememberObserverHolder) obj).getWrapped(), slotsSize - max, -1, -1);
                } else if (obj instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj).release();
                }
            }
            slotWriter.trimTailSlots(mo1051getIntw8GmfQM);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "count" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class UpdateValue extends Operation {
        public static final UpdateValue INSTANCE = new UpdateValue();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private UpdateValue() {
            /*
                r2 = this;
                r0 = 1
                r1 = 0
                r2.<init>(r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.UpdateValue.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Object mo1052getObject31yXWZQ = operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            if (mo1052getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering(((RememberObserverHolder) mo1052getObject31yXWZQ).getWrapped());
            }
            Object obj = slotWriter.set(mo1051getIntw8GmfQM, mo1052getObject31yXWZQ);
            if (obj instanceof RememberObserverHolder) {
                rememberManager.forgetting(((RememberObserverHolder) obj).getWrapped(), slotWriter.getSlotsSize() - slotWriter.slotIndexOfGroupSlotIndex(slotWriter.getCurrentGroup(), mo1051getIntw8GmfQM), -1, -1);
            } else if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? Action.VALUE_ATTRIBUTE : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "groupSlotIndex" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class UpdateAnchoredValue extends Operation {
        public static final UpdateAnchoredValue INSTANCE = new UpdateAnchoredValue();

        private UpdateAnchoredValue() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            int i;
            int i2;
            Object mo1052getObject31yXWZQ = operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            if (mo1052getObject31yXWZQ instanceof RememberObserverHolder) {
                rememberManager.remembering(((RememberObserverHolder) mo1052getObject31yXWZQ).getWrapped());
            }
            int anchorIndex = slotWriter.anchorIndex(anchor);
            Object obj = slotWriter.set(anchorIndex, mo1051getIntw8GmfQM, mo1052getObject31yXWZQ);
            if (obj instanceof RememberObserverHolder) {
                int slotsSize = slotWriter.getSlotsSize() - slotWriter.slotIndexOfGroupSlotIndex(anchorIndex, mo1051getIntw8GmfQM);
                RememberObserverHolder rememberObserverHolder = (RememberObserverHolder) obj;
                Anchor after = rememberObserverHolder.getAfter();
                if (after == null || !after.getValid()) {
                    i = -1;
                    i2 = -1;
                } else {
                    i = slotWriter.anchorIndex(after);
                    i2 = slotWriter.getSlotsSize() - slotWriter.slotsEndAllIndex$runtime_release(i);
                }
                rememberManager.forgetting(rememberObserverHolder.getWrapped(), slotsSize, i, i2);
                return;
            }
            if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).release();
            }
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? Action.VALUE_ATTRIBUTE : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "anchor" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "groupSlotIndex" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class UpdateAuxData extends Operation {
        public static final UpdateAuxData INSTANCE = new UpdateAuxData();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private UpdateAuxData() {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r3.<init>(r2, r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.UpdateAuxData.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.updateAux(operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "data" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class EnsureRootGroupStarted extends Operation {
        public static final EnsureRootGroupStarted INSTANCE = new EnsureRootGroupStarted();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private EnsureRootGroupStarted() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.EnsureRootGroupStarted.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.ensureStarted(0);
        }
    }

    /* compiled from: Operation.kt */
    public static final class EnsureGroupStarted extends Operation {
        public static final EnsureGroupStarted INSTANCE = new EnsureGroupStarted();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private EnsureGroupStarted() {
            /*
                r3 = this;
                r0 = 1
                r1 = 0
                r2 = 0
                r3.<init>(r2, r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.EnsureGroupStarted.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.ensureStarted((Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "anchor" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class RemoveCurrentGroup extends Operation {
        public static final RemoveCurrentGroup INSTANCE = new RemoveCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private RemoveCurrentGroup() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.RemoveCurrentGroup.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            ComposerKt.removeCurrentGroup(slotWriter, rememberManager);
        }
    }

    /* compiled from: Operation.kt */
    public static final class MoveCurrentGroup extends Operation {
        public static final MoveCurrentGroup INSTANCE = new MoveCurrentGroup();

        private MoveCurrentGroup() {
            super(1, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.moveGroup(operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "offset" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class EndCurrentGroup extends Operation {
        public static final EndCurrentGroup INSTANCE = new EndCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private EndCurrentGroup() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.EndCurrentGroup.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.endGroup();
        }
    }

    /* compiled from: Operation.kt */
    public static final class SkipToEndOfCurrentGroup extends Operation {
        public static final SkipToEndOfCurrentGroup INSTANCE = new SkipToEndOfCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private SkipToEndOfCurrentGroup() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.SkipToEndOfCurrentGroup.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.skipToGroupEnd();
        }
    }

    /* compiled from: Operation.kt */
    public static final class EndCompositionScope extends Operation {
        public static final EndCompositionScope INSTANCE = new EndCompositionScope();

        private EndCompositionScope() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            ((Function1) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0))).invoke((Composition) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "anchor" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "composition" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class UseCurrentNode extends Operation {
        public static final UseCurrentNode INSTANCE = new UseCurrentNode();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private UseCurrentNode() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.UseCurrentNode.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Object current = applier.getCurrent();
            Intrinsics.checkNotNull(current, "null cannot be cast to non-null type androidx.compose.runtime.ComposeNodeLifecycleCallback");
            ((ComposeNodeLifecycleCallback) current).onReuse();
        }
    }

    /* compiled from: Operation.kt */
    public static final class UpdateNode extends Operation {
        public static final UpdateNode INSTANCE = new UpdateNode();

        private UpdateNode() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            ((Function2) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1))).invoke(applier.getCurrent(), operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? Action.VALUE_ATTRIBUTE : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "block" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class RemoveNode extends Operation {
        public static final RemoveNode INSTANCE = new RemoveNode();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private RemoveNode() {
            /*
                r3 = this;
                r0 = 0
                r1 = 0
                r2 = 2
                r3.<init>(r2, r0, r2, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.RemoveNode.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            applier.remove(operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0)), operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(1)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "removeIndex" : IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(1)) ? "count" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class MoveNode extends Operation {
        public static final MoveNode INSTANCE = new MoveNode();

        private MoveNode() {
            super(3, 0, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            applier.move(operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0)), operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(1)), operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(2)));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "from" : IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(1)) ? "to" : IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(2)) ? "count" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class InsertSlots extends Operation {
        public static final InsertSlots INSTANCE = new InsertSlots();

        private InsertSlots() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "anchor" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "from" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            SlotTable slotTable = (SlotTable) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            slotWriter.beginInsert();
            slotWriter.moveFrom(slotTable, anchor.toIndexFor(slotTable), false);
            slotWriter.endInsert();
        }
    }

    /* compiled from: Operation.kt */
    public static final class InsertSlotsWithFixups extends Operation {
        public static final InsertSlotsWithFixups INSTANCE = new InsertSlotsWithFixups();

        private InsertSlotsWithFixups() {
            super(0, 3, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "anchor" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "from" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(2)) ? "fixups" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            SlotTable slotTable = (SlotTable) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            FixupList fixupList = (FixupList) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(2));
            SlotWriter openWriter = slotTable.openWriter();
            try {
                fixupList.executeAndFlushAllPendingFixups(applier, openWriter, rememberManager);
                Unit unit = Unit.INSTANCE;
                openWriter.close(true);
                slotWriter.beginInsert();
                slotWriter.moveFrom(slotTable, anchor.toIndexFor(slotTable), false);
                slotWriter.endInsert();
            } catch (Throwable th) {
                openWriter.close(false);
                throw th;
            }
        }
    }

    /* compiled from: Operation.kt */
    public static final class InsertNodeFixup extends Operation {
        public static final InsertNodeFixup INSTANCE = new InsertNodeFixup();

        private InsertNodeFixup() {
            super(1, 2, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Object invoke = ((Function0) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0))).invoke();
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            slotWriter.updateNode(anchor, invoke);
            applier.insertTopDown(mo1051getIntw8GmfQM, invoke);
            applier.down(invoke);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "factory" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "groupAnchor" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "insertIndex" : super.mo1045intParamNamew8GmfQM(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class PostInsertNodeFixup extends Operation {
        public static final PostInsertNodeFixup INSTANCE = new PostInsertNodeFixup();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private PostInsertNodeFixup() {
            /*
                r2 = this;
                r0 = 1
                r1 = 0
                r2.<init>(r0, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.PostInsertNodeFixup.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: intParamName-w8GmfQM */
        public String mo1045intParamNamew8GmfQM(int i) {
            return IntParameter.m1048equalsimpl0(i, IntParameter.m1047constructorimpl(0)) ? "insertIndex" : super.mo1045intParamNamew8GmfQM(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            int mo1051getIntw8GmfQM = operationArgContainer.mo1051getIntw8GmfQM(IntParameter.m1047constructorimpl(0));
            applier.up();
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            applier.insertBottomUp(mo1051getIntw8GmfQM, slotWriter.node(anchor));
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "groupAnchor" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class DeactivateCurrentGroup extends Operation {
        public static final DeactivateCurrentGroup INSTANCE = new DeactivateCurrentGroup();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private DeactivateCurrentGroup() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.DeactivateCurrentGroup.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            ComposerKt.deactivateCurrentGroup(slotWriter, rememberManager);
        }
    }

    /* compiled from: Operation.kt */
    public static final class ResetSlots extends Operation {
        public static final ResetSlots INSTANCE = new ResetSlots();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private ResetSlots() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.ResetSlots.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            slotWriter.reset();
        }
    }

    /* compiled from: Operation.kt */
    public static final class DetermineMovableContentNodeIndex extends Operation {
        public static final DetermineMovableContentNodeIndex INSTANCE = new DetermineMovableContentNodeIndex();

        private DetermineMovableContentNodeIndex() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            int positionToInsert;
            IntRef intRef = (IntRef) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            Anchor anchor = (Anchor) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            positionToInsert = OperationKt.positionToInsert(slotWriter, anchor, applier);
            intRef.setElement(positionToInsert);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "effectiveNodeIndexOut" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "anchor" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class CopyNodesToNewAnchorLocation extends Operation {
        public static final CopyNodesToNewAnchorLocation INSTANCE = new CopyNodesToNewAnchorLocation();

        private CopyNodesToNewAnchorLocation() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            int element = ((IntRef) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0))).getElement();
            List list = (List) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object obj = list.get(i);
                Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
                int i2 = element + i;
                applier.insertBottomUp(i2, obj);
                applier.insertTopDown(i2, obj);
            }
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "effectiveNodeIndex" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "nodes" : super.mo1046objectParamName31yXWZQ(i);
        }
    }

    /* compiled from: Operation.kt */
    public static final class CopySlotTableToAnchorLocation extends Operation {
        public static final CopySlotTableToAnchorLocation INSTANCE = new CopySlotTableToAnchorLocation();

        private CopySlotTableToAnchorLocation() {
            super(0, 4, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "resolvedState" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "resolvedCompositionContext" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(2)) ? "from" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(3)) ? "to" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            MovableContentStateReference movableContentStateReference = (MovableContentStateReference) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(2));
            CompositionContext compositionContext = (CompositionContext) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            compositionContext.movableContentStateResolve$runtime_release(movableContentStateReference);
            ComposerKt.composeRuntimeError("Could not resolve state for movable content");
            throw new KotlinNothingValueException();
        }
    }

    /* compiled from: Operation.kt */
    public static final class EndMovableContentPlacement extends Operation {
        public static final EndMovableContentPlacement INSTANCE = new EndMovableContentPlacement();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private EndMovableContentPlacement() {
            /*
                r3 = this;
                r0 = 3
                r1 = 0
                r2 = 0
                r3.<init>(r2, r2, r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.changelist.Operation.EndMovableContentPlacement.<init>():void");
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            Intrinsics.checkNotNull(applier, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>");
            OperationKt.positionToParentOf(slotWriter, applier, 0);
            slotWriter.endGroup();
        }
    }

    /* compiled from: Operation.kt */
    public static final class ApplyChangeList extends Operation {
        public static final ApplyChangeList INSTANCE = new ApplyChangeList();

        private ApplyChangeList() {
            super(0, 2, 1, null);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        /* renamed from: objectParamName-31yXWZQ */
        public String mo1046objectParamName31yXWZQ(int i) {
            return ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(0)) ? "changes" : ObjectParameter.m1050equalsimpl0(i, ObjectParameter.m1049constructorimpl(1)) ? "effectiveNodeIndex" : super.mo1046objectParamName31yXWZQ(i);
        }

        @Override // androidx.compose.runtime.changelist.Operation
        public void execute(OperationArgContainer operationArgContainer, Applier applier, SlotWriter slotWriter, RememberManager rememberManager) {
            IntRef intRef = (IntRef) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(1));
            int element = intRef != null ? intRef.getElement() : 0;
            ChangeList changeList = (ChangeList) operationArgContainer.mo1052getObject31yXWZQ(ObjectParameter.m1049constructorimpl(0));
            if (element > 0) {
                applier = new OffsetApplier(applier, element);
            }
            changeList.executeAndFlushAllPendingChanges(applier, slotWriter, rememberManager);
        }
    }
}
