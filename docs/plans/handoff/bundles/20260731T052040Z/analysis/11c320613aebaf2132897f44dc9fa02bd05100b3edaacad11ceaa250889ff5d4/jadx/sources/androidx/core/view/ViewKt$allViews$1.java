package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.ResultKt;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements Function2 {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, Continuation continuation) {
        super(2, continuation);
        this.$this_allViews = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, continuation);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ViewKt$allViews$1) create((SequenceBuilderIterator) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        int i = this.label;
        Object obj3 = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = sequenceBuilderIterator;
            this.label = 1;
            sequenceBuilderIterator.yield(view, this);
            return obj3;
        }
        Object obj4 = Unit.INSTANCE;
        if (i != 1) {
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return obj4;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        SequenceBuilderIterator sequenceBuilderIterator2 = (SequenceBuilderIterator) this.L$0;
        ResultKt.throwOnFailure(obj);
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            this.L$0 = null;
            this.label = 2;
            sequenceBuilderIterator2.getClass();
            TreeIterator treeIterator = new TreeIterator(new UIntArray.Iterator((ViewGroup) view2, 1), 0);
            if (treeIterator.iterator.hasNext()) {
                sequenceBuilderIterator2.nextIterator = treeIterator;
                sequenceBuilderIterator2.state = 2;
                sequenceBuilderIterator2.nextStep = this;
                obj2 = obj3;
            } else {
                obj2 = obj4;
            }
            if (obj2 == obj3) {
                return obj3;
            }
        }
        return obj4;
    }
}
