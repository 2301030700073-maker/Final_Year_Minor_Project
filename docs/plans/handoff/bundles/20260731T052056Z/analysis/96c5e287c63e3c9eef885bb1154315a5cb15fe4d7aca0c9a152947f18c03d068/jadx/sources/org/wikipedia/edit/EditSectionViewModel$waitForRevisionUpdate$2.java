package org.wikipedia.edit;

import androidx.lifecycle.ViewModel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.descriptions.DescriptionEditViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EditSectionViewModel$waitForRevisionUpdate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ long $newRevision;
    public final /* synthetic */ int $r8$classId = 0;
    public int I$0;
    public long J$0;
    public int label;
    public final /* synthetic */ ViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSectionViewModel$waitForRevisionUpdate$2(long j, EditSectionViewModel editSectionViewModel, Continuation continuation) {
        super(2, continuation);
        this.$newRevision = j;
        this.this$0 = editSectionViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        long j = this.$newRevision;
        ViewModel viewModel = this.this$0;
        switch (i) {
            case 0:
                return new EditSectionViewModel$waitForRevisionUpdate$2(j, (EditSectionViewModel) viewModel, continuation);
            default:
                return new EditSectionViewModel$waitForRevisionUpdate$2((DescriptionEditViewModel) viewModel, j, continuation);
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
        return ((EditSectionViewModel$waitForRevisionUpdate$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0131, code lost:
    
        if (r0 != r9) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0058 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0098  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0098 -> B:8:0x0099). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0131 -> B:31:0x0135). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.edit.EditSectionViewModel$waitForRevisionUpdate$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditSectionViewModel$waitForRevisionUpdate$2(DescriptionEditViewModel descriptionEditViewModel, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = descriptionEditViewModel;
        this.$newRevision = j;
    }
}
