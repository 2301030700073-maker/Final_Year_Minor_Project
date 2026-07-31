package androidx.room.util;

import androidx.room.RoomDatabase;
import kotlin.ExceptionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DBUtil__DBUtil_androidKt$performSuspending$1 extends ContinuationImpl {
    public RoomDatabase L$0;
    public Function1 L$1;
    public boolean Z$0;
    public boolean Z$1;
    public int label;
    public /* synthetic */ Object result;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ExceptionsKt.performSuspending(null, false, false, null, this);
    }
}
