package androidx.compose.foundation.text.selection;

import android.os.Build;
import android.view.textclassifier.TextClassification;
import android.view.textclassifier.TextClassifier;
import android.view.textclassifier.TextSelection;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.MutexImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ long $selection;
    public final /* synthetic */ CharSequence $text;
    public long J$0;
    public /* synthetic */ Object L$0;
    public MutexImpl L$1;
    public PlatformSelectionBehaviorsImpl L$2;
    public CharSequence L$3;
    public int label;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(long j, PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, Continuation continuation) {
        super(2, continuation);
        this.$text = charSequence;
        this.$selection = j;
        this.this$0 = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2 = new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(this.$selection, this.this$0, this.$text, continuation);
        platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2.L$0 = obj;
        return platformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2) create(StreamSharing$$ExternalSyntheticLambda0.m94m(obj), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j;
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        TextSelection textSelection;
        CharSequence charSequence;
        MutexImpl mutexImpl;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            TextClassifier m94m = StreamSharing$$ExternalSyntheticLambda0.m94m(this.L$0);
            long j2 = this.$selection;
            int m702getMinimpl = TextRange.m702getMinimpl(j2);
            int m701getMaximpl = TextRange.m701getMaximpl(j2);
            CharSequence charSequence2 = this.$text;
            TextSelection.Request.Builder builder = new TextSelection.Request.Builder(charSequence2, m702getMinimpl, m701getMaximpl);
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl2 = this.this$0;
            TextSelection.Request.Builder defaultLocales = builder.setDefaultLocales(platformSelectionBehaviorsImpl2.getAndroidLocalList());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 31) {
                defaultLocales.setIncludeTextClassification(true);
            }
            TextSelection suggestSelection = m94m.suggestSelection(defaultLocales.build());
            long TextRange = ParagraphKt.TextRange(suggestSelection.getSelectionStartIndex(), suggestSelection.getSelectionEndIndex());
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (i2 < 31 || suggestSelection.getTextClassification() == null) {
                this.J$0 = TextRange;
                this.label = 2;
                if (PlatformSelectionBehaviorsImpl.m304access$classifyTextM8tDOmk(this.this$0, this.$text, TextRange, m94m, this) != coroutineSingletons) {
                    j = TextRange;
                }
            } else {
                MutexImpl mutexImpl2 = platformSelectionBehaviorsImpl2.mutex;
                this.L$0 = suggestSelection;
                this.L$1 = mutexImpl2;
                this.L$2 = platformSelectionBehaviorsImpl2;
                this.L$3 = charSequence2;
                this.J$0 = TextRange;
                this.label = 1;
                if (mutexImpl2.lock(this) != coroutineSingletons) {
                    platformSelectionBehaviorsImpl = platformSelectionBehaviorsImpl2;
                    textSelection = suggestSelection;
                    charSequence = charSequence2;
                    mutexImpl = mutexImpl2;
                    j = TextRange;
                    TextClassification textClassification = textSelection.getTextClassification();
                    textClassification.getClass();
                    platformSelectionBehaviorsImpl.textClassificationResult$delegate.setValue(new TextClassificationResult(charSequence, j, textClassification));
                }
            }
            return coroutineSingletons;
        }
        if (i == 1) {
            j = this.J$0;
            charSequence = this.L$3;
            platformSelectionBehaviorsImpl = this.L$2;
            mutexImpl = this.L$1;
            textSelection = (TextSelection) this.L$0;
            ResultKt.throwOnFailure(obj);
            try {
                TextClassification textClassification2 = textSelection.getTextClassification();
                textClassification2.getClass();
                platformSelectionBehaviorsImpl.textClassificationResult$delegate.setValue(new TextClassificationResult(charSequence, j, textClassification2));
            } finally {
                mutexImpl.unlock(null);
            }
        } else {
            if (i != 2) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = this.J$0;
            ResultKt.throwOnFailure(obj);
        }
        return new TextRange(j);
    }
}
