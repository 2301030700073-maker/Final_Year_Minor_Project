package org.wikipedia.settings.dev.playground;

import android.content.Context;
import android.widget.Toast;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryDeveloperPlayGroundViewModel$addTestData$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ Exception $e;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CategoryDeveloperPlayGroundViewModel$addTestData$2$1(Context context, Exception exc, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$context = context;
        this.$e = exc;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Exception exc = this.$e;
        Context context = this.$context;
        switch (i) {
            case 0:
                return new CategoryDeveloperPlayGroundViewModel$addTestData$2$1(context, exc, continuation, 0);
            case 1:
                return new CategoryDeveloperPlayGroundViewModel$addTestData$2$1(context, exc, continuation, 1);
            case 2:
                return new CategoryDeveloperPlayGroundViewModel$addTestData$2$1(context, exc, continuation, 2);
            default:
                return new CategoryDeveloperPlayGroundViewModel$addTestData$2$1(context, exc, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((CategoryDeveloperPlayGroundViewModel$addTestData$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((CategoryDeveloperPlayGroundViewModel$addTestData$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((CategoryDeveloperPlayGroundViewModel$addTestData$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((CategoryDeveloperPlayGroundViewModel$addTestData$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Exception exc = this.$e;
        Context context = this.$context;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Toast.makeText(context, "Error: " + exc.getMessage(), 0).show();
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                Toast.makeText(context, "Error: " + exc.getMessage(), 0).show();
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                Toast.makeText(context, "Error: " + exc.getMessage(), 0).show();
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Toast.makeText(context, "Error: " + exc.getMessage(), 0).show();
                break;
        }
        return unit;
    }
}
