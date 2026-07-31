package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.ObjectList;
import androidx.compose.ui.Modifier;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposePausableCompositionException$operationsSequence$1 extends RestrictedSuspendLambda implements Function2 {
    int I$0;
    int I$1;
    int I$2;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ComposePausableCompositionException this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposePausableCompositionException$operationsSequence$1(ComposePausableCompositionException composePausableCompositionException, Continuation continuation) {
        super(2, continuation);
        this.this$0 = composePausableCompositionException;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ComposePausableCompositionException$operationsSequence$1 composePausableCompositionException$operationsSequence$1 = new ComposePausableCompositionException$operationsSequence$1(this.this$0, continuation);
        composePausableCompositionException$operationsSequence$1.L$0 = obj;
        return composePausableCompositionException$operationsSequence$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ComposePausableCompositionException$operationsSequence$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SequenceBuilderIterator sequenceBuilderIterator;
        int i;
        int i2;
        int i3;
        int i4;
        IntList intList;
        IntList intList2;
        String str;
        ObjectList objectList;
        IntList intList3;
        IntList intList4;
        IntList intList5;
        IntList intList6;
        IntList intList7;
        IntList intList8;
        int i5;
        ObjectList objectList2;
        int i6;
        IntList intList9;
        ObjectList objectList3;
        ObjectList objectList4;
        ObjectList objectList5;
        int i7 = this.label;
        if (i7 == 0) {
            ResultKt.throwOnFailure(obj);
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            i = 0;
            i2 = 0;
            i3 = 0;
        } else {
            if (i7 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.I$2;
            i2 = this.I$1;
            i3 = this.I$0;
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        i4 = this.this$0.lastOperation;
        intList = this.this$0.operations;
        if (i3 >= Math.min(i4 + 10, intList._size)) {
            return Unit.INSTANCE;
        }
        intList2 = this.this$0.operations;
        int i8 = i3 + 1;
        int i9 = intList2.get(i3);
        switch (i9) {
            case 0:
                str = "up";
                break;
            case 1:
                objectList = this.this$0.instances;
                str = Modifier.CC.m(objectList.get(i2), "down ");
                i2++;
                break;
            case 2:
                intList3 = this.this$0.operations;
                int i10 = intList3.get(i8);
                intList4 = this.this$0.operations;
                str = "remove " + i10 + ' ' + intList4.get(i3 + 2);
                i8 = i3 + 3;
                break;
            case 3:
                intList5 = this.this$0.operations;
                int i11 = intList5.get(i8);
                intList6 = this.this$0.operations;
                int i12 = intList6.get(i3 + 2);
                intList7 = this.this$0.operations;
                str = "move " + i11 + ' ' + i12 + ' ' + intList7.get(i3 + 3);
                i8 = i3 + 4;
                break;
            case 4:
                str = "clear";
                break;
            case 5:
                intList8 = this.this$0.operations;
                i5 = i3 + 2;
                int i13 = intList8.get(i8);
                objectList2 = this.this$0.instances;
                i6 = i2 + 1;
                str = "insertBottomUp " + i13 + ' ' + objectList2.get(i2);
                i8 = i5;
                i2 = i6;
                break;
            case 6:
                intList9 = this.this$0.operations;
                i5 = i3 + 2;
                int i14 = intList9.get(i8);
                objectList3 = this.this$0.instances;
                i6 = i2 + 1;
                str = "insertTopDown " + i14 + ' ' + objectList3.get(i2);
                i8 = i5;
                i2 = i6;
                break;
            case 7:
                objectList4 = this.this$0.instances;
                Object obj2 = objectList4.get(i2);
                obj2.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj2);
                i2 += 2;
                str = "apply " + ((Function2) obj2);
                break;
            case 8:
                StringBuilder sb = new StringBuilder("reuse ");
                objectList5 = this.this$0.reused;
                sb.append(objectList5.get(i));
                str = sb.toString();
                i++;
                break;
            case 9:
                str = "recompose pending";
                break;
            default:
                str = Modifier.CC.m(i9, "unknown op: ");
                break;
        }
        this.L$0 = sequenceBuilderIterator;
        this.I$0 = i8;
        this.I$1 = i2;
        this.I$2 = i;
        this.label = 1;
        sequenceBuilderIterator.yield(i3 + ": " + str, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
