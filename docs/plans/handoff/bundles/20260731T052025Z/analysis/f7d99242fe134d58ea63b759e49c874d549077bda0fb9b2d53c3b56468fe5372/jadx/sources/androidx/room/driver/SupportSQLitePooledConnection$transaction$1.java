package androidx.room.driver;

import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SupportSQLitePooledConnection$transaction$1 extends ContinuationImpl {
    public SupportSQLitePooledConnection L$0;
    public FrameworkSQLiteDatabase L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SupportSQLitePooledConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SupportSQLitePooledConnection$transaction$1(SupportSQLitePooledConnection supportSQLitePooledConnection, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = supportSQLitePooledConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.transaction$2(null, null, this);
    }
}
