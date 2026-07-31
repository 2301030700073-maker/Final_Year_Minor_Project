package org.wikipedia.commons;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.gallery.ImageInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilePageViewModel$loadImageInfo$1 extends SuspendLambda implements Function2 {
    public int I$0;
    public int I$1;
    public /* synthetic */ Object L$0;
    public Ref$BooleanRef L$1;
    public Ref$ObjectRef L$2;
    public Object L$3;
    public ImageInfo L$4;
    public DeferredCoroutine L$5;
    public MwQueryPage L$7;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ FilePageViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilePageViewModel$loadImageInfo$1(FilePageViewModel filePageViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = filePageViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        FilePageViewModel$loadImageInfo$1 filePageViewModel$loadImageInfo$1 = new FilePageViewModel$loadImageInfo$1(this.this$0, continuation);
        filePageViewModel$loadImageInfo$1.L$0 = obj;
        return filePageViewModel$loadImageInfo$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FilePageViewModel$loadImageInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0124  */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v5, types: [kotlin.jvm.internal.Ref$BooleanRef, kotlin.jvm.internal.Ref$ObjectRef, kotlinx.coroutines.DeferredCoroutine] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.commons.FilePageViewModel$loadImageInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
