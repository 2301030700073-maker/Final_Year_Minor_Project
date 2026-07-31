package androidx.compose.runtime;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.MutableIntList;
import androidx.collection.MutableObjectList;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposePausableCompositionException$operationsSequence$1 extends RestrictedSuspendLambda implements Function2 {
    public int I$0;
    public int I$1;
    public int I$2;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ ComposePausableCompositionException this$0;

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
        String str;
        int i4;
        int i5;
        String str2;
        ComposePausableCompositionException composePausableCompositionException = this.this$0;
        MutableObjectList mutableObjectList = composePausableCompositionException.instances;
        MutableIntList mutableIntList = composePausableCompositionException.operations;
        int i6 = this.label;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            i = 0;
            i2 = 0;
            i3 = 0;
        } else {
            if (i6 != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i = this.I$2;
            i2 = this.I$1;
            i3 = this.I$0;
            sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (i3 >= Math.min(composePausableCompositionException.lastOperation + 10, mutableIntList._size)) {
            return Unit.INSTANCE;
        }
        int i7 = i3 + 1;
        int i8 = mutableIntList.get(i3);
        switch (i8) {
            case 0:
                str = "up";
                break;
            case 1:
                Object obj2 = mutableObjectList.get(i2);
                i2++;
                str = "down " + obj2;
                break;
            case 2:
                str = "remove " + mutableIntList.get(i7) + ' ' + mutableIntList.get(i3 + 2);
                i7 = i3 + 3;
                break;
            case 3:
                str = "move " + mutableIntList.get(i7) + ' ' + mutableIntList.get(i3 + 2) + ' ' + mutableIntList.get(i3 + 3);
                i7 = i3 + 4;
                break;
            case 4:
                str = "clear";
                break;
            case 5:
                i4 = i3 + 2;
                int i9 = mutableIntList.get(i7);
                i5 = i2 + 1;
                str2 = "insertBottomUp " + i9 + ' ' + mutableObjectList.get(i2);
                int i10 = i4;
                str = str2;
                i7 = i10;
                i2 = i5;
                break;
            case 6:
                i4 = i3 + 2;
                int i11 = mutableIntList.get(i7);
                i5 = i2 + 1;
                str2 = "insertTopDown " + i11 + ' ' + mutableObjectList.get(i2);
                int i102 = i4;
                str = str2;
                i7 = i102;
                i2 = i5;
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Object obj3 = mutableObjectList.get(i2);
                obj3.getClass();
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, obj3);
                i2 += 2;
                str = "apply " + ((Function2) obj3);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                str = "reuse " + composePausableCompositionException.reused.get(i);
                i++;
                break;
            case 9:
                str = "recompose pending";
                break;
            default:
                str = CameraDevices$CC.m("unknown op: ", i8);
                break;
        }
        this.L$0 = sequenceBuilderIterator;
        this.I$0 = i7;
        this.I$1 = i2;
        this.I$2 = i;
        this.label = 1;
        sequenceBuilderIterator.yield(i3 + ": " + str, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
